Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-file-unix.cc.X86_64?download=true
inline.NumInlined: 733
inline.NumDeleted: 370
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0

$_ZN4mold5FatalINS_6X86_64EElsIRA18_KcEERS2_OT_ = comdat any

$_ZTVN4mold10OutputFileINS_6X86_64EEE = comdat any

$_ZTVN4mold17LockingOutputFileINS_6X86_64EEE = comdat any

$_ZN4mold19output_buffer_startE = comdat any

$_ZN4mold17output_buffer_endE = comdat any

$_ZTIN4mold10OutputFileINS_6X86_64EEE = comdat any

$_ZTSN4mold10OutputFileINS_6X86_64EEE = comdat any

$_ZTIN4mold17LockingOutputFileINS_6X86_64EEE = comdat any

$_ZTSN4mold17LockingOutputFileINS_6X86_64EEE = comdat any

$_ZTVN4mold16MallocOutputFileINS_6X86_64EEE = comdat any

$_ZTIN4mold16MallocOutputFileINS_6X86_64EEE = comdat any

$_ZTSN4mold16MallocOutputFileINS_6X86_64EEE = comdat any

$_ZTVN4mold22MemoryMappedOutputFileINS_6X86_64EEE = comdat any

$_ZN4mold14output_tmpfileE = comdat any

$_ZTIN4mold22MemoryMappedOutputFileINS_6X86_64EEE = comdat any

$_ZTSN4mold22MemoryMappedOutputFileINS_6X86_64EEE = comdat any

@_ZN4mold7Counter9instancesE = linkonce_odr dso_local global { { ptr, ptr, ptr } } zeroinitializer, comdat, align 8
@_ZGVN4mold7Counter9instancesE = linkonce_odr dso_local global i64 0, comdat($_ZN4mold7Counter9instancesE), align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [10 x i8] c"open_file\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@_ZTVN4mold10OutputFileINS_6X86_64EEE = weak_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4mold10OutputFileINS_6X86_64EEE, ptr @__cxa_pure_virtual, ptr @_ZN4mold10OutputFileINS_6X86_64EED2Ev, ptr @_ZN4mold10OutputFileINS_6X86_64EED0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN4mold17LockingOutputFileINS_6X86_64EEE = weak_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4mold17LockingOutputFileINS_6X86_64EEE, ptr @_ZN4mold17LockingOutputFileINS_6X86_64EE5closeERNS_7ContextIS1_EE, ptr @_ZN4mold10OutputFileINS_6X86_64EED2Ev, ptr @_ZN4mold17LockingOutputFileINS_6X86_64EED0Ev, ptr @_ZN4mold17LockingOutputFileINS_6X86_64EE6extendERNS_7ContextIS1_EEl] }, comdat, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"cannot open \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ftruncate failed: \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c": mmap failed: \00", align 1
@_ZN4mold19output_buffer_startE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@_ZN4mold17output_buffer_endE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@_ZTIN4mold10OutputFileINS_6X86_64EEE = weak_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4mold10OutputFileINS_6X86_64EEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4mold10OutputFileINS_6X86_64EEE = weak_odr dso_local constant [33 x i8] c"N4mold10OutputFileINS_6X86_64EEE\00", comdat, align 1
@_ZTIN4mold17LockingOutputFileINS_6X86_64EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold17LockingOutputFileINS_6X86_64EEE, ptr @_ZTIN4mold10OutputFileINS_6X86_64EEE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4mold17LockingOutputFileINS_6X86_64EEE = weak_odr dso_local constant [40 x i8] c"N4mold17LockingOutputFileINS_6X86_64EEE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN4mold16MallocOutputFileINS_6X86_64EEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4mold16MallocOutputFileINS_6X86_64EEE, ptr @_ZN4mold16MallocOutputFileINS_6X86_64EE5closeERNS_7ContextIS1_EE, ptr @_ZN4mold16MallocOutputFileINS_6X86_64EED2Ev, ptr @_ZN4mold16MallocOutputFileINS_6X86_64EED0Ev, ptr @_ZN4mold16MallocOutputFileINS_6X86_64EE6extendERNS_7ContextIS1_EEl] }, comdat, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"calloc failed: \00", align 1
@_ZTIN4mold16MallocOutputFileINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold16MallocOutputFileINS_6X86_64EEE, ptr @_ZTIN4mold10OutputFileINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold16MallocOutputFileINS_6X86_64EEE = linkonce_odr dso_local constant [39 x i8] c"N4mold16MallocOutputFileINS_6X86_64EEE\00", comdat, align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"close_file\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"realloc failed: \00", align 1
@_ZTVN4mold22MemoryMappedOutputFileINS_6X86_64EEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4mold22MemoryMappedOutputFileINS_6X86_64EEE, ptr @_ZN4mold22MemoryMappedOutputFileINS_6X86_64EE5closeERNS_7ContextIS1_EE, ptr @_ZN4mold22MemoryMappedOutputFileINS_6X86_64EED2Ev, ptr @_ZN4mold22MemoryMappedOutputFileINS_6X86_64EED0Ev, ptr @_ZN4mold22MemoryMappedOutputFileINS_6X86_64EE6extendERNS_7ContextIS1_EEl] }, comdat, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"fchmod failed: \00", align 1
@_ZN4mold14output_tmpfileE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@_ZTIN4mold22MemoryMappedOutputFileINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold22MemoryMappedOutputFileINS_6X86_64EEE, ptr @_ZTIN4mold10OutputFileINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold22MemoryMappedOutputFileINS_6X86_64EEE = linkonce_odr dso_local constant [45 x i8] c"N4mold22MemoryMappedOutputFileINS_6X86_64EEE\00", comdat, align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.19 = private unnamed_addr constant [18 x i8] c": rename failed: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4mold7Counter9instancesE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4mold7Counter9instancesE], section "llvm.metadata"

