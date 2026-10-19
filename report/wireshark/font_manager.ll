Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/font_manager?download=true
inline.NumInlined: 419
inline.NumDeleted: 215
begin_hunk_0
@__dso_handle = external hidden global i8
@_ZTV11FontManager = external constant { [14 x ptr] }, align 8
@recent = external local_unnamed_addr global %struct.recent_settings_tag, align 8
@mainApp = external local_unnamed_addr global ptr, align 8
@prefs = external local_unnamed_addr global %struct._e_prefs, align 8
@_ZN16QCoreApplication4selfE = external local_unnamed_addr global ptr, align 8
@_ZN10QByteArray6_emptyE = external constant i8, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DejaVu Sans Mono\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Liberation Mono\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Noto Sans Mono\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Ubuntu Mono\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Bitstream Vera Sans Mono\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"FreeMono\00", align 1
@"_ZTIZN11FontManagerC1EP7QObjectE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN11FontManagerC1EP7QObjectE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN11FontManagerC1EP7QObjectE3$_0" = internal constant [33 x i8] c"ZN11FontManagerC1EP7QObjectE3$_0\00", align 1
@_ZN15MainApplication16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_font_manager.cpp, ptr null }]
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN11FontManagerC1EP7QObject = unnamed_addr alias void (ptr, ptr), ptr @_ZN11FontManagerC2EP7QObject
@_ZN11FontManagerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11FontManagerD2Ev

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN6QMutexD2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11QBasicMutex15destroyInternalEP13QMutexPrivate(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #24
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef ptr @_ZN11FontManager8instanceEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr @_ZN11FontManager6mutex_E, ptr null, ptr inttoptr (i64 1 to ptr) acquire acquire, align 8
  %i.b = extractvalue { ptr, i1 } %i.a, 1
  br i1 %i.b, label %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11QBasicMutex12lockInternalEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) @_ZN11FontManager6mutex_E) #25
  br label %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit

_ZN12QMutexLockerI6QMutexEC2EPS0_.exit:           ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr @_ZN11FontManager9instance_E, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit
  %i.e = invoke noalias noundef dereferenceable_or_null(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.d unwind label %bb.f       ; 4 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11FontManagerC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(57) %i.e, ptr noundef null)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr @_ZN11FontManager9instance_E, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 64) #27
  br label %bb.j

bb.h:                                             ; preds = %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit, %bb.e
  %i.h = phi ptr [ %i.c, %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit ], [ %i.e, %bb.e ]
  %i.i = cmpxchg ptr @_ZN11FontManager6mutex_E, ptr inttoptr (i64 1 to ptr), ptr null release monotonic, align 8
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZN12QMutexLockerI6QMutexED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11QBasicMutex14unlockInternalEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) @_ZN11FontManager6mutex_E) #25
  br label %_ZN12QMutexLockerI6QMutexED2Ev.exit

_ZN12QMutexLockerI6QMutexED2Ev.exit:              ; preds = %bb.h, %bb.i
  ret ptr %i.h

bb.j:                                             ; preds = %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.f ]
  %i.k = cmpxchg ptr @_ZN11FontManager6mutex_E, ptr inttoptr (i64 1 to ptr), ptr null release monotonic, align 8
  %i.l = extractvalue { ptr, i1 } %i.k, 1
  br i1 %i.l, label %_ZN12QMutexLockerI6QMutexED2Ev.exit3, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11QBasicMutex14unlockInternalEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) @_ZN11FontManager6mutex_E) #25
  br label %_ZN12QMutexLockerI6QMutexED2Ev.exit3

_ZN12QMutexLockerI6QMutexED2Ev.exit3:             ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11FontManagerC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 4 uses
  %4 = alloca %class.QFont, align 8               ; 8 uses
  %5 = alloca %class.QFont, align 8               ; 8 uses
  %6 = alloca %class.QFont, align 8               ; 7 uses
  tail call void @_ZN7QObjectC2EPS_(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV11FontManager, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  invoke void @_ZN5QFontC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.b)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  invoke void @_ZN5QFontC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.c)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 24), align 8
  store i32 %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN13QFontDatabase10systemFontENS_10SystemFontE(ptr dead_on_unwind nonnull writable sret(%class.QFont) align 8 %4, i32 noundef 0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = load ptr, ptr %4, align 8
  store ptr %i.g, ptr %i.b, align 8
  store ptr %i.f, ptr %4, align 8
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8
  %i.k = load i32, ptr %i.i, align 8
  store i32 %i.k, ptr %i.h, align 8
  store i32 %i.j, ptr %i.i, align 8
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN13QFontDatabase10systemFontENS_10SystemFontE(ptr dead_on_unwind nonnull writable sret(%class.QFont) align 8 %6, i32 noundef 1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11FontManager18guaranteeMonospaceERK5QFont(ptr dead_on_unwind nonnull writable sret(%class.QFont) align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %5, align 8
  store ptr %i.m, ptr %i.c, align 8
  store ptr %i.l, ptr %5, align 8
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8
  %i.q = load i32, ptr %i.o, align 8
  store i32 %i.q, ptr %i.n, align 8
  store i32 %i.p, ptr %i.o, align 8
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %5) #25
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.r = load ptr, ptr @_ZN16QCoreApplication4selfE, align 8 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7QObject18installEventFilterEPS_(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.r, ptr noundef %0)
          to label %bb.n unwind label %bb.y

bb.h:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.i:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.j:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.k:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %6) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr @mainApp, align 8          ; 4 uses
  %.not9 = icmp eq ptr %i.x, null
  br i1 %.not9, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8
  %i.ae = ptrtoint ptr %0 to i64
  store i64 %i.ae, ptr %2, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN11FontManagerC1EP7QObjectE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ac, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN11FontManagerC1EP7QObjectE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.ab, align 8
  invoke void @_ZN15MainApplication23whenInitializedDispatchEPK7QObjectSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable_or_null(168) %i.x, ptr noundef %0, ptr noundef nonnull align 8 %2)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, i32 noundef 3)
          to label %bb.x unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #24
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i7.i = icmp eq ptr %i.ak, null
  br i1 %.not.i7.i, label %.body, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, i32 noundef 3)
          to label %.body unwind label %bb.v      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #24
  unreachable

