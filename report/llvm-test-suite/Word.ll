inline.NumInlined: 775
inline.NumDeleted: 123
begin_hunk_0
@.str.50 = private unnamed_addr constant [64 x i8] c"    (any case is fine, for example true, True, TrUe are all ok)\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Instead found value: \00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Expected a numerical, integer value.\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Instead got: \00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"Expected an integer.\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"For example, 2 or 3, even 2. or 2.0 is ok.\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"Expected a numerical value.\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Quotes mismatch found.\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"A starting quotes must have a closing quotes.\00", align 1
@.str.60 = private unnamed_addr constant [54 x i8] c"Double quotes, \22, must be matched with double quotes.\00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"Single quotes, ', must be matched with single quotes.\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"*** WARNING in line \00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.66 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN2PP4WordC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN2PP4WordC2Ev
@_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN2PP4WordC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN2PP4WordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, ptr, ptr), ptr @_ZN2PP4WordC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE
@_ZN2PP4WordC1EdiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE = dso_local unnamed_addr alias void (ptr, double, i32, i32, ptr, ptr), ptr @_ZN2PP4WordC2EdiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE
@_ZN2PP4WordC1EiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE = dso_local unnamed_addr alias void (ptr, i32, i32, i32, ptr, ptr), ptr @_ZN2PP4WordC2EiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE
@_ZN2PP4WordC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN2PP4WordC2ERKS0_
@_ZN2PP4WordD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN2PP4WordD2Ev

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_ZN2PP4Word7get_valIiEET_RS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #17, !inline_history !19
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = sub nsw i32 0, %i.d
  %spec.select.i = select i1 %i.g, i32 %i.h, i32 %i.d
  ret i32 %spec.select.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK2PP4Word17convertFromStringERKiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !18
  %i.b = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #17, !inline_history !19
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20, !range !21, !noundef !22
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = sub nsw i32 0, %i.c
  %spec.select = select i1 %i.f, i32 %i.g, i32 %i.c
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN2PP4Word7get_valIlEET_RS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef i64 @_ZNK2PP4Word17convertFromStringERKlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK2PP4Word17convertFromStringERKlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 24)
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZStrsINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERlEOT_S8_OT0_.exit unwind label %bb.b ; 0 uses

_ZStrsINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERlEOT_S8_OT0_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !23
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !23
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStrsINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERlEOT_S8_OT0_.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZStrsINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERlEOT_S8_OT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #17
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !23
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %3, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20, !range !21, !noundef !22
  %i.aa = trunc nuw i8 %i.z to i1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ab = sub nsw i64 0, %.pre
  %spec.select = select i1 %i.aa, i64 %i.ab, i64 %.pre
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %spec.select

