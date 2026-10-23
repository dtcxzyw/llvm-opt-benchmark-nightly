Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase:bb.a

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6Assimp12X3DGeoHelper20rect_parallel_epipedERK10aiVector3tIfERNSt7__cxx114listIS2_SaIS2_EEE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter8readConeERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::vector", align 8      ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.a, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.c, ptr %10, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %8, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc19
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.55)
          to label %.noexc20 unwind label %bb.o   ; 2 uses

.noexc20:                                         ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #20
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.o       ; 0 uses

bb.c:                                             ; preds = %.noexc19, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %bb.c
  store ptr %i.k, ptr %7, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc23
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc24
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.55)
          to label %.noexc25 unwind label %bb.o   ; 2 uses

.noexc25:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #20
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %bb.o       ; 0 uses

bb.e:                                             ; preds = %.noexc24, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
          to label %.noexc29 unwind label %bb.o

.noexc29:                                         ; preds = %bb.e
  store ptr %i.q, ptr %6, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc30 unwind label %bb.o

.noexc30:                                         ; preds = %.noexc29
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc30
  %i.s = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %.noexc31 unwind label %bb.o

.noexc31:                                         ; preds = %bb.f
  %i.t = zext i1 %i.s to i8
  br label %bb.g

bb.g:                                             ; preds = %.noexc31, %.noexc30
  %.098 = phi i8 [ 1, %.noexc30 ], [ %i.t, %.noexc31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.u = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5)
          to label %.noexc33 unwind label %bb.o

.noexc33:                                         ; preds = %bb.g
  store ptr %i.u, ptr %5, align 8
  %i.v = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc34 unwind label %bb.o

.noexc34:                                         ; preds = %.noexc33
  br i1 %i.v, label %.noexc35, label %bb.h

bb.h:                                             ; preds = %.noexc34
  %i.w = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %.noexc35 unwind label %bb.o

.noexc35:                                         ; preds = %bb.h, %.noexc34
  %.099 = phi i1 [ true, %.noexc34 ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.x = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6)
          to label %.noexc38 unwind label %bb.o

.noexc38:                                         ; preds = %.noexc35
  store ptr %i.x, ptr %4, align 8
  %i.y = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc39 unwind label %bb.o

.noexc39:                                         ; preds = %.noexc38
  br i1 %i.y, label %.noexc40.a, label %bb.i

bb.i:                                             ; preds = %.noexc39
  %i.z = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext false)
          to label %.noexc40.a unwind label %bb.o

.noexc40.a:                                       ; preds = %bb.i, %.noexc39
  %.0 = phi i1 [ true, %.noexc39 ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aa = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7)
          to label %.noexc43 unwind label %bb.o

.noexc43:                                         ; preds = %.noexc40.a
  store ptr %i.aa, ptr %3, align 8
  %i.ab = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc44 unwind label %bb.o

