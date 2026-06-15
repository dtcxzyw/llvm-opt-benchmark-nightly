inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN6Assimp13glTF2Importer20ImportCommonMetadataERN5glTF25AssetE:bb.a
  %.not8.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not8.i, label %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %i.ff, %bb.s ] ; 2 uses
  call void @_Z15ParseExtensionsP10aiMetadataRKN5glTF215CustomExtensionE(ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.05.09.i)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 160 ; 2 uses
  %.not.i66 = icmp eq ptr %i.fi, %i.fh
  br i1 %.not.i66, label %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit, label %.lr.ph.i

_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit: ; preds = %.lr.ph.i, %bb.s, %bb.r, %_ZNK5glTF215CustomExtensioncvbEv.exit
  ret void

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13glTF2Importer14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.glTF2::Asset", align 8      ; 17 uses
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.54)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i ], [ %i.g, %_ZNSt6vectorIjSaIjEE5clearEv.exit ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EE5clearEv.exit:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %.not.i.i11 = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i11, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5clearEv.exit
  store ptr %i.r, ptr %i.s, align 8
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %2, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load ptr, ptr %i.v, align 8
  call void @_ZN5glTF25AssetC2EPN6Assimp8IOSystemEPN9rapidjson36IGenericRemoteSchemaDocumentProviderINS4_21GenericSchemaDocumentINS4_12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEESB_EEEE(ptr noundef nonnull align 8 dereferenceable(3624) %4, ptr noundef %3, ptr noundef %i.w)
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, i64 noundef 1, i32 noundef 0, i32 noundef 4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  invoke void @_ZN5glTF25Asset4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(3624) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %i.x)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 3464
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit:   ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 3472
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = icmp ugt i64 %i.aj, %i.ac
  br i1 %i.ak, label %bb.e, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ac
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  %i.ao = load i64, ptr %i.an, align 8            ; 4 uses
  %i.ap = icmp ugt i64 %i.ao, 1023
  br i1 %i.ap, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 264
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.as = trunc nuw nsw i64 %i.ao to i32
  store i32 %i.as, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 2 uses
  %i.au = load ptr, ptr %i.aq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 1 %i.au, i64 %i.ao, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ao
  store i8 0, ptr %i.av, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.c, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5glTF25AssetD2Ev(ptr noundef nonnull align 8 dead_on_return(3624) dereferenceable(3624) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.aw

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.f, %bb.e, %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit
  invoke void @_ZN6Assimp13glTF2Importer22ImportEmbeddedTexturesERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZN6Assimp13glTF2Importer15ImportMaterialsERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6Assimp13glTF2Importer13ImportCamerasERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6Assimp13glTF2Importer12ImportLightsERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6Assimp13glTF2Importer11ImportNodesERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6Assimp13glTF2Importer16ImportAnimationsERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Assimp13glTF2Importer20ImportCommonMetadataERN5glTF25AssetE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3624) %4)
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load i32, ptr %2, align 8
  %i.bb = or i32 %i.ba, 1
  store i32 %i.bb, ptr %2, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN5glTF25AssetD2Ev(ptr noundef nonnull align 8 dead_on_return(3624) dereferenceable(3624) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF25Asset4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %9 = alloca %"class.std::shared_ptr.373", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::vector.376", align 8  ; 9 uses
  %12 = alloca %"class.rapidjson::GenericDocument", align 8 ; 22 uses
  %13 = alloca %"class.rapidjson::GenericSchemaValidator", align 8 ; 25 uses
  %14 = alloca %"class.rapidjson::GenericStringBuffer", align 8 ; 7 uses
  %15 = alloca %"class.rapidjson::GenericPointer", align 8 ; 7 uses
  %16 = alloca %"class.rapidjson::GenericStringBuffer", align 8 ; 7 uses
  %17 = alloca %"class.rapidjson::GenericPointer", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %18 = alloca %"struct.glTF2::CustomExtension", align 8 ; 23 uses
  %19 = alloca %"struct.glTF2::CustomExtension", align 8 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3496 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.f, align 8
  store i8 0, ptr %i.h, align 1
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(18) @.str.319, i64 noundef 17) #39
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.k, ptr %10, align 8
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.l = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef -1) #34, !noalias !207
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 92, i64 noundef -1) #34, !noalias !207
  %i.o = trunc i64 %i.n to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.o) ; 2 uses
  %i.p = icmp eq i32 %.sroa.speculated.i, -1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.q, ptr %8, align 8, !alias.scope !207
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.r, align 8, !alias.scope !207
  store i8 0, ptr %i.q, align 8, !alias.scope !207
  br label %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw nsw i32 %.sroa.speculated.i, 1
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !213
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.w, ptr %8, align 8, !alias.scope !213
  %i.x = load ptr, ptr %1, align 8, !noalias !213 ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.v) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !213
  store i64 %spec.select.i.i.i.i, ptr %i.b, align 8, !noalias !213
  %i.y = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.y, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %bb.d
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %8, align 8, !alias.scope !213
  %i.aa = load i64, ptr %i.b, align 8, !noalias !213
  store i64 %i.aa, ptr %i.w, align 8, !alias.scope !213
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %bb.d
  %i.ab = phi ptr [ %i.z, %.noexc10.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.x, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.x, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.b, align 8, !noalias !213 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !213
  %i.af = load ptr, ptr %8, align 8, !alias.scope !213
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !213
  br label %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.ah = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %8, align 8               ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.am, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  switch i64 %i.ao, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.ak, align 1
  store i8 %i.aq, ptr %i.ah, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load i64, ptr %i.an, align 8            ; 2 uses
  store i64 %i.ar, ptr %i.g, align 8
  %i.as = load ptr, ptr %i.f, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ak, ptr %i.f, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = load <2 x i64>, ptr %i.au, align 8
  store <2 x i64> %i.av, ptr %i.g, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aw = load i64, ptr %i.ai, align 8
  store ptr %i.ak, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = load <2 x i64>, ptr %i.ax, align 8
  store <2 x i64> %i.ay, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ah, ptr %8, align 8
  store i64 %i.aw, ptr %i.al, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.al, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %20 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ah, %bb.j ], [ %i.al, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %20, align 1
  %i.ba = load ptr, ptr %8, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bd = load i64, ptr %i.bb, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %.pr = load ptr, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bf, ptr %10, align 8
  %i.bg = icmp eq ptr %.pr, null
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bh = phi ptr [ %i.k, %.thread ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 6 uses
  %i.bi = phi ptr [ %i.i, %.thread ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.bj, ptr %i.a, align 8
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc116 unwind label %bb.z  ; 2 uses

.noexc116:                                        ; preds = %.noexc.i
  store ptr %i.bl, ptr %10, align 8
  %i.bm = load i64, ptr %i.a, align 8
  store i64 %i.bm, ptr %i.bh, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc116, %bb.m
  %i.bn = phi ptr [ %i.bl, %.noexc116 ], [ %i.bh, %bb.m ] ; 2 uses
  switch i64 %i.bj, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %._crit_edge.i.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bo = load i8, ptr %i.bi, align 1
  store i8 %i.bo, ptr %i.bn, align 1
  br label %._crit_edge.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bi, i64 %i.bj, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.bp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = load ptr, ptr %10, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bv, ptr %7, align 8
  store i16 25202, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.bx, align 2
  %i.by = load ptr, ptr %10, align 8
  %i.bz = load ptr, ptr %i.bu, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef %i.by, ptr noundef nonnull %i.bv)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i unwind label %bb.p, !inline_history !7 ; 8 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i: ; preds = %._crit_edge.i.i.i
  %i.cd = load ptr, ptr %7, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bv
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i
  %i.cf = load i64, ptr %i.bv, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %7, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bv
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.p
  %i.ck = load i64, ptr %i.bv, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  store ptr %i.cc, ptr %9, align 8
  %i.cm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.w unwind label %bb.q       ; 10 uses

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  %i.cp = call ptr @__cxa_begin_catch(ptr %i.co) #34 ; 0 uses
  %i.cq = icmp eq ptr %i.cc, null
  br i1 %i.cq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.cc, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cc) #34, !inline_history !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  invoke void @__cxa_rethrow() #36
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #38
  unreachable

bb.v:                                             ; preds = %bb.s
  unreachable

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 5 uses
  store i32 1, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 2 uses
  store i32 1, ptr %i.cz, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cm, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cc, ptr %i.da, align 8
  store ptr %i.cm, ptr %i.cx, align 8
  %i.db = load ptr, ptr %10, align 8              ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bh
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.w
  %i.dd = load i64, ptr %i.bh, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %.not222 = icmp eq ptr %i.cc, null
  br i1 %.not222, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.df = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull @.str.320)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.eb unwind label %bb.ab

