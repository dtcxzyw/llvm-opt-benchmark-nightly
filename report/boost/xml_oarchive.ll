Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/xml_oarchive?download=true
inline.NumInlined: 343
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5boost7archive26BOOST_ARCHIVE_XML_CLASS_IDEv
; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_22class_id_optional_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost7archive26BOOST_ARCHIVE_XML_CLASS_IDEv()
  %i.b = load i16, ptr %1, align 2, !tbaa !74
  %i.c = sext i16 %i.b to i32
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull @.str.5)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_23class_id_reference_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost7archive36BOOST_ARCHIVE_XML_CLASS_ID_REFERENCEEv()
  %i.b = load i16, ptr %1, align 2, !tbaa !74
  %i.c = sext i16 %i.b to i32
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull @.str.5)
  ret void
}

declare noundef ptr @_ZN5boost7archive36BOOST_ARCHIVE_XML_CLASS_ID_REFERENCEEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_14object_id_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !76
  %i.b = tail call noundef ptr @_ZN5boost7archive27BOOST_ARCHIVE_XML_OBJECT_IDEv()
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.b, i32 noundef %i.a, ptr noundef nonnull @.str.9)
  ret void
}

declare noundef ptr @_ZN5boost7archive27BOOST_ARCHIVE_XML_OBJECT_IDEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_21object_reference_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !76
  %i.b = tail call noundef ptr @_ZN5boost7archive34BOOST_ARCHIVE_XML_OBJECT_REFERENCEEv()
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.b, i32 noundef %i.a, ptr noundef nonnull @.str.9)
  ret void
}

declare noundef ptr @_ZN5boost7archive34BOOST_ARCHIVE_XML_OBJECT_REFERENCEEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_12version_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !78
  %i.b = tail call noundef ptr @_ZN5boost7archive25BOOST_ARCHIVE_XML_VERSIONEv()
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.b, i32 noundef %i.a, ptr noundef nonnull @.str.5)
  ret void
}

declare noundef ptr @_ZN5boost7archive25BOOST_ARCHIVE_XML_VERSIONEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_15class_name_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN5boost7archive28BOOST_ARCHIVE_XML_CLASS_NAMEEv()
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKcS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.c, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZN5boost7archive28BOOST_ARCHIVE_XML_CLASS_NAMEEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE13save_overrideERKNS0_13tracking_typeE(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost7archive26BOOST_ARCHIVE_XML_TRACKINGEv()
  %i.b = load i8, ptr %1, align 1, !tbaa !81, !range !25, !noundef !26
  %i.c = zext nneg i8 %i.b to i32
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEE15write_attributeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull @.str.5)
  ret void
}

declare noundef ptr @_ZN5boost7archive26BOOST_ARCHIVE_XML_TRACKINGEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEEC2Ej(ptr noundef nonnull align 8 dereferenceable(46) %0, i32 noundef %1) unnamed_addr #1 comdat($_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEEC5Ej) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5boost7archive6detail14basic_oarchiveC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.b, align 4, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 0, ptr %i.c, align 1, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEED2Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %0) unnamed_addr #0 comdat($_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEED5Ev) align 2 {
bb.a:
  tail call void @_ZN5boost7archive6detail14basic_oarchiveD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEED0Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #0 comdat($_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEED5Ev) align 2 {
bb.a:
  tail call void @_ZN5boost7archive18basic_xml_oarchiveINS0_12xml_oarchiveEED1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveERKNS0_12version_typeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::archive::archive_exception", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !26, !align !54 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62
  %i.i = and i32 %i.h, 5
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveIjEEvRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5boost7archive17archive_exceptionC1ENS1_14exception_codeEPKcS4_(ptr noundef nonnull align 8 dereferenceable(140) %2, i32 noundef 13, ptr noundef null, ptr noundef null) #17
  invoke void @_ZN5boost13serialization15throw_exceptionINS_7archive17archive_exceptionEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(140) %2) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7archive17archive_exceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(140) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.j

_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveIjEEvRKT_.exit: ; preds = %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !78
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.l) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveERKNS_13serialization17item_version_typeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::archive::archive_exception", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !26, !align !54 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62
  %i.i = and i32 %i.h, 5
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveIjEEvRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN5boost7archive17archive_exceptionC1ENS1_14exception_codeEPKcS4_(ptr noundef nonnull align 8 dereferenceable(140) %2, i32 noundef 13, ptr noundef null, ptr noundef null) #17
  invoke void @_ZN5boost13serialization15throw_exceptionINS_7archive17archive_exceptionEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(140) %2) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7archive17archive_exceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(140) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.j

