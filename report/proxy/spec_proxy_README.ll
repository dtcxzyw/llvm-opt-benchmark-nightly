Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_proxy_README?download=true
inline.NumInlined: 386
inline.NumDeleted: 247
begin_hunk_0
$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10DictionaryEE5MemAtFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC1IPSt3mapIiSC_St4lessIiESaISt4pairIKiSC_EEEEESt15in_place_type_tIT_EENUlRS5_iE_8__invokeB5cxx11ESS_i = comdat any

$_ZN3pro2v46detail15invoke_dispatchI5MemAtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt3mapIiS9_St4lessIiESaISt4pairIKiS9_EEEiEEET0_DpOT1_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_5proxyI10DictionaryEENS1_16destroy_dispatchEDoFvvEEC1ISt10shared_ptrISt6vectorIPKcSaISD_EEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESK_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10DictionaryEE5MemAtFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC1ISt10shared_ptrISt6vectorIPKcSaISJ_EEEEESt15in_place_type_tIT_EENUlRS5_iE_8__invokeB5cxx11ESQ_i = comdat any

$_ZN3pro2v46detail15invoke_dispatchI5MemAtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt6vectorIPKcSaISC_EEiEEET0_DpOT1_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZZ4mainE10container1B5cxx11 = internal global %"class.std::map" zeroinitializer, align 8
@_ZGVZ4mainE10container1B5cxx11 = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"map::at\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [85 x i8] c"St23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15PrintDictionaryN3pro2v45proxyI10DictionaryEE(ptr nofree noundef align 8 dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !noalias !58
  call void %i.b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 1), !inline_history !55
  %i.c = load ptr, ptr %1, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca [1 x %"struct.std::pair"], align 8  ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.std::less", align 1        ; 4 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 4 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %6 = alloca %"class.pro::v4::proxy", align 8    ; 7 uses
  %7 = alloca %"class.pro::v4::proxy", align 8    ; 8 uses
  %i.d = load atomic i8, ptr @_ZGVZ4mainE10container1B5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i, !prof !77

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ4mainE10container1B5cxx11) #19
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !17
  invoke void @_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IiRA6_KcQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISC_SD_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.1)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ESt16initializer_listISA_ERKS7_RKSB_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZ4mainE10container1B5cxx11, ptr nonnull %2, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev, ptr nonnull @_ZZ4mainE10container1B5cxx11, ptr nonnull @__dso_handle) #19 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ4mainE10container1B5cxx11) #19
  br label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i: ; preds = %_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !79 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !19, !noalias !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !20, !noalias !78
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8, !tbaa !22, !noalias !78
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !78
  store ptr %i.o, ptr %i.n, align 8, !tbaa !25, !alias.scope !78
  store ptr %i.r, ptr %5, align 8, !tbaa !80, !alias.scope !78
  %i.s = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15 unwind label %8 ; 6 uses

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15: ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !31
  store ptr %i.v, ptr %i.u, align 8, !tbaa !32
  store ptr %i.v, ptr %i.t, align 8, !tbaa !33
  %i.w = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23 unwind label %bb.u ; 4 uses

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23:   ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.2, ptr %i.y, align 8, !tbaa !27
  %i.z = load i64, ptr %i.s, align 8
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ad) #20
  store ptr %i.w, ptr %i.r, align 8, !tbaa !31
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !32
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZZ4mainE10container1B5cxx11, ptr %i.ae, align 8, !tbaa !35
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10DictionaryEENS1_16destroy_dispatchEDoFvvEEC1IPSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSG_EEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESS_, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10DictionaryEE5MemAtFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC1IPSt3mapIiSC_St4lessIiESaISt4pairIKiSC_EEEEESt15in_place_type_tIT_EENUlRS5_iE_8__invokeB5cxx11ESS_i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81
  store i32 1, ptr %i.b, align 4, !tbaa !17, !noalias !82
  invoke void @_ZN3pro2v46detail15invoke_dispatchI5MemAtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt3mapIiS9_St4lessIiESaISt4pairIKiS9_EEEiEEET0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZ4mainE10container1B5cxx11, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc26 unwind label %bb.v

.noexc26:                                         ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81
  %i.af = load ptr, ptr %1, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc26
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ak = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %.noexc26
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %bb.f
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.av = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.av, null
  br i1 %.not.i.i27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %6) #19, !inline_history !67
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.o, ptr %i.ax, align 8, !tbaa !25
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i32, ptr %i.p, align 8, !tbaa !17
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.p, align 8, !tbaa !17
  br label %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !37, !noalias !85
  br label %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit

