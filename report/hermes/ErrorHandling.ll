inline.NumInlined: 89
inline.NumDeleted: 45
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }
%"class.llvh::StringRef" = type { ptr, i64 }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }

$_ZN4llvhplERKNS_5TwineES2_ = comdat any

@_ZZN6hermes12oom_categoryEvE8category = internal global { ptr } { ptr getelementptr inbounds inrange(-16, 64) ({ [10 x ptr] }, ptr @_ZTVZN6hermes12oom_categoryEvE16OOMErrorCategory, i32 0, i32 0, i32 2) }, align 8
@_ZTVZN6hermes12oom_categoryEvE16OOMErrorCategory = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZNSt3_V214error_categoryD2Ev, ptr @_ZZN6hermes12oom_categoryEvEN16OOMErrorCategoryD0Ev, ptr @_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory4nameEv, ptr @_ZNKSt3_V214error_category10_M_messageB5cxx11Ei, ptr @_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei, ptr @_ZNKSt3_V214error_category23default_error_conditionEi, ptr @_ZNKSt3_V214error_category10equivalentEiRKSt15error_condition, ptr @_ZNKSt3_V214error_category10equivalentERKSt10error_codei] }, align 8
@_ZGVZN6hermes12oom_categoryEvE8category = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [20 x i8] c"error_code(value = \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c", category = \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c", message = \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"vm_allocate_category\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Max heap size was exceeded\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Number of storages requested exceeded the limit\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Effective OOM\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Allocation occurred that was larger than a heap segment\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"CopyableVector capacity integer overflow\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"A test set a limit for virtual memory that was exceeded\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6hermes12oom_categoryEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6hermes12oom_categoryEvE8category acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes12oom_categoryEvE8category) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN6hermes12oom_categoryEvE8category, ptr nonnull @__dso_handle) #11 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes12oom_categoryEvE8category) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN6hermes12oom_categoryEvE8category
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3_V214error_categoryD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6hermes12oom_categoryEvE8category acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6hermes12oom_categoryEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes12oom_categoryEvE8category) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6hermes12oom_categoryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN6hermes12oom_categoryEvE8category, ptr nonnull @__dso_handle) #11 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes12oom_categoryEvE8category) #11
  br label %_ZN6hermes12oom_categoryEv.exit

_ZN6hermes12oom_categoryEv.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr @_ZZN6hermes12oom_categoryEvE8category, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes24convert_error_to_messageB5cxx11ESt10error_code(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 %1, ptr %2) local_unnamed_addr #0 {
_ZN4llvhplERKNS_5TwineES2_.exit7:
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 9 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 10 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 11 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 8 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %.sroa.059.0.insert.ext = zext i32 %1 to i64
  %i.a = inttoptr i64 %.sroa.059.0.insert.ext to ptr
  store ptr @.str, ptr %8, align 8, !tbaa !8, !alias.scope !9
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !8, !alias.scope !9
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 3, ptr %i.c, align 8, !tbaa !14, !alias.scope !9
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 10, ptr %i.d, align 1, !tbaa !17, !alias.scope !9
  store ptr %8, ptr %7, align 8, !tbaa !8, !alias.scope !18
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.1, ptr %i.e, align 8, !tbaa !8, !alias.scope !18
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 2, ptr %i.f, align 8, !tbaa !14, !alias.scope !18
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 3, ptr %i.g, align 1, !tbaa !17, !alias.scope !18
  %i.h = load ptr, ptr %2, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %2) #11 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %_ZN4llvhplERKNS_5TwineES2_.exit14, label %_ZN4llvhplERKNS_5TwineES2_.exit14.thread

_ZN4llvhplERKNS_5TwineES2_.exit14.thread:         ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit7
  store ptr %7, ptr %6, align 8, !tbaa !8, !alias.scope !25
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !8, !alias.scope !25
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 2, ptr %i.n, align 8, !tbaa !14, !alias.scope !25
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 3, ptr %i.o, align 1, !tbaa !17, !alias.scope !25
  br label %_ZN4llvhplERKNS_5TwineES2_.exit22

_ZN4llvhplERKNS_5TwineES2_.exit14:                ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14, !noalias !32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  switch i8 %.pre, label %_ZN4llvhplERKNS_5TwineES2_.exit22 [
    i8 0, label %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71
    i8 1, label %bb.a
  ]

_ZN4llvhplERKNS_5TwineES2_.exit22.thread71:       ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit14
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !14, !alias.scope !32
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.q, align 1, !tbaa !17, !alias.scope !32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.r = load ptr, ptr %2, align 8, !tbaa !23, !noalias !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !39
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1) #11, !inline_history !42
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.u, align 8, !tbaa !14, !alias.scope !43
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.v, align 1, !tbaa !17, !alias.scope !43
  br label %_ZN4llvhplERKNS_5TwineES2_.exit37

