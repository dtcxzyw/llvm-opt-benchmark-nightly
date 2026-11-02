Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter17readElevationGridERN4pugi8xml_nodeE:bb.a
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, ptr noundef nonnull align 8 dereferenceable(24) %i.sc) #20
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 64 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8
  %i.sg = add i64 %i.sf, 1
  store i64 %i.sg, ptr %i.se, align 8
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %bb.cw
  %i.sh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305 unwind label %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305: ; preds = %bb.do
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  store ptr %i.br, ptr %i.sj, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.sh, ptr noundef nonnull align 8 dereferenceable(24) %i.si) #20
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8
  %i.sm = add i64 %i.sl, 1
  store i64 %i.sm, ptr %i.sk, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %bb.x, %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit305
  %i.sn = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.so = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.sp = load ptr, ptr %i.so, align 8
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = ptrtoint ptr %i.sn to i64
  %i.ss = sub i64 %i.sq, %i.sr
  call void @_ZdlPvm(ptr noundef nonnull %i.sn, i64 noundef %i.ss) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.st = load ptr, ptr %14, align 8              ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.d
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.sv = load i64, ptr %i.d, align 8
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.sx = load ptr, ptr %13, align 8              ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.b
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.sz = load i64, ptr %i.b, align 8
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret void

.loopexit.split-lp395:                            ; preds = %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dm, %bb.ad, %bb.aa
  %.pn110 = phi { ptr, i32 } [ %.pn103, %bb.dm ], [ %i.bd, %bb.aa ], [ %i.bh, %bb.ad ], [ %lpad.loopexit.split-lp592, %.loopexit.split-lp395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.tb = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i312 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i312, label %_ZNSt6vectorIfSaIfEED2Ev.exit313, label %bb.dr

bb.dr:                                            ; preds = %.loopexit.split-lp395
  %i.tc = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tb to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tb, i64 noundef %i.tg) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit313

_ZNSt6vectorIfSaIfEED2Ev.exit313:                 ; preds = %.loopexit.split-lp395, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.th = load ptr, ptr %14, align 8              ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.d
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313
  %i.tj = load i64, ptr %i.d, align 8
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.tl = load ptr, ptr %13, align 8              ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.b
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %i.tn = load i64, ptr %i.b, align 8
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #22
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
          to label %.noexc unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %9, align 8
  %i.f = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc259 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc259:                                        ; preds = %.noexc
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc259
  %i.g = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.55)
          to label %.noexc260 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc260:                                        ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #20
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.g, i64 noundef %i.i)
          to label %bb.c unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %.noexc259, %.noexc260
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.k = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc263 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc263:                                        ; preds = %bb.c
  store ptr %i.k, ptr %8, align 8
  %i.l = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc264 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc264:                                        ; preds = %.noexc263
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc264
  %i.m = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.55)
          to label %.noexc265 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc265:                                        ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #20
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.e unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.noexc264, %.noexc265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29)
          to label %.noexc269 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc269:                                        ; preds = %bb.e
  store ptr %i.q, ptr %7, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc270 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc270:                                        ; preds = %.noexc269
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc270
  %i.s = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %.noexc271 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc271:                                        ; preds = %bb.f
  %i.t = zext i1 %i.s to i8
  br label %bb.g

bb.g:                                             ; preds = %.noexc271, %.noexc270
  %.1 = phi i8 [ 1, %.noexc270 ], [ %i.t, %.noexc271 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.u = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13)
          to label %.noexc273 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc273:                                        ; preds = %bb.g
  store ptr %i.u, ptr %6, align 8
  %i.v = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc274 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc274:                                        ; preds = %.noexc273
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc274
  %i.w = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %.noexc275 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc275:                                        ; preds = %bb.h
  %i.x = zext i1 %i.w to i8
  br label %bb.i

bb.i:                                             ; preds = %.noexc275, %.noexc274
  %.0878 = phi i8 [ 1, %.noexc274 ], [ %i.x, %.noexc275 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30)
          to label %.noexc278 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc278:                                        ; preds = %bb.i
  store ptr %i.y, ptr %5, align 8
  %i.z = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc279 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %.noexc278
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc279
  %i.aa = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %.noexc280 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc280:                                        ; preds = %bb.j
  %i.ab = zext i1 %i.aa to i8
  br label %bb.k

bb.k:                                             ; preds = %.noexc280, %.noexc279
  %.0885 = phi i8 [ 1, %.noexc279 ], [ %i.ab, %.noexc280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ac = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16)
          to label %.noexc283 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc283:                                        ; preds = %bb.k
  store ptr %i.ac, ptr %4, align 8
  %i.ad = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc284 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc284:                                        ; preds = %.noexc283
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc284
  %i.ae = invoke noundef float @_ZNK4pugi13xml_attribute8as_floatEf(ptr noundef nonnull align 8 dereferenceable(8) %4, float noundef 0.000000e+00)
          to label %bb.m unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.noexc284, %bb.l
  %.0884 = phi float [ 0.000000e+00, %.noexc284 ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.af = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper25getVector2DArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorI10aiVector2tIfESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.n unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ag = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32)
          to label %.noexc287 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc287:                                        ; preds = %bb.n
  store ptr %i.ag, ptr %3, align 8
  %i.ah = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc288 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc288:                                        ; preds = %.noexc287
  br i1 %i.ah, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc288
  %i.ai = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute7as_boolEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
          to label %.noexc289 unwind label %.loopexit.split-lp903.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %bb.o
  %i.aj = zext i1 %i.ai to i8
  br label %bb.p

