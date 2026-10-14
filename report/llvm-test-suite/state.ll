Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/state?download=true
inline.NumInlined: 698
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.timeval = type { i64, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<void *, std::pair<void *const, malloc_plus_memory_entry *>, std::_Select1st<std::pair<void *const, malloc_plus_memory_entry *>>, std::less<void *>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%class.MallocPlus = type { %"class.std::map", %"class.std::map.0" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, malloc_plus_memory_entry *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.0" = type { %"class.std::_Rb_tree.1" }
%"class.std::_Rb_tree.1" = type { %"struct.std::_Rb_tree<void *, std::pair<void *const, malloc_plus_memory_entry *>, std::_Select1st<std::pair<void *const, malloc_plus_memory_entry *>>, std::less<void *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<void *, std::pair<void *const, malloc_plus_memory_entry *>, std::_Select1st<std::pair<void *const, malloc_plus_memory_entry *>>, std::less<void *>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZN10MallocPlusD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

@save_ncells = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@_ZZN5State31apply_boundary_conditions_localEvE4nlft = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_localEvE4nrht = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_localEvE4nbot = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_localEvE4ntop = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_ghostEvE4nlft = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_ghostEvE4nrht = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_ghostEvE4nbot = internal unnamed_addr global ptr null, align 8
@_ZZN5State31apply_boundary_conditions_ghostEvE4ntop = internal unnamed_addr global ptr null, align 8
@_ZZN5State22calc_finite_differenceEdE5H_new = internal unnamed_addr global ptr null, align 8
@_ZZN5State22calc_finite_differenceEdE5U_new = internal unnamed_addr global ptr null, align 8
@_ZZN5State22calc_finite_differenceEdE5V_new = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"H_new\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"U_new\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"V_new\00", align 1
@_ZZN5State32calc_finite_difference_via_facesEdE2Hx = internal global %"class.std::vector.9" zeroinitializer, align 8
@_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZZN5State32calc_finite_difference_via_facesEdE2Ux = internal global %"class.std::vector.9" zeroinitializer, align 8
@_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux = internal global i64 0, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE2Vx = internal global %"class.std::vector.9" zeroinitializer, align 8
@_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx = internal global i64 0, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE2Hy = internal global %"class.std::vector.9" zeroinitializer, align 8
@_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy = internal global i64 0, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE2Uy = internal global %"class.std::vector.9" zeroinitializer, align 8
@_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy = internal global i64 0, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE2Vy = internal global %"class.std::vector.9" zeroinitializer, align 8
@_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy = internal global i64 0, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE5H_new = internal unnamed_addr global ptr null, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE5U_new = internal unnamed_addr global ptr null, align 8
@_ZZN5State32calc_finite_difference_via_facesEdE5V_new = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"%s ic %d sym %d H[ic] %lf Hsym %lf diff %lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%s ic %d sym %d U[ic] %lf Usym %lf diff %lf\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"%s ic %d sym %d V[ic] %lf Vsym %lf diff %lf\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GPU\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"%3s: %.*s%-30.30s\09\00", align 1
@_ZL22state_timer_descriptor = internal unnamed_addr constant [9 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"DEBUG %s at cycle %d H & H_check %d %lf %lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"DEBUG %s at cycle %d U & U_check %d %lf %lf\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"DEBUG %s at cycle %d V & V_check %d %lf %lf\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"out%1d\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"%d:   index global  i     j     lev   nlft  nrht  nbot  ntop \0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"%d: %6d  %6d %4d  %4d   %4d  %4d  %4d  %4d  %4d \0A\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"%d:  index     H        U         V      i     j     lev\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"%d: %6d %lf %lf %lf %4d  %4d   %4d  \0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"state_int_vals\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"state_cpu_timers\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"state_gpu_timers\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@.str.28 = private unnamed_addr constant [84 x i8] c"CRUX version mismatch for state data, version on file is %d, version in code is %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"       %-30s %lg\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"iteration%d\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Iteration = %d\09\09Simuation Time = %lf\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"mesh->ncells = %lu\09\09mesh->ncells_ghost = %lu\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"Initial Mass: %14.12lg\09\09Simulation Time: %lf\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"Initial Mass: %14.12lg\09\09Iteration Mass: %14.12lg\0A\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"Mass Difference: %12.6lg\09\09Mass Difference Percentage: %12.6lg%%\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"DEBUG in print_local ncycle is %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [86 x i8] c"%d:  index     H        U         V      i     j     lev   nlft   nrht   nbot   ntop\0A\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"%d: %6d                              %4d  %4d   %4d  %4d  %4d  %4d  %4d\0A\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"%d: %6d %lf %lf %lf %4d  %4d   %4d  %4d  %4d  %4d  %4d\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"%d: %6d %lf %lf %lf %4d  %4d   %4d\0A\00", align 1
@__const._ZN5State17print_failure_logEiddddb.filename = private unnamed_addr constant [12 x i8] c"failure.log\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"Failed because of nan for H_sum was equal to NAN\0A\00", align 1
@.str.44 = private unnamed_addr constant [66 x i8] c"Failed because mass difference is outside of accepted percentage\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"rollback%d.log\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"Rolling back because of nan for H_sum was equal to NAN\0A\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c"Rolling back because mass difference is outside of accepted percentage\0A\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"Rollback attempt %d of %d ---> Number of attempts left:%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"state_timer_apply_BCs\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"state_timer_set_timestep\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"state_timer_finite_difference\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"state_timer_refine_potential\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"state_timer_calc_mpot\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"state_timer_rezone_all\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"state_timer_mass_sum\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"state_timer_read\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"state_timer_write\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@str = private unnamed_addr constant [30 x i8] c" ---- State object info -----\00", align 1
@str.2 = private unnamed_addr constant [41 x i8] c"       === Restored state cpu timers ===\00", align 1

@_ZN5StateC1EP4Mesh = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN5StateC2EP4Mesh

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5StateC2EP4Mesh(ptr noundef nonnull align 8 dereferenceable(368) initializes((8, 12), (16, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.k, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.p, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.p, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i8 0, i64 144, i1 false)
  store ptr %1, ptr %i.v, align 8, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State4initEi(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 16)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.e, ptr %i.f, align 8, !tbaa !54
  %i.g = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 16)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.g, ptr %i.h, align 8, !tbaa !55
  %i.i = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef 16)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.i, ptr %i.j, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State8allocateEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 16)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.a, ptr %i.b, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef 8, ptr noundef nonnull @.str.1, i32 noundef 16)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.c, ptr %i.d, align 8, !tbaa !55
  %i.e = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef 16)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.e, ptr %i.f, align 8, !tbaa !56
  ret void
}

