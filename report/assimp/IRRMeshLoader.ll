inline.NumInlined: 888
inline.NumDeleted: 460
begin_hunk_0_@_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5parseEPNS_8IOStreamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.r

bb.q:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.q, %bb.d
  %.112 = phi i1 [ false, %bb.d ], [ %i.ad, %bb.q ]
  ret i1 %.112
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA44_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA44_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(44) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
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
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #23
  resume { ptr, i32 } %i.o
}

declare ptr @_ZNK4pugi8xml_node5childEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind writable sret(%"class.pugi::xml_object_range") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA36_KcPS2_RA22_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(22) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #23
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 1 dereferenceable(36) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA36_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #23
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA36_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA22_KcEPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS9_SA_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(22) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA36_cEERKT_.exit
  %i.d = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %5, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #23
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA36_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
}

declare noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN6Assimp12IrrlichtBase13ParseMaterialERN4pugi8xml_nodeERj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare ptr @_ZNK4pugi8xml_node12next_siblingEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

declare ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4pugi13xml_attribute5valueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare ptr @_ZNK4pugi8xml_node4textEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK4pugi8xml_text3getEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15IRRMeshImporter19ParseBufferVerticesEPKcS2_NS0_12VertexFormatERSt6vectorI10aiVector3tIfESaIS6_EES9_S9_S9_S9_S9_RS4_I9aiColor4tIfESaISB_EERb(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %7, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %8, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %9, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %10, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %11) local_unnamed_addr #0 align 2 {
bb.a:
  %12 = alloca %class.aiVector3t, align 8         ; 23 uses
  %i.a = ptrtoint ptr %2 to i64                   ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %.1.lcssa.i.i, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit ] ; 3 uses
  %i.r = ptrtoint ptr %.0 to i64
  %i.s = sub i64 %i.a, %i.r
  %scevgep.i.i = getelementptr i8, ptr %.0, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0.i.i = phi ptr [ %.0, %bb.b ], [ %i.u, %bb.e ] ; 4 uses
  %i.t = load i8, ptr %.0.i.i, align 1
  switch i8 %i.t, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %2
  br i1 %.not.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.c, !llvm.loop !10

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit: ; preds = %bb.c, %bb.d
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %scevgep.i.i, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store <2 x float> zeroinitializer, ptr %12, align 8
  store float 0.000000e+00, ptr %i.c, align 8
  %i.v = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.a, %i.w
  %scevgep.i.i30 = getelementptr i8, ptr %i.v, i64 %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  %.0.i.i31 = phi ptr [ %i.v, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit ], [ %i.z, %bb.h ] ; 4 uses
  %i.y = load i8, ptr %.0.i.i31, align 1
  switch i8 %i.y, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %.not.i.i32 = icmp eq ptr %.0.i.i31, %2
  br i1 %.not.i.i32, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 1
  br label %bb.f, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %bb.f, %bb.g
  %.0.lcssa.i.i33 = phi ptr [ %.0.i.i31, %bb.f ], [ %scevgep.i.i30, %bb.g ]
  %i.aa = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i33, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.a, %i.ab
  %scevgep.i.i34 = getelementptr i8, ptr %i.aa, i64 %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.0.i.i35 = phi ptr [ %i.aa, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.ae, %bb.k ] ; 4 uses
  %i.ad = load i8, ptr %.0.i.i35, align 1
  switch i8 %i.ad, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit39 [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %.not.i.i36 = icmp eq ptr %.0.i.i35, %2
  br i1 %.not.i.i36, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit39, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i35, i64 1
  br label %bb.i, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit39:       ; preds = %bb.i, %bb.j
  %.0.lcssa.i.i38 = phi ptr [ %.0.i.i35, %bb.i ], [ %scevgep.i.i34, %bb.j ]
  %i.af = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i38, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag
  %scevgep.i.i40 = getelementptr i8, ptr %i.af, i64 %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit39
  %.0.i.i41 = phi ptr [ %i.af, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit39 ], [ %i.aj, %bb.n ] ; 4 uses
  %i.ai = load i8, ptr %.0.i.i41, align 1
  switch i8 %i.ai, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit45 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %.not.i.i42 = icmp eq ptr %.0.i.i41, %2
  br i1 %.not.i.i42, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit45, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i41, i64 1
  br label %bb.l, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit45:       ; preds = %bb.l, %bb.m
  %.0.lcssa.i.i44 = phi ptr [ %.0.i.i41, %bb.l ], [ %scevgep.i.i40, %bb.m ]
  %i.ak = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.al = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.am = load ptr, ptr %i.d, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store ptr %i.an, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit45
  %i.ao = load ptr, ptr %4, align 8               ; 5 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.q, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.at = sdiv exact i64 %i.ar, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 768614336404564650)
  %i.ax = select i1 %i.av, i64 768614336404564650, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = mul nuw nsw i64 %i.ax, 12
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #26 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !17
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.az, ptr %4, align 8
  store ptr %i.bd, ptr %i.d, align 8
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.be, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.o, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.bf = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i44, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.a, %i.bg
  %scevgep.i.i46 = getelementptr i8, ptr %i.bf, i64 %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i47 = phi ptr [ %i.bf, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.bj, %bb.u ] ; 4 uses
  %i.bi = load i8, ptr %.0.i.i47, align 1
  switch i8 %i.bi, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51 [
    i8 32, label %bb.t
    i8 9, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %.not.i.i48 = icmp eq ptr %.0.i.i47, %2
  br i1 %.not.i.i48, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 1
  br label %bb.s, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51:       ; preds = %bb.s, %bb.t
  %.0.lcssa.i.i50 = phi ptr [ %.0.i.i47, %bb.s ], [ %scevgep.i.i46, %bb.t ]
  %i.bk = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i50, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl
  %scevgep.i.i52 = getelementptr i8, ptr %i.bk, i64 %i.bm
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51
  %.0.i.i53 = phi ptr [ %i.bk, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51 ], [ %i.bo, %bb.x ] ; 4 uses
  %i.bn = load i8, ptr %.0.i.i53, align 1
  switch i8 %i.bn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57 [
    i8 32, label %bb.w
    i8 9, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.not.i.i54 = icmp eq ptr %.0.i.i53, %2
  br i1 %.not.i.i54, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i53, i64 1
  br label %bb.v, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57:       ; preds = %bb.v, %bb.w
  %.0.lcssa.i.i56 = phi ptr [ %.0.i.i53, %bb.v ], [ %scevgep.i.i52, %bb.w ]
  %i.bp = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i56, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 3 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.a, %i.bq
  %scevgep.i.i58 = getelementptr i8, ptr %i.bp, i64 %i.br
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57
  %.0.i.i59 = phi ptr [ %i.bp, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57 ], [ %i.bt, %bb.aa ] ; 4 uses
  %i.bs = load i8, ptr %.0.i.i59, align 1
  switch i8 %i.bs, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63 [
    i8 32, label %bb.z
    i8 9, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %.not.i.i60 = icmp eq ptr %.0.i.i59, %2
  br i1 %.not.i.i60, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 1
  br label %bb.y, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63:       ; preds = %bb.y, %bb.z
  %.0.lcssa.i.i62 = phi ptr [ %.0.i.i59, %bb.y ], [ %scevgep.i.i58, %bb.z ]
  %i.bu = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.bv = load ptr, ptr %i.g, align 8
  %.not.i64 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i64, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.bw = load ptr, ptr %i.f, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store ptr %i.bx, ptr %i.f, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader

bb.ac:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63
  %i.by = load ptr, ptr %5, align 8               ; 5 uses
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.ad, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65: ; preds = %bb.ac
  %i.cd = sdiv exact i64 %i.cb, 12                ; 3 uses
  %.sroa.speculated.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i66, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 768614336404564650)
  %i.ch = select i1 %i.cf, i64 768614336404564650, i64 %i.cg ; 3 uses
  %.not.i.i.i67 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i67)
  %i.ci = mul nuw nsw i64 %i.ch, 12
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #26 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ck, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i68 = icmp eq ptr %i.by, %i.bu
  br i1 %.not10.i.i.i.i.i68, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65, %.lr.ph.i.i.i.i.i69
  %.012.i.i.i.i.i70 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i69 ], [ %i.cj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ] ; 2 uses
  %.0911.i.i.i.i.i71 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i69 ], [ %i.by, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i70, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i71, i64 12, i1 false), !alias.scope !22
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i71, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i70, i64 12 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.cl, %i.bu
  br i1 %.not.i.i.i.i.i72, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73: ; preds = %.lr.ph.i.i.i.i.i69, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65
  %.0.lcssa.i.i.i.i.i74 = phi ptr [ %i.cj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ], [ %i.cm, %.lr.ph.i.i.i.i.i69 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i74, i64 12
  %.not.i23.i.i75 = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i75, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76: ; preds = %bb.ae, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73
  store ptr %i.cj, ptr %5, align 8
  store ptr %i.cn, ptr %i.f, align 8
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.co, ptr %i.g, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader: ; preds = %bb.ab, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader, %bb.ak
  %.016.i = phi ptr [ %i.de, %bb.ak ], [ %.0.lcssa.i.i62, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader ] ; 5 uses
  %.0.i = phi i32 [ %.1.i, %bb.ak ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader ] ; 7 uses
  %i.cp = load i8, ptr %.016.i, align 1           ; 3 uses
  %i.cq = add i8 %i.cp, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.cq, 10
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77
  %i.cr = shl i32 %.0.i, 4
  %i.cs = zext nneg i8 %i.cq to i32
  %i.ct = or disjoint i32 %i.cr, %i.cs
  br label %bb.ak

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77
  %i.cu = add i8 %i.cp, -65                       ; 2 uses
  %or.cond23.i = icmp ult i8 %i.cu, 6
  br i1 %or.cond23.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cv = shl i32 %.0.i, 4
  %i.cw = zext nneg i8 %i.cu to i32
  %i.cx = or disjoint i32 %i.cv, 10
  %i.cy = add nuw i32 %i.cx, %i.cw
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.cz = add i8 %i.cp, -97                       ; 2 uses
  %or.cond24.i = icmp ult i8 %i.cz, 6
  br i1 %or.cond24.i, label %bb.aj, label %_ZN6Assimp9strtoul16EPKcPS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.da = shl i32 %.0.i, 4
  %i.db = zext nneg i8 %i.cz to i32
  %i.dc = or disjoint i32 %i.da, 10
  %i.dd = add nuw i32 %i.dc, %i.db
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.af
  %.1.i = phi i32 [ %i.ct, %bb.af ], [ %i.cy, %bb.ah ], [ %i.dd, %bb.aj ]
  %i.de = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77, !llvm.loop !26

_ZN6Assimp9strtoul16EPKcPS1_.exit:                ; preds = %bb.ai
  %i.df = lshr i32 %.0.i, 24
  %i.dg = lshr i32 %.0.i, 8
  %i.dh = lshr i32 %.0.i, 16
  %i.di = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.dg, i64 1
  %i.dk = insertelement <4 x i32> %i.dj, i32 %.0.i, i64 2
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.df, i64 3
  %i.dm = and <4 x i32> %i.dl, <i32 255, i32 255, i32 255, i32 -1>
  %i.dn = uitofp <4 x i32> %i.dm to <4 x float>
  %i.do = fdiv <4 x float> %i.dn, splat (float 2.550000e+02) ; 6 uses
  %i.dp = load ptr, ptr %10, align 8
  %i.dq = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %.critedge, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -16
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = extractelement <4 x float> %i.do, i64 0
  %i.dv = fcmp une float %i.du, %i.dt
  br i1 %i.dv, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds i8, ptr %i.dq, i64 -12
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = extractelement <4 x float> %i.do, i64 1
  %i.dz = fcmp une float %i.dy, %i.dx
  br i1 %i.dz, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = extractelement <4 x float> %i.do, i64 2
  %i.ed = fcmp une float %i.ec, %i.eb
  br i1 %i.ed, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %_ZNK9aiColor4tIfEneERKS0_.exit

_ZNK9aiColor4tIfEneERKS0_.exit:                   ; preds = %bb.an
  %i.ee = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = extractelement <4 x float> %i.do, i64 3
  %i.eh = fcmp une float %i.eg, %i.ef
  br i1 %i.eh, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %.critedge

_ZNK9aiColor4tIfEneERKS0_.exit.thread:            ; preds = %bb.al, %bb.am, %bb.an, %_ZNK9aiColor4tIfEneERKS0_.exit
  store i8 1, ptr %11, align 1
  %.pre = load ptr, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit, %_ZNK9aiColor4tIfEneERKS0_.exit.thread, %_ZNK9aiColor4tIfEneERKS0_.exit
  %i.ei = phi ptr [ %i.dq, %_ZN6Assimp9strtoul16EPKcPS1_.exit ], [ %.pre, %_ZNK9aiColor4tIfEneERKS0_.exit.thread ], [ %i.dq, %_ZNK9aiColor4tIfEneERKS0_.exit ] ; 5 uses
  %i.ej = load ptr, ptr %i.i, align 8
  %.not.i79 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  store <4 x float> %i.do, ptr %i.ei, align 4
  %i.ek = load ptr, ptr %i.h, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.el, ptr %i.h, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %.critedge
  %i.em = load ptr, ptr %10, align 8              ; 5 uses
  %i.en = ptrtoint ptr %i.ei to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775792
  br i1 %i.eq, label %bb.aq, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.er = ashr exact i64 %i.ep, 4                 ; 3 uses
  %.sroa.speculated.i.i.i80 = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i80, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 576460752303423487)
  %i.ev = select i1 %i.et, i64 576460752303423487, i64 %i.eu ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i81)
  %i.ew = shl nuw nsw i64 %i.ev, 4
  %i.ex = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #26 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  store <4 x float> %i.do, ptr %i.ey, align 4
  %.not10.i.i.i.i.i82 = icmp eq ptr %i.em, %i.ei
  br i1 %.not10.i.i.i.i.i82, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i83
  %.012.i.i.i.i.i84 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i83 ], [ %i.ex, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i85 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i83 ], [ %i.em, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i84, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i85, i64 16, i1 false), !alias.scope !27
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i85, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i84, i64 16 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.ez, %i.ei
  br i1 %.not.i.i.i.i.i86, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !31

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i83, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i87 = phi ptr [ %i.ex, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fa, %.lr.ph.i.i.i.i.i83 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i87, i64 16
  %.not.i23.i.i88 = icmp eq ptr %i.em, null
  br i1 %.not.i23.i.i88, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.ep) #24
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ar, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ex, ptr %10, align 8
  store ptr %i.fb, ptr %i.h, align 8
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.fc, ptr %i.i, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ao, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.fd = ptrtoint ptr %.016.i to i64
  %i.fe = sub i64 %i.a, %i.fd
  %scevgep.i.i89 = getelementptr i8, ptr %.016.i, i64 %i.fe
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i90 = phi ptr [ %.016.i, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.fg, %bb.au ] ; 4 uses
  %i.ff = load i8, ptr %.0.i.i90, align 1
  switch i8 %i.ff, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94 [
    i8 32, label %bb.at
    i8 9, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %.not.i.i91 = icmp eq ptr %.0.i.i90, %2
  br i1 %.not.i.i91, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i90, i64 1
  br label %bb.as, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94:       ; preds = %bb.as, %bb.at
  %.0.lcssa.i.i93 = phi ptr [ %.0.i.i90, %bb.as ], [ %scevgep.i.i89, %bb.at ]
  %i.fh = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i93, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.a, %i.fi
  %scevgep.i.i95 = getelementptr i8, ptr %i.fh, i64 %i.fj
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94
  %.0.i.i96 = phi ptr [ %i.fh, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94 ], [ %i.fl, %bb.ax ] ; 4 uses
  %i.fk = load i8, ptr %.0.i.i96, align 1
  switch i8 %i.fk, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100 [
    i8 32, label %bb.aw
    i8 9, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %.not.i.i97 = icmp eq ptr %.0.i.i96, %2
  br i1 %.not.i.i97, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i96, i64 1
  br label %bb.av, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100:      ; preds = %bb.av, %bb.aw
  %.0.lcssa.i.i99 = phi ptr [ %.0.i.i96, %bb.av ], [ %scevgep.i.i95, %bb.aw ]
  %i.fm = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i99, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.a, %i.fn
  %scevgep.i.i101 = getelementptr i8, ptr %i.fm, i64 %i.fo
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100
  %.0.i.i102 = phi ptr [ %i.fm, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100 ], [ %i.fq, %bb.ba ] ; 4 uses
  %i.fp = load i8, ptr %.0.i.i102, align 1
  switch i8 %i.fp, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106 [
    i8 32, label %bb.az
    i8 9, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %.not.i.i103 = icmp eq ptr %.0.i.i102, %2
  br i1 %.not.i.i103, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 1
  br label %bb.ay, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106:      ; preds = %bb.ay, %bb.az
  %.0.lcssa.i.i105 = phi ptr [ %.0.i.i102, %bb.ay ], [ %scevgep.i.i101, %bb.az ] ; 3 uses
  store float 0.000000e+00, ptr %i.c, align 8
  %i.fr = load float, ptr %i.b, align 4
  %i.fs = fsub float 1.000000e+00, %i.fr
  store float %i.fs, ptr %i.b, align 4
  %i.ft = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.fu = load ptr, ptr %i.k, align 8
  %.not.i107 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i107, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ft, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.fv = load ptr, ptr %i.j, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store ptr %i.fw, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120

bb.bc:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106
  %i.fx = load ptr, ptr %8, align 8               ; 5 uses
  %i.fy = ptrtoint ptr %i.ft to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.bd, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108: ; preds = %bb.bc
  %i.gc = sdiv exact i64 %i.ga, 12                ; 3 uses
  %.sroa.speculated.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i109, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 768614336404564650)
  %i.gg = select i1 %i.ge, i64 768614336404564650, i64 %i.gf ; 3 uses
  %.not.i.i.i110 = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i110)
  %i.gh = mul nuw nsw i64 %i.gg, 12
  %i.gi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #26 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gj, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i111 = icmp eq ptr %i.fx, %i.ft
  br i1 %.not10.i.i.i.i.i111, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108, %.lr.ph.i.i.i.i.i112
  %.012.i.i.i.i.i113 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i112 ], [ %i.gi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ] ; 2 uses
  %.0911.i.i.i.i.i114 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i112 ], [ %i.fx, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i113, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i114, i64 12, i1 false), !alias.scope !32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i114, i64 12 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 12 ; 2 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.gk, %i.ft
  br i1 %.not.i.i.i.i.i115, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116: ; preds = %.lr.ph.i.i.i.i.i112, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108
  %.0.lcssa.i.i.i.i.i117 = phi ptr [ %i.gi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ], [ %i.gl, %.lr.ph.i.i.i.i.i112 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i117, i64 12
  %.not.i23.i.i118 = icmp eq ptr %i.fx, null
  br i1 %.not.i23.i.i118, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119: ; preds = %bb.be, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116
  store ptr %i.gi, ptr %8, align 8
  store ptr %i.gm, ptr %i.j, align 8
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.gn, ptr %i.k, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120: ; preds = %bb.bb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119
  switch i32 %3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140 [
    i32 1, label %bb.bf
    i32 2, label %bb.bn
  ]

bb.bf:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120
  %i.go = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i105, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.a, %i.gp
  %scevgep.i.i121 = getelementptr i8, ptr %i.go, i64 %i.gq
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.0.i.i122 = phi ptr [ %i.go, %bb.bf ], [ %i.gs, %bb.bi ] ; 4 uses
  %i.gr = load i8, ptr %.0.i.i122, align 1
  switch i8 %i.gr, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126 [
    i8 32, label %bb.bh
    i8 9, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %.not.i.i123 = icmp eq ptr %.0.i.i122, %2
  br i1 %.not.i.i123, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i122, i64 1
  br label %bb.bg, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126:      ; preds = %bb.bg, %bb.bh
  %.0.lcssa.i.i125 = phi ptr [ %.0.i.i122, %bb.bg ], [ %scevgep.i.i121, %bb.bh ]
  %i.gt = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i125, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 2 uses
  %i.gu = load float, ptr %i.b, align 4
  %i.gv = fsub float 1.000000e+00, %i.gu
  store float %i.gv, ptr %i.b, align 4
  %i.gw = load ptr, ptr %i.p, align 8             ; 5 uses
  %i.gx = load ptr, ptr %i.q, align 8
  %.not.i127 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not.i127, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gw, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.gy = load ptr, ptr %i.p, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  store ptr %i.gz, ptr %i.p, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140

bb.bk:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126
  %i.ha = load ptr, ptr %9, align 8               ; 5 uses
  %i.hb = ptrtoint ptr %i.gw to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 4 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775800
  br i1 %i.he, label %bb.bl, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128

bb.bl:                                            ; preds = %bb.bk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.bk
  %i.hf = sdiv exact i64 %i.hd, 12                ; 3 uses
  %.sroa.speculated.i.i.i129 = call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add nsw i64 %.sroa.speculated.i.i.i129, %i.hf ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hg, i64 768614336404564650)
  %i.hj = select i1 %i.hh, i64 768614336404564650, i64 %i.hi ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.hj, 0
  call void @llvm.assume(i1 %.not.i.i.i130)
  %i.hk = mul nuw nsw i64 %i.hj, 12
  %i.hl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #26 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i131 = icmp eq ptr %i.ha, %i.gw
  br i1 %.not10.i.i.i.i.i131, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i136, label %.lr.ph.i.i.i.i.i132

.lr.ph.i.i.i.i.i132:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128, %.lr.ph.i.i.i.i.i132
  %.012.i.i.i.i.i133 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i132 ], [ %i.hl, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128 ] ; 2 uses
  %.0911.i.i.i.i.i134 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i132 ], [ %i.ha, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i133, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i134, i64 12, i1 false), !alias.scope !36
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i134, i64 12 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i133, i64 12 ; 2 uses
  %.not.i.i.i.i.i135 = icmp eq ptr %i.hn, %i.gw
  br i1 %.not.i.i.i.i.i135, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i136, label %.lr.ph.i.i.i.i.i132, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i136: ; preds = %.lr.ph.i.i.i.i.i132, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128
  %.0.lcssa.i.i.i.i.i137 = phi ptr [ %i.hl, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i128 ], [ %i.ho, %.lr.ph.i.i.i.i.i132 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i137, i64 12
  %.not.i23.i.i138 = icmp eq ptr %i.ha, null
  br i1 %.not.i23.i.i138, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i139, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i136
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hd) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i139

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i139: ; preds = %bb.bm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i136
  store ptr %i.hl, ptr %9, align 8
  store ptr %i.hp, ptr %i.p, align 8
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.hl, i64 %i.hj
  store ptr %i.hq, ptr %i.q, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140