bb.b:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef float @_ZN2PP4Word7get_valIfEET_RS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef float @_ZNK2PP4Word17convertFromStringERKfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 4 poison, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK2PP4Word17convertFromStringERKfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !29
  %i.c = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.e, ptr %i.a, align 8, !tbaa !28
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.h, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !30
  %i.m = load ptr, ptr %3, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.o = load i64, ptr %i.l, align 8, !tbaa !30
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  %.pre14 = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %4 = phi ptr [ %.pre14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %6, %bb.g ]
  %i.r = call double @strtod(ptr noundef nonnull captures(none) %4, ptr noundef null) #17, !inline_history !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20, !range !21, !noundef !22
  %i.u = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.w = load i64, ptr %i.b, align 8, !tbaa !25
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = trunc nuw i8 %i.t to i1
  %i.z = fptrunc double %i.r to float             ; 2 uses
  %i.aa = fneg float %i.z
  %.0 = select i1 %i.y, float %i.aa, float %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret float %.0

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.g
  %5 = phi ptr [ %6, %bb.g ], [ %.pre14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 100
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store i8 101, ptr %i.ab, align 1, !tbaa !25
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 %indvars.iv
  %.pre12 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ae = phi i8 [ %.pre12, %bb.d ], [ %i.ac, %.lr.ph ]
  %i.af = phi ptr [ %.pre.a, %bb.d ], [ %5, %.lr.ph ] ; 2 uses
  %i.ag = icmp eq i8 %i.ae, 68
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv
  store i8 101, ptr %i.ah, align 1, !tbaa !25
  %.pre = load ptr, ptr %3, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %6 = phi ptr [ %i.af, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !30
  %sext = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !32
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZN2PP4Word7get_valIdEET_RS2_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef double @_ZNK2PP4Word17convertFromStringERKdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK2PP4Word17convertFromStringERKdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !29
  %i.c = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.e, ptr %i.a, align 8, !tbaa !28
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.h, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !30
  %i.m = load ptr, ptr %3, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.o = load i64, ptr %i.l, align 8, !tbaa !30
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  %.pre14 = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %4 = phi ptr [ %.pre14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %6, %bb.g ]
  %i.r = call double @strtod(ptr noundef nonnull captures(none) %4, ptr noundef null) #17, !inline_history !31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20, !range !21, !noundef !22
  %i.u = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.w = load i64, ptr %i.b, align 8, !tbaa !25
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = trunc nuw i8 %i.t to i1
  %i.z = fneg double %i.r
  %.0 = select i1 %i.y, double %i.z, double %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret double %.0

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.g
  %5 = phi ptr [ %6, %bb.g ], [ %.pre14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 100
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store i8 101, ptr %i.aa, align 1, !tbaa !25
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 %indvars.iv
  %.pre12 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ad = phi i8 [ %.pre12, %bb.d ], [ %i.ab, %.lr.ph ]
  %i.ae = phi ptr [ %.pre.a, %bb.d ], [ %5, %.lr.ph ] ; 2 uses
  %i.af = icmp eq i8 %i.ad, 68
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  store i8 101, ptr %i.ag, align 1, !tbaa !25
  %.pre = load ptr, ptr %3, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %6 = phi ptr [ %i.ae, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !30
  %sext = shl i64 %i.ah, 32
  %i.ai = ashr exact i64 %sext, 32
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2PP4Word7get_valINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !30
  store i8 0, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !29, !alias.scope !35
  %i.f = load ptr, ptr %1, align 8, !tbaa !18, !noalias !35 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30, !noalias !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !35
  store i64 %i.h, ptr %i.a, align 8, !tbaa !28, !noalias !35
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.j, ptr %3, align 8, !tbaa !18, !alias.scope !35
  %i.k = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !35
  store i64 %i.k, ptr %i.e, align 8, !tbaa !25, !alias.scope !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !25
  store i8 %i.m, ptr %i.l, align 1, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !35 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !30, !alias.scope !35
  %i.p = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !35
  %i.r = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.s = icmp eq ptr %i.r, %i.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !18     ; 6 uses
  %i.u = icmp eq ptr %i.t, %i.e                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = load i64, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %.not21.i = icmp eq ptr %3, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  switch i64 %i.v, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.t, align 1, !tbaa !25
  store i8 %i.x, ptr %i.r, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.y = load i64, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  store i64 %i.y, ptr %i.c, align 8, !tbaa !30
  %i.z = load ptr, ptr %0, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.t, ptr %0, align 8, !tbaa !18
  %i.ab = load <2 x i64>, ptr %i.o, align 8, !tbaa !25
  store <2 x i64> %i.ab, ptr %i.c, align 8, !tbaa !25
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !25
  store ptr %i.t, ptr %0, align 8, !tbaa !18
  %i.ad = load <2 x i64>, ptr %i.o, align 8, !tbaa !25
  store <2 x i64> %i.ad, ptr %i.c, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %3, align 8, !tbaa !18
  store i64 %i.ac, ptr %i.e, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ae = phi ptr [ %i.r, %bb.i ], [ %i.e, %bb.j ], [ %i.t, %bb.e ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.o, align 8, !tbaa !30
  store i8 0, ptr %i.ae, align 1, !tbaa !25
  %i.af = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.k:                                             ; preds = %.noexc.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.k
  %i.am = load i64, ptr %i.b, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK2PP4Word17convertFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !29
  %i.c = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.e, ptr %i.a, align 8, !tbaa !28
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.h, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
end_hunk_0
begin_hunk_1_@_ZN2PP4Word10get_doubleERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %.not.i.i.i31 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i31, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32

bb.r:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !96
  %.not.i1.i.i33 = icmp eq i8 %i.dc, 0
  br i1 %.not.i1.i.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 67
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.da)
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef signext i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(570) %i.da, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35: ; preds = %bb.s, %bb.t
  %.0.i.i.i34 = phi i8 [ %i.de, %bb.s ], [ %i.di, %bb.t ]
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i8 noundef signext %.0.i.i.i34)
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35, %bb.b
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.56, i64 noundef 27) ; 0 uses
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !23
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 240
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i36 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i36, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37: ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !96
  %.not.i1.i.i38 = icmp eq i8 %i.du, 0
  br i1 %.not.i1.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 67
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ds)
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef signext i8 %i.dz(ptr noundef nonnull align 8 dereferenceable(570) %i.ds, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40: ; preds = %bb.w, %bb.x
  %.0.i.i.i39 = phi i8 [ %i.dw, %bb.w ], [ %i.ea, %bb.x ]
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i8 noundef signext %.0.i.i.i39)
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eb) ; 0 uses
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.53, i64 noundef 13) ; 0 uses
  %i.ee = load ptr, ptr %0, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !30
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.ee, i64 noundef %i.eg) ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !23
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 240
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i41 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i41, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

