inline.NumInlined: 298
inline.NumDeleted: 116
begin_hunk_0_@_ZN6Assimp11X3DImporter14readAppearanceERN4pugi8xml_nodeE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ai

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cc = load ptr, ptr %10, align 8              ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.am
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ah
  %i.ce = load i64, ptr %i.am, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.ad
  %.pn20 = phi { ptr, i32 } [ %i.bp, %bb.ad ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  %i.ch = load ptr, ptr %10, align 8              ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.am
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ai
  %i.cj = load i64, ptr %i.am, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.ab
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.ab ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.bo, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.at, %bb.s ], [ %.pn20.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ao

bb.al:                                            ; preds = %bb.k
  %i.cl = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.cm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.g ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.al
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.v, ptr %i.co, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cn) #17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 64 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %bb.q
  %i.cs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit65 unwind label %bb.g ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit65: ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.v, ptr %i.cu, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.cv, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.f, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit65
  %i.cy = load ptr, ptr %5, align 8               ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.d
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.an
  %i.da = load i64, ptr %i.d, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.dc = load ptr, ptr %4, align 8               ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.b
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.de = load i64, ptr %i.b, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.ao:                                            ; preds = %bb.r, %bb.ak, %bb.g
  %.pn27 = phi { ptr, i32 } [ %i.u, %bb.g ], [ %.pn24, %bb.ak ], [ %i.as, %bb.r ]
  %i.dg = load ptr, ptr %5, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.d
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ao
  %i.di = load i64, ptr %i.d, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.dk = load ptr, ptr %4, align 8               ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.b
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.dm = load i64, ptr %i.b, align 8
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn27
}

declare void @_ZN6Assimp11X3DImporter9readArc2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter14readArcClose2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter12readCircle2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter10readDisk2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter14readPolyline2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter15readPolypoint2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter15readRectangle2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter17readTriangleSet2DERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter7readBoxERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter8readConeERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter12readCylinderERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter17readElevationGridERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter18readIndexedFaceSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter10readSphereERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter18readIndexedLineSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter11readLineSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter12readPointSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter25readIndexedTriangleFanSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter22readIndexedTriangleSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter27readIndexedTriangleStripSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter18readTriangleFanSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter15readTriangleSetERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6Assimp11X3DImporter20checkForMetadataNodeERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter19skipUnsupportedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter12readMaterialERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %struct.aiColor3D, align 8          ; 8 uses
  %10 = alloca %struct.aiColor3D, align 8         ; 7 uses
  %11 = alloca %struct.aiColor3D, align 8         ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store <2 x float> splat (float 8.000000e-01), ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float 8.000000e-01, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store <2 x float> zeroinitializer, ptr %10, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store <2 x float> zeroinitializer, ptr %11, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.h = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.a
  store ptr %i.h, ptr %6, align 8
  %i.i = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc18 unwind label %bb.p

.noexc18:                                         ; preds = %.noexc
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc18
  %i.j = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.44)
          to label %.noexc19 unwind label %bb.p   ; 2 uses

.noexc19:                                         ; preds = %bb.b
  %i.k = load i64, ptr %i.d, align 8
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #17
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.k, ptr noundef nonnull %i.j, i64 noundef %i.l)
          to label %bb.c unwind label %bb.p       ; 0 uses

bb.c:                                             ; preds = %.noexc18, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.n = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %bb.c
  store ptr %i.n, ptr %5, align 8
  %i.o = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc23 unwind label %bb.p

.noexc23:                                         ; preds = %.noexc22
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc23
  %i.p = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.44)
          to label %.noexc24 unwind label %bb.p   ; 2 uses

.noexc24:                                         ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #17
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull %i.p, i64 noundef %i.r)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %.noexc23, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.t = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30)
          to label %.noexc28 unwind label %bb.p

.noexc28:                                         ; preds = %bb.e
  store ptr %i.t, ptr %4, align 8
  %i.u = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc29 unwind label %bb.p

.noexc29:                                         ; preds = %.noexc28
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc29
  %i.v = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %.noexc29, %bb.f
  %.0 = phi float [ 2.000000e-01, %.noexc29 ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.w = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31)
          to label %.noexc32 unwind label %bb.p

