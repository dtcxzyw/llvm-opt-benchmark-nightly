Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/global_control?download=true
inline.NumInlined: 175
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3tbb6detail2r119global_control_impl6createERNS0_2d114global_controlE = comdat any

$_ZN3tbb6detail2r119global_control_impl7destroyERNS0_2d114global_controlE = comdat any

$_ZN3tbb6detail2r127allowed_parallelism_controlD0Ev = comdat any

$_ZNK3tbb6detail2r127allowed_parallelism_control13default_valueEv = comdat any

$_ZN3tbb6detail2r127allowed_parallelism_control12apply_activeEm = comdat any

$_ZNK3tbb6detail2r127allowed_parallelism_control22is_first_arg_preferredEmm = comdat any

$_ZN3tbb6detail2r127allowed_parallelism_control12active_valueEv = comdat any

$_ZN3tbb6detail2r115control_storageD0Ev = comdat any

$_ZN3tbb6detail2r115control_storage12apply_activeEm = comdat any

$_ZNK3tbb6detail2r115control_storage22is_first_arg_preferredEmm = comdat any

$_ZN3tbb6detail2r115control_storage12active_valueEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN3tbb6detail2r118stack_size_controlD0Ev = comdat any

$_ZNK3tbb6detail2r118stack_size_control13default_valueEv = comdat any

$_ZN3tbb6detail2r118stack_size_control12apply_activeEm = comdat any

$_ZN3tbb6detail2r130terminate_on_exception_controlD0Ev = comdat any

$_ZNK3tbb6detail2r130terminate_on_exception_control13default_valueEv = comdat any

$_ZN3tbb6detail2r116lifetime_controlD0Ev = comdat any

$_ZNK3tbb6detail2r116lifetime_control13default_valueEv = comdat any

$_ZN3tbb6detail2r116lifetime_control12apply_activeEm = comdat any

$_ZNK3tbb6detail2r116lifetime_control22is_first_arg_preferredEmm = comdat any

$_ZN3tbb6detail2r115control_storageD2Ev = comdat any

$_ZN3tbb6detail2r120leave_policy_controlD0Ev = comdat any

$_ZNK3tbb6detail2r120leave_policy_control13default_valueEv = comdat any

$_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE16_M_insert_uniqueIS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_ = comdat any

$_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE24_M_get_insert_unique_posERKS4_ = comdat any

$_ZN3tbb6detail2r119global_control_impl16erase_if_presentEPNS1_15control_storageERNS0_2d114global_controlE = comdat any

$_ZTVN3tbb6detail2r127allowed_parallelism_controlE = comdat any

$_ZTIN3tbb6detail2r127allowed_parallelism_controlE = comdat any

$_ZTSN3tbb6detail2r127allowed_parallelism_controlE = comdat any

$_ZTIN3tbb6detail2r115control_storageE = comdat any

$_ZTSN3tbb6detail2r115control_storageE = comdat any

$_ZTVN3tbb6detail2r115control_storageE = comdat any

$_ZZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads = comdat any

$_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads = comdat any

$_ZTVN3tbb6detail2r118stack_size_controlE = comdat any

$_ZTIN3tbb6detail2r118stack_size_controlE = comdat any

$_ZTSN3tbb6detail2r118stack_size_controlE = comdat any

$_ZTVN3tbb6detail2r130terminate_on_exception_controlE = comdat any

$_ZTIN3tbb6detail2r130terminate_on_exception_controlE = comdat any

$_ZTSN3tbb6detail2r130terminate_on_exception_controlE = comdat any

$_ZTVN3tbb6detail2r116lifetime_controlE = comdat any

$_ZTIN3tbb6detail2r116lifetime_controlE = comdat any

$_ZTSN3tbb6detail2r116lifetime_controlE = comdat any

$_ZTVN3tbb6detail2r120leave_policy_controlE = comdat any

$_ZTIN3tbb6detail2r120leave_policy_controlE = comdat any

$_ZTSN3tbb6detail2r120leave_policy_controlE = comdat any

