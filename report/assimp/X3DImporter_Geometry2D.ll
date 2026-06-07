inline.NumInlined: 640
inline.NumDeleted: 215
begin_hunk_0
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.18 = private unnamed_addr constant [13 x i8] c"lineSegments\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Polyline2D\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Polypoint2D\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Rectangle2D\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"vertices\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"TriangleSet2D. Not enough points for defining triangle.\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"TriangleSet2D\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"\22DEF\22 and \22USE\22 can not be defined both in <\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c">.\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.32 = private unnamed_addr constant [27 x i8] c"Not found node with name \22\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"\22 in <\00", align 1
@_ZTV24X3DNodeElementGeometry2D = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI24X3DNodeElementGeometry2D, ptr @_ZN24X3DNodeElementGeometry2DD2Ev, ptr @_ZN24X3DNodeElementGeometry2DD0Ev] }, comdat, align 8
@_ZTI24X3DNodeElementGeometry2D = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24X3DNodeElementGeometry2D, ptr @_ZTI18X3DNodeElementBase }, comdat, align 8
@_ZTS24X3DNodeElementGeometry2D = linkonce_odr hidden constant [27 x i8] c"24X3DNodeElementGeometry2D\00", comdat, align 1
@_ZTI18X3DNodeElementBase = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS18X3DNodeElementBase }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS18X3DNodeElementBase = linkonce_odr hidden constant [21 x i8] c"18X3DNodeElementBase\00", comdat, align 1
@_ZTV18X3DNodeElementBase = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI18X3DNodeElementBase, ptr @_ZN18X3DNodeElementBaseD2Ev, ptr @_ZN18X3DNodeElementBaseD0Ev] }, comdat, align 8
@.str.34 = private unnamed_addr constant [12 x i8] c"Attribute \22\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"\22 in node <\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"> has incorrect value.\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter9readArc2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::list.3", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.a, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.c, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %6, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc17 unwind label %bb.m

.noexc17:                                         ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc17
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.38)
          to label %.noexc18 unwind label %bb.m   ; 2 uses

.noexc18:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #17
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.m       ; 0 uses

bb.c:                                             ; preds = %.noexc17, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %bb.c
  store ptr %i.k, ptr %5, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc22 unwind label %bb.m

.noexc22:                                         ; preds = %.noexc21
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc22
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.38)
          to label %.noexc23 unwind label %bb.m   ; 2 uses

.noexc23:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #17
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %bb.m       ; 0 uses

bb.e:                                             ; preds = %.noexc22, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2)
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %bb.e
  store ptr %i.q, ptr %4, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc28 unwind label %bb.m

.noexc28:                                         ; preds = %.noexc27
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc28
  %i.s = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %.noexc28, %bb.f
  %.0 = phi float [ f0x3FC90FDB, %.noexc28 ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.t = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
          to label %.noexc31 unwind label %bb.m

.noexc31:                                         ; preds = %bb.g
  store ptr %i.t, ptr %3, align 8
  %i.u = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc32 unwind label %bb.m

.noexc32:                                         ; preds = %.noexc31
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc32
  %i.v = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef 0.000000e+00)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %.noexc32, %bb.h
  %.075 = phi float [ 1.000000e+00, %.noexc32 ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.w = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4)
          to label %.noexc36 unwind label %bb.m

.noexc36:                                         ; preds = %bb.i
  store ptr %i.w, ptr %2, align 8
  %i.x = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc37 unwind label %bb.m

.noexc37:                                         ; preds = %.noexc36
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc37
  %i.y = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.noexc37, %bb.j
  %.074 = phi float [ 0.000000e+00, %.noexc37 ], [ %i.y, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.z = load i64, ptr %i.d, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 7, ptr noundef null)
          to label %bb.aa unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.p, %bb.j, %.noexc36, %bb.i, %bb.h, %.noexc31, %bb.g, %bb.f, %.noexc27, %bb.e, %.noexc23, %bb.d, %.noexc21, %bb.c, %.noexc18, %bb.b, %.noexc, %bb.a, %bb.n, %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %bb.k
  %i.ad = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.o unwind label %bb.m       ; 17 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i32 7, ptr %i.an, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 80 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store ptr %i.ao, ptr %i.ap, align 8
  store ptr %i.ao, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store i64 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i8 1, ptr %i.ar, align 8
  %i.as = load i64, ptr %i.b, align 8
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %9, ptr %i.au, align 8
  store ptr %9, ptr %9, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.av, align 8
  invoke void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef %.074, float noundef %.0, float noundef %.075, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN6Assimp12X3DGeoHelper20extend_point_to_lineERKNSt7__cxx114listI10aiVector3tIfESaIS4_EEERS6_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 2, ptr %i.aw, align 8
  %i.ax = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.ax, label %bb.w, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ay, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 5, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 21
  store i8 0, ptr %i.ba, align 1
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.bb = load ptr, ptr %10, align 8              ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bd = load i64, ptr %i.ay, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.x

bb.u:                                             ; preds = %bb.x, %bb.w, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %10, align 8              ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.v
  %i.bj = load i64, ptr %i.ay, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.u ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.ad, ptr %i.bo, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.y unwind label %bb.u       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.ad, ptr %i.bu, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #17
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8
  %i.by = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.by, %9
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %i.by, %bb.y ] ; 2 uses
  %i.bz = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #19
  %.not.i.i = icmp eq ptr %i.bz, %9
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.u
  %.pn14 = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  %i.ca = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i48 = icmp eq ptr %i.ca, %9
  br i1 %.not8.i.i48, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit52, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %bb.z, %.lr.ph.i.i49
  %.09.i.i50 = phi ptr [ %i.cb, %.lr.ph.i.i49 ], [ %i.ca, %bb.z ] ; 2 uses
  %i.cb = load ptr, ptr %.09.i.i50, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i50, i64 noundef 32) #19
  %.not.i.i51 = icmp eq ptr %i.cb, %9
  br i1 %.not.i.i51, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit52, label %.lr.ph.i.i49, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit52: ; preds = %.lr.ph.i.i49, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ab

bb.aa:                                            ; preds = %bb.l, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit
  %i.cc = load ptr, ptr %8, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.c
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.aa
  %i.ce = load i64, ptr %i.c, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.cg = load ptr, ptr %7, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.a
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.ci = load i64, ptr %i.a, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit52, %bb.m
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit52 ], [ %i.ac, %bb.m ]
  %i.ck = load ptr, ptr %8, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.c
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.c, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.co = load ptr, ptr %7, align 8               ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.a
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.cq = load i64, ptr %i.a, align 8
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter14readArcClose2DERN4pugi8xml_nodeE:._crit_edge.i.i
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %.noexc31
  br i1 %i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc32
  %i.j = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.38)
          to label %.noexc33 unwind label %bb.r   ; 2 uses

.noexc33:                                         ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #17
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %i.k, ptr noundef nonnull %i.j, i64 noundef %i.l)
          to label %bb.b unwind label %bb.r       ; 0 uses

bb.b:                                             ; preds = %.noexc32, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.n = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %bb.b
  store ptr %i.n, ptr %8, align 8
  %i.o = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %.noexc36
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc37
  %i.p = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.38)
          to label %.noexc38 unwind label %bb.r   ; 2 uses

.noexc38:                                         ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #17
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull %i.p, i64 noundef %i.r)
          to label %bb.d unwind label %bb.r       ; 0 uses

