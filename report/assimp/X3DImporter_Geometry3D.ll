Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter17readElevationGridERN4pugi8xml_nodeE:bb.a
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8
  %i.ss = add i64 %i.sr, 1
  store i64 %i.ss, ptr %i.sq, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.x, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305
  %i.st = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.su = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = ptrtoint ptr %i.st to i64
  %i.sy = sub i64 %i.sw, %i.sx
  call void @_ZdlPvm(ptr noundef nonnull %i.st, i64 noundef %i.sy) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.sz = load ptr, ptr %14, align 8              ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.d
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.tb = load i64, ptr %i.d, align 8
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.td = load ptr, ptr %13, align 8              ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.b
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.tf = load i64, ptr %i.b, align 8
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret void

.loopexit449:                                     ; preds = %.loopexit.split-lp450, %.loopexit449.split.us.split.us, %.loopexit449.split, %.loopexit424, %.loopexit.split-lp425, %.loopexit419, %.loopexit.split-lp420, %.loopexit414, %.loopexit.split-lp415, %.loopexit409, %.loopexit.split-lp410, %.loopexit444.split.us.split.us, %.loopexit.split-lp445, %.loopexit439.split.us.split.us, %.loopexit.split-lp440, %.loopexit434.split.us.split.us, %.loopexit.split-lp435, %.loopexit429.split.us.split.us, %.loopexit.split-lp430, %.loopexit404, %.loopexit.split-lp405, %.loopexit399, %.loopexit.split-lp400, %.loopexit394, %.loopexit.split-lp395, %bb.an, %bb.dg, %bb.ea, %bb.dh, %bb.ae, %bb.ab, %bb.y
  %.pn110 = phi { ptr, i32 } [ %i.az, %bb.y ], [ %i.bd, %bb.ab ], [ %i.bi, %bb.ae ], [ %i.qg, %bb.dh ], [ %i.da, %bb.an ], [ %.pn103, %bb.ea ], [ %i.qf, %bb.dg ], [ %lpad.loopexit.split-lp447, %.loopexit.split-lp445 ], [ %lpad.loopexit.split-lp402, %.loopexit.split-lp400 ], [ %lpad.loopexit.split-lp397, %.loopexit.split-lp395 ], [ %lpad.loopexit.split-lp427, %.loopexit.split-lp425 ], [ %lpad.loopexit.split-lp442, %.loopexit.split-lp440 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp435 ], [ %lpad.loopexit.split-lp432, %.loopexit.split-lp430 ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp420 ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp415 ], [ %lpad.loopexit.split-lp412, %.loopexit.split-lp410 ], [ %lpad.loopexit396, %.loopexit394 ], [ %lpad.loopexit401, %.loopexit399 ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit431.us.us, %.loopexit429.split.us.split.us ], [ %lpad.loopexit436.us.us, %.loopexit434.split.us.split.us ], [ %lpad.loopexit441.us.us, %.loopexit439.split.us.split.us ], [ %lpad.loopexit446.us.us, %.loopexit444.split.us.split.us ], [ %lpad.loopexit411, %.loopexit409 ], [ %lpad.loopexit416, %.loopexit414 ], [ %lpad.loopexit421, %.loopexit419 ], [ %lpad.loopexit426, %.loopexit424 ], [ %lpad.loopexit.split-lp452, %.loopexit.split-lp450 ], [ %lpad.loopexit451, %.loopexit449.split ], [ %lpad.loopexit451.us.us, %.loopexit449.split.us.split.us ]
  %i.th = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i312 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i312, label %_ZNSt6vectorIfSaIfEED2Ev.exit313, label %bb.ef

bb.ef:                                            ; preds = %.loopexit449
  %i.ti = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.th to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.tm) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit313

_ZNSt6vectorIfSaIfEED2Ev.exit313:                 ; preds = %.loopexit449, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.tn = load ptr, ptr %14, align 8              ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.d
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313
  %i.tp = load i64, ptr %i.d, align 8
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.tr = load ptr, ptr %13, align 8              ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.b
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %i.tt = load i64, ptr %i.b, align 8
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  resume { ptr, i32 } %.pn110
}

declare noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

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
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZN6Assimp11X3DImporter22ParseHelper_Node_EnterEP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #2

declare void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind writable sret(%"class.pugi::xml_object_range") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter9readColorERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter13readColorRGBAERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter10readNormalERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter21readTextureCoordinateERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Assimp11X3DImporter20checkForMetadataNodeERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter19skipUnsupportedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::vector.24", align 8   ; 23 uses
  %13 = alloca %"class.std::vector.11", align 8   ; 24 uses
  %14 = alloca %"class.std::vector.24", align 8   ; 17 uses
  %15 = alloca %"class.std::vector", align 8      ; 27 uses
  %16 = alloca %"class.std::vector.29", align 8   ; 19 uses
  %17 = alloca %"class.std::vector.34", align 8   ; 13 uses
  %18 = alloca %"class.std::vector", align 8      ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.c, ptr %11, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.e = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %9, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc259 unwind label %bb.w

.noexc259:                                        ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc259
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.55)
          to label %.noexc260 unwind label %bb.w  ; 2 uses

.noexc260:                                        ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #20
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %bb.w       ; 0 uses

bb.c:                                             ; preds = %.noexc259, %.noexc260
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc263 unwind label %bb.w

.noexc263:                                        ; preds = %bb.c
  store ptr %i.k, ptr %8, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc264 unwind label %bb.w

.noexc264:                                        ; preds = %.noexc263
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc264
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.55)
          to label %.noexc265 unwind label %bb.w  ; 2 uses

.noexc265:                                        ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #20
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %bb.w       ; 0 uses

bb.e:                                             ; preds = %.noexc264, %.noexc265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29)
          to label %.noexc269 unwind label %bb.w

.noexc269:                                        ; preds = %bb.e
  store ptr %i.q, ptr %7, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc270 unwind label %bb.w

.noexc270:                                        ; preds = %.noexc269
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc270
  %i.s = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %.noexc271 unwind label %bb.w

.noexc271:                                        ; preds = %bb.f
  %i.t = zext i1 %i.s to i8
  br label %bb.g

bb.g:                                             ; preds = %.noexc271, %.noexc270
  %.1 = phi i8 [ 1, %.noexc270 ], [ %i.t, %.noexc271 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.u = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13)
          to label %.noexc273 unwind label %bb.w

.noexc273:                                        ; preds = %bb.g
  store ptr %i.u, ptr %6, align 8
  %i.v = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc274 unwind label %bb.w

.noexc274:                                        ; preds = %.noexc273
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc274
  %i.w = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %.noexc275 unwind label %bb.w

.noexc275:                                        ; preds = %bb.h
  %i.x = zext i1 %i.w to i8
  br label %bb.i