@_ZN3tbb6detail2r1L8controlsE = internal unnamed_addr global [5 x ptr] zeroinitializer, align 16
@__func__._ZN3tbb6detail2r134global_control_active_value_unsafeENS0_2d114global_control9parameterE = private unnamed_addr constant [35 x i8] c"global_control_active_value_unsafe\00", align 1
@.str = private unnamed_addr constant [42 x i8] c"param < d1::global_control::parameter_max\00", align 1
@__func__._ZN3tbb6detail2r127global_control_active_valueEi = private unnamed_addr constant [28 x i8] c"global_control_active_value\00", align 1
@_ZTVN3tbb6detail2r127allowed_parallelism_controlE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r127allowed_parallelism_controlE, ptr @_ZN3tbb6detail2r115control_storageD2Ev, ptr @_ZN3tbb6detail2r127allowed_parallelism_controlD0Ev, ptr @_ZNK3tbb6detail2r127allowed_parallelism_control13default_valueEv, ptr @_ZN3tbb6detail2r127allowed_parallelism_control12apply_activeEm, ptr @_ZNK3tbb6detail2r127allowed_parallelism_control22is_first_arg_preferredEmm, ptr @_ZN3tbb6detail2r127allowed_parallelism_control12active_valueEv] }, comdat, align 8
@_ZTIN3tbb6detail2r127allowed_parallelism_controlE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r127allowed_parallelism_controlE, ptr @_ZTIN3tbb6detail2r115control_storageE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3tbb6detail2r127allowed_parallelism_controlE = linkonce_odr hidden constant [46 x i8] c"N3tbb6detail2r127allowed_parallelism_controlE\00", comdat, align 1
@_ZTIN3tbb6detail2r115control_storageE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r115control_storageE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN3tbb6detail2r115control_storageE = linkonce_odr hidden constant [34 x i8] c"N3tbb6detail2r115control_storageE\00", comdat, align 1
@_ZTVN3tbb6detail2r115control_storageE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r115control_storageE, ptr @_ZN3tbb6detail2r115control_storageD2Ev, ptr @_ZN3tbb6detail2r115control_storageD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN3tbb6detail2r115control_storage12apply_activeEm, ptr @_ZNK3tbb6detail2r115control_storage22is_first_arg_preferredEmm, ptr @_ZN3tbb6detail2r115control_storage12active_valueEv] }, comdat, align 8
@_ZZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads = linkonce_odr hidden global i64 0, comdat, align 8
@_ZTVN3tbb6detail2r118stack_size_controlE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r118stack_size_controlE, ptr @_ZN3tbb6detail2r115control_storageD2Ev, ptr @_ZN3tbb6detail2r118stack_size_controlD0Ev, ptr @_ZNK3tbb6detail2r118stack_size_control13default_valueEv, ptr @_ZN3tbb6detail2r118stack_size_control12apply_activeEm, ptr @_ZNK3tbb6detail2r115control_storage22is_first_arg_preferredEmm, ptr @_ZN3tbb6detail2r115control_storage12active_valueEv] }, comdat, align 8
@_ZTIN3tbb6detail2r118stack_size_controlE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r118stack_size_controlE, ptr @_ZTIN3tbb6detail2r115control_storageE }, comdat, align 8
@_ZTSN3tbb6detail2r118stack_size_controlE = linkonce_odr hidden constant [37 x i8] c"N3tbb6detail2r118stack_size_controlE\00", comdat, align 1
@_ZTVN3tbb6detail2r130terminate_on_exception_controlE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r130terminate_on_exception_controlE, ptr @_ZN3tbb6detail2r115control_storageD2Ev, ptr @_ZN3tbb6detail2r130terminate_on_exception_controlD0Ev, ptr @_ZNK3tbb6detail2r130terminate_on_exception_control13default_valueEv, ptr @_ZN3tbb6detail2r115control_storage12apply_activeEm, ptr @_ZNK3tbb6detail2r115control_storage22is_first_arg_preferredEmm, ptr @_ZN3tbb6detail2r115control_storage12active_valueEv] }, comdat, align 8
@_ZTIN3tbb6detail2r130terminate_on_exception_controlE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r130terminate_on_exception_controlE, ptr @_ZTIN3tbb6detail2r115control_storageE }, comdat, align 8
@_ZTSN3tbb6detail2r130terminate_on_exception_controlE = linkonce_odr hidden constant [49 x i8] c"N3tbb6detail2r130terminate_on_exception_controlE\00", comdat, align 1
@_ZTVN3tbb6detail2r116lifetime_controlE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r116lifetime_controlE, ptr @_ZN3tbb6detail2r115control_storageD2Ev, ptr @_ZN3tbb6detail2r116lifetime_controlD0Ev, ptr @_ZNK3tbb6detail2r116lifetime_control13default_valueEv, ptr @_ZN3tbb6detail2r116lifetime_control12apply_activeEm, ptr @_ZNK3tbb6detail2r116lifetime_control22is_first_arg_preferredEmm, ptr @_ZN3tbb6detail2r115control_storage12active_valueEv] }, comdat, align 8
@_ZTIN3tbb6detail2r116lifetime_controlE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r116lifetime_controlE, ptr @_ZTIN3tbb6detail2r115control_storageE }, comdat, align 8
@_ZTSN3tbb6detail2r116lifetime_controlE = linkonce_odr hidden constant [35 x i8] c"N3tbb6detail2r116lifetime_controlE\00", comdat, align 1
@_ZTVN3tbb6detail2r120leave_policy_controlE = linkonce_odr hidden constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2r120leave_policy_controlE, ptr @_ZN3tbb6detail2r115control_storageD2Ev, ptr @_ZN3tbb6detail2r120leave_policy_controlD0Ev, ptr @_ZNK3tbb6detail2r120leave_policy_control13default_valueEv, ptr @_ZN3tbb6detail2r115control_storage12apply_activeEm, ptr @_ZNK3tbb6detail2r115control_storage22is_first_arg_preferredEmm, ptr @_ZN3tbb6detail2r115control_storage12active_valueEv] }, comdat, align 8
@_ZTIN3tbb6detail2r120leave_policy_controlE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2r120leave_policy_controlE, ptr @_ZTIN3tbb6detail2r115control_storageE }, comdat, align 8
@_ZTSN3tbb6detail2r120leave_policy_controlE = linkonce_odr hidden constant [39 x i8] c"N3tbb6detail2r120leave_policy_controlE\00", comdat, align 1
@__func__._ZN3tbb6detail2r119global_control_impl6createERNS0_2d114global_controlE = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"gc.my_param < d1::global_control::parameter_max\00", align 1
@__func__._ZNK3tbb6detail2r126control_storage_comparatorclEPKNS0_2d114global_controlES6_ = private unnamed_addr constant [11 x i8] c"operator()\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"lhs->my_param < d1::global_control::parameter_max\00", align 1
@__func__._ZN3tbb6detail2r119global_control_impl7destroyERNS0_2d114global_controlE = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@__func__._ZN3tbb6detail2r119global_control_impl25remove_and_check_if_emptyERNS0_2d114global_controlE = private unnamed_addr constant [26 x i8] c"remove_and_check_if_empty\00", align 1

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r122global_control_acquireEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 128) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.d, align 16, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.e, align 64, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r127allowed_parallelism_controlE, i64 16), ptr %i.a, align 128, !tbaa !22
  store ptr %i.a, ptr @_ZN3tbb6detail2r1L8controlsE, align 16, !tbaa !24
  %i.f = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 128) ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.g, ptr %i.i, align 16, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 0, ptr %i.j, align 64, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r118stack_size_controlE, i64 16), ptr %i.f, align 128, !tbaa !22
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 8), align 8, !tbaa !24
  %i.k = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 128) ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.k, i8 0, i64 128, i1 false)
  store ptr %i.l, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.l, ptr %i.n, align 16, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 0, ptr %i.o, align 64, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r130terminate_on_exception_controlE, i64 16), ptr %i.k, align 128, !tbaa !22
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 16), align 16, !tbaa !24
  %i.p = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 128) ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.p, i8 0, i64 128, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.s, align 16, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 0, ptr %i.t, align 64, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r116lifetime_controlE, i64 16), ptr %i.p, align 128, !tbaa !22
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 24), align 8, !tbaa !24
  %i.u = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 128) ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(128) %i.u, i8 0, i64 128, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.v, ptr %i.x, align 16, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i8 0, ptr %i.y, align 64, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r120leave_policy_controlE, i64 16), ptr %i.u, align 128, !tbaa !22
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 32), align 16, !tbaa !24
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r122global_control_releaseEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZN3tbb6detail2r1L8controlsE, align 16, !tbaa !24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.a) #12
  %i.d = load ptr, ptr @_ZN3tbb6detail2r1L8controlsE, align 16, !tbaa !24
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.d)
  store ptr null, ptr @_ZN3tbb6detail2r1L8controlsE, align 16, !tbaa !24
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 8), align 8, !tbaa !24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.e) #12
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 8), align 8, !tbaa !24
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.h)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 8), align 8, !tbaa !24
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 16), align 16, !tbaa !24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.i) #12
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 16), align 16, !tbaa !24
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.l)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 16), align 16, !tbaa !24
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 24), align 8, !tbaa !24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.m) #12
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 24), align 8, !tbaa !24
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.p)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 24), align 8, !tbaa !24
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 32), align 16, !tbaa !24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.q) #12
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 32), align 16, !tbaa !24
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.t)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 32), align 16, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind sspstrong uwtable
define hidden void @_ZN3tbb6detail2r119global_control_lockEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN3tbb6detail2r1L8controlsE, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, %bb.a
  %.sroa.0.0.i.ph = phi i32 [ %i.m, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i ], [ 1, %bb.a ] ; 7 uses
  %i.c = icmp slt i32 %.sroa.0.0.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, %bb.d
  %i.d = load atomic i8, ptr %i.b monotonic, align 1, !range !26, !noundef !27
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  %i.f = atomicrmw xchg ptr %i.b, i8 1 seq_cst, align 1
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %.critedge.i, label %_ZN3tbb6detail2d110spin_mutex4lockEv.exit

