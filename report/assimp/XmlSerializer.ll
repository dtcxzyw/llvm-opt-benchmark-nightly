inline.NumInlined: 1573
inline.NumDeleted: 659
begin_hunk_0
@_ZTSN6Assimp4D3MF13BaseMaterialsE = linkonce_odr hidden constant [30 x i8] c"N6Assimp4D3MF13BaseMaterialsE\00", comdat, align 1
@_ZTVN6Assimp4D3MF15EmbeddedTextureE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6Assimp4D3MF15EmbeddedTextureE, ptr @_ZN6Assimp4D3MF15EmbeddedTextureD2Ev, ptr @_ZN6Assimp4D3MF15EmbeddedTextureD0Ev, ptr @_ZNK6Assimp4D3MF15EmbeddedTexture7getTypeEv] }, comdat, align 8
@_ZTIN6Assimp4D3MF15EmbeddedTextureE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp4D3MF15EmbeddedTextureE, ptr @_ZTIN6Assimp4D3MF8ResourceE }, comdat, align 8
@_ZTSN6Assimp4D3MF15EmbeddedTextureE = linkonce_odr hidden constant [32 x i8] c"N6Assimp4D3MF15EmbeddedTextureE\00", comdat, align 1
@_ZTVN6Assimp4D3MF14Texture2DGroupE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6Assimp4D3MF14Texture2DGroupE, ptr @_ZN6Assimp4D3MF14Texture2DGroupD2Ev, ptr @_ZN6Assimp4D3MF14Texture2DGroupD0Ev, ptr @_ZNK6Assimp4D3MF14Texture2DGroup7getTypeEv] }, comdat, align 8
@_ZTIN6Assimp4D3MF14Texture2DGroupE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp4D3MF14Texture2DGroupE, ptr @_ZTIN6Assimp4D3MF8ResourceE }, comdat, align 8
@_ZTSN6Assimp4D3MF14Texture2DGroupE = linkonce_odr hidden constant [31 x i8] c"N6Assimp4D3MF14Texture2DGroupE\00", comdat, align 1
@_ZN6Assimp4D3MF6XmlTagL26basematerials_displaycolorE = internal constant [13 x i8] c"displaycolor\00", align 1
@_ZTVN6Assimp4D3MF10ColorGroupE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6Assimp4D3MF10ColorGroupE, ptr @_ZN6Assimp4D3MF10ColorGroupD2Ev, ptr @_ZN6Assimp4D3MF10ColorGroupD0Ev, ptr @_ZNK6Assimp4D3MF10ColorGroup7getTypeEv] }, comdat, align 8
@_ZTIN6Assimp4D3MF10ColorGroupE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp4D3MF10ColorGroupE, ptr @_ZTIN6Assimp4D3MF8ResourceE }, comdat, align 8
@_ZTSN6Assimp4D3MF10ColorGroupE = linkonce_odr hidden constant [27 x i8] c"N6Assimp4D3MF10ColorGroupE\00", comdat, align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none = linkonce_odr hidden global %"class.pugi::xml_node" zeroinitializer, comdat, align 8
@_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none = linkonce_odr hidden global i64 0, comdat, align 8

@_ZN6Assimp4D3MF13XmlSerializerC1ERNS_10TXmlParserIN4pugi8xml_nodeEEE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6Assimp4D3MF13XmlSerializerC2ERNS_10TXmlParserIN4pugi8xml_nodeEEE
@_ZN6Assimp4D3MF13XmlSerializerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp4D3MF13XmlSerializerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializerC2ERNS_10TXmlParserIN4pugi8xml_nodeEEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 96)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.f, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.f)
          to label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit: ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EED2Ev.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EED2Ev.exit:      ; preds = %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25
  br label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EED2Ev.exit, %bb.d
  %i.w = load ptr, ptr %0, align 8                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp4D3MF13XmlSerializer9MetaEntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN6Assimp4D3MF13XmlSerializer9MetaEntryEEvPT_.exit.i.i.i ], [ %i.w, %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN6Assimp4D3MF13XmlSerializer9MetaEntryEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZSt8_DestroyIN6Assimp4D3MF13XmlSerializer9MetaEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp4D3MF13XmlSerializer9MetaEntryEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ak, %i.y
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp4D3MF13XmlSerializer9MetaEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp4D3MF13XmlSerializer9MetaEntryESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #25
  br label %_ZNSt6vectorIN6Assimp4D3MF13XmlSerializer9MetaEntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN6Assimp4D3MF13XmlSerializer9MetaEntryESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp4D3MF13XmlSerializer9MetaEntryES3_EvT_S5_RSaIT0_E.exit.i, %bb.e
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.sroa.06.010 = phi ptr [ %i.ax, %bb.g ], [ %i.c, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 40
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.as) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ax = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.06.010) #27 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 7 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %7 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %8 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %9 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %11 = alloca %"class.pugi::xml_node", align 8   ; 6 uses
  %12 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %13 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %14 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.6 = alloca { float, float, float, float }, align 8 ; 6 uses
  %.sroa.8 = alloca { float, float, float, float }, align 8 ; 6 uses
  %.sroa.10 = alloca { float, float, float, float }, align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %20 = alloca %class.aiMatrix4x4t, align 8       ; 8 uses
  %21 = alloca %struct.aiString, align 4          ; 5 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.bc, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.f, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @_ZN6Assimp4D3MF6XmlTagL7RootTagE, i64 3, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.h, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.f, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6
  %i.p = load atomic i8, ptr @_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.f, !prof !7

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none) #26
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr @_ZZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none, align 8
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEv.exit

