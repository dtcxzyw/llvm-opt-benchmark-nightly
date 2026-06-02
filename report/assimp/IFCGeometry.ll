inline.NumInlined: 2079
inline.NumDeleted: 821
begin_hunk_0_@_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x38IfcCurveEEcvPKS4_Ev:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x38IfcCurveEEEPKT_v.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x38IfcCurveEEEPKT_v.exit

_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x38IfcCurveEEEPKT_v.exit: ; preds = %bb.g, %bb.h
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call noundef ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x38IfcCurveE, i64 -1) #30
  ret ptr %i.n

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6Assimp3IFC12ProcessCurveERKNS0_10Schema_2x38IfcCurveERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC21ProcessSweptAreaSolidERKNS0_10Schema_2x317IfcSweptAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(392) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 3 uses
  %i.g = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.f, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x320IfcExtrudedAreaSolidE, i64 -1) #30 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ne ptr %i.i, null
  tail call void @_ZN6Assimp3IFC24ProcessExtrudedAreaSolidERKNS0_10Schema_2x320IfcExtrudedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataEb(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext %i.j)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.f, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x320IfcRevolvedAreaSolidE, i64 -1) #30 ; 2 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6Assimp3IFC24ProcessRevolvedAreaSolidERKNS0_10Schema_2x320IfcRevolvedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(392) %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !222 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.n, ptr %3, align 8, !alias.scope !222
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !222
  store i64 %i.p, ptr %i.b, align 8, !noalias !222
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %3, align 8, !alias.scope !222
  %i.s = load i64, ptr %i.b, align 8, !noalias !222
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !222
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.f
  %i.t = phi ptr [ %i.r, %.noexc.i.i ], [ %i.n, %bb.f ] ; 2 uses
  switch i64 %i.p, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.m, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  br label %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit

_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.v = load i64, ptr %i.b, align 8, !noalias !222 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !alias.scope !222
  %i.x = load ptr, ptr %3, align 8, !alias.scope !222
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !222
  %i.z = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  br i1 %i.z, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.aa = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc15 unwind label %bb.j

.noexc15:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc16 unwind label %bb.j

.noexc16:                                         ; preds = %.noexc15
  store ptr %i.ab, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA52_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(52) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc17 unwind label %bb.j

.noexc17:                                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc17, %.noexc
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %i.ae = load i64, ptr %i.n, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA52_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.k

bb.j:                                             ; preds = %.noexc16, %.noexc15, %bb.i, %_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.j
  %i.aj = load i64, ptr %i.n, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ag

bb.k:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC20ProcessGeometricItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(9) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 16 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28, !noalias !225 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !noalias !225
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !noalias !225
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !noalias !225
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !225
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !225
  store ptr %i.f, ptr %4, align 8, !alias.scope !225
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 8 uses
  %i.k = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x325IfcShellBasedSurfaceModelE, i64 -1) #30 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not208214 = icmp eq ptr %i.m, %i.o
  br i1 %.not208214, label %.critedge157, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0204.0215 = phi ptr [ %i.m, %.lr.ph ], [ %i.ah, %bb.m ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.0204.0215, align 8
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.q, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #30 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_bad_cast() #27
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit: ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !nonnull !40, !align !228
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.t, i64 noundef %i.v)
          to label %bb.e unwind label %bb.i       ; 2 uses

bb.e:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %.noexc162 unwind label %bb.i

.noexc162:                                        ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.x, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %.noexc162, %bb.e
  %i.z = phi ptr [ %.pre.i.i, %.noexc162 ], [ %i.y, %bb.e ]
  %i.aa = tail call ptr @__dynamic_cast(ptr nonnull %i.z, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcConnectedFaceSetE, i64 -1) #30 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x319IfcConnectedFaceSetEEERKT_v.exit

bb.g:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  invoke void @__cxa_bad_cast() #27
          to label %.noexc163 unwind label %bb.i