bb.z:                                             ; preds = %.noexc.i, %bb.l
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

.body:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %i.cu, %bb.t ] ; 2 uses
  %i.dh = load ptr, ptr %10, align 8              ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bh
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !483
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !483
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF25Asset11SetAsBinaryEv(ptr noundef nonnull align 8 dereferenceable(3624) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit:  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ugt i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.thread

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.thread: ; preds = %bb.a, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.o = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #37 ; 28 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.r, align 8
  store i8 0, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 0, ptr %i.x, align 8
  store i8 0, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  store i8 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 201
  store i8 0, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ag, i8 0, i64 25, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5glTF26BufferE, i64 16), ptr %i.o, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 320 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aj, i8 0, i64 25, i1 false)
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 336
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 3
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.227, i64 noundef 11) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.av, ptr %i.ay, align 4
  %i.az = tail call { ptr, i32 } @_ZN5glTF28LazyDictINS_6BufferEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(232) %i.n, ptr noundef nonnull %i.o) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.az, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.az, 1 ; 2 uses
  store ptr %.fca.0.extract, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3560
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ba = zext i32 %.fca.1.extract to i64
  %i.bb = load ptr, ptr %.fca.0.extract, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 312
  store i8 1, ptr %i.be, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.thread, %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF25Asset16ReadBinaryHeaderERN6Assimp8IOStreamERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.glTF2::GLB_Header", align 1 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"struct.glTF2::GLB_Chunk", align 4 ; 10 uses
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.228)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3, i64 noundef 12, i64 noundef 1)
  %.not = icmp eq i64 %i.e, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.229)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #34
  br label %bb.as