bb.bn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120
  %i.hr = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i105, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.a, %i.hs
  %scevgep.i.i141 = getelementptr i8, ptr %i.hr, i64 %i.ht
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.0.i.i142 = phi ptr [ %i.hr, %bb.bn ], [ %i.hv, %bb.bq ] ; 4 uses
  %i.hu = load i8, ptr %.0.i.i142, align 1
  switch i8 %i.hu, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit146 [
    i8 32, label %bb.bp
    i8 9, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %.not.i.i143 = icmp eq ptr %.0.i.i142, %2
  br i1 %.not.i.i143, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit146, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i142, i64 1
  br label %bb.bo, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit146:      ; preds = %bb.bo, %bb.bp
  %.0.lcssa.i.i145 = phi ptr [ %.0.i.i142, %bb.bo ], [ %scevgep.i.i141, %bb.bp ]
  %i.hw = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i145, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 3 uses
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = sub i64 %i.a, %i.hx
  %scevgep.i.i147 = getelementptr i8, ptr %i.hw, i64 %i.hy
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit146
  %.0.i.i148 = phi ptr [ %i.hw, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit146 ], [ %i.ia, %bb.bt ] ; 4 uses
  %i.hz = load i8, ptr %.0.i.i148, align 1
  switch i8 %i.hz, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit152 [
    i8 32, label %bb.bs
    i8 9, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %.not.i.i149 = icmp eq ptr %.0.i.i148, %2
  br i1 %.not.i.i149, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit152, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i.i148, i64 1
  br label %bb.br, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit152:      ; preds = %bb.br, %bb.bs
  %.0.lcssa.i.i151 = phi ptr [ %.0.i.i148, %bb.br ], [ %scevgep.i.i147, %bb.bs ]
  %i.ib = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i151, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = sub i64 %i.a, %i.ic
  %scevgep.i.i153 = getelementptr i8, ptr %i.ib, i64 %i.id
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit152
  %.0.i.i154 = phi ptr [ %i.ib, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit152 ], [ %i.if, %bb.bw ] ; 4 uses
  %i.ie = load i8, ptr %.0.i.i154, align 1
  switch i8 %i.ie, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit158 [
    i8 32, label %bb.bv
    i8 9, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %.not.i.i155 = icmp eq ptr %.0.i.i154, %2
  br i1 %.not.i.i155, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit158, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i154, i64 1
  br label %bb.bu, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit158:      ; preds = %bb.bu, %bb.bv
  %.0.lcssa.i.i157 = phi ptr [ %.0.i.i154, %bb.bu ], [ %scevgep.i.i153, %bb.bv ]
  %i.ig = load float, ptr %i.b, align 4
  %i.ih = fneg float %i.ig
  store float %i.ih, ptr %i.b, align 4
  %i.ii = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.ij = load ptr, ptr %i.m, align 8
  %.not.i159 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not.i159, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ii, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.ik = load ptr, ptr %i.l, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store ptr %i.il, ptr %i.l, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit172

bb.by:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit158
  %i.im = load ptr, ptr %6, align 8               ; 5 uses
  %i.in = ptrtoint ptr %i.ii to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 4 uses
  %i.iq = icmp eq i64 %i.ip, 9223372036854775800
  br i1 %i.iq, label %bb.bz, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160: ; preds = %bb.by
  %i.ir = sdiv exact i64 %i.ip, 12                ; 3 uses
  %.sroa.speculated.i.i.i161 = call i64 @llvm.umax.i64(i64 %i.ir, i64 1)
  %i.is = add nsw i64 %.sroa.speculated.i.i.i161, %i.ir ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.ir
  %i.iu = call i64 @llvm.umin.i64(i64 %i.is, i64 768614336404564650)
  %i.iv = select i1 %i.it, i64 768614336404564650, i64 %i.iu ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.iv, 0
  call void @llvm.assume(i1 %.not.i.i.i162)
  %i.iw = mul nuw nsw i64 %i.iv, 12
  %i.ix = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #26 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.iy, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i163 = icmp eq ptr %i.im, %i.ii
  br i1 %.not10.i.i.i.i.i163, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i168, label %.lr.ph.i.i.i.i.i164

.lr.ph.i.i.i.i.i164:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160, %.lr.ph.i.i.i.i.i164
  %.012.i.i.i.i.i165 = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i164 ], [ %i.ix, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160 ] ; 2 uses
  %.0911.i.i.i.i.i166 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i164 ], [ %i.im, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i165, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i166, i64 12, i1 false), !alias.scope !40
  %i.iz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i166, i64 12 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i165, i64 12 ; 2 uses
  %.not.i.i.i.i.i167 = icmp eq ptr %i.iz, %i.ii
  br i1 %.not.i.i.i.i.i167, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i168, label %.lr.ph.i.i.i.i.i164, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i168: ; preds = %.lr.ph.i.i.i.i.i164, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160
  %.0.lcssa.i.i.i.i.i169 = phi ptr [ %i.ix, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i160 ], [ %i.ja, %.lr.ph.i.i.i.i.i164 ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i169, i64 12
  %.not.i23.i.i170 = icmp eq ptr %i.im, null
  br i1 %.not.i23.i.i170, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i171, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ip) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i171

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i171: ; preds = %bb.ca, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i168
  store ptr %i.ix, ptr %6, align 8
  store ptr %i.jb, ptr %i.l, align 8
  %i.jc = getelementptr inbounds nuw [12 x i8], ptr %i.ix, i64 %i.iv
  store ptr %i.jc, ptr %i.m, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit172

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit172: ; preds = %bb.bx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i171
  %i.jd = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i157, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.a, %i.je
  %scevgep.i.i173 = getelementptr i8, ptr %i.jd, i64 %i.jf
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit172
  %.0.i.i174 = phi ptr [ %i.jd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit172 ], [ %i.jh, %bb.cd ] ; 4 uses
  %i.jg = load i8, ptr %.0.i.i174, align 1
  switch i8 %i.jg, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit178 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %.not.i.i175 = icmp eq ptr %.0.i.i174, %2
  br i1 %.not.i.i175, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit178, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i174, i64 1
  br label %bb.cb, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit178:      ; preds = %bb.cb, %bb.cc
  %.0.lcssa.i.i177 = phi ptr [ %.0.i.i174, %bb.cb ], [ %scevgep.i.i173, %bb.cc ]
  %i.ji = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i177, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 3 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.a, %i.jj
  %scevgep.i.i179 = getelementptr i8, ptr %i.ji, i64 %i.jk
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit178
  %.0.i.i180 = phi ptr [ %i.ji, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit178 ], [ %i.jm, %bb.cg ] ; 4 uses
  %i.jl = load i8, ptr %.0.i.i180, align 1
  switch i8 %i.jl, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit184 [
    i8 32, label %bb.cf
    i8 9, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %.not.i.i181 = icmp eq ptr %.0.i.i180, %2
  br i1 %.not.i.i181, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit184, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i.i180, i64 1
  br label %bb.ce, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit184:      ; preds = %bb.ce, %bb.cf
  %.0.lcssa.i.i183 = phi ptr [ %.0.i.i180, %bb.ce ], [ %scevgep.i.i179, %bb.cf ]
  %i.jn = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i183, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.a, %i.jo
  %scevgep.i.i185 = getelementptr i8, ptr %i.jn, i64 %i.jp
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit184
  %.0.i.i186 = phi ptr [ %i.jn, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit184 ], [ %i.jr, %bb.cj ] ; 4 uses
  %i.jq = load i8, ptr %.0.i.i186, align 1
  switch i8 %i.jq, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit190 [
    i8 32, label %bb.ci
    i8 9, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch
  %.not.i.i187 = icmp eq ptr %.0.i.i186, %2
  br i1 %.not.i.i187, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit190, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i.i186, i64 1
  br label %bb.ch, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit190:      ; preds = %bb.ch, %bb.ci
  %.0.lcssa.i.i189 = phi ptr [ %.0.i.i186, %bb.ch ], [ %scevgep.i.i185, %bb.ci ] ; 2 uses
  %i.js = load float, ptr %i.b, align 4
  %i.jt = fneg float %i.js
  store float %i.jt, ptr %i.b, align 4
  %i.ju = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.jv = load ptr, ptr %i.o, align 8
  %.not.i191 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not.i191, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ju, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.jw = load ptr, ptr %i.n, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store ptr %i.jx, ptr %i.n, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140

bb.cl:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit190
  %i.jy = load ptr, ptr %7, align 8               ; 5 uses
  %i.jz = ptrtoint ptr %i.ju to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 4 uses
  %i.kc = icmp eq i64 %i.kb, 9223372036854775800
  br i1 %i.kc, label %bb.cm, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192: ; preds = %bb.cl
  %i.kd = sdiv exact i64 %i.kb, 12                ; 3 uses
  %.sroa.speculated.i.i.i193 = call i64 @llvm.umax.i64(i64 %i.kd, i64 1)
  %i.ke = add nsw i64 %.sroa.speculated.i.i.i193, %i.kd ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.kd
  %i.kg = call i64 @llvm.umin.i64(i64 %i.ke, i64 768614336404564650)
  %i.kh = select i1 %i.kf, i64 768614336404564650, i64 %i.kg ; 3 uses
  %.not.i.i.i194 = icmp ne i64 %i.kh, 0
  call void @llvm.assume(i1 %.not.i.i.i194)
  %i.ki = mul nuw nsw i64 %i.kh, 12
  %i.kj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ki) #26 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kk, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i195 = icmp eq ptr %i.jy, %i.ju
  br i1 %.not10.i.i.i.i.i195, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i200, label %.lr.ph.i.i.i.i.i196

.lr.ph.i.i.i.i.i196:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192, %.lr.ph.i.i.i.i.i196
  %.012.i.i.i.i.i197 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i196 ], [ %i.kj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192 ] ; 2 uses
  %.0911.i.i.i.i.i198 = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i196 ], [ %i.jy, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i197, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i198, i64 12, i1 false), !alias.scope !44
  %i.kl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i198, i64 12 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i197, i64 12 ; 2 uses
  %.not.i.i.i.i.i199 = icmp eq ptr %i.kl, %i.ju
  br i1 %.not.i.i.i.i.i199, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i200, label %.lr.ph.i.i.i.i.i196, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i200: ; preds = %.lr.ph.i.i.i.i.i196, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192
  %.0.lcssa.i.i.i.i.i201 = phi ptr [ %i.kj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i192 ], [ %i.km, %.lr.ph.i.i.i.i.i196 ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i201, i64 12
  %.not.i23.i.i202 = icmp eq ptr %i.jy, null
  br i1 %.not.i23.i.i202, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i203, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i200
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kb) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i203

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i203: ; preds = %bb.cn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i200
  store ptr %i.kj, ptr %7, align 8
  store ptr %i.kn, ptr %i.n, align 8
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.kj, i64 %i.kh
  store ptr %i.ko, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i203, %bb.ck, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i139, %bb.bj, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120
  %.1 = phi ptr [ %.0.lcssa.i.i105, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120 ], [ %i.gt, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i139 ], [ %i.gt, %bb.bj ], [ %.0.lcssa.i.i189, %bb.ck ], [ %.0.lcssa.i.i189, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i203 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.kp = ptrtoint ptr %.1 to i64
  %i.kq = sub i64 %i.a, %i.kp
  %scevgep.i.i205 = getelementptr i8, ptr %.1, i64 %i.kq
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140
  %.0.i.i206 = phi ptr [ %.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140 ], [ %i.ks, %bb.cq ] ; 7 uses
  %i.kr = load i8, ptr %.0.i.i206, align 1
  switch i8 %i.kr, label %bb.cp [
    i8 13, label %.critedge.i.i207
    i8 10, label %.critedge.i.i207
    i8 0, label %.critedge.i.i207
    i8 35, label %.critedge.i.i207
  ]

bb.cp:                                            ; preds = %bb.co
  %.not22.i.i = icmp eq ptr %.0.i.i206, %2
  br i1 %.not22.i.i, label %.critedge.i.i207, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i206, i64 1
  br label %bb.co, !llvm.loop !48

.critedge.i.i207:                                 ; preds = %bb.cp, %bb.co, %bb.co, %bb.co, %bb.co
  %.0.lcssa.i.i208 = phi ptr [ %.0.i.i206, %bb.co ], [ %.0.i.i206, %bb.co ], [ %.0.i.i206, %bb.co ], [ %.0.i.i206, %bb.co ], [ %scevgep.i.i205, %bb.cp ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoint ptr %.0.lcssa.i.i208 to i64
  %i.kt = sub i64 %i.a, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i208, i64 %i.kt ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %.critedge.i.i207
  %.1.i.i = phi ptr [ %.0.lcssa.i.i208, %.critedge.i.i207 ], [ %i.kv, %bb.ct ] ; 4 uses
  %i.ku = load i8, ptr %.1.i.i, align 1           ; 2 uses
  switch i8 %i.ku, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit [
    i8 13, label %bb.cs
    i8 10, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  %.not23.i.i = icmp eq ptr %.1.i.i, %2
  br i1 %.not23.i.i, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exitthread-pre-split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.cr, !llvm.loop !49

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exitthread-pre-split: ; preds = %bb.cs
  %.pr267 = load i8, ptr %scevgep25.i.i, align 1
  br label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit:            ; preds = %bb.cr, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exitthread-pre-split
  %i.kw = phi i8 [ %.pr267, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exitthread-pre-split ], [ %i.ku, %bb.cr ]
  %.1.lcssa.i.i = phi ptr [ %scevgep25.i.i, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exitthread-pre-split ], [ %.1.i.i, %bb.cr ]
  %.not = icmp eq i8 %i.kw, 0
  br i1 %.not, label %bb.cu, label %bb.b, !llvm.loop !50

bb.cu:                                            ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

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
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #23
  resume { ptr, i32 } %i.p
}

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit, label %.sink.split.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i:              ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, %bb.b
  %.sink4.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i ] ; 2 uses
  tail call void @_ZN4pugi12xml_documentD1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.sink4.i) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink4.i, i64 noundef 208) #24
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit

_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit: ; preds = %bb.b, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, %.sink.split.i
  %i.i = phi ptr [ %i.b, %bb.b ], [ %i.b, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i ], [ %.pre, %.sink.split.i ] ; 3 uses
  store ptr null, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5clearEv.exit, %bb.c
end_hunk_0
