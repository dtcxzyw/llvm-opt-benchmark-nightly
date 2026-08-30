Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_proxy_README?download=true
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9, !noalias !12
  call void %i.b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 1), !inline_history !19
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !26
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !26
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
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ4mainE10container1B5cxx11) #19
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !28
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !tbaa !26
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
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !32 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store i32 1, ptr %i.p, align 8, !tbaa !35, !noalias !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !37, !noalias !29
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIPKcSaIS2_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8, !tbaa !38, !noalias !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !29
  store ptr %i.o, ptr %i.n, align 8, !tbaa !40, !alias.scope !29
  store ptr %i.r, ptr %5, align 8, !tbaa !43, !alias.scope !29
  %i.s = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15 unwind label %bb.u ; 4 uses

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15: ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !46
  store ptr %i.v, ptr %i.u, align 8, !tbaa !50
  store ptr %i.v, ptr %i.t, align 8, !tbaa !51
  %i.w = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23 unwind label %bb.v ; 4 uses

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23:   ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @.str.2, ptr %i.x, align 8, !tbaa !45
  store i64 ptrtoint (ptr @.str.1 to i64), ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 8) #20
  store ptr %i.w, ptr %i.r, align 8, !tbaa !46
  store ptr %i.y, ptr %i.u, align 8, !tbaa !50
  store ptr %i.y, ptr %i.t, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZZ4mainE10container1B5cxx11, ptr %i.z, align 8, !tbaa !52
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10DictionaryEENS1_16destroy_dispatchEDoFvvEEC1IPSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSG_EEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESS_, ptr %6, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10DictionaryEE5MemAtFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC1IPSt3mapIiSC_St4lessIiESaISt4pairIKiSC_EEEEESt15in_place_type_tIT_EENUlRS5_iE_8__invokeB5cxx11ESS_i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54
  store i32 1, ptr %i.b, align 4, !tbaa !28, !noalias !57
  invoke void @_ZN3pro2v46detail15invoke_dispatchI5MemAtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt3mapIiS9_St4lessIiESaISt4pairIKiS9_EEEiEEET0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZ4mainE10container1B5cxx11, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc26 unwind label %bb.w

.noexc26:                                         ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54
  %i.aa = load ptr, ptr %1, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc26
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %.noexc26
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %bb.f
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.aq = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %6) #19, !inline_history !62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.ar, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.o, ptr %i.as, align 8, !tbaa !40
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.p, align 8, !tbaa !28
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.p, align 8, !tbaa !28
  br label %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !63, !noalias !65
  br label %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit

_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit: ; preds = %bb.i, %bb.j
  %i.ax = phi ptr [ %i.r, %bb.i ], [ %.pre, %bb.j ]
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI10DictionaryEENS1_16destroy_dispatchEDoFvvEEC1ISt10shared_ptrISt6vectorIPKcSaISD_EEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESK_, ptr %7, align 8
  %.sroa.4.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI10DictionaryEE5MemAtFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEC1ISt10shared_ptrISt6vectorIPKcSaISJ_EEEEESt15in_place_type_tIT_EENUlRS5_iE_8__invokeB5cxx11ESQ_i, ptr %.sroa.4.0..sroa_idx.i.i28, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74
  store i32 1, ptr %i.a, align 4, !tbaa !28, !noalias !75
  invoke void @_ZN3pro2v46detail15invoke_dispatchI5MemAtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRSt6vectorIPKcSaISC_EEiEEET0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc36 unwind label %.body37.thread

.noexc36:                                         ; preds = %_ZN3pro2v45proxyI10DictionaryEC2IRSt10shared_ptrISt6vectorIPKcSaIS8_EEEEEOT_Qaaaantsr6detailE17specialization_ofINSt5decayITL0__E4typeENS1_ISD_EEEsr6detailE12pointer_likeISI_Esr3stdE18is_constructible_vISI_SG_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74
  %i.ay = load ptr, ptr %0, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32 unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32: ; preds = %.noexc36
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32
  %i.bd = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !26
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35

bb.k:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i32, %.noexc36
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %.body37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i29: ; preds = %bb.k
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20
  br label %.body37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.bo = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i40, label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %7) #19, !inline_history !62
  br label %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41

_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, %bb.l
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !40  ; 8 uses
  %.not.i.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i42, label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bq, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !37
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19, !inline_history !76
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19, !inline_history !76
  br label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.bt, %bb.p ], [ %i.cd, %bb.q ]
  %i.ce = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ce, label %bb.r, label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19
  br label %_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIPKcSaIS2_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN3pro2v45proxyI10DictionaryED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit41, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 0

bb.s:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
end_hunk_0