declare noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96), i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State6resizeEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.b)
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10MallocPlus18memory_realloc_allEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #3

declare void @_ZN10MallocPlus18memory_realloc_allEm(ptr noundef nonnull align 8 dereferenceable(96), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.a, ptr %i.b, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.c, ptr %i.d, align 8, !tbaa !55
  %i.e = tail call noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.e, ptr %i.f, align 8, !tbaa !56
  ret void
}

declare noundef ptr @_ZN10MallocPlus14get_memory_ptrEPKc(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State9terminateEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.h) ; 0 uses
  ret void
}

declare noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN5State21calc_refine_potentialERSt6vectorIiSaIiEERiS4_:bb.a
bb.o:                                             ; preds = %.sink.split, %bb.n, %bb.m, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %i.ej, label %bb.b, label %._crit_edge, !llvm.loop !121
}

declare noundef i64 @_ZN4Mesh13refine_smoothERSt6vectorIiSaIiEERiS4_(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN5State8mass_sumEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @cpu_timer_start(ptr noundef nonnull %2)
  switch i32 %1, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader38
  ]

.preheader38:                                     ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.j = load i64, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %wide.trip.count = and i64 %i.j, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %bb.d
  %indvars.iv48 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next49, %bb.d ] ; 4 uses
  %.sroa.012.042 = phi double [ 0.000000e+00, %.lr.ph44 ], [ %.sroa.012.1, %bb.d ] ; 3 uses
  %.sroa.7.041 = phi double [ 0.000000e+00, %.lr.ph44 ], [ %.sroa.7.1, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv48
  %i.s = load double, ptr %i.r, align 8, !tbaa !71
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1048
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv48
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load double, ptr %i.z, align 8, !tbaa !71
  %i.ab = fmul double %i.s, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 1072
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  %i.af = load double, ptr %i.ae, align 8, !tbaa !71
  %i.ag = fmul double %i.ab, %i.af
  %i.ah = fadd double %.sroa.7.041, %i.ag
  %i.ai = fadd double %.sroa.7.041, %.sroa.012.042 ; 2 uses
  %i.aj = fsub double %i.ai, %.sroa.012.042
  %i.ak = fsub double %i.ah, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.7.1 = phi double [ %i.ak, %bb.c ], [ %.sroa.7.041, %bb.b ] ; 2 uses
  %.sroa.012.1 = phi double [ %i.ai, %bb.c ], [ %.sroa.012.042, %bb.b ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !123

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.al = fadd double %.sroa.7.1, %.sroa.012.1
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.03539 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1048
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load double, ptr %i.ay, align 8, !tbaa !71
  %i.ba = fmul double %i.ar, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 1072
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.aw
  %i.be = load double, ptr %i.bd, align 8, !tbaa !71
  %i.bf = fmul double %i.ba, %i.be
  %i.bg = fadd double %.03539, %i.bf
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi double [ %i.bg, %bb.f ], [ %.03539, %bb.e ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bh = and i64 %indvars.iv.next, 4294967295
  %i.bi = icmp ugt i64 %i.h, %i.bh
  br i1 %i.bi, label %bb.e, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %bb.g, %.preheader, %._crit_edge.loopexit, %.preheader38, %bb.a
  %.034 = phi double [ %i.al, %._crit_edge.loopexit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader38 ], [ 0.000000e+00, %.preheader ], [ %.1, %bb.g ]
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !65
  %i.bj = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !71
  %i.bm = fadd double %i.bj, %i.bl
  store double %i.bm, ptr %i.bk, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret double %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5State24resize_old_device_memoryEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(368) %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5State18output_timing_infoEiid(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #11 align 2 {
thread-pre-split:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5State18output_timer_blockE17mesh_device_typesddddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State12timer_outputE12state_timers17mesh_device_typesi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77
  %i.f = icmp eq i32 %2, 0
  %i.g = zext i32 %1 to i64                       ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load double, ptr %i.i, align 8, !tbaa !71
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g
  %i.m = load i64, ptr %i.l, align 8, !tbaa !126
  %i.n = sitofp i64 %i.m to double
  %i.o = fmul nnan double %i.n, 1.000000e-09
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  store i8 47, ptr %i.a, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.p, align 1
  %i.q = icmp eq i32 %i.e, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.idx = icmp eq i32 %2, 1
  %.sroa.speculated = select i1 %.sroa.idx, ptr @.str.10, ptr @.str.9
  %i.r = shl nsw i32 %3, 1
  %i.s = zext i32 %1 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZL22state_timer_descriptor, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  %i.v = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.sroa.speculated, i32 noundef %i.r, ptr noundef nonnull @.str.11, ptr noundef %i.u) #21 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %.pre, %bb.e ], [ %i.c, %bb.d ]
  call void @_ZN4Mesh15parallel_outputEPKcdiS1_(ptr noundef nonnull align 8 dereferenceable(2288) %i.w, ptr noundef nonnull %i.a, double noundef %.0, i32 noundef %3, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_ZN4Mesh15parallel_outputEPKcdiS1_(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State37compare_state_cpu_local_to_cpu_globalEPS_PKcijjPiS3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(368) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = zext i32 %5 to i64                       ; 6 uses
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit59, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 5 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 5 uses
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !71
  %i.j = add nsw i64 %i.g, -1                     ; 4 uses
  %i.k = icmp eq i64 %i.j, 0                      ; 3 uses
  br i1 %i.k, label %bb.b, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !71
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
          to label %.noexc47 unwind label %bb.e   ; 5 uses

.noexc47:                                         ; preds = %bb.b
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !71
  br i1 %i.k, label %bb.c, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i43

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i43: ; preds = %.noexc47
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.idx.i.i.i.i.i.i.i44 = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i44, i1 false), !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i43, %.noexc47
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
          to label %.noexc54 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit61 ; 4 uses

.noexc54:                                         ; preds = %bb.c
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !71
  br i1 %i.k, label %.lr.ph.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50, %.noexc54
  br label %.lr.ph

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50: ; preds = %.noexc54
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.idx.i.i.i.i.i.i.i51 = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i51, i1 false), !tbaa !71
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.k
  %.idx = shl nuw nsw i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %.idx) #24
  %.idx144 = shl nuw nsw i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %.idx144) #24
  %.idx145 = shl nuw nsw i64 %i.g, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %.idx145) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit59