bb.p:                                             ; preds = %.noexc289, %.noexc288
  %.1883 = phi i8 [ 1, %.noexc288 ], [ %i.aj, %.noexc289 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.tw = load <2 x float>, ptr %i.tn, align 4    ; 2 uses
  %i.tx = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ty = insertelement <2 x float> %i.tx, float %i.tm, i64 1
  %i.tz = fsub <2 x float> %i.ty, %i.tu           ; 2 uses
  %i.ua = fsub <2 x float> %i.tw, %i.tp           ; 2 uses
  %i.ub = fneg <2 x float> %i.ua
  %i.uc = fmul <2 x float> %i.tv, %i.ub
  %i.ud = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tq, <2 x float> %i.tz, <2 x float> %i.uc) ; 2 uses
  %i.ue = extractelement <2 x float> %i.tz, i64 1
  %i.uf = fneg float %i.ue
  %i.ug = extractelement <2 x float> %i.tq, i64 0
  %i.uh = fmul float %i.ug, %i.uf
  %i.ui = extractelement <2 x float> %i.tv, i64 1
  %i.uj = extractelement <2 x float> %i.ua, i64 0
  %i.uk = call float @llvm.fmuladd.f32(float %i.ui, float %i.uj, float %i.uh) ; 2 uses
  %i.ul = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ud)
  %i.um = fcmp ugt <2 x float> %i.ul, splat (float f0x358637BD) ; 2 uses
  %i.un = extractelement <2 x i1> %i.um, i64 0
  %i.uo = extractelement <2 x i1> %i.um, i64 1
  %or.cond.not.not91.i = select i1 %i.un, i1 true, i1 %i.uo
  %i.up = call float @llvm.fabs.f32(float %i.uk)
  %i.uq = fcmp ugt float %i.up, f0x358637BD
  %.not88.i = select i1 %or.cond.not.not91.i, i1 true, i1 %i.uq ; 2 uses
  %i.ur = add nuw i64 %.010292.i, 1
  %i.us = icmp uge i64 %.010292.i, %i.pw
  %.not104.i = or i1 %i.us, %.not88.i
  br i1 %.not104.i, label %._crit_edge.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i, !llvm.loop !39