common.resume:                                    ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn77.pn, %bb.bd ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEvE4none) #26
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.v = call ptr @_ZNK4pugi8xml_node4rootEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEv.exit

_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEv.exit: ; preds = %bb.g, %bb.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.g ], [ %i.v, %bb.i ]
  store ptr %.sroa.0.0.i, ptr %5, align 8
  %i.w = call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL5modelE)
  store ptr %i.w, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.x = call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.x, label %bb.bb, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.j
  %i.ab = load i64, ptr %i.f, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 1144) #25
  br label %common.resume

bb.k:                                             ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE11getRootNodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ad = call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL9resourcesE)
  store ptr %i.ad, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ae = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.ae, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = load <2 x ptr>, ptr %i.af, align 16
  store <2 x ptr> %i.ag, ptr %9, align 16
  %i.ah = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.as, ptr %i.at, align 8
  %i.au = icmp eq i32 %i.as, 0
  br i1 %i.au, label %_ZN6Assimp4D3MF13XmlSerializer21StoreMaterialsInSceneEP7aiScene.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.av = and i64 %i.aq, 34359738360
  %i.aw = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.al, align 8
  %i.az = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i93 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i93, label %_ZN6Assimp4D3MF13XmlSerializer21StoreMaterialsInSceneEP7aiScene.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.ba = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.az, %bb.l ]
  %.012.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %bb.l ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.012.i
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ax, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.012.i
  store ptr %i.bc, ptr %i.be, align 8
  %i.bf = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.bg = load ptr, ptr %i.al, align 8
  %i.bh = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %i.bm = icmp ult i64 %i.bf, %i.bl
  br i1 %i.bm, label %.lr.ph.i, label %_ZN6Assimp4D3MF13XmlSerializer21StoreMaterialsInSceneEP7aiScene.exit, !llvm.loop !8

_ZN6Assimp4D3MF13XmlSerializer21StoreMaterialsInSceneEP7aiScene.exit: ; preds = %.lr.ph.i, %._crit_edge, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bn = call ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL5buildE)
  store ptr %i.bn, ptr %11, align 8
  %i.bo = call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br i1 %i.bo, label %.loopexit206, label %bb.t

bb.m:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bq = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 4 uses
  store ptr %i.ai, ptr %10, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #29
          to label %.noexc96 unwind label %.loopexit.split-lp210

.noexc96:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.bs, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103: ; preds = %bb.r
  %.pre = load ptr, ptr %10, align 8
  %bcmp.i102 = call i32 @bcmp(ptr %.pre, ptr nonnull @_ZN6Assimp4D3MF6XmlTagL13texture_groupE, i64 %i.cb)
  %i.cr = icmp eq i32 %bcmp.i102, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  invoke void @_ZN6Assimp4D3MF13XmlSerializer16ReadTextureGroupERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201 unwind label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit105: ; preds = %bb.r
  %.pre269 = load ptr, ptr %10, align 8
  %bcmp.i104 = call i32 @bcmp(ptr %.pre269, ptr nonnull @_ZN6Assimp4D3MF6XmlTagL6objectE, i64 %i.cb)
  %i.cs = icmp eq i32 %bcmp.i104, 0
  br i1 %i.cs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit105.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit105.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit105
  invoke void @_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201 unwind label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107: ; preds = %bb.r
  %.pre270 = load ptr, ptr %10, align 8
  %bcmp.i106 = call i32 @bcmp(ptr %.pre270, ptr nonnull @_ZN6Assimp4D3MF6XmlTagL13basematerialsE, i64 %i.cb)
  %i.ct = icmp eq i32 %bcmp.i106, 0
  br i1 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107
  invoke void @_ZN6Assimp4D3MF13XmlSerializer17ReadBaseMaterialsERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201 unwind label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109: ; preds = %bb.r
  %.pre271 = load ptr, ptr %10, align 8
  %bcmp.i108 = call i32 @bcmp(ptr %.pre271, ptr nonnull @_ZN6Assimp4D3MF6XmlTagL4metaE, i64 %i.cb)
  %i.cu = icmp eq i32 %bcmp.i108, 0
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109
  invoke void @_ZN6Assimp4D3MF13XmlSerializer12ReadMetadataERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201 unwind label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111: ; preds = %bb.r
  %.pre272 = load ptr, ptr %10, align 8
  %bcmp.i110 = call i32 @bcmp(ptr %.pre272, ptr nonnull @_ZN6Assimp4D3MF6XmlTagL10colorgroupE, i64 %i.cb)
  %i.cv = icmp eq i32 %bcmp.i110, 0
  br i1 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111
  invoke void @_ZN6Assimp4D3MF13XmlSerializer14ReadColorGroupERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201 unwind label %bb.s

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit105, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit109.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit105.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cw = load ptr, ptr %10, align 8              ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ai
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201
  %i.cy = load i64, ptr %i.ai, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.da = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 0 uses
  %i.db = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  br i1 %i.db, label %bb.m, label %._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.s, %.loopexit209, %.loopexit.split-lp210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %.pn77 = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ], [ %lpad.loopexit211, %.loopexit209 ], [ %i.cm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.bd

bb.t:                                             ; preds = %_ZN6Assimp4D3MF13XmlSerializer21StoreMaterialsInSceneEP7aiScene.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dc = load <2 x ptr>, ptr %12, align 16
  store <2 x ptr> %i.dc, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.de = load <2 x ptr>, ptr %i.dd, align 16
  store <2 x ptr> %i.de, ptr %14, align 16
  %i.df = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  br i1 %i.df, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 44
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 60
  %.sroa.6.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %.sroa.7.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %20, i64 20
  %.sroa.8.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %.sroa.9.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %20, i64 40
  %.sroa.10.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %20, i64 44
  %.sroa.11.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %20, i64 60
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 25
  br label %bb.u

._crit_edge258:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ds = load ptr, ptr %0, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %.loopexit207, label %bb.ap

bb.u:                                             ; preds = %.lr.ph257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.dw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %13) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.dx = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw) ; 4 uses
  store ptr %i.dg, ptr %15, align 8
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #29
          to label %.noexc127 unwind label %.loopexit.split-lp

