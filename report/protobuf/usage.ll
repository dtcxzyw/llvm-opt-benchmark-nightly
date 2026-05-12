inline.NumInlined: 1217
inline.NumDeleted: 482
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %10 = alloca %"class.absl::lts_20250512::ByAnyChar", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator.14", align 8 ; 15 uses
  %12 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator.14", align 8 ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  br label %bb.ai

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.0150.2284 = phi ptr [ %.sroa.0150.12, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.sroa.0150.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ] ; 8 uses
  %.sroa.14.2283 = phi ptr [ %.sroa.14.5, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.sroa.14.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ] ; 8 uses
  %.sroa.29.2282 = phi ptr [ %.sroa.29.12, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.sroa.29.1, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader ] ; 2 uses
  %.not.i70 = icmp eq ptr %.sroa.14.2283, %.sroa.29.2282
  br i1 %.not.i70, label %bb.z, label %bb.y

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a

.noexc72:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0150.2284, %.sroa.14.2283
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.2283, %bb.y ]
  %.sroa.0150.12 = phi ptr [ %i.el, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0150.2284, %bb.y ] ; 4 uses
  %.sroa.14.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i77, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
.loopexit180:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp181:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit180, %.loopexit.split-lp181, %.loopexit, %.loopexit.split-lp
  %.sroa.29.3 = phi ptr [ %.sroa.29.12, %.loopexit.split-lp ], [ %.sroa.29.12, %.loopexit ], [ %.sroa.14.2283, %.loopexit.split-lp181 ], [ %.sroa.14.2283, %.loopexit180 ] ; 2 uses
  %.sroa.0150.3 = phi ptr [ %.sroa.0150.12, %.loopexit.split-lp ], [ %.sroa.0150.12, %.loopexit ], [ %.sroa.0150.2284, %.loopexit.split-lp181 ], [ %.sroa.0150.2284, %.loopexit180 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp183, %.loopexit.split-lp181 ], [ %lpad.loopexit182, %.loopexit180 ] ; 2 uses
  %i.fo = load ptr, ptr %i.y, align 8, !tbaa !24  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.z
  br i1 %i.fp, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !140 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !142
  %.not.i.i16.i.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i16.i.i.i, label %bb.o, label %bb.n
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
bb.o:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !143 ; 4 uses
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 6 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

end_hunk_6
begin_hunk_7_@"_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #24
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i
end_hunk_7