bb.e:                                             ; preds = %bb.a
  %i.h = load i32, ptr %3, align 1
  %i.i = icmp ne i32 %i.h, 1179937895
  %i.j = zext i1 %i.i to i32
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.230)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #34
  br label %bb.as

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 1
  call void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = load ptr, ptr %4, align 8                ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t                   ; 2 uses
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.u, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.u, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  switch i64 %i.w, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %i.s, align 1
  store i8 %i.y, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.z = load i64, ptr %i.v, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.s, ptr %i.o, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8
  store <2 x i64> %i.af, ptr %i.ad, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ag = load i64, ptr %i.q, align 8
  store ptr %i.s, ptr %i.o, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  store <2 x i64> %i.aj, ptr %i.ai, align 8
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %4, align 8
  store i64 %i.ag, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %6 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.p, %bb.m ], [ %i.t, %bb.n ]
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %6, align 1
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.aq = load i32, ptr %i.m, align 1
  %.not18 = icmp eq i32 %i.aq, 2
  br i1 %.not18, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull @.str.231)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ar) #34
  br label %bb.as

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.at = load ptr, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1)
  %.not19 = icmp eq i64 %i.aw, 1
  br i1 %.not19, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull @.str.232)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.v:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %.not20 = icmp eq i32 %i.ba, 1313821514
  br i1 %.not20, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.233)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.z:                                             ; preds = %bb.v
  %i.bd = load i32, ptr %5, align 4
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 4 uses
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bg)
  %i.bh = load i64, ptr %i.bf, align 8
  %i.bi = load ptr, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %2, align 8
  %i.bl = load i64, ptr %i.bf, align 8
  %i.bm = load ptr, ptr %1, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bk, i64 noundef 1, i64 noundef %i.bl)
  %i.bq = load i64, ptr %i.bf, align 8
  %.not21 = icmp eq i64 %i.bp, %i.bq
  br i1 %.not21, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull @.str.220)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ad:                                            ; preds = %bb.z
  %i.bt = load i32, ptr %5, align 4               ; 4 uses
  %i.bu = add i32 %i.bt, 3
  %i.bv = and i32 %i.bu, -4                       ; 2 uses
  %i.bw = sub i32 %i.bv, %i.bt                    ; 2 uses
  %.not22 = icmp eq i32 %i.bv, %i.bt
  br i1 %.not22, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bx = zext i32 %i.bw to i64
  %i.by = load ptr, ptr %1, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.bx, i32 noundef 1) ; 0 uses
  %.pre = load i32, ptr %5, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cc = phi i32 [ %.pre, %bb.ae ], [ %i.bt, %bb.ad ]
  %i.cd = add i32 %i.bw, 28
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 2 uses
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load i32, ptr %i.ch, align 1
  %.not23 = icmp ult i32 %i.ci, %i.ce
  br i1 %.not23, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = load ptr, ptr %1, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1)
  %.not24 = icmp eq i64 %i.cm, 1
  br i1 %.not24, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull @.str.234)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ag
  %i.cp = load i32, ptr %i.az, align 4
  %.not25 = icmp eq i32 %i.cp, 5130562
  br i1 %.not25, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull @.str.235)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.cs = load i32, ptr %5, align 4
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3544
  store i64 %i.ct, ptr %i.cu, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.ar:                                            ; preds = %bb.aj, %bb.an, %bb.ac, %bb.y, %bb.u
  %.sink = phi ptr [ %i.cn, %bb.aj ], [ %i.cq, %bb.an ], [ %i.br, %bb.ac ], [ %i.bb, %bb.y ], [ %i.ax, %bb.u ]
  %.pn27 = phi { ptr, i32 } [ %i.co, %bb.aj ], [ %i.cr, %bb.an ], [ %i.bs, %bb.ac ], [ %i.bc, %bb.y ], [ %i.ay, %bb.u ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #34
end_hunk_1
begin_hunk_2_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
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
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #34
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #34
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #34
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10glTFCommon19FindStringInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39, !noalias !524
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.l = or i64 %i.j, %i.k                        ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.g, align 8
  store i32 %i.e, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load i32, ptr %0, align 8                ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.v = lshr i64 %i.k, 40
  %i.w = trunc i64 %i.v to i8
  %i.x = and i64 %i.l, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0         ; 2 uses
  %i.y = sext i8 %i.w to i32
  %i.z = sub nsw i32 13, %i.y
  %i.aa = select i1 %.not.i.i.i.i.i.i, i32 %i.e, i32 %i.z ; 2 uses
  %i.ab = and i64 %i.k, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = select i1 %.not.i.i.i.i.i.i, ptr %i.ac, ptr %4 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.aw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.ah, 0      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = sub nsw i32 13, %i.ak
  %i.am = load i32, ptr %.010.i.i.i, align 8
  %i.an = select i1 %.not.i.i13.i.i.i.i, i32 %i.am, i32 %i.al
  %.not.i.i.i.i = icmp eq i32 %i.aa, %i.an
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = select i1 %.not.i.i13.i.i.i.i, ptr %i.as, ptr %.010.i.i.i ; 2 uses
  %i.au = icmp eq ptr %i.ad, %i.at
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %i.ae)
  %i.av = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.c, !llvm.loop !219

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.d, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %i.r, %bb.b ], [ %i.u, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.t
  %i.ay = icmp eq ptr %.0.lcssa.i.i.i, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, 1024
  %.not = icmp eq i16 %i.bc, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN10glTFCommon24throwUnexpectedTypeErrorILi7EEEvRAT__KcPS1_S4_S4_(ptr noundef nonnull align 1 dereferenceable(7) @.str.265, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, %bb.f, %bb.e, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit ], [ %i.az, %bb.f ], [ %i.az, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA33_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA33_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #34
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #34
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = and i16 %i.c, 1024
  %i.e = icmp ne i16 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %.critedge18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.f = and i16 %i.c, 4096
  %.not.i.i = icmp eq i16 %i.f, 0                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = select i1 %.not.i.i, ptr %i.k, ptr %0    ; 3 uses
  %i.m = lshr i64 %i.i, 40
  %i.n = trunc i64 %i.m to i8
  %i.o = sext i8 %i.n to i32
  %i.p = sub nsw i32 13, %i.o
  %i.q = load i32, ptr %0, align 8
  %i.r = select i1 %.not.i.i, i32 %i.q, i32 %i.p  ; 4 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.t, ptr %2, align 8
  %i.u = icmp eq ptr %i.l, null
  %i.v = icmp ne i32 %i.r, 0
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.s, ptr %i.a, align 8
  %i.w = icmp ugt i32 %i.r, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %2, align 8
  %i.y = load i64, ptr %i.a, align 8
  store i64 %i.y, ptr %i.t, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.t, %bb.c ] ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.l, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.l, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.af = load ptr, ptr %1, align 8               ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = load ptr, ptr %2, align 8               ; 5 uses
  %i.aj = icmp eq ptr %i.ai, %i.t                 ; 2 uses
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.aj, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.aj, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ai, align 1
  store i8 %i.am, ptr %i.af, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.an = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %.critedge

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ai, ptr %1, align 8
  %i.as = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.as, ptr %i.ar, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.at = load i64, ptr %i.ag, align 8
  store ptr %i.ai, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.av, ptr %i.au, align 8
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.af, ptr %2, align 8
  store i64 %i.at, ptr %i.t, align 8
  br label %.critedge

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %2, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %3 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.af, %bb.j ], [ %i.t, %bb.k ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %3, align 1
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.t
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ay = load i64, ptr %i.t, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.critedge18

.critedge18:                                      ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.e
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN10glTFCommon24throwUnexpectedTypeErrorILi7EEEvRAT__KcPS1_S4_S4_(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.264) #36
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %4, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %char0 = load i8, ptr %3, align 1
  %.not11 = icmp eq i8 %char0, 0
  br i1 %.not11, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.o = load ptr, ptr %4, align 8, !noalias !527
  %i.p = load i64, ptr %i.l, align 8, !noalias !527 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.q, ptr %7, align 8, !alias.scope !530
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.r, align 8, !alias.scope !530
  store i8 0, ptr %i.q, align 8, !alias.scope !530
  %i.s = add i64 %i.p, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.s)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !alias.scope !530
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.p
  br i1 %i.v, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.x = load i64, ptr %i.r, align 8, !alias.scope !530
  %i.y = and i64 %i.x, -2
  %i.z = icmp eq i64 %i.y, 4611686018427387902
  br i1 %i.z, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #36
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.83, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !alias.scope !530 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #34, !noalias !533 ; 2 uses
  %i.af = load i64, ptr %i.r, align 8, !noalias !533
  %i.ag = sub i64 4611686018427387903, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #36
          to label %.noexc18 unwind label %bb.p