bb.i:                                             ; preds = %.noexc275, %.noexc274
  %.0878 = phi i8 [ 1, %.noexc274 ], [ %i.x, %.noexc275 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30)
          to label %.noexc278 unwind label %bb.w

.noexc278:                                        ; preds = %bb.i
  store ptr %i.y, ptr %5, align 8
  %i.z = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc279 unwind label %bb.w

.noexc279:                                        ; preds = %.noexc278
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc279
  %i.aa = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %.noexc280 unwind label %bb.w

.noexc280:                                        ; preds = %bb.j
  %i.ab = zext i1 %i.aa to i8
  br label %bb.k

bb.k:                                             ; preds = %.noexc280, %.noexc279
  %.0885 = phi i8 [ 1, %.noexc279 ], [ %i.ab, %.noexc280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ac = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16)
          to label %.noexc283 unwind label %bb.w

.noexc283:                                        ; preds = %bb.k
  store ptr %i.ac, ptr %4, align 8
  %i.ad = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc284 unwind label %bb.w

.noexc284:                                        ; preds = %.noexc283
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc284
  %i.ae = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %.noexc284, %bb.l
  %.0884 = phi float [ 0.000000e+00, %.noexc284 ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.af = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper25getVector2DArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorI10aiVector2tIfESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.n unwind label %bb.w       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ag = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32)
          to label %.noexc287 unwind label %bb.w

.noexc287:                                        ; preds = %bb.n
  store ptr %i.ag, ptr %3, align 8
  %i.ah = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc288 unwind label %bb.w

.noexc288:                                        ; preds = %.noexc287
  br i1 %i.ah, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc288
  %i.ai = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %.noexc289 unwind label %bb.w

.noexc289:                                        ; preds = %bb.o
  %i.aj = zext i1 %i.ai to i8
  br label %bb.p