bb.d:                                             ; preds = %.noexc37, %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.t = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7)
          to label %.noexc42 unwind label %bb.r

.noexc42:                                         ; preds = %bb.d
  store ptr %i.t, ptr %7, align 8
  %i.u = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc43 unwind label %bb.r

.noexc43:                                         ; preds = %.noexc42
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc43
  %i.v = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.38)
          to label %.noexc44 unwind label %bb.r   ; 2 uses

.noexc44:                                         ; preds = %bb.e
  %i.w = load i64, ptr %i.f, align 8
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #17
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull %i.v, i64 noundef %i.x)
          to label %bb.f unwind label %bb.r       ; 0 uses

bb.f:                                             ; preds = %.noexc43, %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.z = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2)
          to label %.noexc48 unwind label %bb.r

.noexc48:                                         ; preds = %bb.f
  store ptr %i.z, ptr %6, align 8
  %i.aa = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc49 unwind label %bb.r

.noexc49:                                         ; preds = %.noexc48
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %i.ab = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %6, float noundef 0.000000e+00)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %.noexc49, %bb.g
  %.0 = phi float [ f0x3FC90FDB, %.noexc49 ], [ %i.ab, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ac = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2)
          to label %.noexc52 unwind label %bb.r

.noexc52:                                         ; preds = %bb.h
  store ptr %i.ac, ptr %5, align 8
  %i.ad = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc53 unwind label %bb.r

.noexc53:                                         ; preds = %.noexc52
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc53
  %i.ae = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %5, float noundef 0.000000e+00)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %.noexc53, %bb.i
  %.1 = phi float [ %.0, %.noexc53 ], [ %i.ae, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.af = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
          to label %.noexc57 unwind label %bb.r

.noexc57:                                         ; preds = %bb.j
  store ptr %i.af, ptr %4, align 8
  %i.ag = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc58 unwind label %bb.r

.noexc58:                                         ; preds = %.noexc57
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc58
  %i.ah = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %.noexc58, %bb.k
  %.0129 = phi float [ 1.000000e+00, %.noexc58 ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ai = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
          to label %.noexc62 unwind label %bb.r

.noexc62:                                         ; preds = %bb.l
  store ptr %i.ai, ptr %3, align 8
  %i.aj = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc63 unwind label %bb.r

.noexc63:                                         ; preds = %.noexc62
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc63
  %i.ak = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %.noexc64 unwind label %bb.r

.noexc64:                                         ; preds = %bb.m
  %i.al = zext i1 %i.ak to i8
  br label %bb.n

bb.n:                                             ; preds = %.noexc64, %.noexc63
  %.0130 = phi i8 [ 0, %.noexc63 ], [ %i.al, %.noexc64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.am = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4)
          to label %.noexc66 unwind label %bb.r

.noexc66:                                         ; preds = %bb.n
  store ptr %i.am, ptr %2, align 8
  %i.an = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc67 unwind label %bb.r

.noexc67:                                         ; preds = %.noexc66
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc67
  %i.ao = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %.noexc67, %bb.o
  %.0131 = phi float [ 0.000000e+00, %.noexc67 ], [ %i.ao, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ap = load i64, ptr %i.d, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 8, ptr noundef null)
          to label %bb.aq unwind label %bb.r      ; 0 uses

bb.r:                                             ; preds = %bb.ap, %bb.ao, %bb.u, %bb.o, %.noexc66, %bb.n, %bb.m, %.noexc62, %bb.l, %bb.k, %.noexc57, %bb.j, %bb.i, %.noexc52, %bb.h, %bb.g, %.noexc48, %bb.f, %.noexc44, %bb.e, %.noexc42, %bb.d, %.noexc38, %bb.c, %.noexc36, %bb.b, %.noexc33, %bb.a, %.noexc31, %._crit_edge.i.i, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.s, %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.s:                                             ; preds = %bb.p
  %i.at = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.t unwind label %bb.r       ; 17 uses

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr %i.ba, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store i32 8, ptr %i.bd, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.at, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  store ptr %i.be, ptr %i.bf, align 8
  store ptr %i.be, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 6 uses
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 2 uses
  store i8 1, ptr %i.bh, align 8
  %i.bi = load i64, ptr %i.b, align 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.u, %bb.t
  store i8 %.0130, ptr %i.bh, align 8
  invoke void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef %.0131, float noundef %.1, float noundef %.0129, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bk = fsub float %.1, %.0131
  %i.bl = call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp oge float %i.bl, f0x40C90FDB
  %i.bn = fcmp oeq float %.1, %.0131
  %or.cond = or i1 %i.bn, %i.bm
  br i1 %or.cond, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %bb.v
  %.pre = load i64, ptr %i.bg, align 8
  br label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.bo = load i64, ptr %i.f, align 8
  switch i64 %i.bo, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.w
  %i.bp = load ptr, ptr %12, align 8              ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = xor i16 %i.bq, 18768
  %i.bs = getelementptr i8, ptr %i.bp, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 69
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72: ; preds = %bb.w
  %i.ca = load ptr, ptr %12, align 8              ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 1162432546
  %i.cd = getelementptr i8, ptr %i.ca, i64 4
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, 34
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.x unwind label %bb.z       ; 3 uses

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x float> zeroinitializer, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store float 0.000000e+00, ptr %i.cn, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #17
  %i.co = load i64, ptr %i.bg, align 8
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.bg, align 8
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134

bb.y:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit72
  %i.cs = load i32, ptr %i.ca, align 1
  %i.ct = xor i32 %i.cs, 1380927555
  %i.cu = getelementptr i8, ptr %i.ca, i64 4
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = xor i32 %i.cw, 68
  %i.cy = or i32 %i.ct, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.db = invoke noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.11)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.db, label %bb.ab, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6Assimp24Throw_IncorrectAttrValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15) #20
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.ag:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ah:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %15, align 8              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.di = load i64, ptr %i.dg, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.ag ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.de, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.dk = load ptr, ptr %13, align 8              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = load i64, ptr %i.dl, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ar

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.aa, %bb.x
  %i.dp = load ptr, ptr %i.be, align 8
  %i.dq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.ai unwind label %bb.aj     ; 2 uses

bb.ai:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ds, ptr noundef nonnull align 4 dereferenceable(12) %i.dr, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #17
  %i.dt = load i64, ptr %i.bg, align 8
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  store i64 %i.du, ptr %i.bg, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread134
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %._crit_edge, %bb.ai
  %i.dw = phi i64 [ %.pre, %._crit_edge ], [ %i.du, %bb.ai ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.at, i64 104
end_hunk_1
begin_hunk_2_@_ZN6Assimp24Throw_IncorrectAttrValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.2 = phi i1 [ true, %bb.n ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cb = load ptr, ptr %4, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.w
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cd = load i64, ptr %i.w, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.cf = load ptr, ptr %5, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.e
  br i1 %i.cg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.e
  br i1 %i.cj, label %.sink.split, label %.sink.split.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ck = load i64, ptr %i.e, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.2, label %bb.q, label %bb.r

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.2, label %bb.q, label %bb.r

.sink.split.sink.split:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %bb.c
  %.sink = phi ptr [ %i.q, %bb.c ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  %.pn.pn.pn.pn42.ph.ph = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  %i.cm = load i64, ptr %i.e, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cn) #19
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %bb.c
  %.pn.pn.pn.pn42.ph = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ], [ %i.p, %bb.c ], [ %.pn.pn.pn.pn42.ph.ph, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %.body
  %.pn.pn.pn.pn42 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn42.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.a) #17
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %.body, %bb.q
  %.pn.pn.pn.pn41 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn42, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ]
  resume { ptr, i32 } %.pn.pn.pn.pn41