.noexc18:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %3, i64 noundef %i.ae)
          to label %.noexc19 unwind label %bb.p   ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aj, ptr %6, align 8, !alias.scope !533
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc19
  store ptr %i.ak, ptr %6, align 8, !alias.scope !533
  %i.ar = load i64, ptr %i.al, align 8
  store i64 %i.ar, ptr %i.aj, align 8, !alias.scope !533
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.as = phi i64 [ %i.ao, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.as, ptr %i.au, align 8, !alias.scope !533
  store ptr %i.al, ptr %i.ai, align 8
  store i64 0, ptr %i.at, align 8
  store i8 0, ptr %i.al, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.av = load i64, ptr %i.au, align 8, !noalias !536
  %i.aw = icmp eq i64 %i.av, 4611686018427387903
  br i1 %i.aw, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #36
          to label %.noexc24 unwind label %bb.q

.noexc24:                                         ; preds = %bb.m
  unreachable
end_hunk_2
begin_hunk_3_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14DuplicateItemsEjj:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17TooManyPropertiesEjj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 9 uses
  %4 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = zext i32 %1 to i64
  store i64 %i.b, ptr %3, align 8
  %.not.i = icmp sgt i32 %1, -1
  %i.c = select i1 %.not.i, i16 502, i16 470
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.c, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = zext i32 %2 to i64
  store i64 %i.f, ptr %4, align 8
  %.not.i4 = icmp sgt i32 %2, -1
  %i.g = select i1 %.not.i4, i16 502, i16 470
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.g, ptr %i.h, align 2
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16TooFewPropertiesEjj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 9 uses
  %4 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = zext i32 %1 to i64
  store i64 %i.b, ptr %3, align 8
  %.not.i = icmp sgt i32 %1, -1
  %i.c = select i1 %.not.i, i16 502, i16 470
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 %i.c, ptr %i.d, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8
  %i.f = zext i32 %2 to i64
  store i64 %i.f, ptr %4, align 8
  %.not.i4 = icmp sgt i32 %2, -1
  %i.g = select i1 %.not.i4, i16 502, i16 470
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.g, ptr %i.h, align 2
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E14AddNumberErrorENS_17ValidateErrorCodeERNS2_IS4_S6_EERKSE_PFRKS8_vE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 14, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E22StartMissingPropertiesEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 4, ptr %i.b, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18AddMissingPropertyERKNS2_IS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.c, ptr %i.a, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2IS3_EERKNS0_IS2_T_EERS3_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i1 noundef zeroext false)
  %i.f = load ptr, ptr %i.a, align 8
  %.not.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i3, label %bb.c, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4