bb.w:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 ptrtoint (ptr @_ZN15MainApplication14appInitializedEv to i64), ptr %i.a, align 8, !noalias !13
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i.i, align 8, !noalias !13
  %i.ao = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc unwind label %bb.y     ; 4 uses

.noexc:                                           ; preds = %bb.w
  store i32 1, ptr %i.ao, align 4, !noalias !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @"_ZN9QtPrivate18QFunctorSlotObjectIZN11FontManagerC1EP7QObjectE3$_0Li0ENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseES3_PPvPb", ptr %i.ap, align 8, !noalias !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %0, ptr %i.aq, align 8, !noalias !13
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef nonnull align 8 dereferenceable_or_null(168) %i.x, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef null, ptr noundef %i.ao, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN15MainApplication16staticMetaObjectE)
          to label %.noexc14 unwind label %bb.y

.noexc14:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #25
  br label %bb.x

bb.x:                                             ; preds = %.noexc14, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.z

bb.y:                                             ; preds = %bb.g, %.noexc, %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.x, %bb.n
  ret void

.body:                                            ; preds = %bb.y, %bb.u, %bb.t, %bb.m, %bb.j
  %.pn10 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.aj, %bb.t ], [ %.pn, %bb.m ], [ %i.ar, %bb.y ], [ %i.aj, %bb.u ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.c) #25
  br label %bb.aa

bb.aa:                                            ; preds = %.body, %bb.i
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %.body ], [ %i.t, %bb.i ]
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %i.b) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.h
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn, %bb.aa ], [ %i.s, %bb.h ]
  call void @_ZN7QObjectD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #25
  resume { ptr, i32 } %.pn10.pn.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObjectC2EPS_(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZN5QFontC1Ev(ptr noundef align 8 dereferenceable_or_null(12)) unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @_ZN13QFontDatabase10systemFontENS_10SystemFontE(ptr dead_on_unwind writable sret(%class.QFont) align 8, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN5QFontD1Ev(ptr noundef align 8 dead_on_return(12) dereferenceable_or_null(12)) unnamed_addr #7

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11FontManager18guaranteeMonospaceERK5QFont(ptr dead_on_unwind noalias writable sret(%class.QFont) align 8 %0, ptr noundef align 8 dereferenceable(12) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 16            ; 5 uses
  %5 = alloca %class.QString, align 16            ; 5 uses
  %6 = alloca %class.QString, align 16            ; 5 uses
  %7 = alloca %class.QString, align 16            ; 5 uses
  %8 = alloca %class.QList, align 16              ; 30 uses
  %9 = alloca %class.QString, align 16            ; 10 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QString, align 16           ; 10 uses
  %12 = alloca %class.QString, align 16           ; 10 uses
  %13 = alloca %class.QString, align 16           ; 10 uses
  %14 = alloca %class.QString, align 16           ; 10 uses
  %15 = alloca %class.QFontInfo, align 8          ; 7 uses
  %16 = alloca %class.QList, align 16             ; 14 uses
  tail call void @_ZN5QFontC1ERKS_(ptr noundef align 8 dereferenceable_or_null(12) %0, ptr noundef align 8 dereferenceable(12) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN9QFontInfoC1ERK5QFont(ptr noundef nonnull align 8 dereferenceable_or_null(8) %15, ptr noundef align 8 dereferenceable(12) %0)
          to label %bb.b unwind label %bb.au

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZNK9QFontInfo10fixedPitchEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %15)
          to label %bb.c unwind label %bb.av

bb.c:                                             ; preds = %bb.b
  call void @_ZN9QFontInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br i1 %i.a, label %bb.az, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 16, ptr nonnull @.str.3)
          to label %bb.e unwind label %bb.t, !noalias !16

bb.e:                                             ; preds = %bb.d
  %i.b = load <2 x ptr>, ptr %7, align 16, !noalias !16
  store <2 x ptr> %i.b, ptr %9, align 16, !noalias !16
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.e = load i64, ptr %i.d, align 16, !noalias !16
  store i64 %i.e, ptr %i.c, align 16, !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !16
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.g = load i64, ptr %i.f, align 16, !noalias !16
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.noexc.i unwind label %bb.u, !noalias !16

.noexc.i:                                         ; preds = %bb.e
  %i.h = load ptr, ptr %8, align 16, !noalias !16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i
  %i.i = load atomic i32, ptr %i.h monotonic, align 4, !noalias !16
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i.i, label %_ZN5QListI7QStringElsEOS0_.exit.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i.i, %.noexc.i
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit.i unwind label %bb.u, !noalias !16

_ZN5QListI7QStringElsEOS0_.exit.i:                ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 15, ptr nonnull @.str.4)
          to label %bb.f unwind label %bb.v, !noalias !16

bb.f:                                             ; preds = %_ZN5QListI7QStringElsEOS0_.exit.i
  %i.k = load <2 x ptr>, ptr %6, align 16, !noalias !16
  store <2 x ptr> %i.k, ptr %10, align 16, !noalias !16
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = load i64, ptr %i.m, align 16, !noalias !16
  store i64 %i.n, ptr %i.l, align 16, !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !16
  %i.o = load i64, ptr %i.f, align 16, !noalias !16
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %.noexc29.i unwind label %bb.w, !noalias !16

.noexc29.i:                                       ; preds = %bb.f
  %i.p = load ptr, ptr %8, align 16, !noalias !16 ; 2 uses
  %.not.i.i.i.i.i.i.i26.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i26.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i28.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i27.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i27.i: ; preds = %.noexc29.i
  %i.q = load atomic i32, ptr %i.p monotonic, align 4, !noalias !16
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i28.i, label %_ZN5QListI7QStringElsEOS0_.exit31.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i28.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i27.i, %.noexc29.i
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit31.i unwind label %bb.w, !noalias !16

_ZN5QListI7QStringElsEOS0_.exit31.i:              ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i28.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 14, ptr nonnull @.str.5)
          to label %bb.g unwind label %bb.x, !noalias !16