.noexc44:                                         ; preds = %.noexc43
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc44
  %i.ac = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef 0.000000e+00)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %.noexc44, %bb.j
  %.097 = phi float [ 2.000000e+00, %.noexc44 ], [ %i.ac, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ad = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
          to label %.noexc47 unwind label %bb.o

.noexc47:                                         ; preds = %bb.k
  store ptr %i.ad, ptr %2, align 8
  %i.ae = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc48 unwind label %bb.o

.noexc48:                                         ; preds = %.noexc47
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc48
  %i.af = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.noexc48, %bb.l
  %.096 = phi float [ 1.000000e+00, %.noexc48 ], [ %i.af, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 16, ptr noundef null)
          to label %bb.af unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %bb.l, %.noexc47, %bb.k, %bb.j, %.noexc43, %.noexc40.a, %bb.i, %.noexc38, %.noexc35, %bb.h, %.noexc33, %bb.g, %bb.f, %.noexc29, %bb.e, %.noexc25, %bb.d, %.noexc23, %bb.c, %.noexc20, %bb.b, %.noexc, %bb.a, %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ak = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #21
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 17 uses

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 0, ptr %i.aq, align 8
  store i8 0, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.ar, ptr %i.as, align 8
  store ptr %i.ar, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i32 16, ptr %i.au, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV24X3DNodeElementGeometry3D, i64 16), ptr %i.ak, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store ptr %i.av, ptr %i.aw, align 8
  store ptr %i.av, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ay, align 8
  %i.az = load i64, ptr %i.d, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.r, %bb.q
  br i1 %.099, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %13 = xor i1 %.0, true
  invoke void @_ZN6Assimp14StandardShapes8MakeConeEfffjRSt6vectorI10aiVector3tIfESaIS3_EEb(float noundef %.097, float noundef 0.000000e+00, float noundef %.096, i32 noundef 30, ptr noundef nonnull align 8 dereferenceable(24) %11, i1 noundef zeroext %13)
          to label %.loopexit101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %.0, label %bb.u, label %.loopexit101

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6Assimp14StandardShapes10MakeCircleEfjRSt6vectorI10aiVector3tIfESaIS3_EE(float noundef %.096, i32 noundef 30, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bb = fmul float %.097, -5.000000e-01
  %i.bc = load ptr, ptr %11, align 8              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %.not102 = icmp eq ptr %i.bc, %i.be
  br i1 %.not102, label %.loopexit101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %.sroa.079.0103 = phi ptr [ %i.bg, %.lr.ph ], [ %i.bc, %bb.v ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.079.0103, i64 4
  store float %i.bb, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.079.0103, i64 12 ; 2 uses
  %i.bh = load ptr, ptr %i.bd, align 8
  %.not = icmp eq ptr %i.bg, %i.bh
  br i1 %.not, label %.loopexit101, label %.lr.ph, !llvm.loop !12

.loopexit101:                                     ; preds = %.lr.ph, %bb.v, %bb.t, %bb.s
  %i.bi = load ptr, ptr %11, align 8              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not100104 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not100104, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.w, %.loopexit101
  store i8 %.098, ptr %i.ay, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  store i64 3, ptr %i.bl, align 8
  %i.bm = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph106:                                        ; preds = %.loopexit101, %bb.w
  %.sroa.075.0105 = phi ptr [ %i.br, %bb.w ], [ %i.bi, %.loopexit101 ] ; 2 uses
  %i.bn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %.lr.ph106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.075.0105, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.av) #20
  %i.bp = load i64, ptr %i.ax, align 8
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ax, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.075.0105, i64 12 ; 2 uses
  %i.bs = load ptr, ptr %i.bj, align 8
  %.not100 = icmp eq ptr %i.br, %i.bs
  br i1 %.not100, label %._crit_edge, label %.lr.ph106, !llvm.loop !13

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph106, %bb.p, %bb.s, %bb.u, %._crit_edge, %bb.r, %bb.aa, %bb.ab
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %._crit_edge
  br i1 %i.bm, label %bb.aa, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bt, ptr %12, align 8
  store i32 1701736259, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.bv, align 4
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.bw = load ptr, ptr %12, align 8              ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bt
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.by = load i64, ptr %i.bt, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ab

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %12, align 8              ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bt
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.z
  %i.cd = load i64, ptr %i.bt, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x
  %i.cf = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.cg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.ak, ptr %i.ci, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.ak, ptr %i.co, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cn) #20
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8
  %i.cs = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn16 = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cy = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit61, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit61

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit61:  ; preds = %.loopexit.split-lp, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ag

bb.af:                                            ; preds = %bb.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.de = load ptr, ptr %10, align 8              ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.c
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.af
  %i.dg = load i64, ptr %i.c, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.di = load ptr, ptr %9, align 8               ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.a
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.dk = load i64, ptr %i.a, align 8
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit61, %bb.o
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit61 ], [ %i.aj, %bb.o ]
  %i.dm = load ptr, ptr %10, align 8              ; 2 uses
end_hunk_0