bb.p:                                             ; preds = %.noexc289, %.noexc288
  %.1883 = phi i8 [ 1, %.noexc288 ], [ %i.aj, %.noexc289 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ak = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.q unwind label %bb.w       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.al = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper25getVector2DArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorI10aiVector2tIfESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.r unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.am = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
          to label %.noexc292 unwind label %bb.w

.noexc292:                                        ; preds = %bb.r
  store ptr %i.am, ptr %2, align 8
  %i.an = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc293 unwind label %bb.w
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.nb = load float, ptr %i.na, align 4
  %i.nc = fcmp oeq float %i.mw, %i.nb
  %i.nd = select i1 %i.mz, i1 %i.nc, i1 false
  %.041.i = add nuw i64 %.03046.i, 1              ; 4 uses
  br i1 %i.nd, label %.preheader.i, label %.critedge34.i

.preheader.i:                                     ; preds = %bb.bx
  %.not42.i = icmp ult i64 %.041.i, %i.ms
  br i1 %.not42.i, label %.lr.ph.i, label %.critedge.i

bb.by:                                            ; preds = %.lr.ph.i
  %i.ne = add i64 %.02843.i, 1
  %.0.i343 = add i64 %.044.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i343, %i.ms
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !35

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.by
  %.044.i = phi i64 [ %.0.i343, %bb.by ], [ %.041.i, %.preheader.i ] ; 2 uses
  %.02843.i = phi i64 [ %i.ne, %bb.by ], [ 1, %.preheader.i ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.02843.i ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.044.i ; 2 uses
  %i.nh = load float, ptr %i.nf, align 4
  %i.ni = load float, ptr %i.ng, align 4
  %i.nj = fcmp une float %i.nh, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nl = load float, ptr %i.nk, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.nn = load float, ptr %i.nm, align 4
  %i.no = fcmp une float %i.nl, %i.nn
  %i.np = select i1 %i.nj, i1 true, i1 %i.no
  br i1 %i.np, label %.critedge34.i, label %bb.by

.critedge.i:                                      ; preds = %.preheader.i, %bb.by
  %.not.i.i.i342 = icmp eq ptr %i.mx, %i.mn
  br i1 %.not.i.i.i342, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.critedge.i
  store ptr %i.mx, ptr %i.cb, align 8
  br label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit

.critedge34.i:                                    ; preds = %.lr.ph.i, %bb.bx
  %exitcond51.not.i = icmp eq i64 %.041.i, %i.ms
  br i1 %exitcond51.not.i, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %bb.bx, !llvm.loop !36

_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit: ; preds = %.critedge34.i, %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0879 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ true, %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ true, %.critedge.i ], [ false, %.critedge34.i ]
  %i.nq = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.nr = load ptr, ptr %15, align 8              ; 8 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = sdiv exact i64 %i.nu, 12                ; 7 uses
  %i.nw = icmp ugt i64 %i.nv, 3                   ; 3 uses
  br i1 %i.nw, label %.preheader39.i344, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit

.preheader39.i344:                                ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit
  %i.nx = load float, ptr %i.nr, align 4
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  br label %bb.bz

bb.bz:                                            ; preds = %.critedge34.i346, %.preheader39.i344
  %.03046.i345 = phi i64 [ 3, %.preheader39.i344 ], [ %i.pb, %.critedge34.i346 ] ; 4 uses
  %i.oa = getelementptr inbounds nuw [12 x i8], ptr %i.nr, i64 %.03046.i345 ; 6 uses
  %i.ob = load float, ptr %i.oa, align 4
  %i.oc = fcmp oeq float %i.nx, %i.ob
  br i1 %i.oc, label %bb.ca, label %.critedge34.i346

bb.ca:                                            ; preds = %bb.bz
  %i.od = load float, ptr %i.ny, align 4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.of = load float, ptr %i.oe, align 4
  %i.og = fcmp oeq float %i.od, %i.of
  br i1 %i.og, label %_ZNK10aiVector3tIfEeqERKS0_.exit.i, label %.critedge34.i346

_ZNK10aiVector3tIfEeqERKS0_.exit.i:               ; preds = %bb.ca
  %i.oh = load float, ptr %i.nz, align 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oj = load float, ptr %i.oi, align 4
  %i.ok = fcmp oeq float %i.oh, %i.oj
  br i1 %i.ok, label %.preheader.i347, label %.critedge34.i346

.preheader.i347:                                  ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.i
  %.041.i348 = add nuw i64 %.03046.i345, 1        ; 2 uses
  %.not42.i349 = icmp ult i64 %.041.i348, %i.nv
  br i1 %.not42.i349, label %.lr.ph.i352, label %.critedge.i350

bb.cb:                                            ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit.i
  %i.ol = add i64 %.02843.i354, 1
  %.0.i355 = add i64 %.044.i353, 1                ; 2 uses
  %exitcond.not.i356 = icmp eq i64 %.0.i355, %i.nv
  br i1 %exitcond.not.i356, label %.critedge.i350, label %.lr.ph.i352, !llvm.loop !37

.lr.ph.i352:                                      ; preds = %.preheader.i347, %bb.cb
  %.044.i353 = phi i64 [ %.0.i355, %bb.cb ], [ %.041.i348, %.preheader.i347 ] ; 2 uses
  %.02843.i354 = phi i64 [ %i.ol, %bb.cb ], [ 1, %.preheader.i347 ] ; 2 uses
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %i.nr, i64 %.02843.i354 ; 3 uses
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %i.nr, i64 %.044.i353 ; 3 uses
  %i.oo = load float, ptr %i.om, align 4
  %i.op = load float, ptr %i.on, align 4
  %i.oq = fcmp une float %i.oo, %i.op
  br i1 %i.oq, label %.critedge34.i346, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i352
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.os = load float, ptr %i.or, align 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.ou = load float, ptr %i.ot, align 4
  %i.ov = fcmp une float %i.os, %i.ou
  br i1 %i.ov, label %.critedge34.i346, label %_ZNK10aiVector3tIfEneERKS0_.exit.i

_ZNK10aiVector3tIfEneERKS0_.exit.i:               ; preds = %bb.cc
  %i.ow = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.ox = load float, ptr %i.ow, align 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.oz = load float, ptr %i.oy, align 4
  %i.pa = fcmp une float %i.ox, %i.oz
  br i1 %i.pa, label %.critedge34.i346, label %bb.cb

.critedge.i350:                                   ; preds = %.preheader.i347, %bb.cb
  %.not.i.i.i351 = icmp eq ptr %i.oa, %i.nq
  br i1 %.not.i.i.i351, label %bb.cd, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.critedge.i350
  store ptr %i.oa, ptr %i.av, align 8
  br label %bb.cd

.critedge34.i346:                                 ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit.i, %bb.cc, %.lr.ph.i352, %_ZNK10aiVector3tIfEeqERKS0_.exit.i, %bb.ca, %bb.bz
  %i.pb = add nuw i64 %.03046.i345, 1             ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.pb, %i.nv
  br i1 %exitcond52.not.i, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread, label %bb.bz, !llvm.loop !38

bb.cd:                                            ; preds = %.critedge.i350, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %.pre1144.pre-phi = phi i64 [ %i.nv, %.critedge.i350 ], [ %.03046.i345, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ]
  %i.pc = phi ptr [ %i.nq, %.critedge.i350 ], [ %i.oa, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ]
  %i.pd = or i8 %.1883, %.1
  br label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit

bb.ce:                                            ; preds = %bb.iu, %bb.it, %._crit_edge1039
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit: ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, %bb.cd
  %.pre-phi1145 = phi i64 [ %.pre1144.pre-phi, %bb.cd ], [ %i.nv, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 2 uses
  %i.pf = phi ptr [ %i.pc, %bb.cd ], [ %i.nq, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %.0882 = phi i8 [ 0, %bb.cd ], [ %.1883, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 2 uses
  %.0877 = phi i8 [ %i.pd, %bb.cd ], [ %.1, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 2 uses
  %.not1349 = icmp eq i64 %.pre-phi1145, 0
  br i1 %.not1349, label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread

_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread: ; preds = %.critedge34.i346, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit
  %.08771358 = phi i8 [ %.0877, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ %.1, %.critedge34.i346 ]
  %.08821356 = phi i8 [ %.0882, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ %.1883, %.critedge34.i346 ]
  %i.pg = phi i1 [ %i.nw, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ false, %.critedge34.i346 ]
  %.pre-phi11451354 = phi i64 [ %.pre-phi1145, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ %i.nv, %.critedge34.i346 ]
  invoke void @_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %.pre-phi11451354)
          to label %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 unwind label %bb.cg

._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087: ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread
  %.pre1088 = load ptr, ptr %i.av, align 8        ; 2 uses
  %.pre1089 = load ptr, ptr %15, align 8          ; 2 uses
  %.pre1146 = ptrtoint ptr %.pre1088 to i64
  %.pre1148 = ptrtoint ptr %.pre1089 to i64
  %.pre1150 = sub i64 %.pre1146, %.pre1148
  %.pre1152 = sdiv exact i64 %.pre1150, 12
  %i.ph = call i64 @llvm.umax.i64(i64 %.pre1152, i64 1)
  br label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit: ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087
  %.08771357 = phi i8 [ %.08771358, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 ], [ %.0877, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %.08821355 = phi i8 [ %.08821356, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 ], [ %.0882, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %i.pi = phi i1 [ %i.pg, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 ], [ %i.nw, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 4 uses
  %.pre-phi1153 = phi i64 [ %i.ph, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 ], [ 1, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %i.pj = phi ptr [ %.pre1089, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 ], [ %i.nr, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %i.pk = phi ptr [ %.pre1088, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1087 ], [ %i.pf, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %.not1042 = icmp eq ptr %i.pk, %i.pj
  br i1 %.not1042, label %._crit_edge, label %.lr.ph1011

._crit_edge:                                      ; preds = %bb.cz, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.pl = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.pm = load ptr, ptr %12, align 8              ; 2 uses
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = ashr exact i64 %i.pp, 3                 ; 3 uses
  %i.pr = icmp ugt i64 %i.pq, 768614336404564650
  br i1 %i.pr, label %bb.cf, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.cf:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #23
          to label %.noexc361 unwind label %bb.dj

.noexc361:                                        ; preds = %bb.cf
  unreachable

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i359 = icmp eq ptr %i.pl, %i.pm
  br i1 %.not.i.i.i.i359, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store i64 0, ptr %18, align 8
  br label %bb.da

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ps = mul nuw nsw i64 %i.pq, 12               ; 3 uses
  %i.pt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #21
          to label %.noexc362 unwind label %bb.dj ; 4 uses

.noexc362:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.pt, ptr %18, align 8
  %i.pu = getelementptr inbounds nuw [12 x i8], ptr %i.pt, i64 %i.pq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pt, i8 0, i64 %i.ps, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.pt, i64 %i.ps
  br label %bb.da

bb.cg:                                            ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

.lr.ph1011:                                       ; preds = %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit, %bb.cz
  %.02271010 = phi i64 [ %i.ads, %bb.cz ], [ 0, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 16 uses
  %.sroa.0796.01009 = phi <2 x float> [ %.sroa.015.3.i, %bb.cz ], [ zeroinitializer, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 4 uses
  %.sroa.10801.01008 = phi float [ %.sroa.31.3.i, %bb.cz ], [ 0.000000e+00, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.val = load ptr, ptr %15, align 8              ; 21 uses
  %.val256 = load ptr, ptr %i.av, align 8
  %i.pw = ptrtoint ptr %.val256 to i64
  %i.px = ptrtoint ptr %.val to i64
  %i.py = sub i64 %i.pw, %i.px                    ; 2 uses
  %i.pz = sdiv exact i64 %i.py, 12                ; 2 uses
  %i.qa = add nsw i64 %i.pz, -1                   ; 5 uses
  %i.qb = icmp eq i64 %.02271010, 0               ; 3 uses
  %i.qc = icmp eq i64 %.02271010, %i.qa           ; 2 uses
  %or.cond.i = or i1 %i.qb, %i.qc
  br i1 %or.cond.i, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %.lr.ph1011
  br i1 %i.pi, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.qd = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.qe = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.qa ; 2 uses
  %i.qf = load <2 x float>, ptr %i.qd, align 4
  %i.qg = load <2 x float>, ptr %i.qe, align 4
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.qj = load float, ptr %i.qi, align 4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.ql = load float, ptr %i.qk, align 4
  %i.qm = fsub float %i.qj, %i.ql
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.qb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qn = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.qo = load <2 x float>, ptr %i.qn, align 4
  %i.qp = load <2 x float>, ptr %.val, align 4
  %i.qq = fsub <2 x float> %i.qo, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.qs = load float, ptr %i.qr, align 4
  %i.qt = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.qu = load float, ptr %i.qt, align 4
  %i.qv = fsub float %i.qs, %i.qu
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %i.qw = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.qa ; 2 uses
  %i.qx = getelementptr i8, ptr %.val, i64 %i.py  ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 -24
  %i.qz = load <2 x float>, ptr %i.qw, align 4
  %i.ra = load <2 x float>, ptr %i.qy, align 4
  %i.rb = fsub <2 x float> %i.qz, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rd = load float, ptr %i.rc, align 4
  %i.re = getelementptr i8, ptr %i.qx, i64 -16
  %i.rf = load float, ptr %i.re, align 4
  %i.rg = fsub float %i.rd, %i.rf
  br label %bb.cn

bb.cm:                                            ; preds = %.lr.ph1011
  %i.rh = getelementptr [12 x i8], ptr %.val, i64 %.02271010 ; 4 uses
  %i.ri = getelementptr i8, ptr %i.rh, i64 12
  %i.rj = getelementptr i8, ptr %i.rh, i64 -12
  %i.rk = load <2 x float>, ptr %i.ri, align 4
  %i.rl = load <2 x float>, ptr %i.rj, align 4
  %i.rm = fsub <2 x float> %i.rk, %i.rl
  %i.rn = getelementptr i8, ptr %i.rh, i64 20
  %i.ro = load float, ptr %i.rn, align 4
  %i.rp = getelementptr i8, ptr %i.rh, i64 -4
  %i.rq = load float, ptr %i.rp, align 4
  %i.rr = fsub float %i.ro, %i.rq
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci
  %.sroa.13.0.i = phi float [ %i.qm, %bb.ci ], [ %i.rg, %bb.cl ], [ %i.qv, %bb.ck ], [ %i.rr, %bb.cm ] ; 4 uses
  %i.rs = phi <2 x float> [ %i.qh, %bb.ci ], [ %i.rb, %bb.cl ], [ %i.qq, %bb.ck ], [ %i.rm, %bb.cm ] ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.rs, %i.rs
  %i.rt = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ru = extractelement <2 x float> %i.rs, i64 0 ; 2 uses
  %i.rv = call float @llvm.fmuladd.f32(float %i.ru, float %i.ru, float %i.rt)
  %i.rw = call noundef float @llvm.fmuladd.f32(float %.sroa.13.0.i, float %.sroa.13.0.i, float %i.rv) ; 2 uses
  %i.rx = fcmp oeq float %i.rw, 0.000000e+00
  br i1 %i.rx, label %bb.co, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.cn
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.rw)
  %i.ry = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.rz = insertelement <2 x float> poison, float %i.ry, i64 0
  %i.sa = shufflevector <2 x float> %i.rz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sb = fmul <2 x float> %i.rs, %i.sa
  %i.sc = fmul float %.sroa.13.0.i, %i.ry
  br label %bb.co

bb.co:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %bb.cn
  %.sroa.13.1.i = phi float [ %.sroa.13.0.i, %bb.cn ], [ %i.sc, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 4 uses
  %.sroa.0.1.i = phi <2 x float> [ %i.rs, %bb.cn ], [ %i.sb, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 9 uses
  %i.sd = icmp ult i64 %i.pz, 3
  br i1 %i.sd, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.qb, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.pi, label %bb.cr, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i

bb.cr:                                            ; preds = %bb.cq
  %i.se = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.sf = load float, ptr %i.se, align 4
  %i.sg = load float, ptr %.val, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.si = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.sj = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.qa ; 2 uses
  %i.sk = load float, ptr %i.sj, align 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sm = load <2 x float>, ptr %i.sh, align 4    ; 2 uses
  %i.sn = load <2 x float>, ptr %i.si, align 4    ; 3 uses
  %i.so = fsub <2 x float> %i.sm, %i.sn           ; 2 uses
  %i.sp = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sq = insertelement <2 x float> %i.sp, float %i.sf, i64 1
  %i.sr = shufflevector <2 x float> %i.sn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ss = insertelement <2 x float> %i.sr, float %i.sg, i64 1 ; 2 uses
  %i.st = fsub <2 x float> %i.sq, %i.ss           ; 2 uses
  %i.su = load <2 x float>, ptr %i.sl, align 4    ; 2 uses
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sw = insertelement <2 x float> %i.sv, float %i.sk, i64 1
  %i.sx = fsub <2 x float> %i.sw, %i.ss           ; 2 uses
  %i.sy = fsub <2 x float> %i.su, %i.sn           ; 2 uses
  %i.sz = fneg <2 x float> %i.sy
  %i.ta = fmul <2 x float> %i.st, %i.sz
  %i.tb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.so, <2 x float> %i.sx, <2 x float> %i.ta)
  %i.tc = extractelement <2 x float> %i.sx, i64 1
  %i.td = fneg float %i.tc
  %i.te = extractelement <2 x float> %i.so, i64 0
  %i.tf = fmul float %i.te, %i.td
  %i.tg = extractelement <2 x float> %i.st, i64 1
  %i.th = extractelement <2 x float> %i.sy, i64 0
  %i.ti = call float @llvm.fmuladd.f32(float %i.tg, float %i.th, float %i.tf)
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

._crit_edge.i:                                    ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  br i1 %.not88.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.cs

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i:          ; preds = %bb.cq, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  %.010292.i = phi i64 [ %i.uv, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i ], [ 2, %bb.cq ] ; 2 uses
  %i.tj = getelementptr [12 x i8], ptr %.val, i64 %.010292.i ; 6 uses
  %i.tk = getelementptr i8, ptr %i.tj, i64 -12
  %i.tl = load float, ptr %i.tj, align 4
  %i.tm = load float, ptr %i.tk, align 4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %i.to = getelementptr i8, ptr %i.tj, i64 -8
  %i.tp = getelementptr i8, ptr %i.tj, i64 -24
  %i.tq = load float, ptr %i.tp, align 4
  %i.tr = getelementptr i8, ptr %i.tj, i64 -20
  %i.ts = load <2 x float>, ptr %i.tn, align 4    ; 2 uses
  %i.tt = load <2 x float>, ptr %i.to, align 4    ; 3 uses
  %i.tu = fsub <2 x float> %i.ts, %i.tt           ; 2 uses
  %i.tv = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tw = insertelement <2 x float> %i.tv, float %i.tl, i64 1
  %i.tx = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ty = insertelement <2 x float> %i.tx, float %i.tm, i64 1 ; 2 uses
  %i.tz = fsub <2 x float> %i.tw, %i.ty           ; 2 uses
  %i.ua = load <2 x float>, ptr %i.tr, align 4    ; 2 uses
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.uc = insertelement <2 x float> %i.ub, float %i.tq, i64 1
  %i.ud = fsub <2 x float> %i.uc, %i.ty           ; 2 uses
  %i.ue = fsub <2 x float> %i.ua, %i.tt           ; 2 uses
  %i.uf = fneg <2 x float> %i.ue
  %i.ug = fmul <2 x float> %i.tz, %i.uf
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tu, <2 x float> %i.ud, <2 x float> %i.ug) ; 2 uses
  %i.ui = extractelement <2 x float> %i.ud, i64 1
  %i.uj = fneg float %i.ui
  %i.uk = extractelement <2 x float> %i.tu, i64 0
  %i.ul = fmul float %i.uk, %i.uj
  %i.um = extractelement <2 x float> %i.tz, i64 1
  %i.un = extractelement <2 x float> %i.ue, i64 0
  %i.uo = call float @llvm.fmuladd.f32(float %i.um, float %i.un, float %i.ul) ; 2 uses
  %i.up = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.uh)
  %i.uq = fcmp ugt <2 x float> %i.up, splat (float f0x358637BD) ; 2 uses
  %i.ur = extractelement <2 x i1> %i.uq, i64 0
  %i.us = extractelement <2 x i1> %i.uq, i64 1
end_hunk_1
begin_hunk_2_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a

_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %._crit_edge.i, %bb.cr, %bb.co
  %.sroa.015.1.i = phi <2 x float> [ %.sroa.0796.01009, %bb.cu ], [ %i.tb, %bb.cr ], [ %i.uh, %._crit_edge.i ], [ zeroinitializer, %bb.cs ], [ zeroinitializer, %bb.co ], [ %i.xg, %bb.cw ], [ %i.vu, %bb.cv ], [ %.sroa.0796.01009, %bb.cx ] ; 4 uses
  %.sroa.31.1.i = phi float [ %.sroa.10801.01008, %bb.cu ], [ %i.ti, %bb.cr ], [ %i.uo, %._crit_edge.i ], [ 1.000000e+00, %bb.cs ], [ 1.000000e+00, %bb.co ], [ %i.xn, %bb.cw ], [ %i.wb, %bb.cv ], [ %.sroa.10801.01008, %bb.cx ] ; 3 uses
  %.sroa.015.0.vec.extract27.i = extractelement <2 x float> %.sroa.015.1.i, i64 0
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.0796.01009, i64 0
  %foldExtExtBinop1398 = fmul <2 x float> %.sroa.0796.01009, %.sroa.015.1.i
  %i.xu = extractelement <2 x float> %foldExtExtBinop1398, i64 1
  %i.xv = call float @llvm.fmuladd.f32(float %.sroa.015.0.vec.extract27.i, float %.sroa.069.0.vec.extract.i, float %i.xu)
  %i.xw = call noundef float @llvm.fmuladd.f32(float %.sroa.31.1.i, float %.sroa.10801.01008, float %i.xv)
  %i.xx = fcmp olt float %i.xw, 0.000000e+00      ; 2 uses
  %i.xy = fneg <2 x float> %.sroa.015.1.i
  %i.xz = fneg float %.sroa.31.1.i
  %.sroa.31.2.i = select i1 %i.xx, float %i.xz, float %.sroa.31.1.i ; 4 uses
  %i.ya = select i1 %i.xx, <2 x float> %i.xy, <2 x float> %.sroa.015.1.i ; 5 uses
  %foldExtExtBinop1400 = fmul <2 x float> %i.ya, %i.ya
  %i.yb = extractelement <2 x float> %foldExtExtBinop1400, i64 1
  %i.yc = extractelement <2 x float> %i.ya, i64 0 ; 2 uses
  %i.yd = call float @llvm.fmuladd.f32(float %i.yc, float %i.yc, float %i.yb)
  %i.ye = call noundef float @llvm.fmuladd.f32(float %.sroa.31.2.i, float %.sroa.31.2.i, float %i.yd) ; 2 uses
  %i.yf = fcmp oeq float %i.ye, 0.000000e+00
  br i1 %i.yf, label %bb.cy, label %_ZN10aiVector3tIfEdVEf.exit.i.i364

_ZN10aiVector3tIfEdVEf.exit.i.i364:               ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i
  %sqrt.i.i.i365 = call noundef float @llvm.sqrt.f32(float %i.ye)
  %i.yg = fdiv float 1.000000e+00, %sqrt.i.i.i365 ; 2 uses
  %i.yh = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.yi = shufflevector <2 x float> %i.yh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yj = fmul <2 x float> %i.ya, %i.yi
  %i.yk = fmul float %.sroa.31.2.i, %i.yg
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, %_ZN10aiVector3tIfEdVEf.exit.i.i364
  %.sroa.015.3.i = phi <2 x float> [ %i.ya, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yj, %_ZN10aiVector3tIfEdVEf.exit.i.i364 ] ; 7 uses
  %.sroa.31.3.i = phi float [ %.sroa.31.2.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yk, %_ZN10aiVector3tIfEdVEf.exit.i.i364 ] ; 5 uses
  %.sroa.0802.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 1
  %.sroa.0796.4.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 1 ; 2 uses
  %.sroa.0796.0.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 0 ; 2 uses
  %.sroa.0802.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 0
  %i.yl = shufflevector <2 x float> %.sroa.015.3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ym = insertelement <2 x float> %i.yl, float %.sroa.31.3.i, i64 1
  %i.yn = fneg <2 x float> %i.ym
  %i.yo = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yp = insertelement <2 x float> %i.yo, float %.sroa.13.1.i, i64 0
  %i.yq = fmul <2 x float> %i.yp, %i.yn
  %i.yr = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <2 x i32> <i32 1, i32 2>
  %i.ys = insertelement <2 x float> poison, float %.sroa.31.3.i, i64 0
  %i.yt = insertelement <2 x float> %i.ys, float %.sroa.13.1.i, i64 1
  %i.yu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.yt, <2 x float> %i.yq) ; 5 uses
  %i.yv = fneg float %.sroa.0796.0.vec.extract
  %i.yw = fmul float %.sroa.0802.4.vec.extract, %i.yv
  %i.yx = call float @llvm.fmuladd.f32(float %.sroa.0802.0.vec.extract, float %.sroa.0796.4.vec.extract, float %i.yw) ; 4 uses
  %foldExtExtBinop1402 = fmul <2 x float> %i.yu, %i.yu
  %i.yy = extractelement <2 x float> %foldExtExtBinop1402, i64 1
  %i.yz = extractelement <2 x float> %i.yu, i64 0 ; 2 uses
  %i.za = call float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.yy)
  %i.zb = call noundef float @llvm.fmuladd.f32(float %i.yx, float %i.yx, float %i.za) ; 2 uses
  %i.zc = fcmp oeq float %i.zb, 0.000000e+00
  br i1 %i.zc, label %bb.cz, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.cy
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.zb)
  %i.zd = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ze = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zg = fmul <2 x float> %i.yu, %i.zf
  %i.zh = fmul float %i.yx, %i.zd
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.cy
  %.sroa.9.0 = phi float [ %i.yx, %bb.cy ], [ %i.zh, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.0758.0 = phi <2 x float> [ %i.yu, %bb.cy ], [ %i.zg, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.zi = load ptr, ptr %13, align 8
  %.idx = shl i64 %.02271010, 4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.idx ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 12
  %i.zl = load float, ptr %i.zk, align 4          ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 4
  %i.zn = load <2 x float>, ptr %i.zj, align 4    ; 3 uses
  %i.zo = load <2 x float>, ptr %i.zm, align 4    ; 2 uses
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.zq = call noundef float @cosf(float noundef %i.zl) #20 ; 4 uses
  %i.zr = call noundef float @sinf(float noundef %i.zl) #20 ; 3 uses
  %i.zs = extractelement <2 x float> %i.zn, i64 0 ; 2 uses
  %i.zt = extractelement <2 x float> %i.zo, i64 1 ; 4 uses
  %i.zu = fmul float %i.zt, %i.zr                 ; 2 uses
  %i.zv = fneg float %i.zu
  %i.zw = extractelement <2 x float> %i.zn, i64 1 ; 3 uses
  %i.zx = fmul float %i.zs, %i.zr                 ; 2 uses
  %i.zy = fneg float %i.zx
  %i.zz = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.aaa = insertelement <4 x float> %i.zz, float %i.zy, i64 1
  %i.aab = load ptr, ptr %16, align 8
  %i.aac = getelementptr inbounds nuw [36 x i8], ptr %i.aab, i64 %.02271010
  %i.aad = shufflevector <2 x float> %.sroa.0758.0, <2 x float> %.sroa.0.1.i, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aae = shufflevector <2 x float> %.sroa.0758.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aaf = shufflevector <2 x float> %.sroa.0758.0, <2 x float> %.sroa.0.1.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.aag = insertelement <4 x float> poison, float %.sroa.9.0, i64 0
  %i.aah = insertelement <4 x float> %i.aag, float %.sroa.13.1.i, i64 1
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aaj = fsub float 1.000000e+00, %i.zq         ; 2 uses
  %i.aak = insertelement <2 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <2 x float> %i.zn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.aam = shufflevector <2 x float> %i.aak, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aan = fmul <4 x float> %i.aal, %i.aam        ; 2 uses
  %i.aao = extractelement <4 x float> %i.aan, i64 2 ; 4 uses
  %i.aap = fmul float %i.zw, %i.zr                ; 2 uses
  %i.aaq = fneg float %i.aap
  %i.aar = insertelement <4 x float> %i.aaa, float %i.aaq, i64 2
  %i.aas = insertelement <4 x float> %i.aar, float %i.zx, i64 3
  %i.aat = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aan, <4 x float> %i.zp, <4 x float> %i.aas) ; 8 uses
  %i.aau = extractelement <4 x float> %i.aat, i64 3
  %i.aav = extractelement <4 x float> %i.aat, i64 2
  %i.aaw = call float @llvm.fmuladd.f32(float %i.aao, float %i.zs, float %i.zq) ; 3 uses
  %i.aax = call float @llvm.fmuladd.f32(float %i.aao, float %i.zw, float %i.zv) ; 2 uses
  %i.aay = call float @llvm.fmuladd.f32(float %i.aao, float %i.zt, float %i.aap) ; 2 uses
  %i.aaz = call float @llvm.fmuladd.f32(float %i.aao, float %i.zw, float %i.zu) ; 2 uses
  %i.aba = fmul float %i.zt, %i.aaj
  %i.abb = call float @llvm.fmuladd.f32(float %i.aba, float %i.zt, float %i.zq) ; 3 uses
  %i.abc = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.abd = insertelement <4 x float> poison, float %i.aax, i64 0
  %i.abe = shufflevector <4 x float> %i.abd, <4 x float> %i.aat, <4 x i32> <i32 0, i32 4, i32 7, i32 0>
  %i.abf = fmul <4 x float> %i.aad, %i.abe
  %i.abg = shufflevector <4 x float> %i.aae, <4 x float> %i.aat, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.abh = insertelement <4 x float> %i.abg, float %i.aaw, i64 3
  %i.abi = insertelement <4 x float> %i.aaf, float %i.aaw, i64 0
  %i.abj = insertelement <4 x float> %i.abi, float %i.aaz, i64 1
  %i.abk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abh, <4 x float> %i.abj, <4 x float> %i.abf)
  %i.abl = insertelement <4 x float> %i.aat, float %i.aay, i64 0
  %i.abm = insertelement <4 x float> %i.abl, float %i.abb, i64 2
  %i.abn = shufflevector <4 x float> %i.abm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.abo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abn, <4 x float> %i.aai, <4 x float> %i.abk)
  %i.abp = fadd <4 x float> %i.abo, zeroinitializer ; 4 uses
  %i.abq = extractelement <4 x float> %i.abp, i64 0
  store float %i.abq, ptr %i.aac, align 4
  %i.abr = load ptr, ptr %16, align 8
  %i.abs = getelementptr inbounds nuw [36 x i8], ptr %i.abr, i64 %.02271010
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.abu = extractelement <4 x float> %i.abp, i64 1
  store float %i.abu, ptr %i.abt, align 4
  %i.abv = load ptr, ptr %16, align 8
  %i.abw = getelementptr inbounds nuw [36 x i8], ptr %i.abv, i64 %.02271010
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.aby = extractelement <4 x float> %i.abp, i64 2
  store float %i.aby, ptr %i.abx, align 4
  %i.abz = load ptr, ptr %16, align 8
  %i.aca = getelementptr inbounds nuw [36 x i8], ptr %i.abz, i64 %.02271010
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 12
  %i.acc = extractelement <4 x float> %i.abp, i64 3
  store float %i.acc, ptr %i.acb, align 4
  %i.acd = load ptr, ptr %16, align 8
  %i.ace = getelementptr inbounds nuw [36 x i8], ptr %i.acd, i64 %.02271010
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %i.acg = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.ach = insertelement <4 x float> %i.abc, float %i.aax, i64 1
  %i.aci = fmul <4 x float> %i.acg, %i.ach
  %i.acj = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ack = shufflevector <4 x float> %i.acj, <4 x float> %i.aat, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.acl = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.acm = insertelement <4 x float> %i.acl, float %i.aaz, i64 0
  %i.acn = insertelement <4 x float> %i.acm, float %i.aaw, i64 1
  %i.aco = shufflevector <4 x float> %i.acn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.acp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ack, <4 x float> %i.aco, <4 x float> %i.aci)
  %i.acq = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 1>
  %i.acr = insertelement <4 x float> %i.acq, float %i.aay, i64 1
  %i.acs = insertelement <4 x float> %i.acr, float %i.abb, i64 2
  %i.act = insertelement <4 x float> poison, float %.sroa.13.1.i, i64 0
  %i.acu = insertelement <4 x float> %i.act, float %.sroa.31.3.i, i64 1
  %i.acv = shufflevector <4 x float> %i.acu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.acw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acs, <4 x float> %i.acv, <4 x float> %i.acp)
  %i.acx = fadd <4 x float> %i.acw, zeroinitializer ; 4 uses
  %i.acy = extractelement <4 x float> %i.acx, i64 0
  store float %i.acy, ptr %i.acf, align 4
  %i.acz = load ptr, ptr %16, align 8
  %i.ada = getelementptr inbounds nuw [36 x i8], ptr %i.acz, i64 %.02271010
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 20
  %i.adc = extractelement <4 x float> %i.acx, i64 2
  store float %i.adc, ptr %i.adb, align 4
  %i.add = fmul float %.sroa.0796.4.vec.extract, %i.aau
  %i.ade = call float @llvm.fmuladd.f32(float %i.aav, float %.sroa.0796.0.vec.extract, float %i.add)
  %i.adf = call float @llvm.fmuladd.f32(float %i.abb, float %.sroa.31.3.i, float %i.ade)
  %i.adg = fadd float %i.adf, 0.000000e+00
  %i.adh = load ptr, ptr %16, align 8
  %i.adi = getelementptr inbounds nuw [36 x i8], ptr %i.adh, i64 %.02271010
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 24
  %i.adk = extractelement <4 x float> %i.acx, i64 1
  store float %i.adk, ptr %i.adj, align 4
  %i.adl = load ptr, ptr %16, align 8
  %i.adm = getelementptr inbounds nuw [36 x i8], ptr %i.adl, i64 %.02271010
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 28
  %i.ado = extractelement <4 x float> %i.acx, i64 3
  store float %i.ado, ptr %i.adn, align 4
  %i.adp = load ptr, ptr %16, align 8
  %i.adq = getelementptr inbounds nuw [36 x i8], ptr %i.adp, i64 %.02271010
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 32
  store float %i.adg, ptr %i.adr, align 4
  %i.ads = add nuw i64 %.02271010, 1              ; 2 uses
  %exitcond1061.not = icmp eq i64 %i.ads, %.pre-phi1153
  br i1 %exitcond1061.not, label %._crit_edge, label %.lr.ph1011, !llvm.loop !40

bb.da:                                            ; preds = %.noexc362, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.pu, %.noexc362 ]
  %.0.lcssa.i.i.i.i.i360 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc362 ]
  %i.adt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.adu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.adu, align 8
  store ptr %.0.lcssa.i.i.i.i.i360, ptr %i.adt, align 8
  %i.adv = load ptr, ptr %i.av, align 8
  %i.adw = load ptr, ptr %15, align 8
  %i.adx = ptrtoint ptr %i.adv to i64
  %i.ady = ptrtoint ptr %i.adw to i64
  %i.adz = sub i64 %i.adx, %i.ady
  %i.aea = sdiv exact i64 %i.adz, 12              ; 5 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 7 uses
  %i.aed = load ptr, ptr %17, align 8             ; 10 uses
  %i.aee = ptrtoint ptr %i.aec to i64             ; 2 uses
  %i.aef = ptrtoint ptr %i.aed to i64             ; 2 uses
  %i.aeg = sub i64 %i.aee, %i.aef                 ; 2 uses
  %i.aeh = sdiv exact i64 %i.aeg, 24              ; 7 uses
  %i.aei = icmp ugt i64 %i.aea, %i.aeh
  br i1 %i.aei, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.aej = sub nuw nsw i64 %i.aea, %i.aeh         ; 5 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ael = load ptr, ptr %i.aek, align 8
  %i.aem = ptrtoint ptr %i.ael to i64             ; 2 uses
  %i.aen = sub i64 %i.aem, %i.aee
  %i.aeo = sdiv exact i64 %i.aen, 24              ; 2 uses
  %i.aep = icmp ult i64 %i.aeh, 384307168202282326
  call void @llvm.assume(i1 %i.aep)
  %i.aeq = sub nuw nsw i64 384307168202282325, %i.aeh
  %i.aer = icmp ule i64 %i.aeo, %i.aeq
  call void @llvm.assume(i1 %i.aer)
  %.not28.i673 = icmp ult i64 %i.aeo, %i.aej
  br i1 %.not28.i673, label %bb.dc, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.db
  %i.aes = mul nuw nsw i64 %i.aej, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.aec, i8 0, i64 %i.aes, i1 false)
  %scevgep.i.i.i.i674 = getelementptr i8, ptr %i.aec, i64 %i.aes
  store ptr %scevgep.i.i.i.i674, ptr %i.aeb, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.dc:                                            ; preds = %bb.db
  %i.aet = icmp ugt i64 %i.aea, 384307168202282325
  br i1 %i.aet, label %bb.dd, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc682 unwind label %bb.dk

.noexc682:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dc
  %.sroa.speculated.i.i675 = call i64 @llvm.umax.i64(i64 %i.aeh, i64 %i.aej)
  %i.aeu = add nuw nsw i64 %.sroa.speculated.i.i675, %i.aeh
  %i.aev = call i64 @llvm.umin.i64(i64 %i.aeu, i64 384307168202282325) ; 2 uses
  %i.aew = mul nuw nsw i64 %i.aev, 24
  %i.aex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aew) #21
          to label %.noexc683 unwind label %bb.dk ; 5 uses

.noexc683:                                        ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.aeg ; 2 uses
  %i.aez = mul nuw nsw i64 %i.aej, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aey, i8 0, i64 %i.aez, i1 false)
  %.not10.i.i.i.i676 = icmp eq ptr %i.aed, %i.aec
  br i1 %.not10.i.i.i.i676, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677

