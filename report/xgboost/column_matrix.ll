Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/column_matrix?download=true
inline.NumInlined: 760
inline.NumDeleted: 363
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"struct.std::array" = type { [8 x i8] }

$_ZN7xgboost6common22MakeFixedVecWithMallocINS0_10ColumnTypeEEENS0_15RefResourceViewIT_EEmRKS4_ = comdat any

$_ZN4dmlc15LogMessageFatalD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev = comdat any

$_ZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEmRKS3_ = comdat any

$_ZN7xgboost6common22MakeFixedVecWithMallocIhEENS0_15RefResourceViewIT_EEmRKS3_ = comdat any

$_ZN7xgboost6common12ColumnMatrix16MissingIndicatorC2Emb = comdat any

$_ZN7xgboost6common7ReadVecINS0_15RefResourceViewIhEEEEbPNS0_25AlignedResourceReadStreamEPT_ = comdat any

$_ZN7xgboost6common7ReadVecINS0_15RefResourceViewINS0_10ColumnTypeEEEEEbPNS0_25AlignedResourceReadStreamEPT_ = comdat any

$_ZN7xgboost6common7ReadVecINS0_15RefResourceViewImEEEEbPNS0_25AlignedResourceReadStreamEPT_ = comdat any

$_ZN7xgboost6common7ReadVecINS0_15RefResourceViewIjEEEEbPNS0_25AlignedResourceReadStreamEPT_ = comdat any

$_ZN7xgboost6common25AlignedResourceReadStream4ReadIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEbE4typeEPS4_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN4dmlc15LogMessageFatal8GetEntryEv = comdat any

$_ZN4dmlc15LogMessageFatal5Entry4InitEPKci = comdat any

$_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv = comdat any

$_ZN4dmlc15LogMessageFatal5EntryD2Ev = comdat any

$_ZN4dmlc10StackTraceB5cxx11Emm = comdat any

$_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv = comdat any

$_ZN4dmlc8DemangleB5cxx11EPKc = comdat any

$_ZN4dmlc5ErrorD0Ev = comdat any

$_ZN7xgboost6common22MakeFixedVecWithMallocIjEENS0_15RefResourceViewIT_EEmRKS3_ = comdat any

$_ZN7xgboost6common15RefResourceViewIjED2Ev = comdat any

$_ZN7xgboost6common15RefResourceViewIjEC2EPjmSt10shared_ptrINS0_15ResourceHandlerEE = comdat any

$_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN7xgboost6common14MallocResource6ResizeILb0EEEvmSt4byte = comdat any

$_ZN7xgboost6common14MallocResource4DataEv = comdat any

$_ZNK7xgboost6common14MallocResource4SizeEv = comdat any

$_ZN7xgboost6common14MallocResourceD2Ev = comdat any

$_ZN7xgboost6common14MallocResourceD0Ev = comdat any

$_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_ = comdat any

$_ZN7xgboost6common15RefResourceViewImEC2EPmmSt10shared_ptrINS0_15ResourceHandlerEE = comdat any

$_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEC2EPS2_mSt10shared_ptrINS0_15ResourceHandlerEE = comdat any

$_ZN4dmlc14LogCheckFormatIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_ = comdat any

$_ZN7xgboost6common15RefResourceViewIhEC2EPhmSt10shared_ptrINS0_15ResourceHandlerEE = comdat any

$_ZN7xgboost6common25AlignedResourceReadStream7ConsumeImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEbE4typeEPS4_ = comdat any

$_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_ = comdat any

$_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm = comdat any

$_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZTIN4dmlc5ErrorE = comdat any

$_ZTSN4dmlc5ErrorE = comdat any

$_ZTVN4dmlc5ErrorE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN7xgboost6common14MallocResourceE = comdat any

$_ZTIN7xgboost6common14MallocResourceE = comdat any