.noexc127:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dx) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.dz, ptr %i.a, align 8
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc.i126, label %._crit_edge.i.i125

.noexc.i126:                                      ; preds = %bb.w
  %i.eb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc128 unwind label %.loopexit208 ; 2 uses

.noexc128:                                        ; preds = %.noexc.i126
  store ptr %i.eb, ptr %15, align 8
  %i.ec = load i64, ptr %i.a, align 8
  store i64 %i.ec, ptr %i.dg, align 8
  br label %._crit_edge.i.i125

._crit_edge.i.i125:                               ; preds = %.noexc128, %bb.w
  %i.ed = phi ptr [ %i.eb, %.noexc128 ], [ %i.dg, %bb.w ] ; 2 uses
  switch i64 %i.dz, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i125
  %i.ee = load i8, ptr %i.dx, align 1
  store i8 %i.ee, ptr %i.ed, align 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.dx, i64 %i.dz, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i125
  %i.ef = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ef, ptr %i.dh, align 8
  %i.eg = load ptr, ptr %15, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 0, ptr %i.eh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ei = load i64, ptr %i.dh, align 8
  %i.ej = icmp eq i64 %i.ei, 4
  %.pre274 = load ptr, ptr %15, align 8           ; 3 uses
  br i1 %i.ej, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread202

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131: ; preds = %bb.z
  %i.ek = load i32, ptr %.pre274, align 1
  %i.el = icmp ne i32 %i.ek, 1835365481
  %i.em = zext i1 %i.el to i32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread202

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 -1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store ptr %i.di, ptr %16, align 8
  store i64 0, ptr %i.dj, align 8
  store i8 0, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.dk, ptr %17, align 8
  store i64 7235442246599467631, ptr %i.dk, align 8
  store i64 8, ptr %i.dl, align 8
  store i8 0, ptr %i.dq, align 8
  %i.eo = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr nonnull %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.aa unwind label %bb.ai     ; 0 uses

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread
  %i.ep = load ptr, ptr %17, align 8              ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.dk
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.aa
  %i.er = load i64, ptr %i.dk, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store ptr %i.dm, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dm, ptr noundef nonnull align 1 dereferenceable(9) @_ZN6Assimp4D3MF6XmlTagL9transformE, i64 9, i1 false)
  store i64 9, ptr %i.dn, align 8
  store i8 0, ptr %i.dr, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.et = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull %i.dm)
          to label %.noexc143 unwind label %bb.aj

.noexc143:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  store ptr %i.et, ptr %2, align 8
  %i.eu = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc144 unwind label %bb.aj ; 2 uses

.noexc144:                                        ; preds = %.noexc143
  br i1 %i.eu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc144
  %i.ev = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str)
          to label %.noexc145 unwind label %bb.aj ; 2 uses

.noexc145:                                        ; preds = %bb.ab
  %i.ew = load i64, ptr %i.dj, align 8
  %i.ex = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ev) #26
  %i.ey = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef %i.ew, ptr noundef nonnull %i.ev, i64 noundef %i.ex)
          to label %bb.ac unwind label %bb.aj     ; 0 uses

bb.ac:                                            ; preds = %.noexc144, %.noexc145
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ez = load ptr, ptr %18, align 8              ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.dm
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.ac
  %i.fb = load i64, ptr %i.dm, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.fd = load i32, ptr %i.c, align 4             ; 2 uses
  %i.fe = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = icmp ult i32 %i.fg, %i.fd               ; 2 uses
  %.19.i.i.i = select i1 %i.fh, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fh, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.fi = icmp eq ptr %.19.i.i.i, %i.dp
  br i1 %i.fi, label %.critedge, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp ult i32 %i.fd, %i.fk
  br i1 %i.fl, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i32 %i.fq(ptr noundef nonnull align 8 dereferenceable(12) %i.fn)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.fm, align 8
  br i1 %i.eu, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %.val82 = load ptr, ptr %16, align 8
  %.val83 = load i64, ptr %i.dj, align 8
  invoke fastcc void @_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 4 %19, ptr %.val82, i64 %.val83)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0182.0.copyload = load float, ptr %19, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false)
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.am