bb.y:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !96
  %.not.i1.i.i43 = icmp eq i8 %i.ep, 0
  br i1 %.not.i1.i.i43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 67
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.en)
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef signext i8 %i.eu(ptr noundef nonnull align 8 dereferenceable(570) %i.en, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45: ; preds = %bb.z, %bb.aa
  %.0.i.i.i44 = phi i8 [ %i.er, %bb.z ], [ %i.ev, %bb.aa ]
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i8 noundef signext %.0.i.i.i44)
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !23
  %i.ez = getelementptr i8, ptr %i.ey, i64 -24
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 240
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !89 ; 6 uses
  %.not.i.i.i46 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i46, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !96
  %.not.i1.i.i48 = icmp eq i8 %i.ff, 0
  br i1 %.not.i1.i.i48, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 67
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fd)
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !23
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call noundef signext i8 %i.fk(ptr noundef nonnull align 8 dereferenceable(570) %i.fd, i8 noundef signext 10), !inline_history !114
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i49 = phi i8 [ %i.fh, %bb.ac ], [ %i.fl, %bb.ad ]
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i8 noundef signext %.0.i.i.i49)
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm) ; 0 uses
  store i32 2, ptr %2, align 4, !tbaa !4
  br label %bb.al

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.fo, ptr %3, align 8, !tbaa !29
  %i.fp = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.fr, ptr %i.a, align 8, !tbaa !28
  %i.fs = icmp ugt i64 %i.fr, 15
  br i1 %i.fs, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ae
  %i.ft = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ft, ptr %3, align 8, !tbaa !18
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.fu, ptr %i.fo, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.ae
  %i.fv = phi ptr [ %i.ft, %.noexc.i ], [ %i.fo, %bb.ae ] ; 2 uses
  switch i64 %i.fr, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.fw = load i8, ptr %i.fp, align 1, !tbaa !25
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ag:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr align 1 %i.fp, i64 %i.fr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.af, %bb.ag
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !30
  %i.fz = load ptr, ptr %3, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  store i8 0, ptr %i.ga, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.gb = load i32, ptr %i.c, align 8, !tbaa !39
  %i.gc = icmp eq i32 %i.gb, 3
  %i.gd = load i64, ptr %i.fy, align 8
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = icmp sgt i32 %i.ge, 0
  %or.cond = select i1 %i.gc, i1 %i.gf, i1 false
  %.pre57 = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.ak
  %4 = phi ptr [ %5, %bb.ak ], [ %.pre57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ak ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !25  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 100
  br i1 %i.gi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  store i8 101, ptr %i.gg, align 1, !tbaa !25
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !18  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 %indvars.iv
  %.pre55 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph
  %i.gj = phi i8 [ %.pre55, %bb.ah ], [ %i.gh, %.lr.ph ]
  %i.gk = phi ptr [ %.pre.a, %bb.ah ], [ %4, %.lr.ph ] ; 2 uses
  %i.gl = icmp eq i8 %i.gj, 68
  br i1 %i.gl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv
  store i8 101, ptr %i.gm, align 1, !tbaa !25
  %.pre = load ptr, ptr %3, align 8, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %5 = phi ptr [ %i.gk, %bb.ai ], [ %.pre, %bb.aj ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gn = load i64, ptr %i.fy, align 8, !tbaa !30
  %sext = shl i64 %i.gn, 32
  %i.go = ashr exact i64 %sext, 32
  %i.gp = icmp slt i64 %indvars.iv.next, %i.go
  br i1 %i.gp, label %.lr.ph, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %6 = phi ptr [ %.pre57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %5, %bb.ak ]
  %i.gq = call double @strtod(ptr noundef nonnull captures(none) %6, ptr noundef null) #17, !inline_history !31 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !20, !range !21, !noundef !22
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = fneg double %i.gq
  %.0 = select i1 %i.gt, double %i.gu, double %i.gq
  %i.gv = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.fo
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.gx = load i64, ptr %i.fo, align 8, !tbaa !25
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50
  %.017 = phi double [ 0.000000e+00, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret double %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i8 @_ZN2PP4Word15get_single_charERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((36, 37)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25
  ret i8 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN2PP4Word7get_intEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((36, 37)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #17, !inline_history !19
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = sub nsw i32 0, %i.d
  %spec.select.i.i = select i1 %i.g, i32 %i.h, i32 %i.d
  ret i32 %spec.select.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN2PP4Word11get_int64_tEv(ptr noundef nonnull align 8 dereferenceable(128) initializes((36, 37)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef i64 @_ZNK2PP4Word17convertFromStringERKlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN2PP4Word9get_floatEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((36, 37)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef float @_ZNK2PP4Word17convertFromStringERKfRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 4 poison, ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN2PP4Word10get_doubleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((36, 37)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef double @_ZNK2PP4Word17convertFromStringERKdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word16get_print_stringB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !18
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1702195828
  %i.f = zext i1 %i.e to i32
  %bcmp.i.fr = freeze i32 %i.f
  %i.g = icmp ne i32 %bcmp.i.fr, 0
  %spec.select = and i1 %i.g, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !30
  store i8 0, ptr %i.h, align 8, !tbaa !25
  br i1 %spec.select, label %bb.b, label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 1936482662
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = xor i32 %i.o, 101
  %i.q = or i32 %i.l, %i.p
  %i.r = icmp ne i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %bcmp.i19.fr = freeze i32 %i.s
  %i.t = icmp ne i32 %bcmp.i19.fr, 0
  %spec.select72 = and i1 %i.t, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !30
  store i8 0, ptr %i.u, align 8, !tbaa !25
  br i1 %spec.select72, label %bb.b, label %bb.f

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.x, align 8, !tbaa !30
  store i8 0, ptr %i.w, align 8, !tbaa !25
  br i1 %2, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70
  %i.y = phi ptr [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ] ; 4 uses
  %i.z = phi ptr [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.d ; 0 uses

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !30
  %.pre73 = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ae = sub i64 4611686018427387903, %.pre73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.d:                                             ; preds = %.invoke, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.c
  %i.af = phi ptr [ %i.as, %bb.f ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ], [ %i.z, %.invoke ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ %i.z, %bb.c ]
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %bb.b
  %i.ah = phi i64 [ %i.ae, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ 4611686018427387903, %bb.b ]
  %i.ai = phi i64 [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.b, %bb.b ] ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !18
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ak, i64 noundef %i.ai)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.am = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ap = icmp eq i64 %i.ao, 4611686018427387903
  br i1 %i.ap, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #20
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d ; 0 uses

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70
  %i.ar = phi ptr [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ]
  %i.as = phi ptr [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %i.w, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread70 ], [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread66.thread ] ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d
end_hunk_1