.lr.ph.i.i.i.i677:                                ; preds = %.noexc683, %.lr.ph.i.i.i.i677
  %.012.i.i.i.i678 = phi ptr [ %i.aff, %.lr.ph.i.i.i.i677 ], [ %i.aex, %.noexc683 ] ; 3 uses
  %.0911.i.i.i.i679 = phi ptr [ %i.afe, %.lr.ph.i.i.i.i677 ], [ %i.aed, %.noexc683 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.afa = load <2 x ptr>, ptr %.0911.i.i.i.i679, align 8, !alias.scope !59, !noalias !58
  store <2 x ptr> %i.afa, ptr %.012.i.i.i.i678, align 8, !alias.scope !58, !noalias !59
  %i.afb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 16
  %i.afc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !alias.scope !59, !noalias !58
  store ptr %i.afd, ptr %i.afb, align 8, !alias.scope !58, !noalias !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i679, i8 0, i64 24, i1 false), !alias.scope !59, !noalias !58
  %i.afe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 24 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 24
  %.not.i.i.i.i680 = icmp eq ptr %i.afe, %i.aec
  br i1 %.not.i.i.i.i680, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677, !llvm.loop !44

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i677, %.noexc683
  %.not.i36.i681 = icmp eq ptr %i.aed, null
  br i1 %.not.i36.i681, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.afg = sub i64 %i.aem, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %i.aed, i64 noundef %i.afg) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i: ; preds = %bb.de, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.aex, ptr %17, align 8
  %i.afh = getelementptr inbounds nuw [24 x i8], ptr %i.aey, i64 %i.aej
  store ptr %i.afh, ptr %i.aeb, align 8
  %i.afi = getelementptr inbounds nuw [24 x i8], ptr %i.aex, i64 %i.aev
  store ptr %i.afi, ptr %i.aek, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.df:                                            ; preds = %bb.da
  %i.afj = icmp ult i64 %i.aea, %i.aeh
  br i1 %i.afj, label %bb.dg, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.dg:                                            ; preds = %bb.df
  %i.afk = getelementptr inbounds nuw [24 x i8], ptr %i.aed, i64 %i.aea ; 3 uses
  %.not.i.i376 = icmp eq ptr %i.aec, %i.afk
  br i1 %.not.i.i376, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i377