bb.ch:                                            ; preds = %._crit_edge.i
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.ci:                                            ; preds = %bb.ce
  br i1 %i.py, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.pf, label %bb.ck, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.ck:                                            ; preds = %bb.cj
  %i.ut = getelementptr [12 x i8], ptr %.val, i64 %.0227925 ; 4 uses
  %i.uu = load float, ptr %.val, align 4
  %i.uv = load float, ptr %i.ut, align 4
  %i.uw = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.uy = getelementptr i8, ptr %i.ut, i64 -12
  %i.uz = load float, ptr %i.uy, align 4
  %i.va = getelementptr i8, ptr %i.ut, i64 -8
  %i.vb = load <2 x float>, ptr %i.uw, align 4    ; 2 uses
  %i.vc = load <2 x float>, ptr %i.ux, align 4    ; 3 uses
  %i.vd = fsub <2 x float> %i.vb, %i.vc           ; 2 uses
  %i.ve = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vf = insertelement <2 x float> %i.ve, float %i.uu, i64 1
  %i.vg = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vh = insertelement <2 x float> %i.vg, float %i.uv, i64 1 ; 2 uses
  %i.vi = fsub <2 x float> %i.vf, %i.vh           ; 2 uses
  %i.vj = load <2 x float>, ptr %i.va, align 4    ; 2 uses
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vl = insertelement <2 x float> %i.vk, float %i.uz, i64 1
  %i.vm = fsub <2 x float> %i.vl, %i.vh           ; 2 uses
  %i.vn = fsub <2 x float> %i.vj, %i.vc           ; 2 uses
  %i.vo = fneg <2 x float> %i.vn
  %i.vp = fmul <2 x float> %i.vi, %i.vo
  %i.vq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> %i.vm, <2 x float> %i.vp) ; 2 uses
  %i.vr = extractelement <2 x float> %i.vm, i64 1
  %i.vs = fneg float %i.vr
  %i.vt = extractelement <2 x float> %i.vd, i64 0
  %i.vu = fmul float %i.vt, %i.vs
  %i.vv = extractelement <2 x float> %i.vi, i64 1
  %i.vw = extractelement <2 x float> %i.vn, i64 0
  %i.vx = call float @llvm.fmuladd.f32(float %i.vv, float %i.vw, float %i.vu) ; 2 uses
  %i.vy = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vq)
  %i.vz = fcmp ole <2 x float> %i.vy, splat (float f0x358637BD) ; 2 uses
  %i.wa = extractelement <2 x i1> %i.vz, i64 0
  %i.wb = extractelement <2 x i1> %i.vz, i64 1
  %or.cond76.not86.i = select i1 %i.wa, i1 %i.wb, i1 false
  %i.wc = call float @llvm.fabs.f32(float %i.vx)
  %i.wd = fcmp ole float %i.wc, f0x358637BD
  %or.cond78.i = select i1 %or.cond76.not86.i, i1 %i.wd, i1 false
  br i1 %or.cond78.i, label %bb.cm, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cl:                                            ; preds = %bb.ci
  %i.we = getelementptr [12 x i8], ptr %.val, i64 %.0227925 ; 6 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 12
  %i.wg = load float, ptr %i.wf, align 4
  %i.wh = load float, ptr %i.we, align 4
  %i.wi = getelementptr i8, ptr %i.we, i64 16
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wk = getelementptr i8, ptr %i.we, i64 -12
  %i.wl = load float, ptr %i.wk, align 4
  %i.wm = getelementptr i8, ptr %i.we, i64 -8
  %i.wn = load <2 x float>, ptr %i.wi, align 4    ; 2 uses
  %i.wo = load <2 x float>, ptr %i.wj, align 4    ; 3 uses
  %i.wp = fsub <2 x float> %i.wn, %i.wo           ; 2 uses
  %i.wq = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wr = insertelement <2 x float> %i.wq, float %i.wg, i64 1
  %i.ws = shufflevector <2 x float> %i.wo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wt = insertelement <2 x float> %i.ws, float %i.wh, i64 1 ; 2 uses
  %i.wu = fsub <2 x float> %i.wr, %i.wt           ; 2 uses
  %i.wv = load <2 x float>, ptr %i.wm, align 4    ; 2 uses
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wx = insertelement <2 x float> %i.ww, float %i.wl, i64 1
  %i.wy = fsub <2 x float> %i.wx, %i.wt           ; 2 uses
  %i.wz = fsub <2 x float> %i.wv, %i.wo           ; 2 uses
  %i.xa = fneg <2 x float> %i.wz
  %i.xb = fmul <2 x float> %i.wu, %i.xa
  %i.xc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wp, <2 x float> %i.wy, <2 x float> %i.xb) ; 2 uses
  %i.xd = extractelement <2 x float> %i.wy, i64 1
  %i.xe = fneg float %i.xd
  %i.xf = extractelement <2 x float> %i.wp, i64 0
  %i.xg = fmul float %i.xf, %i.xe
  %i.xh = extractelement <2 x float> %i.wu, i64 1
  %i.xi = extractelement <2 x float> %i.wz, i64 0
  %i.xj = call float @llvm.fmuladd.f32(float %i.xh, float %i.xi, float %i.xg) ; 2 uses
  %i.xk = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xc)
  %i.xl = fcmp ole <2 x float> %i.xk, splat (float f0x358637BD) ; 2 uses
  %i.xm = extractelement <2 x i1> %i.xl, i64 0
  %i.xn = extractelement <2 x i1> %i.xl, i64 1
  %or.cond80.not84.i = select i1 %i.xm, i1 %i.xn, i1 false
  %i.xo = call float @llvm.fabs.f32(float %i.xj)
  %i.xp = fcmp ole float %i.xo, f0x358637BD
  %or.cond82.i = select i1 %or.cond80.not84.i, i1 %i.xp, i1 false
  br i1 %or.cond82.i, label %bb.cm, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ch, %._crit_edge.i, %bb.cg, %bb.cd
  %.sroa.015.1.i = phi <2 x float> [ %.sroa.0796.0924, %bb.cj ], [ %i.sx, %bb.cg ], [ %i.ud, %._crit_edge.i ], [ zeroinitializer, %bb.ch ], [ zeroinitializer, %bb.cd ], [ %i.xc, %bb.cl ], [ %i.vq, %bb.ck ], [ %.sroa.0796.0924, %bb.cm ] ; 4 uses
  %.sroa.31.1.i = phi float [ %.sroa.10801.0923, %bb.cj ], [ %i.te, %bb.cg ], [ %i.uk, %._crit_edge.i ], [ 1.000000e+00, %bb.ch ], [ 1.000000e+00, %bb.cd ], [ %i.xj, %bb.cl ], [ %i.vx, %bb.ck ], [ %.sroa.10801.0923, %bb.cm ] ; 3 uses
  %.sroa.015.0.vec.extract27.i = extractelement <2 x float> %.sroa.015.1.i, i64 0
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.0796.0924, i64 0
  %foldExtExtBinop1354 = fmul <2 x float> %.sroa.0796.0924, %.sroa.015.1.i
  %i.xq = extractelement <2 x float> %foldExtExtBinop1354, i64 1
  %i.xr = call float @llvm.fmuladd.f32(float %.sroa.015.0.vec.extract27.i, float %.sroa.069.0.vec.extract.i, float %i.xq)
  %i.xs = call noundef float @llvm.fmuladd.f32(float %.sroa.31.1.i, float %.sroa.10801.0923, float %i.xr)
  %i.xt = fcmp olt float %i.xs, 0.000000e+00      ; 2 uses
  %i.xu = fneg <2 x float> %.sroa.015.1.i
  %i.xv = fneg float %.sroa.31.1.i
  %.sroa.31.2.i = select i1 %i.xt, float %i.xv, float %.sroa.31.1.i ; 4 uses
  %i.xw = select i1 %i.xt, <2 x float> %i.xu, <2 x float> %.sroa.015.1.i ; 5 uses
  %foldExtExtBinop1356 = fmul <2 x float> %i.xw, %i.xw
  %i.xx = extractelement <2 x float> %foldExtExtBinop1356, i64 1
  %i.xy = extractelement <2 x float> %i.xw, i64 0 ; 2 uses
  %i.xz = call float @llvm.fmuladd.f32(float %i.xy, float %i.xy, float %i.xx)
  %i.ya = call noundef float @llvm.fmuladd.f32(float %.sroa.31.2.i, float %.sroa.31.2.i, float %i.xz) ; 2 uses
  %i.yb = fcmp oeq float %i.ya, 0.000000e+00
  br i1 %i.yb, label %bb.cn, label %_ZN10aiVector3tIfEdVEf.exit.i.i364