.loopexit208:                                     ; preds = %.noexc.i126
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %17, align 8              ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.dk
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.ai
  %i.fx = load i64, ptr %i.dk, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.ao

bb.aj:                                            ; preds = %.noexc145, %bb.ab, %.noexc143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %18, align 8              ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.dm
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.aj
  %i.gc = load i64, ptr %i.dm, align 8
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ad
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ao

bb.am:                                            ; preds = %bb.ah, %bb.af
  %.sroa.0182.0 = phi float [ %.sroa.0182.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.11.0 = phi float [ %.sroa.11.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %i.gg = load ptr, ptr %i.i, align 8
  store float %.sroa.0182.0, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx184, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx185, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx187, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx188, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx190, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx191, align 4
  invoke void @_ZN6Assimp4D3MF13XmlSerializer15addObjectToNodeEP6aiNodePNS0_6ObjectE12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.gg, ptr noundef %i.ft, ptr noundef nonnull byval(%class.aiMatrix4x4t) align 8 %20)
          to label %.critedge unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit, %bb.am, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.gi = load ptr, ptr %16, align 8              ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.di
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %.critedge
  %i.gk = load i64, ptr %i.di, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %.pre273 = load ptr, ptr %15, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread202

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.gf, %bb.al ], [ %i.ge, %bb.ak ], [ %i.gh, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.gm = load ptr, ptr %16, align 8              ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.di
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.ao
  %i.go = load i64, ptr %i.di, align 8
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.gq = load ptr, ptr %15, align 8              ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.dg
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread202: ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131
  %i.gs = phi ptr [ %.pre274, %bb.z ], [ %.pre273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pre274, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131 ] ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.dg
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread202
  %i.gu = load i64, ptr %i.dg, align 8
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131.thread202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.gw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  %i.gx = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
  br i1 %i.gx, label %bb.u, label %._crit_edge258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.gy = load i64, ptr %i.dg, align 8
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %.loopexit208, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  %.pn70.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit208 ], [ %.pn70.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bd

bb.ap:                                            ; preds = %._crit_edge258
  %i.ha = ptrtoint ptr %i.du to i64
  %i.hb = ptrtoint ptr %i.ds to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 6                 ; 3 uses
  %i.he = trunc i64 %i.hd to i32                  ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph260, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i32 %i.he, ptr %i.hg, align 8
  %i.hi = and i64 %i.hd, 4294967295               ; 3 uses
  %i.hj = mul nuw nsw i64 %i.hi, 1028             ; 3 uses
  %i.hk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hj) #28 ; 2 uses
  %i.hl = add nsw i64 %i.hj, -1028
  %i.hm = urem i64 %i.hl, 1028
  %i.hn = sub nsw i64 %i.hj, %i.hm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.hk, i8 0, i64 %i.hn, i1 false)
  store ptr %i.hk, ptr %i.hh, align 8
  %i.ho = shl nuw nsw i64 %i.hi, 4                ; 2 uses
  %i.hp = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ho) #28 ; 4 uses
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.hi
  %i.hr = add nsw i64 %i.ho, -16                  ; 2 uses
  %i.hs = lshr exact i64 %i.hr, 4
  %i.ht = add nuw nsw i64 %i.hs, 1
  %xtraiter = and i64 %i.ht, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.aq, %.prol.preheader
  %i.hu = phi ptr [ %i.hw, %.prol.preheader ], [ %i.hp, %bb.aq ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.aq ]
  store i32 10, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr null, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.aq
  %.unr = phi ptr [ %i.hp, %bb.aq ], [ %i.hw, %.prol.preheader ]
  %i.hx = icmp ult i64 %i.hr, 112
  br i1 %i.hx, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.hy = phi ptr [ %i.io, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr null, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i32 10, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store ptr null, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  store i32 10, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  store ptr null, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  store i32 10, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  store ptr null, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  store i32 10, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 72
  store ptr null, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hy, i64 80
  store i32 10, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 88
  store ptr null, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  store i32 10, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.hy, i64 104
  store ptr null, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 112
  store i32 10, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.hy, i64 120
  store ptr null, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hy, i64 128 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.hq
  br i1 %i.ip, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store ptr %i.hp, ptr %i.iq, align 8
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.unr-lcssa, %bb.ap
  %.0.i168 = phi ptr [ %i.hg, %.unr-lcssa ], [ null, %bb.ap ]
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store ptr %.0.i168, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph260, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.061259 = phi i64 [ 0, %.lr.ph260 ], [ %i.kf, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.it = load ptr, ptr %0, align 8
  %i.iu = getelementptr inbounds nuw [64 x i8], ptr %i.it, i64 %.061259 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.ix = load i64, ptr %i.iw, align 8            ; 2 uses
  %i.iy = trunc i64 %i.ix to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.is, i8 0, i64 1024, i1 false)
  %i.iz = and i64 %i.ix, 4294966272
  %.not.i169 = icmp eq i64 %i.iz, 0
  %spec.select.i = select i1 %.not.i169, i32 %i.iy, i32 1023 ; 4 uses
  store i32 %spec.select.i, ptr %21, align 4
  %i.ja = load ptr, ptr %i.iv, align 8
  %i.jb = zext i32 %spec.select.i to i64          ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.is, ptr align 1 %i.ja, i64 %i.jb, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.jb
  store i8 0, ptr %i.jc, align 1
  %i.jd = load ptr, ptr %i.ir, align 8            ; 3 uses
  %i.je = trunc i64 %.061259 to i32
  %i.jf = load i32, ptr %i.jd, align 8
  %.not.i170 = icmp ugt i32 %i.jf, %i.je
  br i1 %.not.i170, label %bb.as, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.as:                                            ; preds = %bb.ar
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jh = load i64, ptr %i.jg, align 8            ; 5 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jj = and i64 %.061259, 4294967295            ; 3 uses
  %i.jk = icmp ugt i64 %i.jh, 1023
  br i1 %i.jk, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw [1028 x i8], ptr %i.jm, i64 %i.jj ; 2 uses
  %i.jo = trunc nuw nsw i64 %i.jh to i32
  store i32 %i.jo, ptr %i.jn, align 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 2 uses
  %i.jq = load ptr, ptr %i.iu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jp, ptr align 1 %i.jq, i64 %i.jh, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jh
  store i8 0, ptr %i.jr, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.au, %bb.at
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.jj
  store i32 5, ptr %i.ju, align 8
  %i.jv = load ptr, ptr %i.js, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp4D3MF13XmlSerializer19ReadEmbeddecTextureERN4pugi8xml_nodeE:bb.a

_ZNKSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #28
          to label %.noexc43 unwind label %bb.e   ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store ptr %i.j, ptr %i.bx, align 8
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.v, label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.v:                                             ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.v, %.noexc43
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #25
  br label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bw, ptr %i.be, align 8
  store ptr %i.bz, ptr %i.bf, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.bh, align 8
  br label %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.s
  invoke void @_ZN6Assimp4D3MF13XmlSerializer20StoreEmbeddedTextureEPNS0_15EmbeddedTextureE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %i.j)
          to label %bb.x unwind label %bb.e