bb.s:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter12readCircle2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::list.3", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %4, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc15 unwind label %bb.i

.noexc15:                                         ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc15
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.38)
          to label %.noexc16 unwind label %bb.i   ; 2 uses

.noexc16:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #17
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.i       ; 0 uses

bb.c:                                             ; preds = %.noexc15, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc19 unwind label %bb.i

.noexc19:                                         ; preds = %bb.c
  store ptr %i.k, ptr %3, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %.noexc19
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc20
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38)
          to label %.noexc21 unwind label %bb.i   ; 2 uses

.noexc21:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #17
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %.noexc20, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
          to label %.noexc25 unwind label %bb.i

.noexc25:                                         ; preds = %bb.e
  store ptr %i.q, ptr %2, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc26 unwind label %bb.i

.noexc26:                                         ; preds = %.noexc25
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc26
  %i.s = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.noexc26, %bb.f
  %.0 = phi float [ 1.000000e+00, %.noexc26 ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.t = load i64, ptr %i.d, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 9, ptr noundef null)
          to label %bb.w unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %bb.l, %bb.f, %.noexc25, %bb.e, %.noexc21, %bb.d, %.noexc19, %bb.c, %.noexc16, %bb.b, %.noexc, %bb.a, %bb.j, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.k unwind label %bb.i       ; 17 uses

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.ae, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i32 9, ptr %i.ah, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store i8 1, ptr %i.al, align 8
  %i.am = load i64, ptr %i.b, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.ao, align 8
  store ptr %7, ptr %7, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.ap, align 8
  invoke void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %.0, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN6Assimp12X3DGeoHelper20extend_point_to_lineERKNSt7__cxx114listI10aiVector3tIfESaIS4_EEERS6_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store i64 2, ptr %i.aq, align 8
  %i.ar = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.ar, label %bb.s, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.as, ptr %8, align 8
  store i64 4914101659613948227, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.au, align 8
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.av = load ptr, ptr %8, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ax = load i64, ptr %i.as, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.t

bb.q:                                             ; preds = %bb.t, %bb.s, %bb.n, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %8, align 8               ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.as
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.r
  %i.bd = load i64, ptr %i.as, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.bg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.q ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.x, ptr %i.bi, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.u unwind label %bb.q       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.x, ptr %i.bo, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #17
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8
  %i.bs = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bs, %7
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.bs, %bb.u ] ; 2 uses
  %i.bt = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #19
  %.not.i.i = icmp eq ptr %i.bt, %7
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.q
  %.pn12 = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %i.bu = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i36 = icmp eq ptr %i.bu, %7
  br i1 %.not8.i.i36, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit40, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.v, %.lr.ph.i.i37
  %.09.i.i38 = phi ptr [ %i.bv, %.lr.ph.i.i37 ], [ %i.bu, %bb.v ] ; 2 uses
  %i.bv = load ptr, ptr %.09.i.i38, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i38, i64 noundef 32) #19
  %.not.i.i39 = icmp eq ptr %i.bv, %7
  br i1 %.not.i.i39, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit40, label %.lr.ph.i.i37, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit40: ; preds = %.lr.ph.i.i37, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.x

bb.w:                                             ; preds = %bb.h, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit
  %i.bw = load ptr, ptr %6, align 8               ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.c
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.w
  %i.by = load i64, ptr %i.c, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ca = load ptr, ptr %5, align 8               ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.a
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.cc = load i64, ptr %i.a, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit40, %bb.i
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit40 ], [ %i.w, %bb.i ]
  %i.ce = load ptr, ptr %6, align 8               ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.c
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.x
  %i.cg = load i64, ptr %i.c, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.a
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ck = load i64, ptr %i.a, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

end_hunk_2
begin_hunk_3_@_ZN6Assimp11X3DImporter10readDisk2DERN4pugi8xml_nodeE:bb.a
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc40 unwind label %bb.m

.noexc40:                                         ; preds = %bb.c
  store ptr %i.k, ptr %5, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc41 unwind label %bb.m

.noexc41:                                         ; preds = %.noexc40
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc41
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.38)
          to label %.noexc42 unwind label %bb.m   ; 2 uses

.noexc42:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #17
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %bb.m       ; 0 uses

bb.e:                                             ; preds = %.noexc41, %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14)
          to label %.noexc46 unwind label %bb.m

.noexc46:                                         ; preds = %bb.e
  store ptr %i.q, ptr %4, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc47 unwind label %bb.m

.noexc47:                                         ; preds = %.noexc46
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc47
  %i.s = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %.noexc47, %bb.f
  %.0 = phi float [ 0.000000e+00, %.noexc47 ], [ %i.s, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.t = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15)
          to label %.noexc50 unwind label %bb.m

.noexc50:                                         ; preds = %bb.g
  store ptr %i.t, ptr %3, align 8
  %i.u = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc51 unwind label %bb.m

.noexc51:                                         ; preds = %.noexc50
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc51
  %i.v = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef 0.000000e+00)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %.noexc51, %bb.h
  %.0139 = phi float [ 1.000000e+00, %.noexc51 ], [ %i.v, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.w = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
          to label %.noexc55 unwind label %bb.m

.noexc55:                                         ; preds = %bb.i
  store ptr %i.w, ptr %2, align 8
  %i.x = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc56 unwind label %bb.m

.noexc56:                                         ; preds = %.noexc55
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc56
  %i.y = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %.noexc57 unwind label %bb.m

.noexc57:                                         ; preds = %bb.j
  %i.z = zext i1 %i.y to i8
  br label %bb.k

bb.k:                                             ; preds = %.noexc57, %.noexc56
  %.0140 = phi i8 [ 0, %.noexc56 ], [ %i.z, %.noexc57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 10, ptr noundef null)
          to label %bb.bf unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.j, %.noexc55, %bb.i, %bb.h, %.noexc50, %bb.g, %bb.f, %.noexc46, %bb.e, %.noexc42, %bb.d, %.noexc40, %bb.c, %.noexc37, %bb.b, %.noexc, %bb.a, %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %9, ptr %i.ae, align 8
  store ptr %9, ptr %9, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %10, ptr %i.ag, align 8
  store ptr %10, ptr %10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8
  %i.ai = fcmp ogt float %.0, %.0139
  br i1 %i.ai, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6Assimp24Throw_IncorrectAttrValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %13) #20
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.t:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %13, align 8              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn31 = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ar = load ptr, ptr %11, align 8              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.s
  %.pn31.pn = phi { ptr, i32 } [ %i.aj, %bb.s ], [ %.pn31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.be

bb.v:                                             ; preds = %bb.n
  %i.aw = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.w unwind label %bb.y       ; 17 uses

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %i.bd, ptr %i.be, align 8
  store ptr %i.bd, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store i32 10, ptr %i.bg, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.aw, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 80 ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store ptr %i.bh, ptr %i.bi, align 8
  store ptr %i.bh, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 19 uses
  store i64 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  store i8 1, ptr %i.bk, align 8
  %i.bl = load i64, ptr %i.b, align 8
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.bc, %bb.bb, %bb.ac, %bb.x, %bb.ax, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.x, %bb.w
  invoke void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %.0139, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bo = fcmp oeq float %.0, 0.000000e+00
  br i1 %i.bo, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %9, align 8               ; 3 uses
  %.sroa.09.019.i.i = load ptr, ptr %i.bh, align 8 ; 3 uses
  %i.bq = icmp ne ptr %.sroa.09.019.i.i, %i.bh
  %i.br = icmp ne ptr %i.bp, %9
  %or.cond20.i.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond20.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.09.022.i.i = phi ptr [ %.sroa.09.0.i.i, %.lr.ph.i.i ], [ %.sroa.09.019.i.i, %bb.aa ] ; 2 uses
  %.sroa.015.021.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.bp, %bb.aa ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false)
  %i.bu = load ptr, ptr %.sroa.015.021.i.i, align 8 ; 3 uses
  %.sroa.09.0.i.i = load ptr, ptr %.sroa.09.022.i.i, align 8 ; 3 uses
  %i.bv = icmp ne ptr %.sroa.09.0.i.i, %i.bh
  %i.bw = icmp ne ptr %i.bu, %9
  %or.cond.i.i = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !20

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %bb.aa
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.bp, %bb.aa ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.sroa.09.0.lcssa.i.i = phi ptr [ %.sroa.09.019.i.i, %bb.aa ], [ %.sroa.09.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bx = icmp eq ptr %.sroa.015.0.lcssa.i.i, %9
  br i1 %i.bx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge.i.i
  %.not6.i.i.i = icmp eq ptr %.sroa.09.0.lcssa.i.i, %i.bh
  br i1 %.not6.i.i.i, label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEaSERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.i.i.i
  %.sroa.05.07.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.sroa.09.0.lcssa.i.i, %bb.ab ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.05.07.i.i.i, align 8 ; 2 uses
  %i.bz = load i64, ptr %i.bj, align 8
  %i.ca = add i64 %i.bz, -1
  store i64 %i.ca, ptr %i.bj, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.07.i.i.i) #17
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.07.i.i.i, i64 noundef 32) #19
  %.not.i.i.i = icmp eq ptr %i.by, %i.bh
  br i1 %.not.i.i.i, label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEaSERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !21