.critedge.i:                                      ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i
  %i.h = icmp sgt i32 %.sroa.0.0.i.ph, 0
  br i1 %i.h, label %.lr.ph.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.0.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i32 [ %i.i, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.i = add nsw i32 %.01.i.i.i.prol, -1          ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !28

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i32 [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.i, %.lr.ph.i.i.i.prol ]
  %i.j = icmp ult i32 %.sroa.0.0.i.ph, 8
  br i1 %i.j, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.k = add nsw i32 %.01.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.l = icmp sgt i32 %.01.i.i.i, 8
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i, !llvm.loop !30

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i:      ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c
  %i.m = shl i32 %.sroa.0.0.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.outer, !llvm.loop !32

bb.d:                                             ; preds = %.critedge.i
  %i.n = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i, !llvm.loop !32

_ZN3tbb6detail2d110spin_mutex4lockEv.exit:        ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 8), align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.1, %_ZN3tbb6detail2d110spin_mutex4lockEv.exit
  %.sroa.0.0.i.1.ph = phi i32 [ %i.ae, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.1 ], [ 1, %_ZN3tbb6detail2d110spin_mutex4lockEv.exit ] ; 7 uses
  %i.q = icmp slt i32 %.sroa.0.0.i.1.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1.outer, %bb.f
  %i.r = load atomic i8, ptr %i.p monotonic, align 1, !range !26, !noundef !27
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge.i.1, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1
  %i.t = atomicrmw xchg ptr %i.p, i8 1 seq_cst, align 1
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %.critedge.i.1, label %_ZN3tbb6detail2d110spin_mutex4lockEv.exit.1