.noexc163:                                        ; preds = %bb.g
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x319IfcConnectedFaceSetEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  invoke void @_ZN6Assimp3IFC23ProcessConnectedFaceSetERKNS0_10Schema_2x319IfcConnectedFaceSetERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr nonnull align 8 poison)
          to label %bb.m unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x319IfcConnectedFaceSetEEERKT_v.exit, %_ZNK6Assimp4STEP7EXPRESS8DataType2ToINS1_6ENTITYEEERKT_v.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt8bad_cast
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn150 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.099 = extractvalue { ptr, i32 } %.pn150, 1
  %i.ae = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt8bad_cast) #30
  %i.af = icmp eq i32 %.099, %i.ae
  br i1 %i.af, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.084 = extractvalue { ptr, i32 } %.pn150, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %.084) #30 ; 0 uses
  invoke void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA74_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(74) @.str.16)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x319IfcConnectedFaceSetEEERKT_v.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0204.0215, i64 16 ; 2 uses
  %.not208 = icmp eq ptr %i.ah, %i.o
  br i1 %.not208, label %.critedge157, label %bb.c

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.cz

bb.o:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.p:                                             ; preds = %bb.a
  %i.ak = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcConnectedFaceSetE, i64 -1) #30 ; 2 uses
  %.not122 = icmp eq ptr %i.ak, null
  br i1 %.not122, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6Assimp3IFC23ProcessConnectedFaceSetERKNS0_10Schema_2x319IfcConnectedFaceSetERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr nonnull align 8 poison)
          to label %.critedge157 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  %i.am = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcSweptAreaSolidE, i64 -1) #30 ; 2 uses
  %.not123 = icmp eq ptr %i.am, null
  br i1 %.not123, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6Assimp3IFC21ProcessSweptAreaSolidERKNS0_10Schema_2x317IfcSweptAreaSolidERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %.critedge157 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.v:                                             ; preds = %bb.s
  %i.ao = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcSweptDiskSolidE, i64 -1) #30 ; 2 uses
  %.not124 = icmp eq ptr %i.ao, null
  br i1 %.not124, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %.critedge157 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.y:                                             ; preds = %bb.v
  %i.aq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x320IfcManifoldSolidBrepE, i64 -1) #30 ; 2 uses
  %.not125 = icmp eq ptr %i.aq, null
  br i1 %.not125, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = invoke noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x314IfcClosedShellEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %11 = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp3IFC23ProcessConnectedFaceSetERKNS0_10Schema_2x319IfcConnectedFaceSetERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull align 8 poison)
          to label %.critedge157 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ac:                                            ; preds = %bb.y
  %i.au = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x324IfcFaceBasedSurfaceModelE, i64 -1) #30 ; 3 uses
  %.not126 = icmp eq ptr %i.au, null
  br i1 %.not126, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not209216 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not209216, label %.critedge157, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.ad, %bb.af
  %.sroa.0200.0217 = phi ptr [ %i.ba, %bb.af ], [ %i.aw, %bb.ad ] ; 2 uses
  %i.az = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcConnectedFaceSetEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0200.0217)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.lr.ph218
  invoke void @_ZN6Assimp3IFC23ProcessConnectedFaceSetERKNS0_10Schema_2x319IfcConnectedFaceSetERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr nonnull align 8 poison)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0200.0217, i64 8 ; 2 uses
  %.not209 = icmp eq ptr %i.ba, %i.ay
  br i1 %.not209, label %.critedge157, label %.lr.ph218

bb.ag:                                            ; preds = %bb.ae, %.lr.ph218
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ah:                                            ; preds = %bb.ac
  %i.bc = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x316IfcBooleanResultE, i64 -1) #30 ; 2 uses
  %.not127.not = icmp eq ptr %i.bc, null
  br i1 %.not127.not, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6Assimp3IFC14ProcessBooleanERKNS0_10Schema_2x316IfcBooleanResultERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(112) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %.critedge157 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ah
  %i.be = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x314IfcBoundingBoxE, i64 -1) #30
  %.not128 = icmp eq ptr %i.be, null
  br i1 %.not128, label %bb.al, label %.critedge161

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.17, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bh = load ptr, ptr %0, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj
  invoke void @_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bl = load ptr, ptr %6, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.at ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.an
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.18, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef %i.bv)
          to label %_ZNSolsEm.exit unwind label %bb.at ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
  %i.bx = load ptr, ptr %6, align 8               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEm.exit
  %i.ca = load i64, ptr %i.by, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load ptr, ptr %7, align 8
  store ptr %i.cc, ptr %i.a, align 8
  invoke void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ap unwind label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.cd = load ptr, ptr %7, align 8               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.ap
  %i.cg = load i64, ptr %i.ce, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.critedge161