bb.c:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.g = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.a, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4: ; preds = %.noexc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %.not.i5 = icmp ult i32 %i.j, %i.l
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4
  %i.m = icmp eq i32 %i.l, 0
  %i.n = add i32 %i.l, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.l
  %i.q = select i1 %i.m, i32 16, i32 %i.p         ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.l
  br i1 %i.r, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i, label %bb.e

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.q to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = call ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #41
  %i.aa = load ptr, ptr %i.s, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, -281474976710656
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = or i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.s, align 8
  store i32 %i.q, ptr %i.k, align 4
  %.pre.i = load i32, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i, %bb.d, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4
  %i.ag = phi i32 [ %.pre.i, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i ], [ %i.j, %bb.d ], [ %i.j, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = add i32 %i.ag, 1
  store i32 %i.am, ptr %i.i, align 8
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %i.ap, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.f:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E20EndMissingPropertiesEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 6 uses
  %2 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  store i16 3, ptr %i.d, align 2
  %i.e = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEv.exit, !prof !159

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v) #34
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v, align 8
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v, i64 8), align 8
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v, align 8
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEvE1v, i64 8), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i3 = icmp eq ptr %i.l, null
  br i1 %.not.i3, label %bb.e, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.e:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEv.exit
  %i.m = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.m, ptr %i.k, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %.noexc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMissingStringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  store i16 1029, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -281474976710656
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = or i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.p, align 8
  store i32 %i.j, ptr %2, align 8
  %i.w = load i32, ptr %3, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 5 uses
  %.not.i.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %.not14.i.i.i = icmp eq i32 %i.y, 0
  %i.z = add i32 %i.y, 1
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = select i1 %.not14.i.i.i, i32 16, i32 %i.ab ; 3 uses
  %i.ad = icmp ugt i32 %i.ac, %i.y
  br i1 %i.ad, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, label %bb.g

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 281474976710655
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = zext i32 %i.ac to i64
  %i.ak = shl nuw nsw i64 %i.aj, 5
  %i.al = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.ak) #41
  %i.am = and i64 %i.ag, -281474976710656
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = or i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.ae, align 8
  store i32 %i.ac, ptr %i.x, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, %bb.f, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = zext i32 %i.w to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.av ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i16 0, ptr %i.o, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 0, ptr %i.ay, align 2
  %i.az = load i32, ptr %3, align 8
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %3, align 8
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store i16 0, ptr %i.d, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 0, ptr %4, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 15, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.bb

bb.j:                                             ; preds = %bb.a, %bb.h
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18PropertyViolationsEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10MergeErrorERNS2_IS4_S6_EE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10MergeErrorERNS2_IS4_S6_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10MergeErrorERNS2_IS4_S6_EE.exit ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i32, ptr %i.c, align 8              ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i = shl nuw nsw i64 %i.j, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10MergeErrorERNS2_IS4_S6_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.09.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8AddErrorERNS2_IS4_S6_EESE_(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %.09.i, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10MergeErrorERNS2_IS4_S6_EE.exit, label %.lr.ph.i, !llvm.loop !590

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10MergeErrorERNS2_IS4_S6_EE.exit: ; preds = %.lr.ph.i, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !591
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18DisallowedPropertyEPKcj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %4 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 3, ptr %i.b, align 2
  %i.c = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEv.exit, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v) #34
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v, align 8
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v, i64 8), align 8
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load ptr, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v, align 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEvE1v, i64 8), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i4, label %bb.d, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEv.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.k, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19GetDisallowedStringEv.exit, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.m = icmp ult i32 %2, 14
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 3 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  store i16 7173, ptr %i.n, align 2
  %i.o = trunc nuw nsw i32 %2 to i8
  %i.p = sub nuw nsw i8 13, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 %i.p, ptr %i.q, align 1
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit

bb.f:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  store i16 3077, ptr %i.n, align 2
  store i32 %2, ptr %4, align 8
  %i.r = add i32 %2, 1                            ; 2 uses
  %.not.i.i3.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i3.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = zext i32 %i.r to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #40
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i

_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i:    ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.t, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -281474976710656
  %i.y = ptrtoint ptr %.0.i.i.i to i64
  %i.z = or i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.u, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit: ; preds = %bb.e, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i
  %.0.i.i = phi ptr [ %4, %bb.e ], [ %.0.i.i.i, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  %i.ab = select i1 %.not.i.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %1, !prof !6
  %i.ac = zext i32 %2 to i64                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ac
  store i8 0, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %i.i, align 8
  %.not.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i5, label %bb.h, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6

bb.h:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit
  %i.af = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.af, ptr %i.ag, align 8
  store ptr %i.af, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6: ; preds = %.noexc, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2EPKcjRS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  store i16 1029, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -281474976710656
  %i.am = ptrtoint ptr %i.g to i64
  %i.an = or i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ai, align 8
  store i32 %i.h, ptr %3, align 8
  %i.ap = load i32, ptr %i.a, align 8             ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 5 uses
  %.not.i.i.i7 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i.i.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6
  %.not14.i.i.i = icmp eq i32 %i.ar, 0
  %i.as = add i32 %i.ar, 1
  %i.at = lshr i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar
  %i.av = select i1 %.not14.i.i.i, i32 16, i32 %i.au ; 3 uses
  %i.aw = icmp ugt i32 %i.av, %i.ar
  br i1 %i.aw, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, label %bb.j

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = zext i32 %i.av to i64
  %i.bd = shl nuw nsw i64 %i.bc, 5
  %i.be = tail call ptr @realloc(ptr noundef %i.bb, i64 noundef %i.bd) #41
  %i.bf = load ptr, ptr %i.ax, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = and i64 %i.bg, -281474976710656
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = inttoptr i64 %i.bj to ptr
end_hunk_3
begin_hunk_4_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E29EndMissingDependentPropertiesERKNS2_IS4_S6_EE:bb.a

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn = phi { ptr, i32 } [ %i.vo, %bb.cg ], [ %i.vn, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %7) #34
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ch ], [ %i.vm, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.cu

bb.cj:                                            ; preds = %bb.ap
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.bg
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bf, %bb.ck
  %.pn21 = phi { ptr, i32 } [ %i.vq, %bb.ck ], [ %i.qs, %bb.bf ]
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %9) #34
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %10) #34
  br label %bb.cl