_ZN3tbb6detail2d110spin_mutex4lockEv.exit.1:      ; preds = %bb.e
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r1L8controlsE, i64 16), align 16, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.2.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.2.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.2, %_ZN3tbb6detail2d110spin_mutex4lockEv.exit.1
  %.sroa.0.0.i.2.ph = phi i32 [ %i.as, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.2 ], [ 1, %_ZN3tbb6detail2d110spin_mutex4lockEv.exit.1 ] ; 7 uses
  %i.x = icmp slt i32 %.sroa.0.0.i.2.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.2

.critedge.i.1:                                    ; preds = %bb.e, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.i.1
  %i.y = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.1, !llvm.loop !32

bb.g:                                             ; preds = %.critedge.i.1
  %i.z = icmp sgt i32 %.sroa.0.0.i.1.ph, 0
  br i1 %i.z, label %.lr.ph.i.i.i.1.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.1

.lr.ph.i.i.i.1.preheader:                         ; preds = %bb.g
  %xtraiter15 = and i32 %.sroa.0.0.i.1.ph, 7      ; 2 uses
  %lcmp.mod16.not = icmp eq i32 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.1.prol

.lr.ph.i.i.i.1.prol:                              ; preds = %.lr.ph.i.i.i.1.preheader, %.lr.ph.i.i.i.1.prol
  %.01.i.i.i.1.prol = phi i32 [ %i.aa, %.lr.ph.i.i.i.1.prol ], [ %.sroa.0.0.i.1.ph, %.lr.ph.i.i.i.1.preheader ]
  %prol.iter17 = phi i32 [ %prol.iter17.next, %.lr.ph.i.i.i.1.prol ], [ 0, %.lr.ph.i.i.i.1.preheader ]
  %i.aa = add nsw i32 %.01.i.i.i.1.prol, -1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter17.next = add i32 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i32 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.1.prol, !llvm.loop !33

.lr.ph.i.i.i.1.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.1.prol, %.lr.ph.i.i.i.1.preheader
  %.01.i.i.i.1.unr = phi i32 [ %.sroa.0.0.i.1.ph, %.lr.ph.i.i.i.1.preheader ], [ %i.aa, %.lr.ph.i.i.i.1.prol ]
  %i.ab = icmp ult i32 %.sroa.0.0.i.1.ph, 8
  br i1 %i.ab, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.1
  %.01.i.i.i.1 = phi i32 [ %i.ac, %.lr.ph.i.i.i.1 ], [ %.01.i.i.i.1.unr, %.lr.ph.i.i.i.1.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.ac = add nsw i32 %.01.i.i.i.1, -8
  tail call void @llvm.x86.sse2.pause()
end_hunk_0