_ZN4llvhplERKNS_5TwineES2_.exit22:                ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit14, %_ZN4llvhplERKNS_5TwineES2_.exit14.thread
  %i.w = phi i8 [ 2, %_ZN4llvhplERKNS_5TwineES2_.exit14.thread ], [ %.pre, %_ZN4llvhplERKNS_5TwineES2_.exit14 ]
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17, !noalias !32
  %i.z = icmp eq i8 %i.y, 1                       ; 2 uses
  %.sroa.04.0.copyload.i.i16 = load ptr, ptr %6, align 8, !noalias !32
  %spec.select.i.i17 = select i1 %i.z, i8 %i.w, i8 2
  %spec.select14.i.i18 = select i1 %i.z, ptr %.sroa.04.0.copyload.i.i16, ptr %6
  store ptr %spec.select14.i.i18, ptr %5, align 8, !tbaa !8, !alias.scope !32
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.2, ptr %i.aa, align 8, !tbaa !8, !alias.scope !32
  br label %bb.b

bb.a:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit14
  store ptr @.str.2, ptr %5, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit22, %bb.a
  %spec.select.i.i17.sink = phi i8 [ %spec.select.i.i17, %_ZN4llvhplERKNS_5TwineES2_.exit22 ], [ 3, %bb.a ]
  %.sink = phi i8 [ 3, %_ZN4llvhplERKNS_5TwineES2_.exit22 ], [ 1, %bb.a ]
  %i.ab = phi i8 [ 2, %_ZN4llvhplERKNS_5TwineES2_.exit22 ], [ 3, %bb.a ]
  %i.ac = phi ptr [ %5, %_ZN4llvhplERKNS_5TwineES2_.exit22 ], [ @.str.2, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %spec.select.i.i17.sink, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.af = load ptr, ptr %2, align 8, !tbaa !23, !noalias !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !39
  call void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1) #11
  store ptr %i.ac, ptr %4, align 8, !tbaa !8, !alias.scope !43
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %9, ptr %i.ai, align 8, !tbaa !8, !alias.scope !43
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %i.ab, ptr %i.aj, align 8, !tbaa !14, !alias.scope !43
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 4, ptr %i.ak, align 1, !tbaa !17, !alias.scope !43
  store ptr %4, ptr %3, align 8, !tbaa !8, !alias.scope !48
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.3, ptr %i.al, align 8, !tbaa !8, !alias.scope !48
  br label %_ZN4llvhplERKNS_5TwineES2_.exit37

_ZN4llvhplERKNS_5TwineES2_.exit37:                ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71, %bb.b
  %.sink95 = phi i8 [ 0, %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71 ], [ 2, %bb.b ]
  %.sink93 = phi i8 [ 1, %_ZN4llvhplERKNS_5TwineES2_.exit22.thread71 ], [ 3, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sink95, ptr %i.am, align 8, !tbaa !14, !alias.scope !48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %.sink93, ptr %i.an, align 1, !tbaa !17, !alias.scope !48
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %3) #11
  %i.ao = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit37
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #4 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !noalias !59 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14, !noalias !59 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !14, !alias.scope !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !17, !alias.scope !59
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !30
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !30
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17, !noalias !59
  %i.m = icmp eq i8 %i.l, 1                       ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !noalias !59
  %spec.select.i = select i1 %i.m, i8 %i.b, i8 2
  %spec.select14.i = select i1 %i.m, ptr %.sroa.04.0.copyload.i, ptr %1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17, !noalias !59
  %i.p = icmp eq i8 %i.o, 1                       ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !59
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.03.0.i = select i1 %i.p, ptr %.sroa.03.0.copyload.i, ptr %2
  store ptr %spec.select14.i, ptr %0, align 8, !tbaa !8, !alias.scope !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.q, align 8, !tbaa !8, !alias.scope !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %spec.select.i, ptr %i.r, align 8, !tbaa !14, !alias.scope !59
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !17, !alias.scope !59
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

_ZNK4llvh5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN6hermes12hermes_fatalEPKc(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef %0, i1 noundef zeroext true) #13
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN6hermes12hermes_fatalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef %i.a, i1 noundef zeroext true) #13
  unreachable
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN6hermes12hermes_fatalEN4llvh9StringRefESt10error_code(ptr %0, i64 %1, i32 %2, ptr %3) local_unnamed_addr #6 {
bb.a:
  %4 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 5, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.c, align 1, !tbaa !17
  store ptr %4, ptr %8, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.e, align 1, !tbaa !17
  store ptr @.str.4, ptr %9, align 8, !tbaa !8
  store i8 3, ptr %i.d, align 8, !tbaa !14
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18) %8, ptr noundef nonnull align 8 dereferenceable(18) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @_ZN6hermes24convert_error_to_messageB5cxx11ESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 %2, ptr %3)
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 4, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 1, ptr %i.g, align 1, !tbaa !17
  store ptr %11, ptr %10, align 8, !tbaa !8
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %6, ptr noundef nonnull align 8 dereferenceable(18) %7, ptr noundef nonnull align 8 dereferenceable(18) %10)
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(18) %6) #11
  call void @_ZN4llvh18report_fatal_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext true) #13
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN4llvh18report_fatal_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN6hermes12oom_categoryEvEN16OOMErrorCategoryD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNSt3_V214error_categoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory4nameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret ptr @.str.5
}

