inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.boost::container::dtl::singleton_default<boost::container::pmr::new_delete_resource_imp>::object_creator" = type { i8 }
%"struct.boost::container::dtl::singleton_default<boost::container::pmr::null_memory_resource_imp>::object_creator" = type { i8 }

$_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE = comdat any

$_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE = comdat any

$_ZN5boost9container3pmr23new_delete_resource_impD0Ev = comdat any

$_ZN5boost9container3pmr23new_delete_resource_imp11do_allocateEmm = comdat any

$_ZN5boost9container3pmr23new_delete_resource_imp13do_deallocateEPvmm = comdat any

$_ZNK5boost9container3pmr23new_delete_resource_imp11do_is_equalERKNS1_15memory_resourceE = comdat any

$_ZN5boost9container3pmr15memory_resourceD2Ev = comdat any

$_ZN5boost9container3pmr24null_memory_resource_impD0Ev = comdat any

$_ZN5boost9container3pmr24null_memory_resource_imp11do_allocateEmm = comdat any

$_ZN5boost9container3pmr24null_memory_resource_imp13do_deallocateEPvmm = comdat any

$_ZNK5boost9container3pmr24null_memory_resource_imp11do_is_equalERKNS1_15memory_resourceE = comdat any

$_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj = comdat any

$_ZTVN5boost9container3pmr23new_delete_resource_impE = comdat any

$_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj = comdat any

$_ZTIN5boost9container3pmr23new_delete_resource_impE = comdat any

$_ZTSN5boost9container3pmr23new_delete_resource_impE = comdat any

$_ZTIN5boost9container3pmr15memory_resourceE = comdat any

$_ZTSN5boost9container3pmr15memory_resourceE = comdat any

$_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj = comdat any

$_ZTVN5boost9container3pmr24null_memory_resource_impE = comdat any

$_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj = comdat any

$_ZTIN5boost9container3pmr24null_memory_resource_impE = comdat any

$_ZTSN5boost9container3pmr24null_memory_resource_impE = comdat any

@_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance = internal global %"struct.std::atomic" zeroinitializer, align 8
@_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance = internal global i64 0, align 8
@_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE = linkonce_odr global %"struct.boost::container::dtl::singleton_default<boost::container::pmr::new_delete_resource_imp>::object_creator" zeroinitializer, comdat, align 1
@_ZGVN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE), align 8
@_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE = linkonce_odr global %"struct.boost::container::dtl::singleton_default<boost::container::pmr::null_memory_resource_imp>::object_creator" zeroinitializer, comdat, align 1
@_ZGVN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE), align 8
@_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj = linkonce_odr global { ptr } { ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5boost9container3pmr23new_delete_resource_impE, i32 0, i32 0, i32 2) }, comdat, align 8
@_ZTVN5boost9container3pmr23new_delete_resource_impE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost9container3pmr23new_delete_resource_impE, ptr @_ZN5boost9container3pmr15memory_resourceD2Ev, ptr @_ZN5boost9container3pmr23new_delete_resource_impD0Ev, ptr @_ZN5boost9container3pmr23new_delete_resource_imp11do_allocateEmm, ptr @_ZN5boost9container3pmr23new_delete_resource_imp13do_deallocateEPvmm, ptr @_ZNK5boost9container3pmr23new_delete_resource_imp11do_is_equalERKNS1_15memory_resourceE] }, comdat, align 8
@_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj = linkonce_odr global i64 0, comdat, align 8
@_ZTIN5boost9container3pmr23new_delete_resource_impE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container3pmr23new_delete_resource_impE, ptr @_ZTIN5boost9container3pmr15memory_resourceE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost9container3pmr23new_delete_resource_impE = linkonce_odr constant [48 x i8] c"N5boost9container3pmr23new_delete_resource_impE\00", comdat, align 1
@_ZTIN5boost9container3pmr15memory_resourceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost9container3pmr15memory_resourceE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5boost9container3pmr15memory_resourceE = linkonce_odr constant [40 x i8] c"N5boost9container3pmr15memory_resourceE\00", comdat, align 1
@_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj = linkonce_odr global { ptr } { ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5boost9container3pmr24null_memory_resource_impE, i32 0, i32 0, i32 2) }, comdat, align 8
@_ZTVN5boost9container3pmr24null_memory_resource_impE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost9container3pmr24null_memory_resource_impE, ptr @_ZN5boost9container3pmr15memory_resourceD2Ev, ptr @_ZN5boost9container3pmr24null_memory_resource_impD0Ev, ptr @_ZN5boost9container3pmr24null_memory_resource_imp11do_allocateEmm, ptr @_ZN5boost9container3pmr24null_memory_resource_imp13do_deallocateEPvmm, ptr @_ZNK5boost9container3pmr24null_memory_resource_imp11do_is_equalERKNS1_15memory_resourceE] }, comdat, align 8
@_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj = linkonce_odr global i64 0, comdat, align 8
@_ZTIN5boost9container3pmr24null_memory_resource_impE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost9container3pmr24null_memory_resource_impE, ptr @_ZTIN5boost9container3pmr15memory_resourceE }, comdat, align 8
@_ZTSN5boost9container3pmr24null_memory_resource_impE = linkonce_odr constant [49 x i8] c"N5boost9container3pmr24null_memory_resource_impE\00", comdat, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.1, ptr @_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE }]
@llvm.used = appending global [2 x ptr] [ptr @_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE, ptr @_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE], section "llvm.metadata"

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN5boost9container3pmr19new_delete_resourceEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj) #8
  br label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEv.exit