bb.cl:                                            ; preds = %.body, %bb.cj
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %.body ], [ %i.vp, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.ct

bb.cm:                                            ; preds = %bb.bq, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit57
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.bs
  %i.vs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #34
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn24 = phi { ptr, i32 } [ %i.vs, %bb.cn ], [ %i.vr, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.cs

bb.cp:                                            ; preds = %bb.bv, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit64
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.bx
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #34
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn26 = phi { ptr, i32 } [ %i.vu, %bb.cq ], [ %i.vt, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.cr ], [ %.pn24, %bb.co ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cl
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.cs ], [ %.pn21.pn, %bb.cl ]
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %6) #34
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.ci
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ct ], [ %.pn.pn.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cd
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %bb.cu ], [ %i.vl, %bb.cd ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn

bb.cw:                                            ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit74, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E24AddDependencySchemaErrorERKNS2_IS4_S6_EEPNS_8internal16ISchemaValidatorE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.c, ptr %i.a, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2IS3_EERKNS0_IS2_T_EERS3_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i1 noundef zeroext false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.f = load ptr, ptr %i.a, align 8
  %.not.i4 = icmp eq ptr %i.f, null
  br i1 %.not.i4, label %bb.c, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5

bb.c:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.g = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.a, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5: ; preds = %.noexc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %.not.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5
  %.not14.i.i = icmp eq i32 %i.l, 0
  %i.m = add i32 %i.l, 1
  %i.n = lshr i32 %i.m, 1
  %i.o = add i32 %i.n, %i.l
  %i.p = select i1 %.not14.i.i, i32 16, i32 %i.o  ; 3 uses
  %i.q = icmp ugt i32 %i.p, %i.l
  br i1 %i.q, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i, label %bb.e

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 281474976710655
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = zext i32 %i.p to i64
  %i.x = shl nuw nsw i64 %i.w, 5
  %i.y = call ptr @realloc(ptr noundef %i.v, i64 noundef %i.x) #41
  %i.z = load ptr, ptr %i.r, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, -281474976710656
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = or i64 %i.ab, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %i.r, align 8
  store i32 %i.p, ptr %i.k, align 4
  %.pre.i.i = load i32, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i, %bb.d, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5
  %i.af = phi i32 [ %.pre.i.i, %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i ], [ %i.j, %bb.d ], [ %i.j, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit5 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = zext i32 %i.af to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 0, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 166
  store i16 0, ptr %i.aq, align 2
  %i.ar = load i32, ptr %i.i, align 8
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.i, align 8
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.f:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19EndDependencyErrorsEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 6 uses
  %2 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  store i16 3, ptr %i.d, align 2
  %i.e = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEv.exit, !prof !159

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v) #34
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v, align 8
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v, i64 8), align 8
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v, align 8
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEvE1v, i64 8), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i3 = icmp eq ptr %i.l, null
  br i1 %.not.i3, label %bb.e, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.e:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEv.exit
  %i.m = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.n, align 8
  store ptr %i.m, ptr %i.k, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %.noexc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetErrorsStringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  store i16 1029, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -281474976710656
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = or i64 %i.s, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.p, align 8
  store i32 %i.j, ptr %2, align 8
  %i.w = load i32, ptr %3, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 5 uses
  %.not.i.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %.not14.i.i.i = icmp eq i32 %i.y, 0
  %i.z = add i32 %i.y, 1
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add i32 %i.aa, %i.y
  %i.ac = select i1 %.not14.i.i.i, i32 16, i32 %i.ab ; 3 uses
  %i.ad = icmp ugt i32 %i.ac, %i.y
  br i1 %i.ad, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, label %bb.g

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 281474976710655
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = zext i32 %i.ac to i64
  %i.ak = shl nuw nsw i64 %i.aj, 5
  %i.al = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.ak) #41
  %i.am = and i64 %i.ag, -281474976710656
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = or i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %i.ae, align 8
  store i32 %i.ac, ptr %i.x, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, %bb.f, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = zext i32 %i.w to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.av ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i16 0, ptr %i.o, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 0, ptr %i.ay, align 2
  %i.az = load i32, ptr %3, align 8
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %3, align 8
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store i16 0, ptr %i.d, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 0, ptr %4, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 18, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %i.bb