_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit: ; preds = %bb.i, %bb.j
  %i.bc = phi ptr [ %i.r, %bb.i ], [ %.pre, %bb.j ]
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10DictionaryEENS1_16destroy_dispatchEDoFvvEEC1ISt10shared_ptrISt6vectorIPKcSaISD_EEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESK_, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10DictionaryEE5MemAtFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC1ISt10shared_ptrISt6vectorIPKcSaISJ_EEEEESt15in_place_type_tIT_EENUlRS5_iE_8__invokeB5cxx11ESQ_i, ptr %.sroa.4.0..sroa_idx.i.i28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  store i32 1, ptr %i.a, align 4, !tbaa !17, !noalias !87
  invoke void @_ZN3pro2v46detail15invoke_dispatchI5MemAtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt6vectorIPKcSaISC_EEiEEET0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc36 unwind label %.body37.thread

.noexc36:                                         ; preds = %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86
  %i.bd = load ptr, ptr %0, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bd, i64 noundef %i.bf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32 unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32: ; preds = %.noexc36
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32
  %i.bi = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32, %.noexc36
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.body37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i29: ; preds = %bb.k
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %.body37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.bt = load ptr, ptr %7, align 8, !tbaa !84    ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i40, label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %7) #19, !inline_history !67
  br label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41

_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, %bb.l
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !25  ; 8 uses
  %.not.i.i42 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i42, label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bv, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !20
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #19, !inline_history !76
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #19, !inline_history !76
  br label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !17
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.by, %bb.p ], [ %i.ci, %bb.q ]
  %i.cj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cj, label %bb.r, label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #19
  br label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 0

bb.s:                                             ; preds = %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.t:                                             ; preds = %bb.d
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.t
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !16
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.s ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ %i.cl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ4mainE10container1B5cxx11) #19
  br label %bb.y

8:                                                ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47

bb.u:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47

bb.v:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i ] ; 2 uses
  %i.cu = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i46, label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47, label %bb.w

bb.w:                                             ; preds = %.body
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %6) #19, !inline_history !67
  br label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47

.body37.thread:                                   ; preds = %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.body37:                                          ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %.pre70 = load ptr, ptr %7, align 8, !tbaa !84  ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pre70, null
  br i1 %.not.i.i48, label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47, label %bb.x

bb.x:                                             ; preds = %.body37.thread, %.body37
  %eh.lpad-body3889 = phi { ptr, i32 } [ %i.cv, %.body37.thread ], [ %i.bn, %.body37 ]
  %i.cw = phi ptr [ @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10DictionaryEENS1_16destroy_dispatchEDoFvvEEC1ISt10shared_ptrISt6vectorIPKcSaISD_EEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESK_, %.body37.thread ], [ %.pre70, %.body37 ]
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %7) #19, !inline_history !67
  br label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47

_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47: ; preds = %bb.x, %.body37, %bb.w, %.body, %bb.u, %8
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %bb.w ], [ %9, %8 ], [ %i.cs, %bb.u ], [ %eh.lpad-body, %.body ], [ %i.bn, %.body37 ], [ %eh.lpad-body3889, %bb.x ]
  call void @_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.y

bb.y:                                             ; preds = %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47, %.loopexit
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit47 ], [ %.pn, %.loopexit ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IiRA6_KcQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISC_SD_EEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(6) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !17
  store i32 %i.a, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !38

.noexc11.i:                                       ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !14
  store i64 %i.d, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %2, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEEC2ESt16initializer_listISA_ERKS7_RKSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !93
  %.idx = mul nuw nsw i64 %2, 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_insert_range_uniqueIPKS8_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESJ_SJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i
  %.pr21 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ae, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i8 = icmp eq i64 %.pr21, 0
  br i1 %.not.i8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !17
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4, !tbaa !17 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !47 ; 2 uses
  %.not.i.i9 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i9, label %._crit_edge.i.i, label %bb.d, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #23
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !17
  %.pre82.i = load i32, ptr %.08.i, align 4, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.08.i, align 4, !tbaa !17
  %i.y = load i32, ptr %i.w, align 4, !tbaa !17
  %i.z = icmp slt i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %.08.i)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %.noexc6
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #19
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !93
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !93
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc7
  %.pr = phi i64 [ %.pr21, %bb.f ], [ %i.ad, %.noexc7 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_insert_range_uniqueIPKS8_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESJ_SJ_.exit, label %.lr.ph.i, !llvm.loop !89

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_insert_range_uniqueIPKS8_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESJ_SJ_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %.noexc6, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #19
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
end_hunk_0
