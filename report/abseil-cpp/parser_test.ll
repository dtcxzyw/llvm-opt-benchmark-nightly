Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/parser_test?download=true
inline.NumInlined: 2681
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_151ConsumeUnboundConversionTest_WidthAndPrecision_Test8TestBodyEv:bb.a
          cleanup
  br label %bb.aic

bb.aib:                                           ; preds = %bb.ahw
  %i.clw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %298) #21
  br label %bb.aic

bb.aic:                                           ; preds = %bb.aib, %bb.aia
  %.pn529 = phi { ptr, i32 } [ %i.clw, %bb.aib ], [ %i.clv, %bb.aia ] ; 2 uses
  %i.clx = load ptr, ptr %300, align 8, !tbaa !46 ; 2 uses
  %i.cly = getelementptr inbounds nuw i8, ptr %300, i64 16 ; 2 uses
  %i.clz = icmp eq ptr %i.clx, %i.cly
  br i1 %i.clz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1807, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1805

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1805: ; preds = %bb.aic
  %i.cma = load i64, ptr %i.cly, align 8, !tbaa !49
  %i.cmb = add i64 %i.cma, 1
  call void @_ZdlPvm(ptr noundef %i.clx, i64 noundef %i.cmb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1807

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1807: ; preds = %bb.aic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1805, %bb.ahz
  %.pn529.pn = phi { ptr, i32 } [ %i.clu, %bb.ahz ], [ %.pn529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1805 ], [ %.pn529, %bb.aic ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %298) #21
  %i.cmc = load ptr, ptr %297, align 8, !tbaa !48 ; 3 uses
  %.not.i.i1808 = icmp eq ptr %i.cmc, null
  br i1 %.not.i.i1808, label %_ZN7testing7MessageD2Ev.exit1810, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1809

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1809: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1807
  %i.cmd = load ptr, ptr %i.cmc, align 8, !tbaa !18
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 8
  %i.cmf = load ptr, ptr %i.cme, align 8
  call void %i.cmf(ptr noundef nonnull align 8 dereferenceable(128) %i.cmc) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit1810

_ZN7testing7MessageD2Ev.exit1810:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1807, %bb.ahy
  %.pn529.pn.pn = phi { ptr, i32 } [ %i.clt, %bb.ahy ], [ %.pn529.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1807 ], [ %.pn529.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1809 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #21
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %296) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #21
  br label %bb.aif

bb.aid:                                           ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1801
  call void @llvm.lifetime.end.p0(ptr nonnull %297) #21
  %.pr2061 = load ptr, ptr %i.cle, align 8, !tbaa !42 ; 4 uses
  %.not.i.i.i1811 = icmp eq ptr %.pr2061, null
  br i1 %.not.i.i.i1811, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1815, label %bb.aie

bb.aie:                                           ; preds = %bb.aid
  %i.cmg = load ptr, ptr %.pr2061, align 8, !tbaa !46 ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.pr2061, i64 16 ; 2 uses
  %i.cmi = icmp eq ptr %i.cmg, %i.cmh
  br i1 %i.cmi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1813, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1812

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1812: ; preds = %bb.aie
  %i.cmj = load i64, ptr %i.cmh, align 8, !tbaa !49
  %i.cmk = add i64 %i.cmj, 1
  call void @_ZdlPvm(ptr noundef %i.cmg, i64 noundef %i.cmk) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1813

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1813: ; preds = %bb.aie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1812
  call void @_ZdlPvm(ptr noundef nonnull %.pr2061, i64 noundef 32) #23
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1815

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1815: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1791, %bb.aid, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1813
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #21
  ret void

bb.aif:                                           ; preds = %_ZN7testing7MessageD2Ev.exit1810, %_ZN7testing7MessageD2Ev.exit1786, %_ZN7testing7MessageD2Ev.exit1762, %_ZN7testing7MessageD2Ev.exit1738, %_ZN7testing7MessageD2Ev.exit1714, %_ZN7testing7MessageD2Ev.exit1700, %_ZN7testing7MessageD2Ev.exit1681, %_ZN7testing7MessageD2Ev.exit1667, %_ZN7testing7MessageD2Ev.exit1648, %_ZN7testing7MessageD2Ev.exit1624, %_ZN7testing7MessageD2Ev.exit1600, %_ZN7testing7MessageD2Ev.exit1586, %_ZN7testing7MessageD2Ev.exit1567, %_ZN7testing7MessageD2Ev.exit1553, %_ZN7testing7MessageD2Ev.exit1534, %_ZN7testing7MessageD2Ev.exit1520, %_ZN7testing7MessageD2Ev.exit1496, %_ZN7testing7MessageD2Ev.exit1482, %_ZN7testing7MessageD2Ev.exit1463, %_ZN7testing7MessageD2Ev.exit1449, %_ZN7testing7MessageD2Ev.exit1430, %_ZN7testing7MessageD2Ev.exit1416, %_ZN7testing7MessageD2Ev.exit1392, %_ZN7testing7MessageD2Ev.exit1368, %_ZN7testing7MessageD2Ev.exit1354, %_ZN7testing7MessageD2Ev.exit1340, %_ZN7testing7MessageD2Ev.exit1321, %_ZN7testing7MessageD2Ev.exit1307, %_ZN7testing7MessageD2Ev.exit1288, %_ZN7testing7MessageD2Ev.exit1264, %_ZN7testing7MessageD2Ev.exit1250, %_ZN7testing7MessageD2Ev.exit1236, %_ZN7testing7MessageD2Ev.exit1217, %_ZN7testing7MessageD2Ev.exit1203, %_ZN7testing7MessageD2Ev.exit1184, %_ZN7testing7MessageD2Ev.exit1160, %_ZN7testing7MessageD2Ev.exit1146, %_ZN7testing7MessageD2Ev.exit1132, %_ZN7testing7MessageD2Ev.exit1113, %_ZN7testing7MessageD2Ev.exit1099, %_ZN7testing7MessageD2Ev.exit1080, %_ZN7testing7MessageD2Ev.exit1056, %_ZN7testing7MessageD2Ev.exit1042, %_ZN7testing7MessageD2Ev.exit1028, %_ZN7testing7MessageD2Ev.exit1009, %_ZN7testing7MessageD2Ev.exit990, %_ZN7testing7MessageD2Ev.exit966, %_ZN7testing7MessageD2Ev.exit952, %_ZN7testing7MessageD2Ev.exit933, %_ZN7testing7MessageD2Ev.exit919, %_ZN7testing7MessageD2Ev.exit900, %_ZN7testing7MessageD2Ev.exit876, %_ZN7testing7MessageD2Ev.exit862, %_ZN7testing7MessageD2Ev.exit843, %_ZN7testing7MessageD2Ev.exit829, %_ZN7testing7MessageD2Ev.exit810, %_ZN7testing7MessageD2Ev.exit786, %_ZN7testing7MessageD2Ev.exit772, %_ZN7testing7MessageD2Ev.exit753, %_ZN7testing7MessageD2Ev.exit739, %_ZN7testing7MessageD2Ev.exit720, %_ZN7testing7MessageD2Ev.exit696, %_ZN7testing7MessageD2Ev.exit682, %_ZN7testing7MessageD2Ev.exit668, %_ZN7testing7MessageD2Ev.exit649, %_ZN7testing7MessageD2Ev.exit630, %_ZN7testing7MessageD2Ev.exit606, %_ZN7testing7MessageD2Ev.exit593, %_ZN7testing7MessageD2Ev.exit574, %_ZN7testing7MessageD2Ev.exit561, %_ZN7testing7MessageD2Ev.exit546, %_ZN7testing7MessageD2Ev.exit539
  %.pn529.pn.pn.pn = phi { ptr, i32 } [ %.pn529.pn.pn, %_ZN7testing7MessageD2Ev.exit1810 ], [ %.pn525.pn.pn, %_ZN7testing7MessageD2Ev.exit1786 ], [ %.pn521.pn.pn, %_ZN7testing7MessageD2Ev.exit1762 ], [ %.pn517.pn.pn, %_ZN7testing7MessageD2Ev.exit1738 ], [ %.pn514.pn, %_ZN7testing7MessageD2Ev.exit1714 ], [ %.pn510.pn.pn, %_ZN7testing7MessageD2Ev.exit1700 ], [ %.pn507.pn, %_ZN7testing7MessageD2Ev.exit1681 ], [ %.pn503.pn.pn, %_ZN7testing7MessageD2Ev.exit1667 ], [ %.pn499.pn.pn, %_ZN7testing7MessageD2Ev.exit1648 ], [ %.pn494.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit1624 ], [ %.pn491.pn, %_ZN7testing7MessageD2Ev.exit1600 ], [ %.pn487.pn.pn, %_ZN7testing7MessageD2Ev.exit1586 ], [ %.pn484.pn, %_ZN7testing7MessageD2Ev.exit1567 ], [ %.pn480.pn.pn, %_ZN7testing7MessageD2Ev.exit1553 ], [ %.pn477.pn, %_ZN7testing7MessageD2Ev.exit1534 ], [ %.pn473.pn.pn, %_ZN7testing7MessageD2Ev.exit1520 ], [ %.pn470.pn, %_ZN7testing7MessageD2Ev.exit1496 ], [ %.pn466.pn.pn, %_ZN7testing7MessageD2Ev.exit1482 ], [ %.pn463.pn, %_ZN7testing7MessageD2Ev.exit1463 ], [ %.pn459.pn.pn, %_ZN7testing7MessageD2Ev.exit1449 ], [ %.pn456.pn, %_ZN7testing7MessageD2Ev.exit1430 ], [ %.pn452.pn.pn, %_ZN7testing7MessageD2Ev.exit1416 ], [ %.pn448.pn.pn, %_ZN7testing7MessageD2Ev.exit1392 ], [ %.pn445.pn, %_ZN7testing7MessageD2Ev.exit1368 ], [ %.pn442.pn, %_ZN7testing7MessageD2Ev.exit1354 ], [ %.pn438.pn.pn, %_ZN7testing7MessageD2Ev.exit1340 ], [ %.pn435.pn, %_ZN7testing7MessageD2Ev.exit1321 ], [ %.pn431.pn.pn, %_ZN7testing7MessageD2Ev.exit1307 ], [ %.pn427.pn.pn, %_ZN7testing7MessageD2Ev.exit1288 ], [ %.pn424.pn, %_ZN7testing7MessageD2Ev.exit1264 ], [ %.pn421.pn, %_ZN7testing7MessageD2Ev.exit1250 ], [ %.pn417.pn.pn, %_ZN7testing7MessageD2Ev.exit1236 ], [ %.pn414.pn, %_ZN7testing7MessageD2Ev.exit1217 ], [ %.pn410.pn.pn, %_ZN7testing7MessageD2Ev.exit1203 ], [ %.pn406.pn.pn, %_ZN7testing7MessageD2Ev.exit1184 ], [ %.pn403.pn, %_ZN7testing7MessageD2Ev.exit1160 ], [ %.pn400.pn, %_ZN7testing7MessageD2Ev.exit1146 ], [ %.pn396.pn.pn, %_ZN7testing7MessageD2Ev.exit1132 ], [ %.pn393.pn, %_ZN7testing7MessageD2Ev.exit1113 ], [ %.pn389.pn.pn, %_ZN7testing7MessageD2Ev.exit1099 ], [ %.pn385.pn.pn, %_ZN7testing7MessageD2Ev.exit1080 ], [ %.pn382.pn, %_ZN7testing7MessageD2Ev.exit1056 ], [ %.pn379.pn, %_ZN7testing7MessageD2Ev.exit1042 ], [ %.pn375.pn.pn, %_ZN7testing7MessageD2Ev.exit1028 ], [ %.pn371.pn.pn, %_ZN7testing7MessageD2Ev.exit1009 ], [ %.pn367.pn.pn, %_ZN7testing7MessageD2Ev.exit990 ], [ %.pn364.pn, %_ZN7testing7MessageD2Ev.exit966 ], [ %.pn360.pn.pn, %_ZN7testing7MessageD2Ev.exit952 ], [ %.pn357.pn, %_ZN7testing7MessageD2Ev.exit933 ], [ %.pn353.pn.pn, %_ZN7testing7MessageD2Ev.exit919 ], [ %.pn349.pn.pn, %_ZN7testing7MessageD2Ev.exit900 ], [ %.pn346.pn, %_ZN7testing7MessageD2Ev.exit876 ], [ %.pn342.pn.pn, %_ZN7testing7MessageD2Ev.exit862 ], [ %.pn339.pn, %_ZN7testing7MessageD2Ev.exit843 ], [ %.pn335.pn.pn, %_ZN7testing7MessageD2Ev.exit829 ], [ %.pn331.pn.pn, %_ZN7testing7MessageD2Ev.exit810 ], [ %.pn328.pn, %_ZN7testing7MessageD2Ev.exit786 ], [ %.pn324.pn.pn, %_ZN7testing7MessageD2Ev.exit772 ], [ %.pn321.pn, %_ZN7testing7MessageD2Ev.exit753 ], [ %.pn317.pn.pn, %_ZN7testing7MessageD2Ev.exit739 ], [ %.pn313.pn.pn, %_ZN7testing7MessageD2Ev.exit720 ], [ %.pn310.pn, %_ZN7testing7MessageD2Ev.exit696 ], [ %.pn307.pn, %_ZN7testing7MessageD2Ev.exit682 ], [ %.pn303.pn.pn, %_ZN7testing7MessageD2Ev.exit668 ], [ %.pn299.pn.pn, %_ZN7testing7MessageD2Ev.exit649 ], [ %.pn295.pn.pn, %_ZN7testing7MessageD2Ev.exit630 ], [ %.pn292.pn, %_ZN7testing7MessageD2Ev.exit606 ], [ %.pn288.pn.pn, %_ZN7testing7MessageD2Ev.exit593 ], [ %.pn285.pn, %_ZN7testing7MessageD2Ev.exit574 ], [ %.pn281.pn.pn, %_ZN7testing7MessageD2Ev.exit561 ], [ %.pn278.pn, %_ZN7testing7MessageD2Ev.exit546 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit539 ]
  resume { ptr, i32 } %.pn529.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052619str_format_internal12_GLOBAL__N_139ConsumeUnboundConversionTest_Flags_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052619str_format_internal12_GLOBAL__N_139ConsumeUnboundConversionTest_Flags_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 9 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.b, align 4, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 -1, ptr %i.c, align 4, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 0, ptr %i.d, align 4, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 9, ptr %i.e, align 1, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i8 19, ptr %i.f, align 2, !tbaa !70
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052619str_format_internal12_GLOBAL__N_139ConsumeUnboundConversionTest_Flags_TestE, i64 16), ptr %i.a, align 8, !tbaa !18
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #23
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_139ConsumeUnboundConversionTest_Flags_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_139ConsumeUnboundConversionTest_Flags_Test8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 34 uses
  %13 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %14 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 17
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %34 = phi i1 [ false, %bb.a ], [ true, %bb.c ]
  %i.am = phi i1 [ true, %bb.a ], [ false, %bb.c ]
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  br i1 %i.am, label %.preheader, label %bb.b, !llvm.loop !359