_ZN10aiVector3tIfEdVEf.exit.i.i364:               ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i
  %sqrt.i.i.i365 = call noundef float @llvm.sqrt.f32(float %i.ya)
  %i.yc = fdiv float 1.000000e+00, %sqrt.i.i.i365 ; 2 uses
  %i.yd = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yf = fmul <2 x float> %i.xw, %i.ye
  %i.yg = fmul float %.sroa.31.2.i, %i.yc
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, %_ZN10aiVector3tIfEdVEf.exit.i.i364
  %.sroa.015.3.i = phi <2 x float> [ %i.xw, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yf, %_ZN10aiVector3tIfEdVEf.exit.i.i364 ] ; 7 uses
  %.sroa.31.3.i = phi float [ %.sroa.31.2.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yg, %_ZN10aiVector3tIfEdVEf.exit.i.i364 ] ; 5 uses
  %.sroa.0802.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 1
  %.sroa.0796.4.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 1 ; 2 uses
  %.sroa.0796.0.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 0 ; 2 uses
  %.sroa.0802.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 0
  %i.yh = shufflevector <2 x float> %.sroa.015.3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yi = insertelement <2 x float> %i.yh, float %.sroa.31.3.i, i64 1
  %i.yj = fneg <2 x float> %i.yi
  %i.yk = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yl = insertelement <2 x float> %i.yk, float %.sroa.13.1.i, i64 0
  %i.ym = fmul <2 x float> %i.yl, %i.yj
  %i.yn = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <2 x i32> <i32 1, i32 2>
  %i.yo = insertelement <2 x float> poison, float %.sroa.31.3.i, i64 0
  %i.yp = insertelement <2 x float> %i.yo, float %.sroa.13.1.i, i64 1
  %i.yq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yn, <2 x float> %i.yp, <2 x float> %i.ym) ; 5 uses
  %i.yr = fneg float %.sroa.0796.0.vec.extract
  %i.ys = fmul float %.sroa.0802.4.vec.extract, %i.yr
  %i.yt = call float @llvm.fmuladd.f32(float %.sroa.0802.0.vec.extract, float %.sroa.0796.4.vec.extract, float %i.ys) ; 4 uses
  %foldExtExtBinop1358 = fmul <2 x float> %i.yq, %i.yq
  %i.yu = extractelement <2 x float> %foldExtExtBinop1358, i64 1
  %i.yv = extractelement <2 x float> %i.yq, i64 0 ; 2 uses
  %i.yw = call float @llvm.fmuladd.f32(float %i.yv, float %i.yv, float %i.yu)
  %i.yx = call noundef float @llvm.fmuladd.f32(float %i.yt, float %i.yt, float %i.yw) ; 2 uses
  %i.yy = fcmp oeq float %i.yx, 0.000000e+00
  br i1 %i.yy, label %bb.co, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.cn
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.yx)
  %i.yz = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.za = insertelement <2 x float> poison, float %i.yz, i64 0
  %i.zb = shufflevector <2 x float> %i.za, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zc = fmul <2 x float> %i.yq, %i.zb
  %i.zd = fmul float %i.yt, %i.yz
  br label %bb.co