_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveIjEEvRKT_.exit: ; preds = %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !149
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.l) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveEPKw(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.c = tail call i64 @wcslen(ptr noundef %1) #19
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  tail call void @_ZN5boost7archive13save_iteratorIPKwEEvRSoT_S5_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, ptr noundef %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7archive13save_iteratorIPKwEEvRSoT_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::archive::iterators::mb_from_wchar", align 8 ; 7 uses
  %4 = alloca %"class.boost::archive::iterators::mb_from_wchar", align 8 ; 7 uses
  %5 = alloca %"class.boost::archive::iterators::ostream_iterator", align 8 ; 2 uses
  %6 = alloca %"class.boost::archive::iterators::ostream_iterator", align 8 ; 4 uses
  store ptr %1, ptr %3, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.b, align 4, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @_ZN5boost7archive6detail18utf8_codecvt_facetC1Em(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  store ptr %2, ptr %4, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.g, align 4, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  invoke void @_ZN5boost7archive6detail18utf8_codecvt_facetC1Em(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZSt4copyIN5boost7archive9iterators13mb_from_wcharINS2_10xml_escapeIPKwEEEENS2_16ostream_iteratorIcEEET0_T_SC_SB_(ptr dead_on_unwind nonnull writable sret(%"class.boost::archive::iterators::ostream_iterator") align 8 %6, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dead_on_return %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN5boost7archive6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #17
  call void @_ZN5boost7archive6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN5boost7archive6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ]
  call void @_ZN5boost7archive6detail18utf8_codecvt_facetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::archive::iterators::xml_escape", align 8 ; 5 uses
  %3 = alloca %"class.boost::archive::iterators::xml_escape", align 8 ; 5 uses
  %4 = alloca %"class.boost::archive::iterators::ostream_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::archive::iterators::ostream_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !162
  store ptr %i.a, ptr %2, align 8, !tbaa !68, !noalias !163
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.g, i8 0, i64 18, i1 false), !noalias !163
  store ptr %i.d, ptr %3, align 8, !tbaa !68, !noalias !163
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.h, i8 0, i64 18, i1 false), !noalias !163
  store ptr %i.f, ptr %4, align 8, !tbaa !70, !noalias !163
  call void @_ZNSt11__copy_moveILb0ELb0ESt18input_iterator_tagE8__copy_mIN5boost7archive9iterators10xml_escapeIPKcEENS5_16ostream_iteratorIcEEEET0_T_SD_SC_(ptr dead_on_unwind nonnull writable sret(%"class.boost::archive::iterators::ostream_iterator") align 8 %5, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEE4saveERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.c = load ptr, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  tail call void @_ZN5boost7archive13save_iteratorIPKwEEvRSoT_S5_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEEC2ERSoj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 comdat($_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEEC5ERSoj) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = and i32 %2, 2
  %i.c = icmp ne i32 %i.b, 0
  tail call void @_ZN5boost7archive21basic_text_oprimitiveISoEC2ERSob(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.c)
  invoke void @_ZN5boost7archive6detail14basic_oarchiveC2Ej(ptr noundef nonnull align 8 dereferenceable(46) %0, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.e, align 4, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 0, ptr %i.f, align 1, !tbaa !72
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEEE, i64 16), ptr %0, align 8, !tbaa !56
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost7archive21basic_text_oprimitiveISoED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #17
  resume { ptr, i32 } %i.g
}

declare void @_ZN5boost7archive21basic_text_oprimitiveISoEC2ERSob(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN5boost7archive21basic_text_oprimitiveISoED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #0 comdat($_ZN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5boost7archive17xml_oarchive_implINS0_12xml_oarchiveEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZN5boost7archive21basic_text_oprimitiveISoE3putEPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_ZNK5boost7archive6detail14basic_oarchive9get_flagsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7archive21basic_text_oprimitiveISoE3putEPKc.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 23 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext 60)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext 47)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.1:                                         ; preds = %.noexc
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 98)
          to label %.noexc.2 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.2:                                         ; preds = %.noexc.1
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 111)
          to label %.noexc.3 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.3:                                         ; preds = %.noexc.2
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext 111)
          to label %.noexc.4 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.4:                                         ; preds = %.noexc.3
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef signext 115)
          to label %.noexc.5 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.5:                                         ; preds = %.noexc.4
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !53, !nonnull !26, !align !54
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 116)
          to label %.noexc.6 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.6:                                         ; preds = %.noexc.5
end_hunk_0