bb.j:                                             ; preds = %bb.a, %bb.h
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15DisallowedValueENS_17ValidateErrorCodeE(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 3, ptr %i.b, align 2
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E19StartDisallowedTypeEv(ptr noundef nonnull align 8 dereferenceable(220) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 4, ptr %i.b, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddExpectedTypeERKS8_(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.c, ptr %i.a, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2INS_19MemoryPoolAllocatorIS3_EEEERKNS0_IS2_T_EERS3_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i1 noundef zeroext false)
  %i.f = load ptr, ptr %i.a, align 8
  %.not.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i3, label %bb.c, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4

bb.c:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.g = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.a, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4: ; preds = %.noexc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %.not.i5 = icmp ult i32 %i.j, %i.l
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4
  %i.m = icmp eq i32 %i.l, 0
  %i.n = add i32 %i.l, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.l
  %i.q = select i1 %i.m, i32 16, i32 %i.p         ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.l
  br i1 %i.r, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i, label %bb.e

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.q to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = call ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #41
  %i.aa = load ptr, ptr %i.s, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, -281474976710656
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = or i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.s, align 8
  store i32 %i.q, ptr %i.k, align 4
  %.pre.i = load i32, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i, %bb.d, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4
  %i.ag = phi i32 [ %.pre.i, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i ], [ %i.j, %bb.d ], [ %i.j, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit4 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = add i32 %i.ag, 1
  store i32 %i.am, ptr %i.i, align 8
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %i.ap, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.f:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17EndDisallowedTypeERKS8_(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 6 uses
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %4 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %5 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 18 uses
  %6 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  store i16 3, ptr %i.a, align 2
  %i.b = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEv.exit, !prof !159

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v) #34
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v, align 8
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v, i64 8), align 8
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v, align 8
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEvE1v, i64 8), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %bb.d, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEv.exit
  %i.k = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.k, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %.noexc, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetExpectedStringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  store i16 1029, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -281474976710656
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = or i64 %i.q, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.n, align 8
  store i32 %i.g, ptr %4, align 8
  %i.u = load i32, ptr %5, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4              ; 5 uses
  %.not.i.i.i = icmp ult i32 %i.u, %i.w
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %.not14.i.i.i = icmp eq i32 %i.w, 0
  %i.x = add i32 %i.w, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = add i32 %i.y, %i.w
  %i.aa = select i1 %.not14.i.i.i, i32 16, i32 %i.z ; 3 uses
  %i.ab = icmp ugt i32 %i.aa, %i.w
  br i1 %i.ab, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, label %bb.f

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = and i64 %i.ae, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = zext i32 %i.aa to i64
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %i.ai) #41
  %i.ak = and i64 %i.ae, -281474976710656
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = or i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.ac, align 8
  store i32 %i.aa, ptr %i.v, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i, %bb.e, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = zext i32 %i.u to i64
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.at ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store i16 0, ptr %i.m, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 0, ptr %i.aw, align 2
  %i.ax = load i32, ptr %5, align 8
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %5, align 8
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.az = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v acquire, align 8
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.g, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit, !prof !159

bb.g:                                             ; preds = %bb.f
  %i.bb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v) #34
  %.not.i9 = icmp eq i32 %i.bb, 0
  br i1 %.not.i9, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v, align 8
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v, i64 8), align 8
  %i.bc = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit: ; preds = %bb.h, %bb.g, %bb.f
  %i.bd = load ptr, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v, align 8
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEvE1v, i64 8), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bf = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i10 = icmp eq ptr %i.bf, null
  br i1 %.not.i10, label %bb.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit12

bb.i:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit
  %i.bg = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc11 unwind label %bb.p   ; 3 uses