bb.d:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %.037397 = phi i32 [ 0, %.preheader ], [ %i.oi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr %i.m, ptr %12, align 8, !tbaa !55
  store i64 0, ptr %i.n, align 8, !tbaa !54
  store i8 0, ptr %i.m, align 8, !tbaa !49
  %i.an = and i32 %.037397, 1
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %bb.d
  store i8 45, ptr %i.m, align 8, !tbaa !49
  store i64 1, ptr %i.n, align 8, !tbaa !54
  store i8 0, ptr %i.al, align 1, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %bb.o, %bb.l, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.d
  %i.ap = phi i64 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ 0, %bb.d ] ; 3 uses
  %i.aq = and i32 %.037397, 2
  %.not.1 = icmp eq i32 %i.aq, 0
  br i1 %.not.1, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1: ; preds = %bb.f
  %i.ar = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ap
  store i8 43, ptr %i.as, align 1, !tbaa !49
  store i64 %i.ar, ptr %i.n, align 8, !tbaa !54
  %i.at = load ptr, ptr %12, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !49
  %.pre400.pre403.pre407.pre411.pre = load i64, ptr %i.n, align 8, !tbaa !54
  %.pre402.pre405.pre409.pre413.pre = load ptr, ptr %12, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1, %bb.f
  %.pre402.pre405.pre409.pre413 = phi ptr [ %.pre402.pre405.pre409.pre413.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1 ], [ %i.m, %bb.f ] ; 3 uses
  %.pre400.pre403.pre407.pre411 = phi i64 [ %.pre400.pre403.pre407.pre411.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.1 ], [ %i.ap, %bb.f ] ; 5 uses
  %i.av = and i32 %.037397, 4
  %.not.2 = icmp eq i32 %i.av, 0
  br i1 %.not.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = add i64 %.pre400.pre403.pre407.pre411, 1 ; 3 uses
  %i.ax = icmp eq ptr %.pre402.pre405.pre409.pre413, %i.m
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %bb.h
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2: ; preds = %bb.h
  %i.az = icmp ult i64 %.pre400.pre403.pre407.pre411, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.ba = phi i64 [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2 ]
  %i.bb = icmp ugt i64 %i.aw, %i.ba
  br i1 %i.bb, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.2

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %.pre400.pre403.pre407.pre411, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.2 unwind label %bb.e