bb.co:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.cn
  %.sroa.9.0 = phi float [ %i.yt, %bb.cn ], [ %i.zd, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.0758.0 = phi <2 x float> [ %i.yq, %bb.cn ], [ %i.zc, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.ze = load ptr, ptr %13, align 8
  %.idx = shl i64 %.0227925, 4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 %.idx ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 12
  %i.zh = load float, ptr %i.zg, align 4          ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  %i.zj = load <2 x float>, ptr %i.zf, align 4    ; 3 uses
  %i.zk = load <2 x float>, ptr %i.zi, align 4    ; 2 uses
  %i.zl = shufflevector <2 x float> %i.zk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %20 = call noundef float @cosf(float noundef %i.zh) #20 ; 4 uses
  %21 = call noundef float @sinf(float noundef %i.zh) #20 ; 3 uses
  %i.zm = extractelement <2 x float> %i.zj, i64 0 ; 2 uses
  %i.zn = extractelement <2 x float> %i.zk, i64 1 ; 4 uses
  %i.zo = fmul float %i.zn, %21                   ; 2 uses
  %i.zp = fneg float %i.zo
  %i.zq = extractelement <2 x float> %i.zj, i64 1 ; 3 uses
  %i.zr = fmul float %i.zm, %21                   ; 2 uses
  %i.zs = fneg float %i.zr
  %i.zt = insertelement <4 x float> poison, float %20, i64 0
  %i.zu = insertelement <4 x float> %i.zt, float %i.zs, i64 1
  %i.zv = load ptr, ptr %16, align 8
  %i.zw = getelementptr inbounds nuw [36 x i8], ptr %i.zv, i64 %.0227925
  %i.zx = shufflevector <2 x float> %.sroa.0758.0, <2 x float> %.sroa.0.1.i, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.zy = shufflevector <2 x float> %.sroa.0758.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.zz = shufflevector <2 x float> %.sroa.0758.0, <2 x float> %.sroa.0.1.i, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.aaa = insertelement <4 x float> poison, float %.sroa.9.0, i64 0
  %i.aab = insertelement <4 x float> %i.aaa, float %.sroa.13.1.i, i64 1
  %i.aac = shufflevector <4 x float> %i.aab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aad = fsub float 1.000000e+00, %20           ; 2 uses
  %i.aae = insertelement <2 x float> poison, float %i.aad, i64 0
  %i.aaf = shufflevector <2 x float> %i.zj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.aag = shufflevector <2 x float> %i.aae, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aah = fmul <4 x float> %i.aaf, %i.aag        ; 2 uses
  %i.aai = extractelement <4 x float> %i.aah, i64 2 ; 4 uses
  %22 = fmul float %i.zq, %21                     ; 2 uses
  %23 = fneg float %22
  %24 = insertelement <4 x float> %i.zu, float %23, i64 2
  %25 = insertelement <4 x float> %24, float %i.zr, i64 3
  %i.aaj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aah, <4 x float> %i.zl, <4 x float> %25) ; 8 uses
  %i.aak = extractelement <4 x float> %i.aaj, i64 3
  %i.aal = extractelement <4 x float> %i.aaj, i64 2
  %i.aam = call float @llvm.fmuladd.f32(float %i.aai, float %i.zm, float %20) ; 3 uses
  %i.aan = call float @llvm.fmuladd.f32(float %i.aai, float %i.zq, float %i.zp) ; 2 uses
  %i.aao = call float @llvm.fmuladd.f32(float %i.aai, float %i.zn, float %22) ; 2 uses
  %i.aap = call float @llvm.fmuladd.f32(float %i.aai, float %i.zq, float %i.zo) ; 2 uses
  %i.aaq = fmul float %i.zn, %i.aad
  %i.aar = call float @llvm.fmuladd.f32(float %i.aaq, float %i.zn, float %20) ; 3 uses
  %i.aas = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.aat = insertelement <4 x float> poison, float %i.aan, i64 0
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> %i.aaj, <4 x i32> <i32 0, i32 4, i32 7, i32 0>
  %i.aav = fmul <4 x float> %i.zx, %i.aau
  %i.aaw = shufflevector <4 x float> %i.zy, <4 x float> %i.aaj, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.aax = insertelement <4 x float> %i.aaw, float %i.aam, i64 3
  %i.aay = insertelement <4 x float> %i.zz, float %i.aam, i64 0
  %i.aaz = insertelement <4 x float> %i.aay, float %i.aap, i64 1
  %i.aba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aax, <4 x float> %i.aaz, <4 x float> %i.aav)
  %i.abb = insertelement <4 x float> %i.aaj, float %i.aao, i64 0
  %i.abc = insertelement <4 x float> %i.abb, float %i.aar, i64 2
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.abe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abd, <4 x float> %i.aac, <4 x float> %i.aba)
  %i.abf = fadd <4 x float> %i.abe, zeroinitializer ; 4 uses
  %i.abg = extractelement <4 x float> %i.abf, i64 0
  store float %i.abg, ptr %i.zw, align 4
  %i.abh = load ptr, ptr %16, align 8
  %i.abi = getelementptr inbounds nuw [36 x i8], ptr %i.abh, i64 %.0227925
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %i.abk = extractelement <4 x float> %i.abf, i64 1
  store float %i.abk, ptr %i.abj, align 4
  %i.abl = load ptr, ptr %16, align 8
  %i.abm = getelementptr inbounds nuw [36 x i8], ptr %i.abl, i64 %.0227925
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = extractelement <4 x float> %i.abf, i64 2
  store float %i.abo, ptr %i.abn, align 4
  %i.abp = load ptr, ptr %16, align 8
  %i.abq = getelementptr inbounds nuw [36 x i8], ptr %i.abp, i64 %.0227925
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %i.abs = extractelement <4 x float> %i.abf, i64 3
  store float %i.abs, ptr %i.abr, align 4
  %i.abt = load ptr, ptr %16, align 8
  %i.abu = getelementptr inbounds nuw [36 x i8], ptr %i.abt, i64 %.0227925
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.abw = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.abx = insertelement <4 x float> %i.aas, float %i.aan, i64 1
  %i.aby = fmul <4 x float> %i.abw, %i.abx
  %i.abz = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> %i.aaj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.acb = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.acc = insertelement <4 x float> %i.acb, float %i.aap, i64 0
  %i.acd = insertelement <4 x float> %i.acc, float %i.aam, i64 1
  %i.ace = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.acf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aca, <4 x float> %i.ace, <4 x float> %i.aby)
  %i.acg = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 1>
  %i.ach = insertelement <4 x float> %i.acg, float %i.aao, i64 1
  %i.aci = insertelement <4 x float> %i.ach, float %i.aar, i64 2
  %i.acj = insertelement <4 x float> poison, float %.sroa.13.1.i, i64 0
  %i.ack = insertelement <4 x float> %i.acj, float %.sroa.31.3.i, i64 1
  %i.acl = shufflevector <4 x float> %i.ack, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.acm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aci, <4 x float> %i.acl, <4 x float> %i.acf)
  %i.acn = fadd <4 x float> %i.acm, zeroinitializer ; 4 uses
  %i.aco = extractelement <4 x float> %i.acn, i64 0
  store float %i.aco, ptr %i.abv, align 4
  %i.acp = load ptr, ptr %16, align 8
  %i.acq = getelementptr inbounds nuw [36 x i8], ptr %i.acp, i64 %.0227925
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 20
  %i.acs = extractelement <4 x float> %i.acn, i64 2
  store float %i.acs, ptr %i.acr, align 4
  %i.act = fmul float %.sroa.0796.4.vec.extract, %i.aak
  %i.acu = call float @llvm.fmuladd.f32(float %i.aal, float %.sroa.0796.0.vec.extract, float %i.act)
  %i.acv = call float @llvm.fmuladd.f32(float %i.aar, float %.sroa.31.3.i, float %i.acu)
  %i.acw = fadd float %i.acv, 0.000000e+00
  %i.acx = load ptr, ptr %16, align 8
  %i.acy = getelementptr inbounds nuw [36 x i8], ptr %i.acx, i64 %.0227925
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  %i.ada = extractelement <4 x float> %i.acn, i64 1
  store float %i.ada, ptr %i.acz, align 4
  %i.adb = load ptr, ptr %16, align 8
  %i.adc = getelementptr inbounds nuw [36 x i8], ptr %i.adb, i64 %.0227925
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 28
  %i.ade = extractelement <4 x float> %i.acn, i64 3
  store float %i.ade, ptr %i.add, align 4
  %i.adf = load ptr, ptr %16, align 8
  %i.adg = getelementptr inbounds nuw [36 x i8], ptr %i.adf, i64 %.0227925
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  store float %i.acw, ptr %i.adh, align 4
  %i.adi = add nuw i64 %.0227925, 1               ; 2 uses
  %exitcond994.not = icmp eq i64 %i.adi, %.pre-phi1086
  br i1 %exitcond994.not, label %._crit_edge, label %.lr.ph926, !llvm.loop !40