$_ZTSN7xgboost6common14MallocResourceE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [60 x i8] c"/opt-bench/work/xgboost/xgboost/src/common/column_matrix.cc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Check failed: \00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"gmat.cut.Ptrs()[fid + 1] - gmat.cut.Ptrs()[fid] <= max_val\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local global %"struct.dmlc::LogMessageFatal::Entry" zeroinitializer, comdat, align 8
@_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN4dmlc5ErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4dmlc5ErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4dmlc5ErrorE = linkonce_odr constant [14 x i8] c"N4dmlc5ErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.11 = private unnamed_addr constant [14 x i8] c"Stack trace:\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"  [bt] (\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"basic_string::basic_string\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"DMLC_LOG_STACK_TRACE_DEPTH\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@_ZTVN4dmlc5ErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4dmlc5ErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4dmlc5ErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN7xgboost6common14MallocResourceESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN7xgboost6common14MallocResourceE = linkonce_odr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7xgboost6common14MallocResourceE, ptr @_ZN7xgboost6common14MallocResource4DataEv, ptr @_ZNK7xgboost6common14MallocResource4SizeEv, ptr @_ZN7xgboost6common14MallocResourceD2Ev, ptr @_ZN7xgboost6common14MallocResourceD0Ev] }, comdat, align 8
@_ZTIN7xgboost6common14MallocResourceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7xgboost6common14MallocResourceE, ptr @_ZTIN7xgboost6common15ResourceHandlerE }, comdat, align 8
@_ZTSN7xgboost6common14MallocResourceE = linkonce_odr constant [34 x i8] c"N7xgboost6common14MallocResourceE\00", comdat, align 1
@_ZTIN7xgboost6common15ResourceHandlerE = external constant ptr
@.str.22 = private unnamed_addr constant [66 x i8] c"/opt-bench/work/xgboost/xgboost/src/common/../data/../common/io.h\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"bad_malloc: Failed to allocate \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" bytes.\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.25 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/xgboost/xgboost/src/common/../data/../common/ref_resource_view.h\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"mem_->Size() >= n\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"reinterpret_cast<std::uintptr_t>(ptr) % std::alignment_of_v<T> == 0\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"w_n_bytes == n_bytes\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"w_n_bytes == remaining\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost6common12ColumnMatrix11InitStorageERKNS_16GHistIndexMatrixEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(218) initializes((32, 56)) %0, ptr noundef nonnull align 8 dereferenceable(225) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::common::RefResourceView.9", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.std::unique_ptr.11", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.xgboost::common::RefResourceView", align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 7 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.xgboost::common::RefResourceView", align 8 ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"struct.xgboost::common::ColumnMatrix::MissingIndicator", align 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 7 uses
  %i.h = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = add i32 %i.i, -1                         ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8
  %spec.select.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.l, i64 1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.m = zext i32 %i.j to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !18
  call void @_ZN7xgboost6common22MakeFixedVecWithMallocINS0_10ColumnTypeEEENS0_15RefResourceViewIT_EEmRKS4_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView.9") align 8 %3, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !21   ; 8 uses
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !20
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.u, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !24
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #9, !inline_history !27
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #9, !inline_history !27
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.g, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #9
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit

_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !21  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !24
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #9, !inline_history !31
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #9, !inline_history !31
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.k ], [ %i.ax, %bb.l ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.m, label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, !prof !30

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #9
  br label %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit

_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit: ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 -1, ptr %i.b, align 4, !tbaa !29
  %.not129 = icmp eq i32 %i.j, 0                  ; 2 uses
  br i1 %.not129, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph

.noexc:                                           ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.az = shl nuw nsw i64 %i.m, 3                 ; 2 uses
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #27 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.az, i1 false), !tbaa !32
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.m
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

.lr.ph:                                           ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ 0, %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.bd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !29
  %i.bl = sub i32 %i.bg, %i.bk                    ; 2 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !29
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !29, !noalias !36
  %.not.i = icmp ugt i32 %i.bl, %i.bm
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %.lr.ph
  call void @_ZN4dmlc14LogCheckFormatIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.11") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.n
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bn, ptr noundef nonnull @.str, i32 noundef 28)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.o

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc64
  %i.bo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.p ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 58)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.br = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bs, i64 noundef %i.bu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.r unwind label %bb.o