_ZNSt6vectorIdSaIdEED2Ev.exit59:                  ; preds = %bb.a, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit63

_ZNSt6vectorIdSaIdEED2Ev.exit61:                  ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit63

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !71 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.v = load double, ptr %i.u, align 8, !tbaa !71 ; 2 uses
  %i.w = fsub double %i.t, %i.v
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp ogt double %i.x, 2.000000e-02
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.z = trunc nuw i64 %indvars.iv to i32
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %2, i32 noundef %3, i32 noundef %i.z, double noundef %i.t, double noundef %i.v) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.af = fsub double %i.ac, %i.ae
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp ogt double %i.ag, 2.000000e-02
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = trunc nuw i64 %indvars.iv to i32
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %2, i32 noundef %3, i32 noundef %i.ai, double noundef %i.ac, double noundef %i.ae) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !71 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !71 ; 2 uses
  %i.ao = fsub double %i.al, %i.an
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fcmp ogt double %i.ap, 2.000000e-02
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = trunc nuw i64 %indvars.iv to i32
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %2, i32 noundef %3, i32 noundef %i.ar, double noundef %i.al, double noundef %i.an) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %bb.d, label %.lr.ph, !llvm.loop !128

_ZNSt6vectorIdSaIdEED2Ev.exit63:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit61, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %_ZNSt6vectorIdSaIdEED2Ev.exit61 ], [ %i.q, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State17print_object_infoEv(ptr noundef nonnull align 8 dereferenceable(368) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @_ZN10MallocPlus13memory_reportEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

declare void @_ZN10MallocPlus13memory_reportEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5State5printEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 776
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.h) #21 ; 0 uses
  %i.j = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 776
  store ptr %i.j, ptr %i.l, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = tail call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef %i.p)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1176
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76
  %.not = icmp ult i64 %i.q, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 776
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 620
  %i.x = load i32, ptr %i.w, align 4, !tbaa !77   ; 2 uses
end_hunk_1