.noexc11:                                         ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bg, ptr %i.bh, align 8
  store ptr %i.bg, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit12

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit12: ; preds = %.noexc11, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit
  %i.bi = phi ptr [ %i.bg, %.noexc11 ], [ %i.bf, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15GetActualStringEv.exit ]
  invoke void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2INS_19MemoryPoolAllocatorIS3_EEEERKNS0_IS2_T_EERS3_b(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.bi, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit12
  %i.bj = load ptr, ptr %i.i, align 8
  %.not.i13 = icmp eq ptr %i.bj, null
  br i1 %.not.i13, label %bb.k, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15

bb.k:                                             ; preds = %bb.j
  %i.bk = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc14 unwind label %bb.q   ; 2 uses

.noexc14:                                         ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bk, ptr %i.bl, align 8
  store ptr %i.bk, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15: ; preds = %.noexc14, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  store i16 1029, ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = and i64 %i.bp, -281474976710656
  %i.br = ptrtoint ptr %i.bd to i64
  %i.bs = or i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.bn, align 8
  store i32 %i.be, ptr %3, align 8
  %i.bu = load i32, ptr %5, align 8               ; 3 uses
  %i.bv = load i32, ptr %i.v, align 4             ; 5 uses
  %.not.i.i.i16 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i.i.i16, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15._crit_edge, label %bb.l

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15._crit_edge: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15
  %.pre = load ptr, ptr %i.ao, align 8
  br label %bb.m

bb.l:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15
  %.not14.i.i.i17 = icmp eq i32 %i.bv, 0
  %i.bw = add i32 %i.bv, 1
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add i32 %i.bx, %i.bv
  %i.bz = select i1 %.not14.i.i.i17, i32 16, i32 %i.by ; 3 uses
  %i.ca = icmp ugt i32 %i.bz, %i.bv
  %.pre24 = load ptr, ptr %i.ao, align 8          ; 2 uses
  br i1 %i.ca, label %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i18, label %bb.m

_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i18: ; preds = %bb.l
  %i.cb = ptrtoint ptr %.pre24 to i64
  %i.cc = and i64 %i.cb, 281474976710655
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = zext i32 %i.bz to i64
  %i.cf = shl nuw nsw i64 %i.ce, 5
  %i.cg = call ptr @realloc(ptr noundef %i.cd, i64 noundef %i.cf) #41
  %i.ch = load ptr, ptr %i.ao, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = and i64 %i.ci, -281474976710656
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = or i64 %i.cj, %i.ck
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  store ptr %i.cm, ptr %i.ao, align 8
  store i32 %i.bz, ptr %i.v, align 4
  %.pre.i.i.i19 = load i32, ptr %5, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15._crit_edge, %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i18, %bb.l
  %i.cn = phi ptr [ %i.cm, %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i18 ], [ %.pre24, %bb.l ], [ %.pre, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15._crit_edge ]
  %i.co = phi i32 [ %.pre.i.i.i19, %_ZN9rapidjson7ReallocINS_13GenericMemberINS_4UTF8IcEENS_12CrtAllocatorEEES4_EEPT_RT0_S7_mm.exit.i.i.i.i18 ], [ %i.bu, %bb.l ], [ %i.bu, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit15._crit_edge ]
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = and i64 %i.cp, 281474976710655
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = zext i32 %i.co to i64
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store i16 0, ptr %i.bm, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 0, ptr %i.cv, align 2
  %i.cw = load i32, ptr %5, align 8
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %5, align 8
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  store i16 0, ptr %i.a, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %7, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 20, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.o:                                             ; preds = %bb.d, %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.i, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit12
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.da, %bb.q ], [ %i.cz, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn6 = phi { ptr, i32 } [ %i.cy, %bb.o ], [ %.pn, %bb.r ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8NotAllOfEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13AddErrorArrayENS_17ValidateErrorCodeEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 23, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E6NoneOfEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13AddErrorArrayENS_17ValidateErrorCodeEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 24, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8NotOneOfEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13AddErrorArrayENS_17ValidateErrorCodeEPPNS_8internal16ISchemaValidatorEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef 21, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E13MultipleOneOfEjj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %4 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  store i16 4, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.e, align 8
  store ptr %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = zext i32 %1 to i64
  store i64 %i.g, ptr %5, align 8
  %.not.i.i = icmp sgt i32 %1, -1
  %i.h = select i1 %.not.i.i, i16 502, i16 470
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  store i16 %i.h, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef %i.o, i64 noundef 256) #41
  %i.q = and i64 %i.m, -281474976710656
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = or i64 %i.q, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.k, align 8
  store i32 16, ptr %i.j, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = and i64 %i.r, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  store i32 1, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  store i16 0, ptr %i.i, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.x = load ptr, ptr %i.b, align 8
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %bb.d, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc5 unwind label %bb.m    ; 2 uses

.noexc5:                                          ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.y, ptr %i.z, align 8
  store ptr %i.y, ptr %i.b, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6: ; preds = %.noexc5, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aa, align 8
  %i.ab = zext i32 %2 to i64
  store i64 %i.ab, ptr %4, align 8
  %.not.i.i7 = icmp sgt i32 %2, -1
  %i.ac = select i1 %.not.i.i7, i16 502, i16 470
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = load i32, ptr %6, align 8               ; 3 uses
  %i.af = load i32, ptr %i.j, align 4             ; 5 uses
  %.not.i4.i8 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i4.i8, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6._crit_edge, label %bb.e

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6._crit_edge: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6
  %.pre16 = load ptr, ptr %i.u, align 8
  br label %bb.f

bb.e:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = add i32 %i.af, 1
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = add i32 %i.ai, %i.af
  %i.ak = select i1 %i.ag, i32 16, i32 %i.aj      ; 3 uses
  %i.al = icmp ugt i32 %i.ak, %i.af
  %.pre17 = load ptr, ptr %i.u, align 8           ; 2 uses
  br i1 %i.al, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i9, label %bb.f

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i9: ; preds = %bb.e
  %i.am = ptrtoint ptr %.pre17 to i64
  %i.an = and i64 %i.am, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = zext i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.aq) #41
  %i.as = load ptr, ptr %i.u, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, -281474976710656
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = or i64 %i.au, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  store ptr %i.ax, ptr %i.u, align 8
  store i32 %i.ak, ptr %i.j, align 4
  %.pre.i.i10 = load i32, ptr %6, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6._crit_edge, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i9, %bb.e
  %i.ay = phi ptr [ %i.ax, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i9 ], [ %.pre17, %bb.e ], [ %.pre16, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6._crit_edge ]
  %i.az = phi i32 [ %.pre.i.i10, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i9 ], [ %i.ae, %bb.e ], [ %i.ae, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit6._crit_edge ] ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = and i64 %i.ba, 281474976710655
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = add i32 %i.az, 1
  store i32 %i.bd, ptr %6, align 8
  %i.be = zext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store i16 0, ptr %i.ad, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bg) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i16 3, ptr %i.bh, align 2
  %i.bi = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1v acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEv.exit, !prof !159

bb.g:                                             ; preds = %bb.f
  %i.bk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1v) #34
  %.not.i12 = icmp eq i32 %i.bk, 0
  br i1 %.not.i12, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1v, align 8
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1v, i64 8), align 8
  %i.bl = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1v) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E16GetMatchesStringEv.exit
end_hunk_4