bb.x:                                             ; preds = %.thread55, %_ZNSt6vectorIPN6Assimp4D3MF15EmbeddedTextureESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.cb = load ptr, ptr %7, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.b
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.cd = load i64, ptr %i.b, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializer16ReadTextureGroupERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_14Texture2DGroupEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = tail call ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9)
  store ptr %i.b, ptr %2, align 8
  %i.c = call noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.c, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE15getIntAttributeERS2_PKcRi.exit, label %bb.c

_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE15getIntAttributeERS2_PKcRi.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_14Texture2DGroupEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = call noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.e = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.d, ptr %i.f, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6Assimp4D3MF14Texture2DGroupE, i64 16), ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 -1, ptr %i.h, align 8
  call void @_ZN6Assimp4D3MF13XmlSerializer19ReadTextureCoords2DERN4pugi8xml_nodeEPNS0_14Texture2DGroupE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ult i32 %i.n, %i.d                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.p, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp ult i32 %i.d, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_14Texture2DGroupEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit

.critedge.i:                                      ; preds = %bb.d, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, %bb.c
  %.08.lcssa.i.i.i16.i = phi ptr [ %.19.i.i.i.i, %bb.d ], [ %.19.i.i.i.i, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i ], [ %i.l, %bb.c ]
  %i.t = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  store i32 %i.d, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.e, ptr %i.v, align 8
  %i.w = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr %.08.lcssa.i.i.i16.i, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %bb.e unwind label %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.e:                                             ; preds = %.critedge.i
  %i.x = extractvalue { ptr, ptr } %i.w, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, ptr } %i.w, 0
  %.not.i.i.i = icmp ne ptr %i.y, null
  %i.z = icmp eq ptr %i.x, %i.l
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.z
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i32, ptr %i.u, align 8
  %i.ac = load i32, ptr %i.aa, align 4
  %i.ad = icmp ult i32 %i.ab, %i.ac
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.ae = phi i1 [ %i.ad, %bb.g ], [ true, %bb.f ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ae, ptr noundef nonnull %i.t, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #26
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8
  br label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_14Texture2DGroupEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit

_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #25
  resume { ptr, i32 } %i.ai

bb.h:                                             ; preds = %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #25
  br label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_14Texture2DGroupEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_14Texture2DGroupEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit: ; preds = %bb.d, %.thread.i, %bb.h, %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE15getIntAttributeERS2_PKcRi.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %7 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %8 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %struct.aiString, align 4          ; 7 uses
  %13 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %14 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %15 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.6238 = alloca { float, float, float, float }, align 8 ; 4 uses
  %.sroa.8 = alloca { float, float, float, float }, align 8 ; 4 uses
  %.sroa.10 = alloca { float, float, float, float }, align 8 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 -1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 -1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 -1, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8
  store i16 25705, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.i, align 2
  %i.j = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %3, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.g, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.j, label %._crit_edge.i.i109, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_6ObjectEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.b
  %i.r = load i64, ptr %i.g, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.co

._crit_edge.i.i109:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.t, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @_ZN6Assimp4D3MF6XmlTagL3pidE, i64 3, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.v, align 1
  %i.w = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %._crit_edge.i.i109
  %i.x = load ptr, ptr %4, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.t
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.c
  %i.z = load i64, ptr %i.t, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ab, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ab, ptr noundef nonnull align 1 dereferenceable(6) @_ZN6Assimp4D3MF6XmlTagL6pindexE, i64 6, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 6, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.ad, align 2
  %i.ae = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.af = load ptr, ptr %5, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ab
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.d
  %i.ah = load i64, ptr %i.ab, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.aj = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #28 ; 12 uses
  %i.ak = load i32, ptr %i.c, align 4             ; 5 uses
  invoke void @_ZN6Assimp4D3MF6ObjectC2Ei(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i32 noundef %i.ak)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.al = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.al, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = load <2 x ptr>, ptr %i.am, align 16
  store <2 x ptr> %i.an, ptr %8, align 16
  %i.ao = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br i1 %i.ao, label %.lr.ph395, label %._crit_edge396

.lr.ph395:                                        ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.6238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 44
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 25
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 24
  br label %bb.n

._crit_edge396:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge396, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bx, %._crit_edge396 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.by, %._crit_edge396 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp ult i32 %i.ca, %i.ak               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cb, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cb, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.cc = icmp eq ptr %.19.i.i.i.i, %i.by
  br i1 %i.cc, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp ult i32 %i.ak, %i.ce
  br i1 %i.cf, label %.critedge.i, label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_6ObjectEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit

.critedge.i:                                      ; preds = %bb.f, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, %._crit_edge396
  %.08.lcssa.i.i.i16.i = phi ptr [ %.19.i.i.i.i, %bb.f ], [ %.19.i.i.i.i, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i ], [ %i.by, %._crit_edge396 ]
  %i.cg = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 3 uses
  store i32 %i.ak, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
end_hunk_2
begin_hunk_3_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  %i.kk = load i32, ptr %i.bq, align 8            ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 4
  %i.kl = load ptr, ptr %i.br, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  store ptr %i.km, ptr %i.br, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bf:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  %i.kn = load ptr, ptr %i.bp, align 8            ; 4 uses
  %i.ko = ptrtoint ptr %i.ki to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 6 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775804
  br i1 %i.kr, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bf
  %i.ks = ashr exact i64 %i.kq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i158 = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i158, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kt, i64 2305843009213693951)
  %i.kw = select i1 %i.ku, i64 2305843009213693951, i64 %i.kv ; 3 uses
  %.not.i.i.i159 = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %.not.i.i.i159)
  %i.kx = shl nuw nsw i64 %i.kw, 2
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #28
          to label %.noexc162 unwind label %.loopexit301 ; 4 uses