bb.cp:                                            ; preds = %.noexc362, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.pr, %.noexc362 ]
  %.0.lcssa.i.i.i.i.i360 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc362 ]
  %i.adj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.adk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.adk, align 8
  store ptr %.0.lcssa.i.i.i.i.i360, ptr %i.adj, align 8
  %i.adl = load ptr, ptr %i.au, align 8
  %i.adm = load ptr, ptr %15, align 8
  %i.adn = ptrtoint ptr %i.adl to i64
  %i.ado = ptrtoint ptr %i.adm to i64
  %i.adp = sub i64 %i.adn, %i.ado
  %i.adq = sdiv exact i64 %i.adp, 12              ; 5 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.ads = load ptr, ptr %i.adr, align 8          ; 7 uses
  %i.adt = load ptr, ptr %17, align 8             ; 10 uses
  %i.adu = ptrtoint ptr %i.ads to i64             ; 2 uses
  %i.adv = ptrtoint ptr %i.adt to i64             ; 2 uses
  %i.adw = sub i64 %i.adu, %i.adv                 ; 2 uses
  %i.adx = sdiv exact i64 %i.adw, 24              ; 7 uses
  %i.ady = icmp ugt i64 %i.adq, %i.adx
  br i1 %i.ady, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.adz = sub nuw nsw i64 %i.adq, %i.adx         ; 5 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aeb = load ptr, ptr %i.aea, align 8
  %i.aec = ptrtoint ptr %i.aeb to i64             ; 2 uses
  %i.aed = sub i64 %i.aec, %i.adu
  %i.aee = sdiv exact i64 %i.aed, 24              ; 2 uses
  %i.aef = icmp ult i64 %i.adx, 384307168202282326
  call void @llvm.assume(i1 %i.aef)
  %i.aeg = sub nuw nsw i64 384307168202282325, %i.adx
  %i.aeh = icmp ule i64 %i.aee, %i.aeg
  call void @llvm.assume(i1 %i.aeh)
  %.not28.i673 = icmp ult i64 %i.aee, %i.adz
  br i1 %.not28.i673, label %bb.cr, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.cq
  %i.aei = mul nuw nsw i64 %i.adz, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ads, i8 0, i64 %i.aei, i1 false)
  %scevgep.i.i.i.i674 = getelementptr i8, ptr %i.ads, i64 %i.aei
  store ptr %scevgep.i.i.i.i674, ptr %i.adr, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.cr:                                            ; preds = %bb.cq
  %i.aej = icmp ugt i64 %i.adq, 384307168202282325
  br i1 %i.aej, label %bb.cs, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc682 unwind label %.loopexit.split-lp896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc682:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cr
  %.sroa.speculated.i.i675 = call i64 @llvm.umax.i64(i64 %i.adx, i64 %i.adz)
  %i.aek = add nuw nsw i64 %.sroa.speculated.i.i675, %i.adx
  %i.ael = call i64 @llvm.umin.i64(i64 %i.aek, i64 384307168202282325) ; 2 uses
  %i.aem = mul nuw nsw i64 %i.ael, 24
  %i.aen = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aem) #21
          to label %.noexc683 unwind label %.loopexit.split-lp896.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc683:                                        ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.adw ; 2 uses
  %i.aep = mul nuw nsw i64 %i.adz, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aeo, i8 0, i64 %i.aep, i1 false)
  %.not10.i.i.i.i676 = icmp eq ptr %i.adt, %i.ads
  br i1 %.not10.i.i.i.i676, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677