bb.ac:                                            ; preds = %.critedge.i.i
  %i.cb = invoke ptr @_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6insertISt20_List_const_iteratorIS2_EvEESt14_List_iteratorIS2_ES7_T_SA_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr nonnull align 8 dereferenceable(24) %i.bh, ptr %.sroa.015.0.lcssa.i.i, ptr nonnull align 8 dereferenceable(24) %9)
          to label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEaSERKS4_.exit unwind label %bb.y ; 0 uses

_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEaSERKS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.ab, %bb.ac
  %i.cc = load i64, ptr %i.af, align 8
  br label %bb.ax

bb.ad:                                            ; preds = %bb.z
  %i.cd = fcmp oeq float %.0, %.0139
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp12X3DGeoHelper20extend_point_to_lineERKNSt7__cxx114listI10aiVector3tIfESaIS4_EEERS6_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.ax unwind label %bb.y

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %.0, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ce = load i64, ptr %i.ah, align 8
  %i.cf = icmp ult i64 %i.ce, 2
  br i1 %i.cf, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull @.str.17)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.bh unwind label %bb.aj

bb.aj:                                            ; preds = %bb.av, %bb.au, %bb.at, %._crit_edge, %bb.ai, %bb.af
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ak:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cg) #17
  br label %bb.be

bb.al:                                            ; preds = %bb.ag
  %i.cj = load ptr, ptr %10, align 8              ; 2 uses
  %.not141 = icmp eq ptr %i.cj, %10
  br i1 %.not141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.ck = load ptr, ptr %9, align 8
  br label %bb.am

._crit_edge:                                      ; preds = %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit72, %bb.al
  %i.cl = load ptr, ptr %i.ag, align 8
  %i.cm = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.at unwind label %bb.aj     ; 2 uses

bb.am:                                            ; preds = %.lr.ph, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit72
  %.sroa.0120.0143 = phi ptr [ %i.ck, %.lr.ph ], [ %i.ct, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit72 ] ; 2 uses
  %.sroa.0121.0142 = phi ptr [ %i.cj, %.lr.ph ], [ %i.cn, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit72 ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.0121.0142, align 8 ; 3 uses
  %i.co = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.an unwind label %bb.aq     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0121.0142, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, ptr noundef nonnull align 4 dereferenceable(12) %i.cp, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #17
  %i.cr = load i64, ptr %i.bj, align 8
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.bj, align 8
  %i.ct = load ptr, ptr %.sroa.0120.0143, align 8 ; 2 uses
  %i.cu = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.ao unwind label %bb.ar     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0120.0143, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.cv, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #17
  %i.cx = load i64, ptr %i.bj, align 8
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.bj, align 8
  %i.cz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.ap unwind label %bb.as     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.db, ptr noundef nonnull align 4 dereferenceable(12) %i.da, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #17
  %i.dc = load i64, ptr %i.bj, align 8
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.bj, align 8
  %i.de = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit72 unwind label %bb.as ; 2 uses

_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit72: ; preds = %bb.ap
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dg, ptr noundef nonnull align 4 dereferenceable(12) %i.df, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #17
  %i.dh = load i64, ptr %i.bj, align 8
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.bj, align 8
  %.not = icmp eq ptr %i.cn, %10
  br i1 %.not, label %._crit_edge, label %bb.am

bb.aq:                                            ; preds = %bb.am
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ar:                                            ; preds = %bb.an
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.at:                                            ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp11X3DImporter10readDisk2DERN4pugi8xml_nodeE:bb.a

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.en = load ptr, ptr %15, align 8              ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ek
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.az
  %i.ep = load i64, ptr %i.ek, align 8
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.bc

bb.ba:                                            ; preds = %._crit_edge.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %15, align 8              ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ek
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ba
  %i.eu = load i64, ptr %i.ek, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.be

bb.bb:                                            ; preds = %bb.ay
  %i.ew = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.ex = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.y ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.bb
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.aw, ptr %i.ez, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.ey) #17
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 64 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.fa, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.fd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.bd unwind label %bb.y      ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr %i.aw, ptr %i.ff, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe) #17
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.fg, align 8
  %i.fj = load ptr, ptr %10, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.fj, %10
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %bb.bd, %.lr.ph.i.i89
  %.09.i.i = phi ptr [ %i.fk, %.lr.ph.i.i89 ], [ %i.fj, %bb.bd ] ; 2 uses
  %i.fk = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #19
  %.not.i.i = icmp eq ptr %i.fk, %10
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i89, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i89, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.fl = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i90 = icmp eq ptr %i.fl, %9
  br i1 %.not8.i.i90, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit94, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, %.lr.ph.i.i91
  %.09.i.i92 = phi ptr [ %i.fm, %.lr.ph.i.i91 ], [ %i.fl, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit ] ; 2 uses
  %i.fm = load ptr, ptr %.09.i.i92, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i92, i64 noundef 32) #19
  %.not.i.i93 = icmp eq ptr %i.fm, %9
  br i1 %.not.i.i93, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit94, label %.lr.ph.i.i91, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit94: ; preds = %.lr.ph.i.i91, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bf