.noexc.2:                                         ; preds = %bb.i
  %.pre.i.i.2 = load ptr, ptr %12, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.2: ; preds = %.noexc.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  %i.bc = phi ptr [ %.pre.i.i.2, %.noexc.2 ], [ %.pre402.pre405.pre409.pre413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre400.pre403.pre407.pre411
  store i8 32, ptr %i.bd, align 1, !tbaa !49
  store i64 %i.aw, ptr %i.n, align 8, !tbaa !54
  %i.be = load ptr, ptr %12, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i8 0, ptr %i.bf, align 1, !tbaa !49
  %.pre400.pre403.pre407.pre = load i64, ptr %i.n, align 8, !tbaa !54
  %.pre402.pre405.pre409.pre = load ptr, ptr %12, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.2, %bb.g
  %.pre402.pre405.pre409 = phi ptr [ %.pre402.pre405.pre409.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.2 ], [ %.pre402.pre405.pre409.pre413, %bb.g ] ; 3 uses
  %.pre400.pre403.pre407 = phi i64 [ %.pre400.pre403.pre407.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.2 ], [ %.pre400.pre403.pre407.pre411, %bb.g ] ; 5 uses
  %i.bg = and i32 %.037397, 8
  %.not.3 = icmp eq i32 %i.bg, 0
  br i1 %.not.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i64 %.pre400.pre403.pre407, 1       ; 3 uses
  %i.bi = icmp eq ptr %.pre402.pre405.pre409, %i.m
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %bb.k
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3: ; preds = %bb.k
  %i.bk = icmp ult i64 %.pre400.pre403.pre407, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.bl = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3 ]
  %i.bm = icmp ugt i64 %i.bh, %i.bl
  br i1 %i.bm, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.3

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %.pre400.pre403.pre407, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.3 unwind label %bb.e