bb.aq:                                            ; preds = %bb.al
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ar:                                            ; preds = %bb.am
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.an
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.at
  %i.cp = load i64, ptr %i.cn, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.as ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.cl, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.aw

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.av:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %7, align 8               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.av
  %i.cw = load i64, ptr %i.cu, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.au
  %.pn130 = phi { ptr, i32 } [ %i.cr, %bb.au ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.cs, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.ar
  %.pn130.pn = phi { ptr, i32 } [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.cj, %bb.ar ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.aq
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn130.pn, %bb.aw ], [ %i.ci, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

.critedge157:                                     ; preds = %bb.m, %bb.af, %bb.b, %bb.ad, %bb.ai, %bb.q, %bb.w, %bb.aa, %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %.not146 = icmp eq ptr %i.cz, null
  %12 = load ptr, ptr %4, align 8                 ; 8 uses
  %i.da = load ptr, ptr %12, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = icmp eq ptr %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp eq ptr %i.df, %i.dh
  %i.dj = select i1 %i.dd, i1 %i.di, i1 false     ; 2 uses
  br i1 %.not146, label %bb.cd, label %bb.ay

bb.ay:                                            ; preds = %.critedge157
  br i1 %i.dj, label %.critedge161, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.dk = load ptr, ptr %0, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.dm
  %i.do = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.dn, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcSolidModelE, i64 -1) #30
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %13 = load ptr, ptr %i.b, align 8
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %4, align 8
  store ptr %i.do, ptr %8, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  store ptr %12, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr null, ptr %i.dp, align 8
  store ptr %13, ptr %i.ds, align 8
  store ptr null, ptr %9, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.dt, align 8
  store ptr null, ptr %i.dv, align 8
  store ptr null, ptr %i.du, align 8
  store ptr null, ptr %10, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not.i.i178 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not.i.i178, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dy, ptr noundef nonnull align 8 dereferenceable(88) %8, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ec = load ptr, ptr %i.dr, align 8
  store ptr %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ee = load ptr, ptr %i.ds, align 8
  store ptr null, ptr %i.ds, align 8
  store ptr %i.ee, ptr %i.ed, align 8
  store ptr null, ptr %i.dr, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.eg = load ptr, ptr %i.dt, align 8
  store ptr %i.eg, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ei = load ptr, ptr %i.du, align 8
  store ptr null, ptr %i.du, align 8
  store ptr %i.ei, ptr %i.eh, align 8
  store ptr null, ptr %i.dt, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.ek = load ptr, ptr %i.dw, align 8
  store ptr %i.ek, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.en = load ptr, ptr %i.em, align 8
  store ptr %i.en, ptr %i.el, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8
  store ptr %i.eq, ptr %i.eo, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.er = load ptr, ptr %i.dx, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  store ptr %i.es, ptr %i.dx, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit

bb.bb:                                            ; preds = %bb.az
  invoke void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(88) %8)
          to label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit unwind label %bb.cc

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ba, %bb.bb
  %i.et = load ptr, ptr %i.dw, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.bc, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit
  %i.ez = load ptr, ptr %i.du, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fa, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.ez, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !220
  %i.fi = load ptr, ptr %i.ez, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i1.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i = phi i32 [ %i.fd, %bb.bg ], [ %i.fn, %bb.bh ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fo, label %bb.bi, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.be, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.fp = load ptr, ptr %i.ds, align 8            ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.fq, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #30, !inline_history !220
  %i.fy = load ptr, ptr %i.fp, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.bl:                                            ; preds = %bb.bj
  %i.gb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i3.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.bn:                                            ; preds = %bb.bl
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i5.i = phi i32 [ %i.ft, %bb.bm ], [ %i.gd, %bb.bn ]
  %i.ge = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ge, label %bb.bo, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.bo
  %i.gf = load ptr, ptr %i.dv, align 8            ; 8 uses
  %.not.i.i180 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i180, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.gg, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4
  %i.gl = load ptr, ptr %i.gf, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30, !inline_history !221
  %i.go = load ptr, ptr %i.gf, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.gr = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i181 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i181, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i = phi i32 [ %i.gj, %bb.bs ], [ %i.gt, %bb.bt ]
  %i.gu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gu, label %bb.bu, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bu
  %i.gv = load ptr, ptr %i.dp, align 8            ; 8 uses
  %.not.i.i182 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i182, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.gw, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4
  %i.hb = load ptr, ptr %i.gv, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #30, !inline_history !221
  %i.he = load ptr, ptr %i.gv, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #30, !inline_history !221
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.hh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i183 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i183, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

bb.bz:                                            ; preds = %bb.bx
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i185 = phi i32 [ %i.gz, %bb.by ], [ %i.hj, %bb.bz ]
  %i.hk = icmp eq i32 %.0.i.i.i.i185, 1
  br i1 %i.hk, label %14, label %bb.ca, !prof !14

14:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #30
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184, %14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge161

bb.cb:                                            ; preds = %bb.cf, %bb.ce
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bb
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #30
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #30
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit

bb.cd:                                            ; preds = %.critedge157
  br i1 %i.dj, label %.critedge161, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6Assimp3IFC8TempMesh24RemoveAdjacentDuplicatesEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.cf unwind label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN6Assimp3IFC8TempMesh17RemoveDegeneratesEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.cg unwind label %bb.cb

bb.cg:                                            ; preds = %bb.cf
  %i.hn = invoke noundef ptr @_ZN6Assimp3IFC8TempMesh6ToMeshEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.ch unwind label %bb.cs     ; 4 uses

bb.ch:                                            ; preds = %bb.cg
  %.not147.not = icmp eq ptr %i.hn, null
  br i1 %.not147.not, label %.critedge161, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 232
  store i32 %1, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 5 uses
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = lshr exact i64 %i.hv, 3
  %i.hx = trunc i64 %i.hw to i32                  ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.hy, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.ci ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = icmp ugt i32 %i.ib, %i.hx               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ic, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i187, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !229

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.ic, label %._crit_edge.thread.i.i.i, label %bb.ck

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.ci
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.hz, %bb.ci ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = icmp eq ptr %.019.lcssa29.i.i.i, %i.ie
  br i1 %i.if, label %select.unfold.i.i, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.ig = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %.pre.i.i188 = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i.i.i
  %i.ih = phi i32 [ %.pre.i.i188, %bb.cj ], [ %i.ib, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.cj ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ii = icmp ult i32 %i.ih, %i.hx
  br i1 %i.ii, label %select.unfold.i.i, label %bb.cm

select.unfold.i.i:                                ; preds = %bb.ck, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ck ] ; 3 uses
  %i.ij = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.hz
  br i1 %i.ij, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %select.unfold.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = icmp ugt i32 %i.il, %i.hx
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.cl, %select.unfold.i.i
  %i.in = phi i1 [ %i.im, %bb.cl ], [ true, %select.unfold.i.i ]
  %i.io = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc189 unwind label %bb.ct ; 2 uses

.noexc189:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store i32 %i.hx, ptr %i.ip, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.in, ptr noundef nonnull %i.io, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hz) #30
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8
  %.pre = load ptr, ptr %i.hq, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %.noexc189, %bb.ck
  %i.it = phi ptr [ %.pre, %.noexc189 ], [ %i.hr, %bb.ck ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8
  %.not.i = icmp eq ptr %i.it, %i.iv
  br i1 %.not.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.hn, ptr %i.it, align 8
  %i.iw = load ptr, ptr %i.hq, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.ix, ptr %i.hq, align 8
  br label %.critedge161

bb.co:                                            ; preds = %bb.cm
  %i.iy = load ptr, ptr %i.hp, align 8            ; 4 uses
  %i.iz = ptrtoint ptr %i.it to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 6 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.cp, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc191 unwind label %bb.cs

.noexc191:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.co
  %i.jd = ashr exact i64 %i.jb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 1152921504606846975)
  %i.jh = select i1 %i.jf, i64 1152921504606846975, i64 %i.jg ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i190)
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #28
          to label %.noexc192 unwind label %bb.cs ; 4 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store ptr %i.hn, ptr %i.jk, align 8
  %i.jl = icmp sgt i64 %i.jb, 0
  br i1 %i.jl, label %bb.cq, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.cq:                                            ; preds = %.noexc192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jj, ptr align 8 %i.iy, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.cq, %.noexc192
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jb) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.jj, ptr %i.hp, align 8
  store ptr %i.jm, ptr %i.hq, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jh
  store ptr %i.jn, ptr %i.iu, align 8
  br label %.critedge161

