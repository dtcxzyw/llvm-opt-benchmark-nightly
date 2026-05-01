inline.NumInlined: 4081
inline.NumDeleted: 1967
begin_hunk_0_@_ZN5boost7process6detail5posix12exe_cmd_initIcE9cmd_shellEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost7process6detail5posix15build_cmd_shellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %4 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN5boost7process6detail5posix15build_cmd_shellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS8_SaIS8_EE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 2 uses
  %.not51 = icmp eq ptr %i.o, %i.q
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.34.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.sroa.036.052 = phi ptr [ %i.o, %.lr.ph ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.53, ptr %4, align 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.53, i64 1), ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = load ptr, ptr %.sroa.036.052, align 8, !tbaa !13 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.036.052, i64 8 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7process6detail5posix15build_cmd_shellERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt6vectorIS8_SaIS8_EE:bb.a
  br i1 %.not.i9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEclIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_14iterator_rangeIT_EESJ_SJ_.exit.i.i
  store ptr @.str.54, ptr %3, align 8
  store ptr getelementptr inbounds nuw (i8, ptr @.str.54, i64 2), ptr %.sroa.34.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIPKcNS0_8is_equalEEENS1_13const_formatFINS_14iterator_rangeISB_EEEENSF_IN9__gnu_cxx17__normal_iteratorIPcS8_EEEESG_EEvRT_T0_T1_T2_T3_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.036.052, ptr noundef nonnull byval(%"struct.boost::algorithm::detail::first_finderF") align 8 %4, ptr nonnull @.str.54, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 2), ptr nonnull %.sroa.018.034.i.i.i, ptr nonnull %indvars.iv, ptr noundef nonnull byval(%"class.boost::iterator_range") align 8 %3)
          to label %._crit_edge60 unwind label %bb.s

end_hunk_2