.noexc.3:                                         ; preds = %bb.l
  %.pre.i.i.3 = load ptr, ptr %12, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.3: ; preds = %.noexc.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3
  %i.bn = phi ptr [ %.pre.i.i.3, %.noexc.3 ], [ %.pre402.pre405.pre409, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.pre400.pre403.pre407
  store i8 35, ptr %i.bo, align 1, !tbaa !49
  store i64 %i.bh, ptr %i.n, align 8, !tbaa !54
  %i.bp = load ptr, ptr %12, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store i8 0, ptr %i.bq, align 1, !tbaa !49
  %.pre400.pre403.pre = load i64, ptr %i.n, align 8, !tbaa !54
  %.pre402.pre405.pre = load ptr, ptr %12, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.3, %bb.j
  %.pre402.pre405 = phi ptr [ %.pre402.pre405.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.3 ], [ %.pre402.pre405.pre409, %bb.j ] ; 3 uses
  %.pre400.pre403 = phi i64 [ %.pre400.pre403.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.3 ], [ %.pre400.pre403.pre407, %bb.j ] ; 5 uses
  %i.br = and i32 %.037397, 16
  %.not.4 = icmp eq i32 %i.br, 0
  br i1 %.not.4, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = add i64 %.pre400.pre403, 1              ; 3 uses
  %i.bt = icmp eq ptr %.pre402.pre405, %i.m
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %bb.n
  %i.bu = load i64, ptr %i.m, align 8, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.4: ; preds = %bb.n
  %i.bv = icmp ult i64 %.pre400.pre403, 16
  call void @llvm.assume(i1 %i.bv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.bw = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.4 ]
  %i.bx = icmp ugt i64 %i.bs, %i.bw
  br i1 %i.bx, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.4

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %.pre400.pre403, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.4 unwind label %bb.e

.noexc.4:                                         ; preds = %bb.o
  %.pre.i.i.4 = load ptr, ptr %12, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.4: ; preds = %.noexc.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.4
  %i.by = phi ptr [ %.pre.i.i.4, %.noexc.4 ], [ %.pre402.pre405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.4 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.pre400.pre403
  store i8 48, ptr %i.bz, align 1, !tbaa !49
  store i64 %i.bs, ptr %i.n, align 8, !tbaa !54
  %i.ca = load ptr, ptr %12, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  store i8 0, ptr %i.cb, align 1, !tbaa !49
  %.pre400.pre = load i64, ptr %i.n, align 8, !tbaa !54
  %.pre402.pre = load ptr, ptr %12, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.4, %bb.m
  %.pre402.a = phi ptr [ %.pre402.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.4 ], [ %.pre402.pre405, %bb.m ] ; 3 uses
  %.pre400 = phi i64 [ %.pre400.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.4 ], [ %.pre400.pre403, %bb.m ] ; 3 uses
  %35 = icmp sgt i64 %.pre400, 1
  %or.cond = select i1 %34, i1 %35, i1 false
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.cc = getelementptr i8, ptr %.pre402.a, i64 %.pre400
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.cc, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.pre402.a, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cd = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !49
  %i.ce = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !49
  store i8 %i.ce, ptr %.sroa.05.09.i.i, align 1, !tbaa !49
  store i8 %i.cd, ptr %.sroa.0.010.i.i, align 1, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %.sroa.0.0.i.i
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, !llvm.loop !360

bb.q:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.n, align 8, !tbaa !54
  %.pre401 = load ptr, ptr %12, align 8, !tbaa !46
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit, %bb.p
  %i.ci = phi ptr [ %.pre401, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %.pre402.a, %bb.p ] ; 2 uses
  %i.cj = phi i64 [ %.pre, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit.loopexit ], [ %.pre400, %bb.p ] ; 4 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = icmp eq ptr %i.ci, %i.m
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.cm = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit
  %i.cn = load i64, ptr %i.m, align 8, !tbaa !49
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69
  %i.co = phi i64 [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i69 ]
  %i.cp = icmp ugt i64 %i.ck, %i.co
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i67
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.cj, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc70 unwind label %bb.q

.noexc70:                                         ; preds = %bb.r
  %.pre.i.i68 = load ptr, ptr %12, align 8, !tbaa !46
  br label %bb.s

bb.s:                                             ; preds = %.noexc70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i67
  %i.cq = phi ptr [ %.pre.i.i68, %.noexc70 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i67 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cj
  store i8 100, ptr %i.cr, align 1, !tbaa !49
  store i64 %i.ck, ptr %i.n, align 8, !tbaa !54
  %i.cs = load ptr, ptr %12, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  store i8 0, ptr %i.ct, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.o, ptr %11, align 8, !tbaa !55
  %i.cu = load ptr, ptr %12, align 8, !tbaa !46   ; 2 uses
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !54  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !61
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.s
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc74 unwind label %bb.y   ; 2 uses

.noexc74:                                         ; preds = %.noexc.i.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !46
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !61
  store i64 %i.cy, ptr %i.o, align 8, !tbaa !49
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc74, %bb.s
  %i.cz = phi ptr [ %i.cx, %.noexc74 ], [ %i.o, %bb.s ] ; 2 uses
  switch i64 %i.cv, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !49
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.u:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i
  %i.db = load i64, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  store i64 %i.db, ptr %i.p, align 8, !tbaa !54
  %i.dc = load ptr, ptr %11, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull @.str.2, i32 noundef 289, ptr noundef nonnull align 8 %11)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.de = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.o
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.v
  %i.dg = load i64, ptr %i.o, align 8, !tbaa !49
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i73

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.o
  br i1 %i.dk, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.w
  %i.dl = load i64, ptr %i.o, align 8, !tbaa !49
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i73: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.dn = load ptr, ptr %12, align 8, !tbaa !46   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !50
  store i32 -1, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !50
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !71
  store i8 9, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !52
  store i8 19, ptr %.sroa.7.0..sroa_idx.i, align 2, !tbaa !72
  %i.do = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dn) #26
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  %i.dq = invoke noundef ptr @_ZN4absl12lts_2026052619str_format_internal17ConsumeConversionILb0EEEPKcS4_S4_PNS1_17UnboundConversionEPi(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.q, ptr noundef nonnull %i.a)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i73
  %i.dr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dn) #26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dr
  %i.dt = icmp eq ptr %i.dq, %i.ds                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.du = zext i1 %i.dt to i8
  store i8 %i.du, ptr %14, align 8, !tbaa !39
  store ptr null, ptr %i.r, align 8, !tbaa !100
  store i8 1, ptr %i.s, align 8, !tbaa !102
  br i1 %i.dt, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.aa

bb.y:                                             ; preds = %.noexc.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i73
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load ptr, ptr %18, align 8, !tbaa !46
  %i.dy = load i64, ptr %i.t, align 8, !tbaa !54
  store i64 %i.dy, ptr %17, align 8
  store ptr %i.dx, ptr %i.u, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, i64 85, ptr nonnull @.str.2, i32 noundef 290, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %17)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  %i.dz = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.v
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