@_ZN4mold17LockingOutputFileINS_6X86_64EEC1ERNS_7ContextIS1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN4mold17LockingOutputFileINS_6X86_64EEC2ERNS_7ContextIS1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN4mold7Counter9instancesE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN4mold7Counter9instancesE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN4mold7Counter9instancesE) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev, ptr nonnull @_ZN4mold7Counter9instancesE, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN4mold7Counter9instancesE) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !328    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !329
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #26
  br label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10OutputFileINS_6X86_64EE4openERNS_7ContextIS1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEli(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr nofree noundef align 8 dereferenceable(32) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 comdat align 2 {
._crit_edge.i.i:
  %5 = alloca %"class.std::allocator.2", align 1  ; 3 uses
  %6 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::error_code", align 8  ; 9 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !19
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noundef null)
  %i.d = load ptr, ptr %7, align 8, !tbaa !20     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i32 0, ptr %11, align 8, !tbaa !334
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #27
  store ptr %i.l, ptr %i.k, align 8, !tbaa !335
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !20
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2936
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2928
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !336
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.t, i64 noundef %i.q, ptr noundef nonnull @.str.1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.u = load ptr, ptr %2, align 8, !tbaa !20
  %i.v = load i64, ptr %i.h, align 8, !tbaa !18
  call void @_ZN4mold10path_cleanB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.v, ptr %i.u)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.w = load ptr, ptr %2, align 8, !tbaa !20     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load ptr, ptr %8, align 8, !tbaa !20     ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  %15 = icmp eq ptr %i.w, %i.x
  br i1 %15, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  switch i64 %i.ac, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !19
  store i8 %i.ae, ptr %i.w, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !18
  %i.ag = load ptr, ptr %2, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  store ptr %i.y, ptr %2, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !tbaa !19
  store <2 x i64> %i.aj, ptr %i.h, align 8, !tbaa !19
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !19
  store ptr %i.y, ptr %2, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !19
  store <2 x i64> %i.am, ptr %i.h, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %8, align 8, !tbaa !20
  store i64 %i.ak, ptr %i.z, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %8, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.an = phi ptr [ %i.w, %bb.f ], [ %i.z, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !18
  store i8 0, ptr %i.an, align 1, !tbaa !19
  %i.ap = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !19
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.au = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !19
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.az = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pr.pre = load i64, ptr %i.h, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit
  %.pr = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit ], [ %i.i, %bb.a ], [ %.pr.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.be = icmp eq i64 %.pr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i32 0, ptr %11, align 8, !tbaa !334
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #27
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !335
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread
  %i.bh = load ptr, ptr %2, align 8, !tbaa !20
  %lhsc = load i8, ptr %i.bh, align 1
  %i.bi = icmp eq i8 %lhsc, 45
  br i1 %i.bi, label %.critedge.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2)
  %i.bj = call i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathERSt10error_code(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  %i.bk = and i64 %i.bj, 255
  %i.bl = icmp ne i64 %i.bk, 1
  %i.bm = load i32, ptr %11, align 8
  %.not42 = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %i.bl, i1 %.not42, i1 false
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.bp) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41
  %i.bq = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !19
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br i1 %i.bn, label %.critedge.thread, label %bb.o

.critedge.thread:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.critedge
  %i.bv = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.bw, ptr %13, align 8, !tbaa !15
  %i.bx = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.by = load i64, ptr %i.h, align 8, !tbaa !18  ; 8 uses
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %bb.i, label %._crit_edge.i.i30

bb.i:                                             ; preds = %.critedge.thread
  %i.ca = icmp slt i64 %i.by, 0
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cb = add nuw i64 %i.by, 1                    ; 2 uses
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31, !prof !23

bb.l:                                             ; preds = %bb.k
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31: ; preds = %bb.k
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28 ; 2 uses
  store ptr %i.cd, ptr %13, align 8, !tbaa !20
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !19
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31, %.critedge.thread
  %i.ce = phi ptr [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i31 ], [ %i.bw, %.critedge.thread ] ; 3 uses
  switch i64 %i.by, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i30
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !19
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.bx, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i30, %bb.m, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.by, ptr %i.cg, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.by
  store i8 0, ptr %i.ch, align 1, !tbaa !19
  call void @_ZN4mold16MallocOutputFileINS_6X86_64EEC2ERNS_7ContextIS1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEli(ptr noundef nonnull align 8 dereferenceable(72) %i.bv, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %3, i32 noundef %4)
  %i.ci = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ck = load i64, ptr %i.bw, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.sink.split

bb.o:                                             ; preds = %.critedge
  %i.cl = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.cm, ptr %14, align 8, !tbaa !15
  %i.cn = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.co = load i64, ptr %i.h, align 8, !tbaa !18  ; 8 uses
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %bb.p, label %._crit_edge.i.i35

bb.p:                                             ; preds = %bb.o
  %i.cq = icmp slt i64 %i.co, 0
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

end_hunk_0