bb.cs:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.cp, %bb.cg
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ct:                                            ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.critedge161:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.ak, %bb.ch, %bb.cn, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cd, %bb.ay, %bb.ca
  %.14 = phi i1 [ false, %bb.cd ], [ true, %bb.ay ], [ false, %bb.ch ], [ true, %bb.ca ], [ true, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ true, %bb.cn ], [ false, %bb.ak ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  %.pre223 = load ptr, ptr %i.b, align 8          ; 8 uses
  %.not.i.i193 = icmp eq ptr %.pre223, null
  br i1 %.not.i.i193, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197, label %.critedge161.thread

.critedge161.thread:                              ; preds = %.critedge161
  %i.jq = getelementptr inbounds nuw i8, ptr %.pre223, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.critedge161.thread
  store i32 0, ptr %i.jq, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %.pre223, i64 12
  store i32 0, ptr %i.ju, align 4
  %i.jv = load ptr, ptr %.pre223, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %.pre223) #30, !inline_history !221
  %i.jy = load ptr, ptr %.pre223, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %.pre223) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197

bb.cv:                                            ; preds = %.critedge161.thread
  %i.kb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i194 = icmp eq i8 %i.kb, 0
  br i1 %.not.i.i.i194, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195

bb.cx:                                            ; preds = %bb.cv
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i196 = phi i32 [ %i.jt, %bb.cw ], [ %i.kd, %bb.cx ]
  %i.ke = icmp eq i32 %.0.i.i.i.i196, 1
  br i1 %i.ke, label %bb.cy, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197, !prof !14

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre223) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197: ; preds = %.critedge161, %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.14