bb.be:                                            ; preds = %bb.aq, %bb.ar, %bb.as, %bb.aj, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.bn, %bb.y ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.dj, %bb.aq ], [ %i.ch, %bb.aj ], [ %i.ci, %bb.ak ], [ %i.dl, %bb.as ], [ %i.dk, %bb.ar ]
  %i.fn = load ptr, ptr %10, align 8              ; 2 uses
  %.not8.i.i95 = icmp eq ptr %i.fn, %10
  br i1 %.not8.i.i95, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit99, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %bb.be, %.lr.ph.i.i96
  %.09.i.i97 = phi ptr [ %i.fo, %.lr.ph.i.i96 ], [ %i.fn, %bb.be ] ; 2 uses
  %i.fo = load ptr, ptr %.09.i.i97, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i97, i64 noundef 32) #19
  %.not.i.i98 = icmp eq ptr %i.fo, %10
  br i1 %.not.i.i98, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit99, label %.lr.ph.i.i96, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit99: ; preds = %.lr.ph.i.i96, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.fp = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i100 = icmp eq ptr %i.fp, %9
  br i1 %.not8.i.i100, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit104, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit99, %.lr.ph.i.i101
  %.09.i.i102 = phi ptr [ %i.fq, %.lr.ph.i.i101 ], [ %i.fp, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit99 ] ; 2 uses
  %i.fq = load ptr, ptr %.09.i.i102, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i102, i64 noundef 32) #19
  %.not.i.i103 = icmp eq ptr %i.fq, %9
  br i1 %.not.i.i103, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit104, label %.lr.ph.i.i101, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit104: ; preds = %.lr.ph.i.i101, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bg

bb.bf:                                            ; preds = %bb.l, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit94
  %i.fr = load ptr, ptr %8, align 8               ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.c
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.bf
  %i.ft = load i64, ptr %i.c, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.a
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.fx = load i64, ptr %i.a, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void

bb.bg:                                            ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit104, %bb.m
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit104 ], [ %i.ad, %bb.m ]
  %i.fz = load ptr, ptr %8, align 8               ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.c
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bg
  %i.gb = load i64, ptr %i.c, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.gd = load ptr, ptr %7, align 8               ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.a
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.gf = load i64, ptr %i.a, align 8
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn31.pn.pn.pn

bb.bh:                                            ; preds = %bb.ai
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #17
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTV17DeadlyImportError, i32 0, i32 0, i32 2), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #17
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter14readPolyline2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::list.9", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::list.3", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.e, align 8
  store ptr %6, ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  store ptr %i.g, ptr %3, align 8
  %i.h = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %.noexc
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc15
  %i.i = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38)
          to label %.noexc16 unwind label %bb.h   ; 2 uses

.noexc16:                                         ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #17
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.i, i64 noundef %i.k)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %.noexc15, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.m = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %bb.c
  store ptr %i.m, ptr %2, align 8
  %i.n = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %.noexc19
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc20
  %i.o = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38)
          to label %.noexc21 unwind label %bb.h   ; 2 uses

.noexc21:                                         ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #17
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull %i.o, i64 noundef %i.q)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %.noexc20, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.s = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper24getVector2DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector2tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.d, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 11, ptr noundef null)
          to label %bb.w unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.k, %.noexc21, %bb.d, %.noexc19, %bb.c, %.noexc16, %bb.b, %.noexc, %bb.a, %bb.i, %bb.g, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.x = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.j unwind label %bb.h       ; 17 uses

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.ae, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i32 11, ptr %i.ah, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store i8 1, ptr %i.al, align 8
  %i.am = load i64, ptr %i.b, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.ao, align 8
  store ptr %7, ptr %7, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 0, ptr %i.ap, align 8
  %.sroa.060.071 = load ptr, ptr %6, align 8      ; 2 uses
  %.not72 = icmp eq ptr %.sroa.060.071, %6
  br i1 %.not72, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZN6Assimp12X3DGeoHelper20extend_point_to_lineERKNSt7__cxx114listI10aiVector3tIfESaIS4_EEERS6_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.n unwind label %bb.q

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.l
  %.sroa.060.073 = phi ptr [ %.sroa.060.0, %bb.l ], [ %.sroa.060.071, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %i.aq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.l unwind label %bb.m       ; 3 uses

bb.l:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.060.073, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load <2 x float>, ptr %i.ar, align 4
  store <2 x float> %i.at, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store float 0.000000e+00, ptr %i.au, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %7) #17
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.ap, align 8
  %.sroa.060.0 = load ptr, ptr %.sroa.060.073, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.060.0, %6
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

bb.m:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store i64 2, ptr %i.ay, align 8
  %i.az = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %i.az, label %bb.s, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ba, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ba, ptr noundef nonnull align 1 dereferenceable(10) @.str.19, i64 10, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 10, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i8 0, ptr %i.bc, align 2
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bd = load ptr, ptr %8, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ba
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bf = load i64, ptr %i.ba, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.t

bb.q:                                             ; preds = %bb.t, %bb.s, %bb.n, %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %8, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.r
  %i.bl = load i64, ptr %i.ba, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.bo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.q ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.x, ptr %i.bq, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bp) #17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.u unwind label %bb.q       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.x, ptr %i.bw, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ca, %7
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %i.ca, %bb.u ] ; 2 uses
  %i.cb = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #19
  %.not.i.i = icmp eq ptr %i.cb, %7
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.q, %bb.m
  %.pn12 = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.bh, %bb.q ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.cc = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i33 = icmp eq ptr %i.cc, %7
  br i1 %.not8.i.i33, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit37, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.v, %.lr.ph.i.i34
  %.09.i.i35 = phi ptr [ %i.cd, %.lr.ph.i.i34 ], [ %i.cc, %bb.v ] ; 2 uses
  %i.cd = load ptr, ptr %.09.i.i35, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i35, i64 noundef 32) #19
  %.not.i.i36 = icmp eq ptr %i.cd, %7
  br i1 %.not.i.i36, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit37, label %.lr.ph.i.i34, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit37: ; preds = %.lr.ph.i.i34, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.x

bb.w:                                             ; preds = %bb.g, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit
  %i.ce = load ptr, ptr %6, align 8               ; 2 uses
  %.not8.i.i38 = icmp eq ptr %i.ce, %6
  br i1 %.not8.i.i38, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %bb.w, %.lr.ph.i.i39
  %.09.i.i40 = phi ptr [ %i.cf, %.lr.ph.i.i39 ], [ %i.ce, %bb.w ] ; 2 uses
  %i.cf = load ptr, ptr %.09.i.i40, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i40, i64 noundef 24) #19
  %.not.i.i41 = icmp eq ptr %i.cf, %6
  br i1 %.not.i.i41, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i39, !llvm.loop !23

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i39, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cg = load ptr, ptr %5, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.c
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit
  %i.ci = load i64, ptr %i.c, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ck = load ptr, ptr %4, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.a
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cm = load i64, ptr %i.a, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit37, %bb.h
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit37 ], [ %i.w, %bb.h ]
  %i.co = load ptr, ptr %6, align 8               ; 2 uses
  %.not8.i.i48 = icmp eq ptr %i.co, %6
  br i1 %.not8.i.i48, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit52, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %bb.x, %.lr.ph.i.i49
  %.09.i.i50 = phi ptr [ %i.cp, %.lr.ph.i.i49 ], [ %i.co, %bb.x ] ; 2 uses
  %i.cp = load ptr, ptr %.09.i.i50, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i50, i64 noundef 24) #19
  %.not.i.i51 = icmp eq ptr %i.cp, %6
  br i1 %.not.i.i51, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit52, label %.lr.ph.i.i49, !llvm.loop !23

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit52: ; preds = %.lr.ph.i.i49, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cq = load ptr, ptr %5, align 8               ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.c
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit52
  %i.cs = load i64, ptr %i.c, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cu = load ptr, ptr %4, align 8               ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.a
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.cw = load i64, ptr %i.a, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn12.pn
}

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper24getVector2DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector2tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter15readPolypoint2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::list.9", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.e, align 8
  store ptr %6, ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  store ptr %i.g, ptr %3, align 8
  %i.h = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %.noexc
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc13
  %i.i = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38)
          to label %.noexc14 unwind label %bb.h   ; 2 uses