declare void @_ZNKSt3_V214error_category10_M_messageB5cxx11Ei(ptr dead_on_unwind writable sret(%"struct.std::__cow_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN6hermes12oom_categoryEvENK16OOMErrorCategory7messageB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !62
  switch i32 %2, label %._crit_edge.i.i13 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i1
    i32 2, label %._crit_edge.i.i3
    i32 3, label %._crit_edge.i.i5
    i32 4, label %._crit_edge.i.i7
    i32 5, label %._crit_edge.i.i9
    i32 6, label %._crit_edge.i.i11
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store i64 8245935278387130190, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !8
  br label %bb.b

._crit_edge.i.i1:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 26, ptr %i.e, align 8, !tbaa !64
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #11 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !53
  %i.j = load i64, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.i, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, i64 26, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = load ptr, ptr %0, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.b

._crit_edge.i.i3:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 47, ptr %i.d, align 8, !tbaa !64
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #11 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !53
  %i.o = load i64, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.n, ptr noundef nonnull align 1 dereferenceable(47) @.str.8, i64 47, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.b

._crit_edge.i.i5:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.f, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.s, align 1, !tbaa !8
  br label %bb.b

._crit_edge.i.i7:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 55, ptr %i.c, align 8, !tbaa !64
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #11 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !53
  %i.u = load i64, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  store i64 %i.u, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.t, ptr noundef nonnull align 1 dereferenceable(55) @.str.10, i64 55, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.b

._crit_edge.i.i9:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 40, ptr %i.b, align 8, !tbaa !64
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #11 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !53
  %i.y = load i64, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  store i64 %i.y, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.x, ptr noundef nonnull align 1 dereferenceable(40) @.str.11, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.b

._crit_edge.i.i11:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 55, ptr %i.a, align 8, !tbaa !64
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #11 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !53
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !64  ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ab, ptr noundef nonnull align 1 dereferenceable(55) @.str.12, i64 55, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.b

._crit_edge.i.i13:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.13, i64 7, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.af, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ag, align 1, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i13, %._crit_edge.i.i11, %._crit_edge.i.i9, %._crit_edge.i.i7, %._crit_edge.i.i5, %._crit_edge.i.i3, %._crit_edge.i.i1, %._crit_edge.i.i
  ret void
}

; Function Attrs: nounwind
declare { i32, ptr } @_ZNKSt3_V214error_category23default_error_conditionEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt3_V214error_category10equivalentEiRKSt15error_condition(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt3_V214error_category10equivalentERKSt10error_codei(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!11 = distinct !{!11, !"_ZNK4llvh5Twine6concatERKS0_"}
!12 = distinct !{!12, !13, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!13 = distinct !{!13, !"_ZN4llvhplERKNS_5TwineES2_"}
!14 = !{!15, !16, i64 16}
!15 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !16, i64 16, !16, i64 17}
!16 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!17 = !{!15, !16, i64 17}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!20 = distinct !{!20, !"_ZNK4llvh5Twine6concatERKS0_"}
!21 = distinct !{!21, !22, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!22 = distinct !{!22, !"_ZN4llvhplERKNS_5TwineES2_"}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!27 = distinct !{!27, !"_ZNK4llvh5Twine6concatERKS0_"}
!28 = distinct !{!28, !29, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!29 = distinct !{!29, !"_ZN4llvhplERKNS_5TwineES2_"}
!30 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 1, !31, i64 17, i64 1, !31}
!31 = !{!16, !16, i64 0}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!34 = distinct !{!34, !"_ZNK4llvh5Twine6concatERKS0_"}
!35 = distinct !{!35, !36, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!36 = distinct !{!36, !"_ZN4llvhplERKNS_5TwineES2_"}
!37 = !{!35}
!38 = !{!33}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!41 = distinct !{!41, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!42 = distinct !{null}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!45 = distinct !{!45, !"_ZNK4llvh5Twine6concatERKS0_"}
!46 = distinct !{!46, !47, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!47 = distinct !{!47, !"_ZN4llvhplERKNS_5TwineES2_"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!50 = distinct !{!50, !"_ZNK4llvh5Twine6concatERKS0_"}
!51 = distinct !{!51, !52, !"_ZN4llvhplERKNS_5TwineES2_: argument 0"}
!52 = distinct !{!52, !"_ZN4llvhplERKNS_5TwineES2_"}
!53 = !{!54, !56, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !55, i64 0, !58, i64 8, !5, i64 16}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!56 = !{!"p1 omnipotent char", !57, i64 0}
!57 = !{!"any pointer", !5, i64 0}
!58 = !{!"long", !5, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!61 = distinct !{!61, !"_ZNK4llvh5Twine6concatERKS0_"}
!62 = !{!55, !56, i64 0}
!63 = !{!54, !58, i64 8}
!64 = !{!58, !58, i64 0}
end_hunk_0