.noexc162:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  %i.la = load i32, ptr %i.bq, align 8            ; 2 uses
  store i32 %i.la, ptr %i.kz, align 4
  %i.lb = icmp sgt i64 %i.kq, 0
  br i1 %i.lb, label %bb.bg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.bg:                                            ; preds = %.noexc162
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ky, ptr align 4 %i.kn, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.bg, %.noexc162
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %.not.i17.i.i160 = icmp eq ptr %i.kn, null
  br i1 %.not.i17.i.i160, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.kq) #25
  %.pre414.pre = load i32, ptr %i.bq, align 8
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %.pre414 = phi i32 [ %.pre414.pre, %bb.bh ], [ %i.la, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i ]
  store ptr %i.ky, ptr %i.bp, align 8
  store ptr %i.lc, ptr %i.br, align 8
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kw
  store ptr %i.ld, ptr %i.bs, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.be
  %i.le = phi i32 [ %.pre414, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.kk, %bb.be ]
  %i.lf = add i32 %i.le, 1
  store i32 %i.lf, ptr %i.bq, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread285

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164: ; preds = %bb.s
  %i.lg = load ptr, ptr %9, align 8               ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 1
  %i.li = xor i64 %i.lh, 7954885741726494563
  %i.lj = getelementptr i8, ptr %i.lg, i64 8
  %i.lk = load i16, ptr %i.lj, align 1
  %i.ll = zext i16 %i.lk to i64
  %i.lm = xor i64 %i.ll, 29556
  %i.ln = or i64 %i.li, %i.lm
  %i.lo = icmp ne i64 %i.ln, 0
  %i.lp = zext i1 %i.lo to i32
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread285

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.lr = load <2 x ptr>, ptr %13, align 16
  store <2 x ptr> %i.lr, ptr %14, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ls = load <2 x ptr>, ptr %i.ar, align 16
  store <2 x ptr> %i.ls, ptr %15, align 16
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.bi
  %i.lt = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.lt, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread285

bb.bm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.bj
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bo:                                            ; preds = %bb.bk
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bp unwind label %bb.ca     ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.lx = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lw)
          to label %bb.bq unwind label %bb.cb     ; 4 uses

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.as, ptr %16, align 8
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #29
          to label %.noexc177 unwind label %.loopexit.split-lp

.noexc177:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.lz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.lz, ptr %i.a, align 8
  %i.ma = icmp ugt i64 %i.lz, 15
  br i1 %i.ma, label %.noexc.i176, label %._crit_edge.i.i175

.noexc.i176:                                      ; preds = %bb.bs
  %i.mb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc178 unwind label %.loopexit290 ; 2 uses

.noexc178:                                        ; preds = %.noexc.i176
  store ptr %i.mb, ptr %16, align 8
  %i.mc = load i64, ptr %i.a, align 8
  store i64 %i.mc, ptr %i.as, align 8
  br label %._crit_edge.i.i175