.noexc14:                                         ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #17
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.i, i64 noundef %i.k)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %.noexc13, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.m = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc17 unwind label %bb.h

.noexc17:                                         ; preds = %bb.c
  store ptr %i.m, ptr %2, align 8
  %i.n = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %.noexc17
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc18
  %i.o = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.38)
          to label %.noexc19 unwind label %bb.h   ; 2 uses

.noexc19:                                         ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #17
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull %i.o, i64 noundef %i.q)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %.noexc18, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.s = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper24getVector2DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector2tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.d, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 12, ptr noundef null)
          to label %bb.s unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.r, %bb.q, %bb.k, %.noexc19, %bb.d, %.noexc17, %bb.c, %.noexc14, %bb.b, %.noexc, %bb.a, %._crit_edge, %bb.i, %bb.g, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.x = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.j unwind label %bb.h       ; 17 uses

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.ae, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i32 12, ptr %i.ah, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.x, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 3 uses
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store i8 1, ptr %i.al, align 8
  %i.am = load i64, ptr %i.b, align 8
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.k, %bb.j
  %.sroa.049.060 = load ptr, ptr %6, align 8      ; 2 uses
  %.not61 = icmp eq ptr %.sroa.049.060, %6
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store i64 1, ptr %i.ao, align 8
  %i.ap = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.h

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.l
  %.sroa.049.062 = phi ptr [ %.sroa.049.0, %bb.l ], [ %.sroa.049.060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %i.aq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.l unwind label %bb.m       ; 3 uses

bb.l:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.049.062, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load <2 x float>, ptr %i.ar, align 4
  store <2 x float> %i.at, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store float 0.000000e+00, ptr %i.au, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #17
  %i.av = load i64, ptr %i.ak, align 8
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.ak, align 8
  %.sroa.049.0 = load ptr, ptr %.sroa.049.062, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.049.0, %6
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.m:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %._crit_edge
  br i1 %i.ap, label %bb.q, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ay, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ay, ptr noundef nonnull align 1 dereferenceable(11) @.str.21, i64 11, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 11, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 27
  store i8 0, ptr %i.ba, align 1
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bb = load ptr, ptr %7, align 8               ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bd = load i64, ptr %i.ay, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.r

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %7, align 8               ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ay
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.p
  %i.bi = load i64, ptr %i.ay, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.bl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.h ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.x, ptr %i.bn, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit30 unwind label %bb.h ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit30: ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.x, ptr %i.bt, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #17
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit30
  %i.bx = load ptr, ptr %6, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bx, %6
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.bx, %bb.s ] ; 2 uses
  %i.by = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #19
  %.not.i.i = icmp eq ptr %i.by, %6
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.c
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit
  %i.cb = load i64, ptr %i.c, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cd = load ptr, ptr %4, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.a
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cf = load i64, ptr %i.a, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.m, %bb.h
  %.pn11 = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.w, %bb.h ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  %i.ch = load ptr, ptr %6, align 8               ; 2 uses
  %.not8.i.i37 = icmp eq ptr %i.ch, %6
  br i1 %.not8.i.i37, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit41, label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %bb.t, %.lr.ph.i.i38
  %.09.i.i39 = phi ptr [ %i.ci, %.lr.ph.i.i38 ], [ %i.ch, %bb.t ] ; 2 uses
  %i.ci = load ptr, ptr %.09.i.i39, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i39, i64 noundef 24) #19
  %.not.i.i40 = icmp eq ptr %i.ci, %6
  br i1 %.not.i.i40, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit41, label %.lr.ph.i.i38, !llvm.loop !23

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit41: ; preds = %.lr.ph.i.i38, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cj = load ptr, ptr %5, align 8               ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.c
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit41
  %i.cl = load i64, ptr %i.c, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cn = load ptr, ptr %4, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.a
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cp = load i64, ptr %i.a, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %class.aiVector2t, align 8          ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <2 x float> splat (float 2.000000e+00), ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.f = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  store ptr %i.f, ptr %4, align 8
  %i.g = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc20 unwind label %bb.j

.noexc20:                                         ; preds = %.noexc
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc20
  %i.h = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.38)
          to label %.noexc21 unwind label %bb.j   ; 2 uses

.noexc21:                                         ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #17
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %i.h, i64 noundef %i.j)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %.noexc20, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.l = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc24 unwind label %bb.j

.noexc24:                                         ; preds = %bb.c
  store ptr %i.l, ptr %3, align 8
  %i.m = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %.noexc24
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc25
  %i.n = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38)
          to label %.noexc26 unwind label %bb.j   ; 2 uses

.noexc26:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.d, align 8
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #17
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull %i.n, i64 noundef %i.p)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %.noexc25, %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.r = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector2DAttributeERN4pugi8xml_nodeEPKcR10aiVector2tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.s = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
          to label %.noexc30 unwind label %bb.j

.noexc30:                                         ; preds = %bb.f
  store ptr %i.s, ptr %2, align 8
  %i.t = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc31 unwind label %bb.j

.noexc31:                                         ; preds = %.noexc30
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc31
  %i.u = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %.noexc32 unwind label %bb.j

.noexc32:                                         ; preds = %bb.g
  %i.v = zext i1 %i.u to i8
  br label %bb.h

bb.h:                                             ; preds = %.noexc32, %.noexc31
  %.0 = phi i8 [ 0, %.noexc31 ], [ %i.v, %.noexc32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.w = load i64, ptr %i.d, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 13, ptr noundef null)
          to label %bb.ac unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.m, %bb.g, %.noexc30, %bb.f, %.noexc26, %bb.d, %.noexc24, %bb.c, %.noexc21, %bb.b, %.noexc, %bb.a, %bb.k, %bb.i, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.k:                                             ; preds = %bb.h
  %i.aa = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.l unwind label %bb.j       ; 17 uses

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.ah, ptr %i.ai, align 8
  store ptr %i.ah, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store i32 13, ptr %i.ak, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.aa, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store ptr %i.al, ptr %i.am, align 8
  store ptr %i.al, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 9 uses
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 2 uses
  store i8 1, ptr %i.ao, align 8
  %i.ap = load i64, ptr %i.b, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.m, %bb.l
  %i.ar = load float, ptr %7, align 8             ; 2 uses
  %i.as = fmul float %i.ar, -5.000000e-01         ; 2 uses
  %i.at = fmul float %i.ar, 5.000000e-01          ; 2 uses
  %i.au = load float, ptr %i.e, align 4           ; 2 uses
  %i.av = fmul float %i.au, -5.000000e-01         ; 2 uses
  %i.aw = fmul float %i.au, 5.000000e-01          ; 2 uses
  %i.ax = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.n unwind label %bb.t       ; 4 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store float %i.at, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store float %i.av, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store float 0.000000e+00, ptr %i.ba, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.al) #17
  %i.bb = load i64, ptr %i.an, align 8
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.an, align 8
  %i.bd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.o unwind label %bb.u       ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store float %i.at, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  store float %i.aw, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store float 0.000000e+00, ptr %i.bg, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.al) #17
  %i.bh = load i64, ptr %i.an, align 8
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.an, align 8
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.p unwind label %bb.v       ; 4 uses

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store float %i.as, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store float %i.aw, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store float 0.000000e+00, ptr %i.bm, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.al) #17
  %i.bn = load i64, ptr %i.an, align 8
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.an, align 8
  %i.bp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.q unwind label %bb.w       ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store float %i.as, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store float %i.av, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store float 0.000000e+00, ptr %i.bs, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.al) #17
  %i.bt = load i64, ptr %i.an, align 8
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.an, align 8
  store i8 %.0, ptr %i.ao, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i64 4, ptr %i.bv, align 8
  %i.bw = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  br i1 %i.bw, label %bb.z, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bx, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bx, ptr noundef nonnull align 1 dereferenceable(11) @.str.23, i64 11, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.bz, align 1
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ca = load ptr, ptr %8, align 8               ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bx
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.cc = load i64, ptr %i.bx, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.aa

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.u:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.v:                                             ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.w:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %8, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bx
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.y
  %i.cm = load i64, ptr %i.bx, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ad