_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN5boost9container3pmr20null_memory_resourceEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj) #8
  br label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEv.exit

_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost9container3pmr32default_memory_resource_instanceEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #8
  store ptr %i.d, ptr @_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance, align 8, !tbaa !8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5boost9container3pmr20set_default_resourceEPNS1_15memory_resourceE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %_ZN5boost9container3pmr19new_delete_resourceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN5boost9container3pmr19new_delete_resourceEv.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj) #8
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost9container3pmr19new_delete_resourceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj) #8
  br label %_ZN5boost9container3pmr19new_delete_resourceEv.exit

_ZN5boost9container3pmr19new_delete_resourceEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.d = phi ptr [ %0, %bb.a ], [ @_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj, %bb.b ], [ @_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj, %bb.c ], [ @_ZZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj, %bb.d ]
  %i.e = load atomic i8, ptr @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit, !prof !7

bb.e:                                             ; preds = %_ZN5boost9container3pmr19new_delete_resourceEv.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance) #8
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #8
  store ptr %i.h, ptr @_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance, align 8, !tbaa !8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance) #8
  br label %_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit

_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit: ; preds = %_ZN5boost9container3pmr19new_delete_resourceEv.exit, %bb.e, %bb.f
  %i.i = atomicrmw xchg ptr @_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance, ptr %i.d acq_rel, align 8
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance) #8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5boost9container3pmr19new_delete_resourceEv() #8
  store ptr %i.d, ptr @_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance, align 8, !tbaa !8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3pmr32default_memory_resource_instanceEvE8instance) #8
  br label %_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit

_ZN5boost9container3pmr32default_memory_resource_instanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic ptr, ptr @_ZZN5boost9container3pmr32default_memory_resource_instanceEvE8instance acquire, align 8
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #2 section ".text.startup" comdat($_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE14object_creatorC2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE13create_objectE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE14object_creatorC2Ev.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj) #8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE14object_creatorC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE8instanceEvE3obj) #8
  br label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE14object_creatorC2Ev.exit

_ZN5boost9container3dtl17singleton_defaultINS0_3pmr23new_delete_resource_impEE14object_creatorC2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.1() #2 section ".text.startup" comdat($_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE14object_creatorC2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE13create_objectE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE14object_creatorC2Ev.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj) #8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE14object_creatorC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE8instanceEvE3obj) #8
  br label %_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE14object_creatorC2Ev.exit

_ZN5boost9container3dtl17singleton_defaultINS0_3pmr24null_memory_resource_impEE14object_creatorC2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9container3pmr23new_delete_resource_impD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost9container3pmr23new_delete_resource_imp11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #10
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9container3pmr23new_delete_resource_imp13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost9container3pmr23new_delete_resource_imp11do_is_equalERKNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  ret i1 %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9container3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9container3pmr24null_memory_resource_impD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost9container3pmr24null_memory_resource_imp11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9container3pmr24null_memory_resource_imp13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost9container3pmr24null_memory_resource_imp11do_is_equalERKNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  ret i1 %i.a
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt13__atomic_baseIPN5boost9container3pmr15memory_resourceEE", !10, i64 0}
!10 = !{!"p1 _ZTSN5boost9container3pmr15memory_resourceE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
end_hunk_0