.lr.ph.i.i.i.i377:                                ; preds = %bb.dg, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.afr, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.afk, %bb.dg ] ; 3 uses
  %i.afl = load ptr, ptr %.05.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.afl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i377
  %i.afm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.afn = load ptr, ptr %i.afm, align 8
  %i.afo = ptrtoint ptr %i.afn to i64
  %i.afp = ptrtoint ptr %i.afl to i64
  %i.afq = sub i64 %i.afo, %i.afp
  call void @_ZdlPvm(ptr noundef nonnull %i.afl, i64 noundef %i.afq) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.dh, %.lr.ph.i.i.i.i377
  %i.afr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i378 = icmp eq ptr %i.afr, %i.aec
  br i1 %.not.i.i.i.i378, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i377, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.afk, ptr %i.aeb, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.dg, %bb.df, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i
  %i.afs = phi ptr [ %i.aed, %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.aed, %bb.dg ], [ %i.aed, %bb.df ], [ %i.aex, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i ], [ %i.aed, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i ]
  %i.aft = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.afu = load ptr, ptr %15, align 8             ; 2 uses
  %.not1043 = icmp eq ptr %i.aft, %i.afu
  br i1 %.not1043, label %._crit_edge1018, label %.lr.ph1017.preheader

.lr.ph1017.preheader:                             ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.afv = ptrtoint ptr %i.aft to i64
  %i.afw = ptrtoint ptr %i.afu to i64
  %i.afx = sub i64 %i.afv, %i.afw
  %i.afy = sdiv exact i64 %i.afx, 12
  br label %.lr.ph1017