bb.g:                                             ; preds = %_ZN5QListI7QStringElsEOS0_.exit31.i
  %i.s = load <2 x ptr>, ptr %5, align 16, !noalias !16
  store <2 x ptr> %i.s, ptr %11, align 16, !noalias !16
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i64, ptr %i.u, align 16, !noalias !16
  store i64 %i.v, ptr %i.t, align 16, !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !16
  %i.w = load i64, ptr %i.f, align 16, !noalias !16
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %.noexc37.i unwind label %bb.y, !noalias !16

.noexc37.i:                                       ; preds = %bb.g
  %i.x = load ptr, ptr %8, align 16, !noalias !16 ; 2 uses
  %.not.i.i.i.i.i.i.i34.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i34.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i36.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i35.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i35.i: ; preds = %.noexc37.i
  %i.y = load atomic i32, ptr %i.x monotonic, align 4, !noalias !16
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i36.i, label %_ZN5QListI7QStringElsEOS0_.exit39.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i36.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i35.i, %.noexc37.i
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit39.i unwind label %bb.y, !noalias !16

_ZN5QListI7QStringElsEOS0_.exit39.i:              ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i36.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 11, ptr nonnull @.str.6)
          to label %bb.h unwind label %bb.z, !noalias !16

bb.h:                                             ; preds = %_ZN5QListI7QStringElsEOS0_.exit39.i
  %i.aa = load <2 x ptr>, ptr %4, align 16, !noalias !16
  store <2 x ptr> %i.aa, ptr %12, align 16, !noalias !16
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load i64, ptr %i.ac, align 16, !noalias !16
  store i64 %i.ad, ptr %i.ab, align 16, !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !16
  %i.ae = load i64, ptr %i.f, align 16, !noalias !16
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %.noexc45.i unwind label %bb.aa, !noalias !16

.noexc45.i:                                       ; preds = %bb.h
  %i.af = load ptr, ptr %8, align 16, !noalias !16 ; 2 uses
  %.not.i.i.i.i.i.i.i42.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i42.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i44.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i43.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i43.i: ; preds = %.noexc45.i
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4, !noalias !16
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i44.i, label %_ZN5QListI7QStringElsEOS0_.exit47.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i44.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i43.i, %.noexc45.i
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit47.i unwind label %bb.aa, !noalias !16

_ZN5QListI7QStringElsEOS0_.exit47.i:              ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i44.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 24, ptr nonnull @.str.7)
          to label %bb.i unwind label %bb.ab, !noalias !16

bb.i:                                             ; preds = %_ZN5QListI7QStringElsEOS0_.exit47.i
  %i.ai = load <2 x ptr>, ptr %3, align 16, !noalias !16
  store <2 x ptr> %i.ai, ptr %13, align 16, !noalias !16
end_hunk_0