.lr.ph.i.i.i.i677:                                ; preds = %.noexc683, %.lr.ph.i.i.i.i677
  %.012.i.i.i.i678 = phi ptr [ %i.aev, %.lr.ph.i.i.i.i677 ], [ %i.aen, %.noexc683 ] ; 3 uses
  %.0911.i.i.i.i679 = phi ptr [ %i.aeu, %.lr.ph.i.i.i.i677 ], [ %i.adt, %.noexc683 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.aeq = load <2 x ptr>, ptr %.0911.i.i.i.i679, align 8, !alias.scope !59
  store <2 x ptr> %i.aeq, ptr %.012.i.i.i.i678, align 8, !alias.scope !58
  %i.aer = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 16
  %i.aes = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 16
  %i.aet = load ptr, ptr %i.aes, align 8, !alias.scope !59
  store ptr %i.aet, ptr %i.aer, align 8, !alias.scope !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i679, i8 0, i64 24, i1 false), !alias.scope !59
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i679, i64 24 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i678, i64 24
  %.not.i.i.i.i680 = icmp eq ptr %i.aeu, %i.ads
  br i1 %.not.i.i.i.i680, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i677, !llvm.loop !44

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i677, %.noexc683
  %.not.i36.i681 = icmp eq ptr %i.adt, null
  br i1 %.not.i36.i681, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.aew = sub i64 %i.aec, %i.adv
  call void @_ZdlPvm(ptr noundef nonnull %i.adt, i64 noundef %i.aew) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i: ; preds = %bb.ct, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.aen, ptr %17, align 8
  %i.aex = getelementptr inbounds nuw [24 x i8], ptr %i.aeo, i64 %i.adz
  store ptr %i.aex, ptr %i.adr, align 8
  %i.aey = getelementptr inbounds nuw [24 x i8], ptr %i.aen, i64 %i.ael
  store ptr %i.aey, ptr %i.aea, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.cu:                                            ; preds = %bb.cp
  %i.aez = icmp ult i64 %i.adq, %i.adx
  br i1 %i.aez, label %bb.cv, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.cv:                                            ; preds = %bb.cu
  %i.afa = getelementptr inbounds nuw [24 x i8], ptr %i.adt, i64 %i.adq ; 3 uses
  %.not.i.i376 = icmp eq ptr %i.ads, %i.afa
  br i1 %.not.i.i376, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i377