bb.o:                                             ; preds = %.noexc64, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %bb.cq

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.bx, %bb.o ], [ %i.by, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZNSt6vectorImSaImEED2Ev.exit111

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.pr118 = load ptr, ptr %4, align 8, !tbaa !39  ; 4 uses
  %.not.i73 = icmp eq ptr %.pr118, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %.pr118, align 8, !tbaa !41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pr118, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !28
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr118, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LEIjjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.noexc, label %.lr.ph, !llvm.loop !46

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit, %.noexc
  %.sroa.12.0 = phi i64 [ 0, %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit ], [ %i.bc, %.noexc ] ; 2 uses
  %.sroa.0112.0 = phi ptr [ null, %_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev.exit ], [ %i.ba, %.noexc ] ; 14 uses
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc75 unwind label %.loopexit.split-lp ; 2 uses

.noexc75:                                         ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %i.cm = add nsw i64 %i.cl, -1                   ; 2 uses
  %.not.i74 = icmp eq i64 %i.cm, 0
  br i1 %.not.i74, label %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %.noexc75
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %scevgep = getelementptr i8, ptr %.sroa.0112.0, i64 8
  br label %bb.t

.loopexit.i:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc77
  %i.co = icmp ugt i64 %i.cm, %i.cx
  br i1 %i.co, label %bb.t, label %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit, !llvm.loop !49

bb.t:                                             ; preds = %.loopexit.i, %.lr.ph16.i
  %i.cp = phi i64 [ 0, %.lr.ph16.i ], [ %i.cx, %.loopexit.i ] ; 3 uses
  %.01215.i = phi i32 [ 0, %.lr.ph16.i ], [ %i.cw, %.loopexit.i ]
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %scevgep158 = getelementptr i8, ptr %scevgep, i64 %i.cq
  %i.cr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc76 unwind label %.loopexit

.noexc76:                                         ; preds = %bb.t
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cp
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !29 ; 2 uses
  %i.cv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc77 unwind label %.loopexit

.noexc77:                                         ; preds = %.noexc76
  %i.cw = add i32 %.01215.i, 1                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29 ; 2 uses
  %i.db = icmp ult i32 %i.cu, %i.da
  br i1 %i.db, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.noexc77
  %i.dc = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 8 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %i.cp ; 8 uses
  %.promoted.i = load i64, ptr %i.dd, align 8, !tbaa !32 ; 3 uses
  %i.de = zext i32 %i.cu to i64                   ; 6 uses
  %wide.trip.count.i = zext i32 %i.da to i64      ; 5 uses
  %i.df = sub nsw i64 %wide.trip.count.i, %i.de   ; 3 uses
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dg = shl nuw nsw i64 %i.de, 3
  %scevgep159 = getelementptr nuw i8, ptr %i.dc, i64 %i.dg
  %i.dh = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep160 = getelementptr i8, ptr %i.dc, i64 %i.dh
  %bound0 = icmp ult ptr %i.dd, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, -4                      ; 3 uses
  %i.di = add nsw i64 %n.vec, %i.de
  %i.dj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i, i64 0
  %invariant.gep = getelementptr [8 x i8], ptr %i.dc, i64 %i.de
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dj, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi161 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !32, !alias.scope !51
  %wide.load162 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !32, !alias.scope !51
  %i.dl = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.dm = add <2 x i64> %wide.load162, %vec.phi161 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dm, %i.dl
  %i.do = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.do, ptr %i.dd, align 8, !tbaa !32, !alias.scope !57, !noalias !51
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i ], [ %i.di, %middle.block ] ; 4 uses
  %.ph = phi i64 [ %.promoted.i, %vector.memcheck ], [ %.promoted.i, %.lr.ph.i ], [ %i.do, %middle.block ] ; 2 uses
  %i.dp = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.dp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dq = phi i64 [ %i.dt, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i.prol
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !32
  %i.dt = add i64 %i.ds, %i.dq                    ; 3 uses
  store i64 %i.dt, ptr %i.dd, align 8, !tbaa !32
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !59

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.dt, %scalar.ph.prol ]
  %i.du = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dw = phi i64 [ %i.el, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.dz = add i64 %i.dy, %i.dw                    ; 2 uses
  store i64 %i.dz, ptr %i.dd, align 8, !tbaa !32
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !32
  %i.ed = add i64 %i.ec, %i.dz                    ; 2 uses
  store i64 %i.ed, ptr %i.dd, align 8, !tbaa !32
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.eh = add i64 %i.eg, %i.ed                    ; 2 uses
  store i64 %i.eh, ptr %i.dd, align 8, !tbaa !32
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !32
  %i.el = add i64 %i.ek, %i.eh                    ; 2 uses
  store i64 %i.el, ptr %i.dd, align 8, !tbaa !32
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %scalar.ph, !llvm.loop !61

_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit: ; preds = %.loopexit.i, %.noexc75
  br i1 %.not129, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit
  %i.em = uitofp i64 %spec.select.i to double
  %i.en = fmul double %2, %i.em                   ; 3 uses
  %i.eo = icmp eq i32 %i.j, 1
  br i1 %i.eo, label %.epil.preheader, label %.lr.ph123.new

.lr.ph123.new:                                    ; preds = %.lr.ph123
  %unroll_iter = and i64 %i.m, 4294967294
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  br label %bb.u

._crit_edge124.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod165.not = trunc i32 %i.j to i1
  br i1 %lcmp.mod165.not, label %.epil.preheader, label %._crit_edge124

.epil.preheader:                                  ; preds = %._crit_edge124.loopexit.unr-lcssa, %.lr.ph123
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next133.1, %._crit_edge124.loopexit.unr-lcssa ] ; 2 uses
  %.042121.epil.init = phi i1 [ true, %.lr.ph123 ], [ %..042121.1, %._crit_edge124.loopexit.unr-lcssa ]
  %lcmp.mod167 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod167)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv132.epil.init
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !32
  %i.es = uitofp i64 %i.er to double
  %i.et = fcmp ogt double %i.en, %i.es            ; 2 uses
  %i.eu = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv132.epil.init
  %..epil = zext i1 %i.et to i8
  %not..epil = xor i1 %i.et, true
  %..042121.epil = select i1 %not..epil, i1 %.042121.epil.init, i1 false
  store i8 %..epil, ptr %i.ev, align 1, !tbaa !18
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.epil.preheader, %._crit_edge124.loopexit.unr-lcssa, %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit
  %.042.lcssa = phi i1 [ true, %_ZNK7xgboost16GHistIndexMatrix16GetFeatureCountsEPm.exit ], [ %..042121.1, %._crit_edge124.loopexit.unr-lcssa ], [ %..042121.epil, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ew = and i64 %i.h, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i64 0, ptr %i.d, align 8, !tbaa !32
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView") align 8 %6, i64 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.v unwind label %bb.ai

.loopexit:                                        ; preds = %bb.t, %.noexc76
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.u:                                             ; preds = %bb.u, %.lr.ph123.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph123.new ], [ %indvars.iv.next133.1, %bb.u ] ; 4 uses
  %.042121 = phi i1 [ true, %.lr.ph123.new ], [ %..042121.1, %bb.u ]
  %niter = phi i64 [ 0, %.lr.ph123.new ], [ %niter.next.1, %bb.u ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv132
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !32
  %i.ez = uitofp i64 %i.ey to double
  %i.fa = fcmp ogt double %i.en, %i.ez            ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv132
  %. = zext i1 %i.fa to i8
  store i8 %., ptr %i.fb, align 1, !tbaa !18
  %indvars.iv.next133 = or disjoint i64 %indvars.iv132, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv.next133
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !32
  %i.fe = uitofp i64 %i.fd to double
  %i.ff = fcmp ogt double %i.en, %i.fe            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv.next133
  %..1 = zext i1 %i.ff to i8
  %i.fh = select i1 %i.ff, i1 true, i1 %i.fa
  %i.fi = xor i1 %i.fh, true
  %..042121.1 = select i1 %i.fi, i1 %.042121, i1 false ; 3 uses
  store i8 %..1, ptr %i.fg, align 1, !tbaa !18
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge124.loopexit.unr-lcssa, label %bb.u, !llvm.loop !64

bb.v:                                             ; preds = %._crit_edge124
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fo = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !21 ; 8 uses
  store <2 x ptr> %i.fo, ptr %i.fk, align 8, !tbaa !20
  %.not.i.i.i.i.i78 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i78, label %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.fq, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !24
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !25
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #9, !inline_history !65
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #9, !inline_history !65
  br label %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i79 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i79, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i80

bb.aa:                                            ; preds = %bb.y
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i80: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i81 = phi i32 [ %i.ft, %bb.z ], [ %i.gd, %bb.aa ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i.i81, 1
  br i1 %i.ge, label %bb.ab, label %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit, !prof !30

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #9
  br label %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit

_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i80, %bb.ab
  %i.gf = load ptr, ptr %i.fm, align 8, !tbaa !21 ; 8 uses
  %.not.i.i.i82 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i82, label %_ZN7xgboost6common15RefResourceViewImED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.gg, align 8, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4, !tbaa !24
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #9, !inline_history !66
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !25
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #9, !inline_history !66
  br label %_ZN7xgboost6common15RefResourceViewImED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i83 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i83, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84

bb.ag:                                            ; preds = %bb.ae
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i85 = phi i32 [ %i.gj, %bb.af ], [ %i.gt, %bb.ag ]
  %i.gu = icmp eq i32 %.0.i.i.i.i.i85, 1
  br i1 %i.gu, label %bb.ah, label %_ZN7xgboost6common15RefResourceViewImED2Ev.exit, !prof !30

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #9
  br label %_ZN7xgboost6common15RefResourceViewImED2Ev.exit

_ZN7xgboost6common15RefResourceViewImED2Ev.exit:  ; preds = %_ZN7xgboost6common15RefResourceViewImEaSEOS2_.exit, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i84, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.gv = load ptr, ptr %i.fj, align 8, !tbaa !50 ; 5 uses
  store i64 0, ptr %i.gv, align 8, !tbaa !32
  %i.gw = icmp ugt i32 %i.i, 1
  br i1 %i.gw, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %_ZN7xgboost6common15RefResourceViewImED2Ev.exit
  %i.gx = load ptr, ptr %i.n, align 8, !tbaa !62  ; 3 uses
  %wide.trip.count139 = and i64 %i.h, 4294967295  ; 2 uses
  %i.gy = add nsw i64 %wide.trip.count139, -1     ; 3 uses
  %i.gz = icmp eq i64 %wide.trip.count139, 2
  br i1 %i.gz, label %.epil.preheader168, label %.lr.ph127.new

.lr.ph127.new:                                    ; preds = %.lr.ph127
  %unroll_iter172 = and i64 %i.gy, -2
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge124
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.co

bb.aj:                                            ; preds = %bb.an, %.lr.ph127.new
  %indvars.iv136 = phi i64 [ 1, %.lr.ph127.new ], [ %indvars.iv.next137.1, %bb.an ] ; 6 uses
  %.040125 = phi i64 [ 0, %.lr.ph127.new ], [ %.1.1, %bb.an ]
  %niter173 = phi i64 [ 0, %.lr.ph127.new ], [ %niter173.next.1, %bb.an ]
  %i.hb = add nsw i64 %indvars.iv136, -1          ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !18
  %i.he = icmp eq i8 %i.hd, 0
  br i1 %i.he, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %i.hb
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !32
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.pn58 = phi i64 [ %i.hg, %bb.ak ], [ %spec.select.i, %bb.aj ]
  %.1 = add i64 %.pn58, %.040125                  ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv136
  store i64 %.1, ptr %i.hh, align 8, !tbaa !32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv136
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !18
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %indvars.iv136
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn58.1 = phi i64 [ %i.hm, %bb.am ], [ %spec.select.i, %bb.al ]
  %.1.1 = add i64 %.pn58.1, %.1                   ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv136
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %.1.1, ptr %i.ho, align 8, !tbaa !32
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %niter173.next.1 = add i64 %niter173, 2         ; 2 uses
  %niter173.ncmp.1 = icmp eq i64 %niter173.next.1, %unroll_iter172
  br i1 %niter173.ncmp.1, label %._crit_edge128.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !67

._crit_edge128.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod170.not = trunc i64 %i.gy to i1
  br i1 %lcmp.mod170.not, label %.epil.preheader168, label %._crit_edge128

.epil.preheader168:                               ; preds = %._crit_edge128.loopexit.unr-lcssa, %.lr.ph127
  %indvars.iv136.epil.init = phi i64 [ 1, %.lr.ph127 ], [ %indvars.iv.next137.1, %._crit_edge128.loopexit.unr-lcssa ] ; 2 uses
  %.040125.epil.init = phi i64 [ 0, %.lr.ph127 ], [ %.1.1, %._crit_edge128.loopexit.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %i.gy to i1
  call void @llvm.assume(i1 %lcmp.mod171)
  %i.hp = add nsw i64 %indvars.iv136.epil.init, -1 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !18
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %._crit_edge128.loopexit.epilog-lcssa, label %bb.ao

bb.ao:                                            ; preds = %.epil.preheader168
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0112.0, i64 %i.hp
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !32
  br label %._crit_edge128.loopexit.epilog-lcssa

._crit_edge128.loopexit.epilog-lcssa:             ; preds = %bb.ao, %.epil.preheader168
  %.pn58.epil = phi i64 [ %i.hu, %bb.ao ], [ %spec.select.i, %.epil.preheader168 ]
  %.1.epil = add i64 %.pn58.epil, %.040125.epil.init
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv136.epil.init
  store i64 %.1.epil, ptr %i.hv, align 8, !tbaa !32
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %._crit_edge128.loopexit.epilog-lcssa, %._crit_edge128.loopexit.unr-lcssa, %_ZN7xgboost6common15RefResourceViewImED2Ev.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !68
  %i.hy = fadd float %i.hx, 1.000000e+00
  %i.hz = fptosi float %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !29
  %.sroa.speculated.i = call noundef i32 @llvm.smax.i32(i32 %i.ib, i32 %i.hz)
  %i.ic = sext i32 %.sroa.speculated.i to i64
  %i.id = add nsw i64 %i.ic, -1                   ; 2 uses
  %.not.i86 = icmp ugt i64 %i.id, 255
  br i1 %.not.i86, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge128
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 1, ptr %i.ie, align 8, !tbaa !76
  br label %bb.at

bb.aq:                                            ; preds = %._crit_edge128
  %.not2.i = icmp ugt i64 %i.id, 65535
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br i1 %.not2.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i8 2, ptr %i.if, align 8, !tbaa !76
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store i8 4, ptr %i.if, align 8, !tbaa !76
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %i.ig = phi i64 [ 4, %bb.as ], [ 2, %bb.ar ], [ 1, %bb.ap ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !8
  %i.ij = getelementptr [8 x i8], ptr %i.gv, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !32
  %i.im = mul i64 %i.il, %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i8 0, ptr %i.e, align 1, !tbaa !28
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocIhEENS0_15RefResourceViewIT_EEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView.0") align 8 %7, i64 noundef %i.im, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.au unwind label %bb.bw

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = load <2 x ptr>, ptr %i.io, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, i8 0, i64 16, i1 false)
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !21 ; 8 uses
  store <2 x ptr> %i.ir, ptr %i.in, align 8, !tbaa !20
  %.not.i.i.i.i.i87 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i87, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 4294967297
  %i.iw = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.iv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.it, align 8, !tbaa !22
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !24
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !25
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #9, !inline_history !83
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !25
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #9, !inline_history !83
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit

bb.ax:                                            ; preds = %bb.av
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i88 = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i.i.i.i88, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89

bb.az:                                            ; preds = %bb.ax
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i90 = phi i32 [ %i.iw, %bb.ay ], [ %i.jg, %bb.az ]
  %i.jh = icmp eq i32 %.0.i.i.i.i.i.i.i90, 1
  br i1 %i.jh, label %bb.ba, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit, !prof !30

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #9
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit: ; preds = %bb.au, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89, %bb.ba
  %i.ji = load ptr, ptr %i.ip, align 8, !tbaa !21 ; 8 uses
  %.not.i.i.i91 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i91, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.jj, align 8, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !24
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !25
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #9, !inline_history !84
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !25
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #9, !inline_history !84
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i92 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i92, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93

bb.bf:                                            ; preds = %bb.bd
  %i.jw = atomicrmw volatile add ptr %i.jj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i94 = phi i32 [ %i.jm, %bb.be ], [ %i.jw, %bb.bf ]
  %i.jx = icmp eq i32 %.0.i.i.i.i.i94, 1
  br i1 %i.jx, label %bb.bg, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit, !prof !30

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #9
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit:  ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br i1 %.042.lcssa, label %bb.by, label %bb.bh

bb.bh:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.jy = load ptr, ptr %i.fj, align 8, !tbaa !50
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.m
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i64 0, ptr %i.f, align 8, !tbaa !32
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocImEENS0_15RefResourceViewIT_EEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView") align 8 %8, i64 noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bi unwind label %bb.bx

bb.bi:                                            ; preds = %bb.bh
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 16, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kg = load <2 x ptr>, ptr %i.kd, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i8 0, i64 16, i1 false)
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !21 ; 8 uses
end_hunk_0