.loopexit:                                        ; preds = %bb.j, %bb.cs, %bb.ct, %bb.n, %bb.o, %bb.u, %bb.ab, %bb.aj, %bb.ax, %bb.ag, %bb.x, %bb.r, %bb.cc, %bb.cb
  %.merged = phi { ptr, i32 } [ %i.hl, %bb.cb ], [ %i.hm, %bb.cc ], [ %i.ai, %bb.n ], [ %.pn130.pn.pn, %bb.ax ], [ %i.al, %bb.r ], [ %i.an, %bb.u ], [ %i.ap, %bb.x ], [ %i.at, %bb.ab ], [ %i.bb, %bb.ag ], [ %i.bd, %bb.aj ], [ %i.jp, %bb.ct ], [ %i.aj, %bb.o ], [ %i.jo, %bb.cs ], [ %.pn150, %bb.j ]
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.merged

bb.cz:                                            ; preds = %bb.n
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  %i.kg = extractvalue { ptr, i32 } %i.kf, 0
  tail call void @__clang_call_terminate(ptr %i.kg) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.59", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !230

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %bb.g

_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread:      ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.a, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %1, i64 noundef 1152921504606846975)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %2, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.e ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.g:                                             ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  ret ptr %i.l

bb.h:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA74_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(74) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.d, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA74_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(74) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x314IfcClosedShellEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.59", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.j
end_hunk_0