.lr.ph.i.i.i.i377:                                ; preds = %bb.cv, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.afh, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.afa, %bb.cv ] ; 3 uses
  %i.afb = load ptr, ptr %.05.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.afb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.cw
end_hunk_1
begin_hunk_2_@_ZNK4pugi13xml_attribute6as_intEi
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 36                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 36                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 256204778801521551
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 256204778801521550, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.08.i.i.i.prol, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  store float 1.000000e+00, ptr %i.q, align 4
  %i.r = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 36 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !99

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.08.i.i.i, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store float 1.000000e+00, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 36
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 52
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 68
  store float 1.000000e+00, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store float 1.000000e+00, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 108
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 124
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 140
  store float 1.000000e+00, ptr %i.ae, align 4
  %i.af = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !100

_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
  unreachable

_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 256204778801521550) ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 36
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit ]
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.08.i.i.i31.prol, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32
  store float 1.000000e+00, ptr %i.ao, align 4
  %i.ap = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 36 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !101

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorI12aiMatrix3x3tIfESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.08.i.i.i31, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store float 1.000000e+00, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 36
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 52
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 68
  store float 1.000000e+00, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store float 1.000000e+00, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 108
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 124
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 140
  store float 1.000000e+00, ptr %i.bc, align 4
  %i.bd = add nsw i64 %.057.i.i.i32, -4           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !100

_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.0911.i.i.i, i64 36, i1 false), !alias.scope !107
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %.not.i.i.i38 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !105

_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseI12aiMatrix3x3tIfESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.bh = load ptr, ptr %i.h, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #22
  br label %_ZNSt12_Vector_baseI12aiMatrix3x3tIfESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseI12aiMatrix3x3tIfESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw [36 x i8], ptr %i.am, i64 %1
  store ptr %i.bk, ptr %i.a, align 8
  %i.bl = getelementptr inbounds nuw [36 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bl, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP12aiMatrix3x3tIfEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI12aiMatrix3x3tIfESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = distinct !{!2, !6}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{ptr @_ZN18X3DNodeElementBaseD2Ev}
!10 = !{ptr @_ZN24X3DNodeElementGeometry3DD2Ev}
!11 = !{ptr @_ZN24X3DNodeElementGeometry3DD2Ev, ptr @_ZN18X3DNodeElementBaseD2Ev}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, i1 true, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !22, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, i1 true, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!28 = distinct !{!28, !27, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, i1 true, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!32 = distinct !{!32, !31, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !31, !"_ZSt19__relocate_object_aI10aiVector2tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, i1 true, !"_ZSt19__relocate_object_aISt6vectorI10aiVector3tIfESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!42 = distinct !{!42, !41, !"_ZSt19__relocate_object_aISt6vectorI10aiVector3tIfESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !41, !"_ZSt19__relocate_object_aISt6vectorI10aiVector3tIfESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = !{!24, !23}
!54 = !{!28}
!55 = !{!29}
!56 = !{!32}
!57 = !{!33}
!58 = !{!42}
!59 = !{!43}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!63 = distinct !{!63, !62, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!65 = distinct !{!65, !64, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!67 = distinct !{!67, !66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!68 = !{!63}
!69 = !{!65, !63}
!70 = !{!67}
!71 = distinct !{!71, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!72 = distinct !{!72, !71, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!74 = distinct !{!74, !73, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!76 = distinct !{!76, !75, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!78 = distinct !{!78, !77, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!80 = distinct !{!80, !79, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!81 = !{!72}
!82 = !{!74, !72}
!83 = !{!76}
!84 = !{!78}
!85 = !{!80}
!86 = distinct !{!86, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!87 = distinct !{!87, !86, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!89 = distinct !{!89, !88, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!91 = distinct !{!91, !90, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!92 = !{!87}
!93 = !{!89}
!94 = !{!91}
!95 = !{!91, !89, !87}
!96 = !{ptr @_ZN27X3DNodeElementElevationGridD2Ev}
!97 = !{ptr @_ZN27X3DNodeElementElevationGridD2Ev, ptr @_ZN24X3DNodeElementGeometry3DD2Ev}
!98 = !{ptr @_ZN27X3DNodeElementElevationGridD2Ev, ptr @_ZN24X3DNodeElementGeometry3DD2Ev, ptr @_ZN18X3DNodeElementBaseD2Ev}
!99 = distinct !{!99, !106}
!100 = distinct !{!100, !6}
!101 = distinct !{!101, !106}
!102 = distinct !{!102, i1 true, !"_ZSt19__relocate_object_aI12aiMatrix3x3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!103 = distinct !{!103, !102, !"_ZSt19__relocate_object_aI12aiMatrix3x3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!104 = distinct !{!104, !102, !"_ZSt19__relocate_object_aI12aiMatrix3x3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !6}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!104, !103}
end_hunk_2