bb.z:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.x ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.aa, ptr %i.cr, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.cq) #17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 64 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cs, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.ab unwind label %bb.x      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.aa, ptr %i.cx, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cw) #17
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.db = load ptr, ptr %6, align 8               ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.c
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.ac
  %i.dd = load i64, ptr %i.c, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

end_hunk_4
begin_hunk_5_@_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE:bb.a
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.ad:                                            ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.j
  %.pn17.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.z, %bb.j ], [ %i.ci, %bb.x ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ch, %bb.w ], [ %i.cg, %bb.v ], [ %i.cf, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dj = load ptr, ptr %6, align 8               ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.c
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.ad
  %i.dl = load i64, ptr %i.c, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dn = load ptr, ptr %5, align 8               ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.a
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.dp = load i64, ptr %i.a, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn17.pn
}

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector2DAttributeERN4pugi8xml_nodeEPKcR10aiVector2tIfE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter17readTriangleSet2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::list.9", align 8 ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.e, align 8
  store ptr %7, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.g = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  store ptr %i.g, ptr %4, align 8
  %i.h = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %.noexc
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc14
  %i.i = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.38)
          to label %.noexc15 unwind label %bb.j   ; 2 uses

.noexc15:                                         ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #17
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.i, i64 noundef %i.k)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %.noexc14, %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.m = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %bb.c
  store ptr %i.m, ptr %3, align 8
  %i.n = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc19 unwind label %bb.j

.noexc19:                                         ; preds = %.noexc18
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc19
  %i.o = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.38)
          to label %.noexc20 unwind label %bb.j   ; 2 uses

.noexc20:                                         ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #17
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.p, ptr noundef nonnull %i.o, i64 noundef %i.q)
          to label %bb.e unwind label %bb.j       ; 0 uses

bb.e:                                             ; preds = %.noexc19, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.s = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper24getVector2DListAttributeERN4pugi8xml_nodeEPKcRNSt7__cxx114listI10aiVector2tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.t = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
          to label %.noexc24 unwind label %bb.j

.noexc24:                                         ; preds = %bb.f
  store ptr %i.t, ptr %2, align 8
  %i.u = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc25 unwind label %bb.j

.noexc25:                                         ; preds = %.noexc24
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc25
  %i.v = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %bb.g
  %i.w = zext i1 %i.v to i8
  br label %bb.h

bb.h:                                             ; preds = %.noexc26, %.noexc25
  %.0 = phi i8 [ 0, %.noexc25 ], [ %i.w, %.noexc26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.x = load i64, ptr %i.d, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 14, ptr noundef null)
          to label %bb.y unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.x, %bb.w, %bb.q, %bb.g, %.noexc24, %bb.f, %.noexc20, %bb.d, %.noexc18, %bb.c, %.noexc15, %bb.b, %.noexc, %bb.a, %._crit_edge, %bb.o, %bb.m, %bb.i, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.f, align 8
  %i.ac = urem i64 %i.ab, 3
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.25)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.aa unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ad) #17
  br label %bb.z

bb.o:                                             ; preds = %bb.k
  %i.af = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18
          to label %bb.p unwind label %bb.j       ; 17 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 0, ptr %i.al, align 8
  store i8 0, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr %i.am, ptr %i.an, align 8
  store ptr %i.am, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store i32 14, ptr %i.ap, align 8
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %i.af, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store ptr %i.aq, ptr %i.ar, align 8
  store ptr %i.aq, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 3 uses
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 2 uses
  store i8 1, ptr %i.at, align 8
  %i.au = load i64, ptr %i.b, align 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.q, %bb.p
  %.sroa.054.066 = load ptr, ptr %7, align 8      ; 2 uses
  %.not6567 = icmp eq ptr %.sroa.054.066, %7
  br i1 %.not6567, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store i8 %.0, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i64 3, ptr %i.aw, align 8
  %i.ax = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.t unwind label %bb.j

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.r
  %.sroa.054.068 = phi ptr [ %.sroa.054.0, %bb.r ], [ %.sroa.054.066, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %bb.r unwind label %bb.s       ; 3 uses

bb.r:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.054.068, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load <2 x float>, ptr %i.az, align 4
  store <2 x float> %i.bb, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store float 0.000000e+00, ptr %i.bc, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #17
  %i.bd = load i64, ptr %i.as, align 8
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.as, align 8
  %.sroa.054.0 = load ptr, ptr %.sroa.054.068, align 8 ; 2 uses
  %.not65 = icmp eq ptr %.sroa.054.0, %7
  br i1 %.not65, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.s:                                             ; preds = %.lr.ph
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.t:                                             ; preds = %._crit_edge
  br i1 %i.ax, label %bb.w, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bg, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bg, ptr noundef nonnull align 1 dereferenceable(13) @.str.26, i64 13, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 13, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 29
  store i8 0, ptr %i.bi, align 1
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bj = load ptr, ptr %8, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bg
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.bl = load i64, ptr %i.bg, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.x

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %8, align 8               ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bg
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.v
  %i.bq = load i64, ptr %i.bg, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.j ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.af, ptr %i.bv, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 64 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit35 unwind label %bb.j ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit35: ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.af, ptr %i.cb, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit35
  %i.cf = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cf, %7
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.cf, %bb.y ] ; 2 uses
  %i.cg = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #19
  %.not.i.i = icmp eq ptr %i.cg, %7
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !23

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ch = load ptr, ptr %6, align 8               ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.c
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit
  %i.cj = load i64, ptr %i.c, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cl = load ptr, ptr %5, align 8               ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.a
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.cn = load i64, ptr %i.a, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.s, %bb.n, %bb.j
  %.pn12 = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.ae, %bb.n ], [ %i.bf, %bb.s ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  %i.cp = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i42 = icmp eq ptr %i.cp, %7
  br i1 %.not8.i.i42, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit46, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %bb.z, %.lr.ph.i.i43
  %.09.i.i44 = phi ptr [ %i.cq, %.lr.ph.i.i43 ], [ %i.cp, %bb.z ] ; 2 uses
  %i.cq = load ptr, ptr %.09.i.i44, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i44, i64 noundef 24) #19
  %.not.i.i45 = icmp eq ptr %i.cq, %7
  br i1 %.not.i.i45, label %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit46, label %.lr.ph.i.i43, !llvm.loop !23