.noexc32:                                         ; preds = %bb.g
  store ptr %i.w, ptr %3, align 8
  %i.x = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %.noexc32
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc33
  %i.y = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %3, float noundef 0.000000e+00)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %.noexc33, %bb.h
  %.073 = phi float [ 2.000000e-01, %.noexc33 ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.z = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32)
          to label %.noexc37 unwind label %bb.p

.noexc37:                                         ; preds = %bb.i
  store ptr %i.z, ptr %2, align 8
  %i.aa = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc38 unwind label %bb.p

.noexc38:                                         ; preds = %.noexc37
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc38
  %i.ab = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %2, float noundef 0.000000e+00)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %.noexc38, %bb.j
  %.072 = phi float [ 0.000000e+00, %.noexc38 ], [ %i.ab, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ac = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper19getColor3DAttributeERN4pugi8xml_nodeEPKcR9aiColor3D(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper19getColor3DAttributeERN4pugi8xml_nodeEPKcR9aiColor3D(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, ptr noundef nonnull align 4 dereferenceable(12) %10)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper19getColor3DAttributeERN4pugi8xml_nodeEPKcR9aiColor3D(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 4 dereferenceable(12) %11)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.af = load i64, ptr %i.b, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 38, ptr noundef null)
          to label %bb.y unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.x, %bb.w, %bb.s, %bb.j, %.noexc37, %bb.i, %bb.h, %.noexc32, %bb.g, %bb.f, %.noexc28, %bb.e, %.noexc24, %bb.d, %.noexc22, %bb.c, %.noexc19, %bb.b, %.noexc, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.q, %bb.o, %bb.m, %bb.l, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.q:                                             ; preds = %bb.n
  %i.aj = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18
          to label %bb.r unwind label %bb.p       ; 20 uses

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr %i.aq, ptr %i.ar, align 8
  store ptr %i.aq, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i64 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store i32 38, ptr %i.at, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV22X3DNodeElementMaterial, i64 16), ptr %i.aj, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 76 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.au, i8 0, i64 44, i1 false)
  store float 1.000000e+00, ptr %i.av, align 8
  %i.aw = load i64, ptr %i.d, align 8
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.s, %bb.r
  store float %.0, ptr %i.au, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store float %.073, ptr %i.ay, align 8
  store float %.072, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.ba = load float, ptr %9, align 8
  store float %i.ba, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.bc = load <2 x float>, ptr %13, align 4
  %i.bd = load <2 x float>, ptr %10, align 8
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.be, ptr %i.bb, align 4
  %i.bf = load float, ptr %i.f, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 100
  store float %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 108
  %i.bi = load <2 x float>, ptr %11, align 8
  store <2 x float> %i.bi, ptr %i.bh, align 4
  %i.bj = load float, ptr %i.g, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 116
  store float %i.bj, ptr %i.bk, align 4
  %i.bl = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %i.bl, label %bb.w, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bm, ptr %12, align 8
  store i64 7809639168886464845, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 8, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 0, ptr %i.bo, align 8
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bp = load ptr, ptr %12, align 8              ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.br = load i64, ptr %i.bm, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.x

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %12, align 8              ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bm
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  %i.bw = load i64, ptr %i.bm, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.bz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.p ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.aj, ptr %i.cb, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit48 unwind label %bb.p ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit48: ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.aj, ptr %i.ch, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.o, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cl = load ptr, ptr %8, align 8               ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.c
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.y
  %i.cn = load i64, ptr %i.c, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.cp = load ptr, ptr %7, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.a
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.cr = load i64, ptr %i.a, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.p
  %.pn16 = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.ct = load ptr, ptr %8, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.c
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.z
  %i.cv = load i64, ptr %i.c, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.a
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.cz = load i64, ptr %i.a, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn16
}

declare void @_ZN6Assimp11X3DImporter16readImageTextureERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter20readTextureTransformERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper19getColor3DAttributeERN4pugi8xml_nodeEPKcR9aiColor3D(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN6Assimp11X3DImporter20checkNodeMustBeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN6Assimp17Throw_DEF_And_USEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.b = load ptr, ptr %0, align 8, !noalias !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !alias.scope !6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !6
  store i8 0, ptr %i.e, align 8, !alias.scope !6
  %i.g = add i64 %i.d, 44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !6
  %i.i = add i64 %i.h, -4611686018427387860
  %i.j = icmp ult i64 %i.i, 44
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36, i64 noundef 44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !6
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #19
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable
end_hunk_0