._crit_edge.i.i175:                               ; preds = %.noexc178, %bb.bs
  %i.md = phi ptr [ %i.mb, %.noexc178 ], [ %i.as, %bb.bs ] ; 2 uses
  switch i64 %i.lz, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i175
  %i.me = load i8, ptr %i.lx, align 1
  store i8 %i.me, ptr %i.md, align 1
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i175
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.md, ptr nonnull align 1 %i.lx, i64 %i.lz, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i175
  %i.mf = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.mf, ptr %i.at, align 8
  %i.mg = load ptr, ptr %16, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mf
  store i8 0, ptr %i.mh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.mi = load i64, ptr %i.at, align 8
  %i.mj = icmp eq i64 %i.mi, 9
  %.pre411 = load ptr, ptr %16, align 8           ; 4 uses
  br i1 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread286

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181: ; preds = %bb.bv
  %i.mk = load i64, ptr %.pre411, align 1
  %i.ml = xor i64 %i.mk, 7954885741726494563
  %i.mm = getelementptr i8, ptr %.pre411, i64 8
  %i.mn = load i8, ptr %i.mm, align 1
  %i.mo = zext i8 %i.mn to i64
  %i.mp = xor i64 %i.mo, 116
  %i.mq = or i64 %i.ml, %i.mp
  %i.mr = icmp ne i64 %i.mq, 0
  %i.ms = zext i1 %i.mr to i32
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread286

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i32 -1, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.au, ptr %17, align 8
  store i64 0, ptr %i.av, align 8
  store i8 0, ptr %i.au, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store ptr %i.aw, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aw, ptr noundef nonnull align 1 dereferenceable(9) @_ZN6Assimp4D3MF6XmlTagL9transformE, i64 9, i1 false)
  store i64 9, ptr %i.ax, align 8
  store i8 0, ptr %i.bt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.mu = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef nonnull %i.aw)
          to label %.noexc186 unwind label %bb.cc

.noexc186:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread
  store ptr %i.mu, ptr %2, align 8
  %i.mv = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc187 unwind label %bb.cc ; 2 uses

.noexc187:                                        ; preds = %.noexc186
  br i1 %i.mv, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.noexc187
  %i.mw = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str)
          to label %.noexc188 unwind label %bb.cc ; 2 uses

.noexc188:                                        ; preds = %bb.bw
  %i.mx = load i64, ptr %i.av, align 8
  %i.my = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mw) #26
  %i.mz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.mx, ptr noundef nonnull %i.mw, i64 noundef %i.my)
          to label %bb.bx unwind label %bb.cc     ; 0 uses

bb.bx:                                            ; preds = %.noexc187, %.noexc188
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.na = load ptr, ptr %18, align 8              ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.aw
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bx
  %i.nc = load i64, ptr %i.aw, align 8
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br i1 %i.mv, label %._crit_edge.i.i196, label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %.val104 = load ptr, ptr %17, align 8
  %.val105 = load i64, ptr %i.av, align 8
  invoke fastcc void @_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 4 %19, ptr %.val104, i64 %.val105)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %.sroa.0236.0.copyload = load float, ptr %19, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6238.0..sroa_idx, i64 16, i1 false)
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx, i64 16, i1 false)
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %._crit_edge.i.i196

bb.ca:                                            ; preds = %bb.bo
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cb:                                            ; preds = %bb.bp
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

.loopexit290:                                     ; preds = %.noexc.i176
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

.loopexit.split-lp:                               ; preds = %bb.br
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

bb.cc:                                            ; preds = %.noexc188, %bb.bw, %.noexc186, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %i.nh = load ptr, ptr %18, align 8              ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.aw
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.cc
  %i.nj = load i64, ptr %i.aw, align 8
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.cl

bb.cd:                                            ; preds = %bb.by
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.cl

._crit_edge.i.i196:                               ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.sroa.0236.0 = phi float [ %.sroa.0236.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.11.0 = phi float [ %.sroa.11.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %i.ay, ptr %20, align 8
  store i64 7235442246599467631, ptr %i.ay, align 8
  store i64 8, ptr %i.az, align 8
  store i8 0, ptr %i.bu, align 8
  %i.nm = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr nonnull %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.ce unwind label %bb.ck

bb.ce:                                            ; preds = %._crit_edge.i.i196
  %i.nn = load ptr, ptr %20, align 8              ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.ay
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.ce
  %i.np = load i64, ptr %i.ay, align 8
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br i1 %i.nm, label %bb.cf, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE9push_backEOS2_.exit

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.nr = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ns = load ptr, ptr %i.bb, align 8            ; 12 uses
  %i.nt = load ptr, ptr %i.bc, align 8
  %.not.i.i = icmp eq ptr %i.ns, %i.nt
  br i1 %.not.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 %i.nr, ptr %i.ns, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store float %.sroa.0236.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238, i64 16, i1 false)
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  store float %.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 44
  store float %.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  store float %.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %i.nu = load ptr, ptr %i.bb, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 68
  store ptr %i.nv, ptr %i.bb, align 8
  br label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE9push_backEOS2_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.nw = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.nx = ptrtoint ptr %i.ns to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny                    ; 4 uses
  %i.oa = icmp eq i64 %i.nz, 9223372036854775748
  br i1 %i.oa, label %bb.ci, label %_ZNKSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
          to label %.noexc204 unwind label %.loopexit.split-lp292

.noexc204:                                        ; preds = %bb.ci
  unreachable

_ZNKSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ch
  %i.ob = sdiv exact i64 %i.nz, 68                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ob, i64 1)
  %i.oc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ob ; 2 uses
  %i.od = icmp ult i64 %i.oc, %i.ob
  %i.oe = call i64 @llvm.umin.i64(i64 %i.oc, i64 135637824071393761)
  %i.of = select i1 %i.od, i64 135637824071393761, i64 %i.oe ; 3 uses
  %.not.i.i.i.i203 = icmp ne i64 %i.of, 0
  call void @llvm.assume(i1 %.not.i.i.i.i203)
  %i.og = mul nuw nsw i64 %i.of, 68
  %i.oh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.og) #28
          to label %.noexc205 unwind label %.loopexit291 ; 5 uses