_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit46: ; preds = %.lr.ph.i.i43, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.cr = load ptr, ptr %6, align 8               ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.c
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit46
  %i.ct = load i64, ptr %i.c, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector2tIfESaIS2_EED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cv = load ptr, ptr %5, align 8               ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.a
end_hunk_5
begin_hunk_6_@_ZN6Assimp18Throw_USE_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.noexc21
  store ptr %i.aq, ptr %3, align 8, !alias.scope !44
  %i.ax = load i64, ptr %i.ar, align 8
  store i64 %i.ax, ptr %i.ap, align 8, !alias.scope !44
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.h
  %i.ay = phi i64 [ %i.au, %bb.h ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !alias.scope !44
  store ptr %i.ar, ptr %i.ao, align 8
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ar, align 8
  %i.bb = and i64 %i.ay, -2
  %i.bc = icmp eq i64 %i.bb, 4611686018427387902
  br i1 %i.bc, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #20
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22: ; preds = %bb.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %.noexc27 unwind label %bb.o   ; 6 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.be, ptr %2, align 8, !alias.scope !47
  %i.bf = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.k:                                             ; preds = %.noexc27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.noexc27
  store ptr %i.bf, ptr %2, align 8, !alias.scope !47
  %i.bm = load i64, ptr %i.bg, align 8
  store i64 %i.bm, ptr %i.be, align 8, !alias.scope !47
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i24, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.k
  %i.bn = phi i64 [ %i.bj, %bb.k ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !alias.scope !47
  store ptr %i.bg, ptr %i.bd, align 8
  store i64 0, ptr %i.bo, align 8
  store i8 0, ptr %i.bg, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.s unwind label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22, %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %2, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.be
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.p
  %i.bv = load i64, ptr %i.be, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.o
  %.pn = phi { ptr, i32 } [ %i.br, %bb.o ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.bs, %bb.p ] ; 2 uses
  %.1 = phi i1 [ true, %bb.o ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.0, %bb.p ] ; 2 uses
  %i.bx = load ptr, ptr %3, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.ap
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.ap, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.2 = phi i1 [ true, %bb.n ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cb = load ptr, ptr %4, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.w
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cd = load i64, ptr %i.w, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.cf = load ptr, ptr %5, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.e
  br i1 %i.cg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %5, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.e
  br i1 %i.cj, label %.sink.split, label %.sink.split.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ck = load i64, ptr %i.e, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.2, label %bb.q, label %bb.r

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.2, label %bb.q, label %bb.r

.sink.split.sink.split:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %bb.c
  %.sink = phi ptr [ %i.q, %bb.c ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  %.pn.pn.pn.pn42.ph.ph = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ]
  %i.cm = load i64, ptr %i.e, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cn) #19
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread, %bb.c
  %.pn.pn.pn.pn42.ph = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.thread ], [ %i.p, %bb.c ], [ %.pn.pn.pn.pn42.ph.ph, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %.body
  %.pn.pn.pn.pn42 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn42.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.a) #17
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %.body, %bb.q
  %.pn.pn.pn.pn41 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn42, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ]
  resume { ptr, i32 } %.pn.pn.pn.pn41

bb.s:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #17
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTV17DeadlyImportError, i32 0, i32 0, i32 2), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #17
  resume { ptr, i32 } %i.o
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #17
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #17
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #19
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !59
  store i8 0, ptr %i.a, align 8, !alias.scope !59
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !59 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !59 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !59 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !59 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #12 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN24X3DNodeElementGeometry2DD2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #19
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV18X3DNodeElementBase, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.e, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !60
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN18X3DNodeElementBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19, !inline_history !60
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN24X3DNodeElementGeometry2DD0Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV24X3DNodeElementGeometry2D, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #19, !inline_history !62
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV18X3DNodeElementBase, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %.09.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #19, !inline_history !63
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN24X3DNodeElementGeometry2DD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19, !inline_history !63
  br label %_ZN24X3DNodeElementGeometry2DD2Ev.exit

_ZN24X3DNodeElementGeometry2DD2Ev.exit:           ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN18X3DNodeElementBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV18X3DNodeElementBase, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #19
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN18X3DNodeElementBaseD0Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTV18X3DNodeElementBase, i32 0, i32 0, i32 2), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #19, !inline_history !60
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN18X3DNodeElementBaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19, !inline_history !60
  br label %_ZN18X3DNodeElementBaseD2Ev.exit

_ZN18X3DNodeElementBaseD2Ev.exit:                 ; preds = %_ZNSt7__cxx1110_List_baseIP18X3DNodeElementBaseSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #17
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #17
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #17
  resume { ptr, i32 } %i.y
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

declare ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8), float noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6insertISt20_List_const_iteratorIS2_EvEESt14_List_iteratorIS2_ES7_T_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list.3", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8
  store ptr %4, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 0, ptr %i.b, align 8
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.h, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %.noexc.i unwind label %bb.b   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %i.f = load i64, ptr %i.b, align 8
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8
  %i.h = load ptr, ptr %.sroa.01.05.i.i, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit, label %.lr.ph.i.i, !llvm.loop !64

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8                ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.j, %4
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #19
  %.not.i.i.i = icmp eq ptr %i.k, %4
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8               ; 4 uses
  %i.l = icmp eq ptr %.pre, %4
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6spliceESt20_List_const_iteratorIS2_ERS4_.exit

_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6spliceESt20_List_const_iteratorIS2_ERS4_.exit: ; preds = %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %i.m = load i64, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8
  store i64 0, ptr %i.b, align 8
  %.pre10 = load ptr, ptr %4, align 8
  br label %bb.c

.body:                                            ; preds = %.lr.ph.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.i

bb.c:                                             ; preds = %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6spliceESt20_List_const_iteratorIS2_ERS4_.exit
  %i.q = phi ptr [ %.pre10, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6spliceESt20_List_const_iteratorIS2_ERS4_.exit ], [ %.pre, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit ] ; 2 uses
  %.sroa.06.0 = phi ptr [ %.pre, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EE6spliceESt20_List_const_iteratorIS2_ERS4_.exit ], [ %1, %_ZNSt7__cxx114listI10aiVector3tIfESaIS2_EEC2ISt20_List_const_iteratorIS2_EvEET_S8_RKS3_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.q, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.c, %.lr.ph.i.i7
  %.09.i.i = phi ptr [ %i.r, %.lr.ph.i.i7 ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #19
  %.not.i.i8 = icmp eq ptr %i.r, %4
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !3

_ZNSt7__cxx1110_List_baseI10aiVector3tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i7, %bb.a, %bb.c
  %.sroa.06.020 = phi ptr [ %1, %bb.a ], [ %.sroa.06.0, %bb.c ], [ %.sroa.06.0, %.lr.ph.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.sroa.06.020
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!7 = distinct !{!7, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!8 = !{!9, !6}
!9 = distinct !{!9, !10, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!10 = distinct !{!10, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!13 = distinct !{!13, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!16 = distinct !{!16, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!19 = distinct !{!19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!28 = distinct !{!28, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!29 = !{!30, !27}
!30 = distinct !{!30, !31, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!31 = distinct !{!31, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!34 = distinct !{!34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!37 = distinct !{!37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!38 = !{!39, !36}
!39 = distinct !{!39, !40, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!40 = distinct !{!40, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!41 = !{!42}
end_hunk_6