._crit_edge1018:                                  ; preds = %bb.dm, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.afz = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %._crit_edge1018
  %i.aga = load ptr, ptr %i.adu, align 8
  %i.agb = ptrtoint ptr %i.aga to i64
  %i.agc = ptrtoint ptr %i.afz to i64
  %i.agd = sub i64 %i.agb, %i.agc
  call void @_ZdlPvm(ptr noundef nonnull %i.afz, i64 noundef %i.agd) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %._crit_edge1018, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.age = trunc nuw i8 %.08771357 to i1
  br i1 %i.age, label %bb.dn, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.dj:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cf
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit402

bb.dk:                                            ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.dd
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.lr.ph1017:                                       ; preds = %.lr.ph1017.preheader, %bb.dm
  %.02301016 = phi i64 [ %i.ajf, %bb.dm ], [ 0, %.lr.ph1017.preheader ] ; 5 uses
  %i.agh = load ptr, ptr %14, align 8
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.agh, i64 %.02301016 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %i.agk = load float, ptr %i.agj, align 4
  %i.agl = load ptr, ptr %i.cb, align 8           ; 2 uses
  %i.agm = load ptr, ptr %12, align 8             ; 2 uses
  %.not1044 = icmp eq ptr %i.agl, %i.agm
  br i1 %.not1044, label %._crit_edge1015, label %.lr.ph1014.preheader

.lr.ph1014.preheader:                             ; preds = %.lr.ph1017
  %i.agn = load float, ptr %i.agi, align 4
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = ptrtoint ptr %i.agm to i64
  %i.agq = sub i64 %i.ago, %i.agp
  %i.agr = ashr exact i64 %i.agq, 3
  %i.ags = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agn, i64 0
  br label %.lr.ph1014

._crit_edge1015:                                  ; preds = %.lr.ph1014, %.lr.ph1017
  %i.agt = getelementptr inbounds nuw [24 x i8], ptr %i.afs, i64 %.02301016
  %i.agu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.agt, ptr noundef nonnull align 8 dereferenceable(24) %18)
end_hunk_2