.noexc205:                                        ; preds = %_ZNKSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.nz ; 8 uses
  store i32 %i.nr, ptr %i.oi, align 4
  %.sroa.6.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store float %.sroa.0236.0, ptr %.sroa.6.0..sroa_idx233, align 4
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx233.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238, i64 16, i1 false)
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store float %.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx233.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 44
  store float %.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx233.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store float %.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.nw, %i.ns
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc205, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i.i ], [ %i.oh, %.noexc205 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i.i ], [ %i.nw, %.noexc205 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.0911.i.i.i.i.i.i, i64 68, i1 false), !alias.scope !19
  %i.oj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 68 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 68 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.oj, %i.ns
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc205
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.oh, %.noexc205 ], [ %i.ok, %.lr.ph.i.i.i.i.i.i ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 68
  %.not.i23.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.nz) #25
  br label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.cj, %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.oh, ptr %i.ba, align 8
  store ptr %i.ol, ptr %i.bb, align 8
  %i.om = getelementptr inbounds nuw [68 x i8], ptr %i.oh, i64 %i.of
  store ptr %i.om, ptr %i.bc, align 8
  br label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE9push_backEOS2_.exit

bb.ck:                                            ; preds = %._crit_edge.i.i196
  %i.on = landingpad { ptr, i32 }
          cleanup
  %i.oo = load ptr, ptr %20, align 8              ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.ay
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.ck
  %i.oq = load i64, ptr %i.ay, align 8
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.cl

.loopexit291:                                     ; preds = %_ZNKSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp292:                            ; preds = %bb.ci
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.cg, %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %i.os = load ptr, ptr %17, align 8              ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.au
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE9push_backEOS2_.exit
  %i.ou = load i64, ptr %i.au, align 8
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE9push_backEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %.pre = load ptr, ptr %16, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread286

bb.cl:                                            ; preds = %.loopexit291, %.loopexit.split-lp292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %.pn80 = phi { ptr, i32 } [ %i.ng, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195 ], [ %i.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ], [ %i.nl, %bb.cd ], [ %lpad.loopexit293, %.loopexit291 ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp292 ] ; 2 uses
  %i.ow = load ptr, ptr %17, align 8              ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.au
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.cl
  %i.oy = load i64, ptr %i.au, align 8
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.pa = load ptr, ptr %16, align 8              ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.as
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread286: ; preds = %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181
  %i.pc = phi ptr [ %.pre411, %bb.bv ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %.pre411, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181 ] ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.as
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread286
  %i.pe = load i64, ptr %i.as, align 8
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit181.thread286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.pg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.bj unwind label %bb.bn     ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.ph = load i64, ptr %i.as, align 8
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %.loopexit290, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218, %bb.cb
  %.pn80.pn.pn = phi { ptr, i32 } [ %i.nf, %bb.cb ], [ %.pn80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit290 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %bb.bn
  %.pn85 = phi { ptr, i32 } [ %i.lv, %bb.bn ], [ %.pn80.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220 ], [ %i.ne, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cn

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread285: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164, %bb.bl, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.pj = load ptr, ptr %9, align 8               ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.ap
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread285
  %i.pl = load i64, ptr %i.ap, align 8
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit164.thread285, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.pn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  %i.po = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br i1 %i.po, label %bb.n, label %._crit_edge396

bb.cn:                                            ; preds = %.loopexit301, %.loopexit.split-lp302, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.ab, %bb.bm, %bb.cm
  %.pn92.pn = phi { ptr, i32 } [ %i.lu, %bb.bm ], [ %i.fk, %bb.ab ], [ %.pn85, %bb.cm ], [ %.pn88.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.fj, %bb.aa ], [ %lpad.loopexit303, %.loopexit301 ], [ %lpad.loopexit.split-lp304, %.loopexit.split-lp302 ] ; 2 uses
  %i.pp = load ptr, ptr %9, align 8               ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.ap
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.cn
  %i.pr = load i64, ptr %i.ap, align 8
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.cn, %.loopexit296, %.loopexit.split-lp297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %lpad.loopexit.split-lp299, %.loopexit.split-lp297 ], [ %lpad.loopexit298, %.loopexit296 ], [ %.pn92.pn, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.co

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE6insertIS6_IiPNS1_6ObjectEEEENSt9enable_ifIXsr16is_constructibleIS8_T_EE5valueES6_ISt17_Rb_tree_iteratorIS8_EbEE4typeEOSG_.exit: ; preds = %bb.f, %.thread.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void

bb.co:                                            ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn92.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %.pn92.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.dg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializer17ReadBaseMaterialsERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %4 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %5 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8
  store i16 25705, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.e, align 2
  %i.f = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
end_hunk_3
