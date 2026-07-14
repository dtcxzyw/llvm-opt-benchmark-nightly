inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  br i1 %.not1.i.i.i78, label %bb.ac, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.ac:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ab, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79, %bb.ac
  %.sink7.in.i.i.i80 = phi ptr [ %i.dx, %bb.ac ], [ %i.du, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79 ], [ %i.dr, %bb.ab ]
  %.sink7.i.i.i81 = load ptr, ptr %.sink7.in.i.i.i80, align 8, !tbaa !33
  %i.dy = ptrtoint ptr %i.bd to i64
  %i.dz = ptrtoint ptr %.sink7.i.i.i81 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %.0.in.i.i.i82 = sdiv exact i64 %i.ea, 88
  %sext.i.i83 = shl i64 %.0.in.i.i.i82, 32
  %i.eb = ashr exact i64 %sext.i.i83, 30
  %i.ec = getelementptr inbounds i8, ptr %i.be, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = lshr i8 %i.ee, 1
  %i.eg = and i8 %i.ef, 1
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit, %bb.z
  %i.eh = phi i8 [ 0, %bb.z ], [ %i.eg, %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit ] ; 2 uses
  %.not.i.i84 = icmp eq ptr %.sroa.15.0210, %.sroa.27.0209
  br i1 %.not.i.i84, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.bd, ptr %.sroa.15.0210, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 8
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 12
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !259
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 16
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !599
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 18
  store i8 %.0.i3.i.i, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !263
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 19
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1, !tbaa !263
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 20
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !263
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 21
  store i8 %i.dk, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !263
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 22
  store i8 %i.eh, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !263
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit

bb.af:                                            ; preds = %bb.ad
  %i.ei = ptrtoint ptr %.sroa.15.0210 to i64
  %i.ej = ptrtoint ptr %.sroa.0155.0211 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.ag, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.em = sdiv exact i64 %i.ek, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.en, i64 384307168202282325)
  %i.eq = select i1 %i.eo, i64 384307168202282325, i64 %i.ep ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.eq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.er = mul nuw nsw i64 %i.eq, 24
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #38
          to label %.noexc87 unwind label %.loopexit ; 4 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 10 uses
  store ptr %i.bd, ptr %i.et, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx137, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx139, align 4, !tbaa !259
  %.sroa.8.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i16 0, ptr %.sroa.8.0..sroa_idx141, align 8, !tbaa !599
  %.sroa.9.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.et, i64 18
  store i8 %.0.i3.i.i, ptr %.sroa.9.0..sroa_idx143, align 2, !tbaa !263
  %.sroa.10.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.et, i64 19
  store i8 0, ptr %.sroa.10.0..sroa_idx145, align 1, !tbaa !263
  %.sroa.11.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  store i8 0, ptr %.sroa.11.0..sroa_idx147, align 4, !tbaa !263
  %.sroa.12.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.et, i64 21
  store i8 %i.dk, ptr %.sroa.12.0..sroa_idx149, align 1, !tbaa !263
  %.sroa.13.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.et, i64 22
  store i8 %i.eh, ptr %.sroa.13.0..sroa_idx151, align 2, !tbaa !263
  %i.eu = icmp sgt i64 %i.ek, 0
  br i1 %i.eu, label %bb.ah, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.ah:                                            ; preds = %.noexc87
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr align 8 %.sroa.0155.0211, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.ah, %.noexc87
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0155.0211, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.0211, i64 noundef %i.ek) #39
  %.pre222.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %.pre222 = phi ptr [ %.pre222.pre, %bb.ai ], [ %.pre222226, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.eq
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ae
  %.pre222227 = phi ptr [ %.pre222, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre222226, %bb.ae ]
  %i.ew = phi ptr [ %.pre222, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ba, %bb.ae ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %i.ev, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.27.0209, %bb.ae ] ; 6 uses
  %.pn = phi ptr [ %i.et, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.15.0210, %bb.ae ] ; 4 uses
  %.sroa.0155.3 = phi ptr [ %i.es, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0155.0211, %bb.ae ] ; 23 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 24 ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !204
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next, %i.ez
  br i1 %i.fa, label %bb.p, label %._crit_edge, !llvm.loop !604

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i", %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", %bb.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i"
  %.not.i.i284 = phi i1 [ true, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ false, %bb.i ], [ false, %bb.o ]
  %.sroa.0155.0.lcssa280 = phi ptr [ %.sroa.0155.0.lcssa281, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.0155.3, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %.sroa.0155.3, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %.sroa.0155.3, %bb.i ], [ %.sroa.0155.3, %bb.o ] ; 4 uses
  %.sroa.15.0.lcssa279 = phi ptr [ %.sroa.15.0.lcssa278, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.15.2, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %.sroa.15.2, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %.sroa.15.2, %bb.i ], [ %.sroa.15.2, %bb.o ]
  %.sroa.27.0.lcssa274 = phi ptr [ %.sroa.27.0.lcssa275, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.27.3, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %.sroa.27.3, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %.sroa.27.3, %bb.i ], [ %.sroa.27.3, %bb.o ] ; 2 uses
  %.pre-phi235 = phi i64 [ %.pre234, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %i.r, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.r, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %i.r, %bb.i ], [ %i.r, %bb.o ] ; 3 uses
  %.pre-phi231 = phi i64 [ %.pre230, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %i.p, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.p, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %i.p, %bb.i ], [ %i.p, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i8 0, ptr %4, align 1, !tbaa !605
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.fc, align 1, !tbaa !607
  invoke void @_ZN6google8protobuf8internal17TailCallTableInfoC1EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE(ptr noundef nonnull align 8 dereferenceable(140) %3, ptr noundef %i.fb, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr %.sroa.0155.0.lcssa280, i64 %.pre-phi235)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !608
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !610
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = ashr exact i64 %i.fj, 5                 ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !611
  %i.fo = shl nuw i32 1, %i.fn                    ; 2 uses
  %i.fp = icmp eq i32 %i.fo, %i.fl
  br i1 %i.fp, label %bb.al, label %bb.ak, !prof !7

bb.ak:                                            ; preds = %bb.aj
  %sext190 = shl i64 %i.fj, 27
  %i.fq = ashr i64 %sext190, 32
  %i.fr = sext i32 %i.fo to i64
  %i.fs = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.fq, i64 noundef %i.fr, ptr noundef nonnull @.str.109)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit unwind label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.ft = shl i32 %i.fl, 4
  %i.fu = add i32 %i.ft, 56                       ; 2 uses
  %i.fv = trunc i32 %i.fu to i16                  ; 2 uses
  %.mask = and i32 %i.fu, 65528
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !634 ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !634 ; 3 uses
  %.not8.i = icmp eq ptr %i.fy, %i.ga
  br i1 %.not8.i, label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.al
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fy to i64
  %7 = add i64 %i.gb, -32
  %8 = sub i64 %7, %i.gc                          ; 2 uses
  %min.iters.check = icmp ult i64 %8, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.gd = lshr i64 %8, 5
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %n.mod.vf = and i64 %i.ge, 3                    ; 2 uses
  %i.gf = icmp eq i64 %n.mod.vf, 0
  %i.gg = select i1 %i.gf, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ge, %i.gg               ; 2 uses
  %i.gh = shl i64 %n.vec, 5
  %i.gi = getelementptr i8, ptr %i.fy, i64 %i.gh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 2, i32 0>, %vector.ph ], [ %i.hz, %vector.body ]
  %vec.phi298 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ia, %vector.body ]
  %i.gj = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.fy, i64 %i.gj ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fy, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fy, i64 %i.gj  ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fy, i64 %i.gj  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.go = getelementptr i8, ptr %i.gk, i64 40
  %i.gp = getelementptr i8, ptr %i.gl, i64 72
  %i.gq = getelementptr i8, ptr %i.gm, i64 104
  %i.gr = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.gs = getelementptr i8, ptr %i.gk, i64 48
  %i.gt = getelementptr i8, ptr %i.gl, i64 80
  %i.gu = getelementptr i8, ptr %i.gm, i64 112
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !635
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !635
  %i.gx = insertelement <2 x ptr> poison, ptr %i.gv, i64 0
  %i.gy = insertelement <2 x ptr> %i.gx, ptr %i.gw, i64 1
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !635
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !635
  %i.hb = insertelement <2 x ptr> poison, ptr %i.gz, i64 0
  %i.hc = insertelement <2 x ptr> %i.hb, ptr %i.ha, i64 1
  %i.hd = load ptr, ptr %i.gn, align 8, !tbaa !638
  %i.he = load ptr, ptr %i.go, align 8, !tbaa !638
  %i.hf = insertelement <2 x ptr> poison, ptr %i.hd, i64 0
  %i.hg = insertelement <2 x ptr> %i.hf, ptr %i.he, i64 1
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !638
  %i.hi = load ptr, ptr %i.gq, align 8, !tbaa !638
  %i.hj = insertelement <2 x ptr> poison, ptr %i.hh, i64 0
  %i.hk = insertelement <2 x ptr> %i.hj, ptr %i.hi, i64 1
  %i.hl = ptrtoint <2 x ptr> %i.gy to <2 x i64>
  %i.hm = ptrtoint <2 x ptr> %i.hc to <2 x i64>
  %i.hn = ptrtoint <2 x ptr> %i.hg to <2 x i64>
  %i.ho = ptrtoint <2 x ptr> %i.hk to <2 x i64>
  %i.hp = sub <2 x i64> %i.hl, %i.hn
  %i.hq = sub <2 x i64> %i.hm, %i.ho
  %i.hr = lshr <2 x i64> %i.hp, splat (i64 1)
  %i.hs = lshr <2 x i64> %i.hq, splat (i64 1)
  %i.ht = trunc <2 x i64> %i.hr to <2 x i32>
  %i.hu = and <2 x i32> %i.ht, splat (i32 -2)
  %i.hv = trunc <2 x i64> %i.hs to <2 x i32>
  %i.hw = and <2 x i32> %i.hv, splat (i32 -2)
  %i.hx = add <2 x i32> %vec.phi, splat (i32 3)
  %i.hy = add <2 x i32> %vec.phi298, splat (i32 3)
  %i.hz = add <2 x i32> %i.hx, %i.hu              ; 2 uses
  %i.ia = add <2 x i32> %i.hy, %i.hw              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ia, %i.hz
  %i.ic = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader325

.lr.ph.i.preheader325:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i32 [ 2, %.lr.ph.i.preheader ], [ %i.ic, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.fy, %.lr.ph.i.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader325, %.lr.ph.i
  %.010.i = phi i32 [ %i.im, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader325 ]
  %.sroa.05.09.i = phi ptr [ %i.in, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader325 ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !635
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !638
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %sh.diff.i = lshr i64 %i.ij, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ik = and i32 %tr.sh.diff.i, -2
  %i.il = add i32 %.010.i, 3
  %i.im = add i32 %i.il, %i.ik                    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i89 = icmp eq ptr %i.in, %i.ga
  br i1 %.not.i89, label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, label %.lr.ph.i, !llvm.loop !640

_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit: ; preds = %.lr.ph.i
  %i.io = shl i32 %i.im, 1
  br label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit

_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit: ; preds = %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, %bb.al
  %.0.lcssa.i = phi i32 [ 4, %bb.al ], [ %i.io, %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit ]
  %i.ip = or disjoint i32 %.mask, 2
  %i.iq = add i32 %i.ip, %.0.lcssa.i
  %i.ir = and i32 %i.iq, -4                       ; 2 uses
  %i.is = trunc i64 %.pre-phi235 to i32
  %i.it = mul i32 %i.is, 12
  %i.iu = add i32 %i.it, 4
  %i.iv = add i32 %i.iu, %i.ir
  %i.iw = and i32 %i.iv, -8                       ; 2 uses
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !641
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !642
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = lshr exact i64 %i.je, 1
  %i.jg = add nuw i64 %i.jf, %i.ix
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !643
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !644
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = add i64 %i.jg, %i.jn
  %sext = shl i64 %i.jo, 32
  %i.jp = ashr exact i64 %sext, 32                ; 3 uses
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #38
          to label %_ZN6google8protobuf8internal8AllocateEm.exit unwind label %bb.bs ; 17 uses

bb.am:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit"
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.cf

bb.an:                                            ; preds = %bb.ak
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 3698, ptr noundef nonnull %i.fs) #36
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.aq

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.ao
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.ce

bb.aq:                                            ; preds = %bb.ao
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

_ZN6google8protobuf8internal8AllocateEm.exit:     ; preds = %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !146 ; 2 uses
  %.not191 = icmp eq i32 %i.jx, -1
  br i1 %.not191, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN6google8protobuf8internal8AllocateEm.exit
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !264 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !149
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef ptr %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jy)
          to label %bb.as unwind label %bb.bt

bb.as:                                            ; preds = %bb.ar
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !645
  br label %bb.at

bb.at:                                            ; preds = %_ZN6google8protobuf8internal8AllocateEm.exit, %bb.as
  %i.kf = phi i32 [ %i.ke, %bb.as ], [ %i.jx, %_ZN6google8protobuf8internal8AllocateEm.exit ]
  %i.kg = trunc i32 %i.kf to i16
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !35 ; 2 uses
  %.not192 = icmp eq i32 %i.ki, -1
  %i.kj = trunc i32 %i.ki to i16
  %spec.select = select i1 %.not192, i16 0, i16 %i.kj
  br i1 %.not.i.i284, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  store i16 %i.kg, ptr %i.jq, align 8, !tbaa !652
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  store i16 %spec.select, ptr %i.lk, align 2, !tbaa !655
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store i32 %i.ko, ptr %i.ll, align 4, !tbaa !656
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i8 %i.le, ptr %i.lm, align 8, !tbaa !657
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jq, i64 9 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1
  %i.lp = and i8 %i.lo, -2
  store i8 %i.lp, ptr %i.ln, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jq, i64 10 ; 2 uses
  store i16 %i.fv, ptr %i.lq, align 2, !tbaa !658
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 %i.kp, ptr %i.lr, align 4, !tbaa !659
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  store i32 %i.ir, ptr %i.ls, align 8, !tbaa !660
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  store i16 %i.lc, ptr %i.lt, align 4, !tbaa !661
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jq, i64 22 ; 3 uses
  store i16 %i.lb, ptr %i.lu, align 2, !tbaa !662
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 4 uses
  store i32 %i.iw, ptr %i.lv, align 8, !tbaa !663
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  store ptr %i.kw, ptr %i.lw, align 8, !tbaa !664
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  store ptr null, ptr %i.lx, align 8, !tbaa !665
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  store ptr %.0.i92, ptr %i.ly, align 8, !tbaa !666
  %i.lz = load ptr, ptr %i.fd, align 8, !tbaa !508 ; 2 uses
  %i.ma = load ptr, ptr %i.fe, align 8, !tbaa !508 ; 2 uses
  %.not4346.i = icmp eq ptr %i.lz, %i.ma
  br i1 %.not4346.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bh, %.lr.ph.i93
  %.048.i = phi ptr [ %i.mb, %.lr.ph.i93 ], [ %.3.i, %bb.bh ] ; 3 uses
  %.sroa.040.047.i = phi ptr [ %i.lz, %.lr.ph.i93 ], [ %i.ol, %bb.bh ] ; 10 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 24
  %i.me = load i8, ptr %i.md, align 8, !tbaa !510 ; 2 uses
  %i.mf = icmp ne i8 %i.me, 2
  %.not44.i = icmp eq ptr %.sroa.040.047.i, null  ; 2 uses
  %.not.i94 = or i1 %.not44.i, %i.mf
  br i1 %.not.i94, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mg = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !512 ; 2 uses
  %i.mh = add i8 %i.mg, -118
  %or.cond.i.i = icmp ult i8 %i.mh, -117
  br i1 %or.cond.i.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mi = zext nneg i8 %i.mg to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.mi
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i: ; preds = %bb.ba, %bb.az
  %.0.i.i = phi ptr [ %i.mk, %bb.ba ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.az ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 2
  %i.mm = load i32, ptr %i.ml, align 2
  %i.mn = zext i32 %i.mm to i64
  br label %bb.bh

bb.bb:                                            ; preds = %bb.ay
  %i.mo = icmp ne i8 %i.me, 1
  %.not24.i = or i1 %.not44.i, %i.mo
  br i1 %.not24.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !515 ; 6 uses
  %i.mr = load ptr, ptr %i.mc, align 8, !tbaa !100
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  %i.mt = load i8, ptr %i.ms, align 1
  %i.mu = and i8 %i.mt, 8
  %.not.i.i.i95 = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i95, label %bb.bd, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96

bb.bd:                                            ; preds = %bb.bc
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !101
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96: ; preds = %bb.bc
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i97 = icmp eq ptr %i.mz, null
  br i1 %.not1.i.i.i97, label %bb.be, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

bb.be:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !102
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99: ; preds = %bb.be, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98, %bb.bd
  %.sink7.in.i.i.i100 = phi ptr [ %i.nd, %bb.be ], [ %i.na, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98 ], [ %i.mx, %bb.bd ]
  %.sink7.i.i.i101 = load ptr, ptr %.sink7.in.i.i.i100, align 8, !tbaa !33
  %i.ne = ptrtoint ptr %i.mq to i64
  %i.nf = ptrtoint ptr %.sink7.i.i.i101 to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %.0.in.i.i.i102 = sdiv exact i64 %i.ng, 88
  %sext.i.i103 = shl i64 %.0.in.i.i.i102, 32
  %i.nh = ashr exact i64 %sext.i.i103, 30
  %i.ni = getelementptr inbounds i8, ptr %i.mr, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.nl = load i8, ptr %i.nk, align 2, !tbaa !96
  %switch.tableidx = add i8 %i.nl, -9             ; 2 uses
  %i.nm = icmp ult i8 %switch.tableidx, 4
  br i1 %i.nm, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99
  %i.nn = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.nn
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99, %switch.lookup
  %.sink.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99 ]
  %i.no = and i32 %.sink.i.i.i, %i.nj             ; 2 uses
  %i.np = icmp samesign ult i32 %i.no, 65536
  br i1 %i.np, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i
  %i.nq = zext nneg i32 %i.no to i64
  %i.nr = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !517 ; 2 uses
  %i.ns = add i8 %i.nr, -118
  %or.cond.i26.i = icmp ult i8 %i.ns, -117
  br i1 %or.cond.i26.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nt = zext nneg i8 %i.nr to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i: ; preds = %bb.bg, %bb.bf
  %.0.i27.i = phi ptr [ %i.nv, %bb.bg ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.bf ]
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 16
  %i.nx = load i16, ptr %i.nw, align 8, !tbaa !518
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 18
  %i.nz = load i8, ptr %i.ny, align 2, !tbaa !519
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 19
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !520
  %i.oc = shl nuw i64 %i.nq, 48
  %i.od = zext i8 %i.ob to i64
  %i.oe = shl nuw nsw i64 %i.od, 24
  %i.of = or disjoint i64 %i.oe, %i.oc
  %i.og = zext i8 %i.nz to i64
  %i.oh = shl nuw nsw i64 %i.og, 16
  %i.oi = or disjoint i64 %i.of, %i.oh
  %i.oj = zext i16 %i.nx to i64
  %i.ok = or disjoint i64 %i.oi, %i.oj
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i, %bb.bb, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %.0.i.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %.0.i27.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.bb ]
  %.sink.i = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %i.mn, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %i.ok, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ 0, %bb.bb ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i, ptr %.048.i, align 8, !tbaa !94
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  store i64 %.sink.i, ptr %.sroa.4.0..0.sroa_idx.i, align 8, !tbaa !31
  %.3.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 32 ; 2 uses
  %.not43.i = icmp eq ptr %i.ol, %i.ma
  br i1 %.not43.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, label %bb.ay

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit: ; preds = %bb.bh
  %.pre223 = load i16, ptr %i.lq, align 2, !tbaa !658
  br label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit: ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.om = phi i16 [ %.pre223, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit ], [ %i.fv, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ]
  %i.on = ptrtoint ptr %i.jq to i64               ; 4 uses
  %i.oo = zext i16 %i.om to i64
  %i.op = add i64 %i.oo, %i.on
  %i.oq = inttoptr i64 %i.op to ptr               ; 2 uses
  %.val = load ptr, ptr %i.fx, align 8, !tbaa !634 ; 2 uses
  %.val64 = load ptr, ptr %i.fz, align 8, !tbaa !634 ; 2 uses
  %.not12.i = icmp eq ptr %.val, %.val64
  br i1 %.not12.i, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, %._crit_edge.i
  %.014.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.oq, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %.sroa.05.013.i = phi ptr [ %i.pq, %._crit_edge.i ], [ %.val, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %i.or = load i32, ptr %.sroa.05.013.i, align 8, !tbaa !667
  store i32 %i.or, ptr %.014.i, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !635 ; 4 uses
  %i.ow = ptrtoint ptr %i.ov to i64               ; 2 uses
  %i.ox = load ptr, ptr %i.ot, align 8, !tbaa !638 ; 9 uses
  %i.oy = ptrtoint ptr %i.ox to i64               ; 2 uses
  %i.oz = ptrtoint ptr %i.ov to i64
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = lshr exact i64 %i.pb, 2
  %i.pd = trunc i64 %i.pc to i16
  %i.pe = getelementptr i8, ptr %.014.i, i64 6    ; 6 uses
  store i16 %i.pd, ptr %i.os, align 2, !tbaa !530
  %.not89.i = icmp eq ptr %i.ox, %i.ov
  br i1 %.not89.i, label %._crit_edge.i, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.lr.ph16.i
  %9 = add i64 %i.ow, -4
  %i.pf = sub i64 %9, %i.oy                       ; 2 uses
  %i.pg = lshr i64 %i.pf, 2
  %i.ph = add nuw nsw i64 %i.pg, 1                ; 2 uses
  %min.iters.check306 = icmp ult i64 %i.pf, 28
  br i1 %min.iters.check306, label %.lr.ph.i104.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i104.preheader
  %scevgep = getelementptr i8, ptr %.014.i, i64 10
  %i.pi = add i64 %i.ow, -4
  %i.pj = sub i64 %i.pi, %i.oy
  %i.pk = and i64 %i.pj, -4                       ; 2 uses
  %scevgep302 = getelementptr i8, ptr %scevgep, i64 %i.pk
  %scevgep303 = getelementptr i8, ptr %i.ox, i64 4
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.pk
  %bound0 = icmp ult ptr %i.pe, %scevgep304
  %bound1 = icmp ult ptr %i.ox, %scevgep302
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i104.preheader324, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck
  %n.vec309 = and i64 %i.ph, 9223372036854775804  ; 3 uses
  %i.pl = shl i64 %n.vec309, 2                    ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pe, i64 %i.pl  ; 2 uses
  %i.pn = getelementptr i8, ptr %i.ox, i64 %i.pl
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph307
  %index311 = phi i64 [ 0, %vector.ph307 ], [ %index.next315, %vector.body310 ] ; 2 uses
  %i.po = shl i64 %index311, 2                    ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.pe, i64 %i.po
  %next.gep313 = getelementptr i8, ptr %i.ox, i64 %i.po
  %wide.vec = load <8 x i16>, ptr %next.gep313, align 2, !tbaa !530, !alias.scope !672
  store <8 x i16> %wide.vec, ptr %next.gep312, align 2, !tbaa !530, !alias.scope !675, !noalias !672
  %index.next315 = add nuw i64 %index311, 4       ; 2 uses
  %i.pp = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.pp, label %middle.block316, label %vector.body310, !llvm.loop !677

middle.block316:                                  ; preds = %vector.body310
  %cmp.n = icmp eq i64 %i.ph, %n.vec309
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i104.preheader324

.lr.ph.i104.preheader324:                         ; preds = %vector.memcheck, %.lr.ph.i104.preheader, %middle.block316
  %.111.i.ph = phi ptr [ %i.pe, %vector.memcheck ], [ %i.pe, %.lr.ph.i104.preheader ], [ %i.pm, %middle.block316 ]
  %.sroa.01.010.i.ph = phi ptr [ %i.ox, %vector.memcheck ], [ %i.ox, %.lr.ph.i104.preheader ], [ %i.pn, %middle.block316 ]
  br label %.lr.ph.i104

._crit_edge.i:                                    ; preds = %.lr.ph.i104, %middle.block316, %.lr.ph16.i
  %.1.lcssa.i = phi ptr [ %i.pe, %.lr.ph16.i ], [ %i.pm, %middle.block316 ], [ %i.pr, %.lr.ph.i104 ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 32 ; 2 uses
  %.not.i106 = icmp eq ptr %i.pq, %.val64
  br i1 %.not.i106, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader324, %.lr.ph.i104
  %.111.i = phi ptr [ %i.pr, %.lr.ph.i104 ], [ %.111.i.ph, %.lr.ph.i104.preheader324 ] ; 2 uses
  %.sroa.01.010.i = phi ptr [ %i.pt, %.lr.ph.i104 ], [ %.sroa.01.010.i.ph, %.lr.ph.i104.preheader324 ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.111.i, i64 4 ; 2 uses
  %i.ps = load <2 x i16>, ptr %.sroa.01.010.i, align 2, !tbaa !530
  store <2 x i16> %i.ps, ptr %.111.i, align 2, !tbaa !530
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.01.010.i, i64 4 ; 2 uses
  %.not8.i105 = icmp eq ptr %i.pt, %i.ov
  br i1 %.not8.i105, label %._crit_edge.i, label %.lr.ph.i104, !llvm.loop !678

_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit: ; preds = %._crit_edge.i, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit
  %.0.lcssa.i107 = phi ptr [ %i.oq, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i107, i64 2
  store i16 -1, ptr %.0.lcssa.i107, align 2, !tbaa !530
  store i16 -1, ptr %i.pu, align 2, !tbaa !530
  %i.pv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !521 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !521 ; 2 uses
  %.not2527.i = icmp eq ptr %i.pw, %i.py
  br i1 %.not2527.i, label %_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit
  %i.pz = load i32, ptr %i.ls, align 8, !tbaa !660
  %i.qa = zext i32 %i.pz to i64
  %i.qb = add i64 %i.qa, %i.on
  %i.qc = inttoptr i64 %i.qb to ptr
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !100
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qg = load i32, ptr %i.qf, align 8
  %i.qh = load i32, ptr %i.jw, align 8            ; 2 uses
  %.not26.i = icmp eq i32 %i.qh, -1
  %i.qi = shl i32 %i.qh, 3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bp, %.lr.ph.i108
  %.029.i = phi ptr [ %i.qc, %.lr.ph.i108 ], [ %i.se, %bb.bp ] ; 4 uses
  %.sroa.022.028.i = phi ptr [ %i.pw, %.lr.ph.i108 ], [ %i.sf, %bb.bp ] ; 4 uses
  %i.qj = load ptr, ptr %.sroa.022.028.i, align 8, !tbaa !523 ; 8 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 3
  %i.ql = load i8, ptr %i.qk, align 1
  %i.qm = and i8 %i.ql, 8
  %.not.i.i109 = icmp eq i8 %i.qm, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br i1 %.not.i.i109, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  %i.qo = load ptr, ptr %i.qn, align 8, !nonnull !50
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i111 = phi ptr [ %i.qo, %bb.bj ], [ null, %bb.bi ] ; 3 uses
  %i.qp = and i8 %.pre.i, 8
  %.not.i.i21.i = icmp eq i8 %i.qp, 0
  br i1 %.not.i.i21.i, label %bb.bk, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112

bb.bk:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !101
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112: ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i113 = icmp eq ptr %i.qu, null
  br i1 %.not1.i.i.i113, label %bb.bl, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115

bb.bl:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i112
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !102
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115: ; preds = %bb.bl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114, %bb.bk
  %.sink7.in.i.i.i116 = phi ptr [ %i.qy, %bb.bl ], [ %i.qv, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i114 ], [ %i.qs, %bb.bk ]
  %.sink7.i.i.i117 = load ptr, ptr %.sink7.in.i.i.i116, align 8, !tbaa !33
  %i.qz = ptrtoint ptr %i.qj to i64
  %i.ra = ptrtoint ptr %.sink7.i.i.i117 to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %.0.in.i.i.i118 = sdiv exact i64 %i.rb, 88
  %sext.i.i119 = shl i64 %.0.in.i.i.i118, 32
  %i.rc = ashr exact i64 %sext.i.i119, 30
  %i.rd = getelementptr inbounds i8, ptr %i.qe, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %i.rg = load i8, ptr %i.rf, align 2, !tbaa !96
  %switch.tableidx319 = add i8 %i.rg, -9          ; 2 uses
  %i.rh = icmp ult i8 %switch.tableidx319, 4
  br i1 %i.rh, label %switch.lookup320, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i120

switch.lookup320:                                 ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115
  %i.ri = zext nneg i8 %switch.tableidx319 to i64
  %switch.gep321 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ri
  %switch.load322 = load i32, ptr %switch.gep321, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i120

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i120: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115, %switch.lookup320
  %.sink.i.i.i121 = phi i32 [ %switch.load322, %switch.lookup320 ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i115 ]
  %i.rj = and i32 %.sink.i.i.i121, %i.re
  store i32 %i.rj, ptr %.029.i, align 4, !tbaa !526
  %.not.i122 = icmp eq ptr %.0.i.i111, null
  br i1 %.not.i122, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i120
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i111, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !51
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 72
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !54
  %i.ro = ptrtoint ptr %.0.i.i111 to i64
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = sdiv exact i64 %i.rq, 56
  %i.rs = trunc i64 %i.rr to i32
  %i.rt = shl nsw i32 %i.rs, 2
  %i.ru = add nsw i32 %i.rt, %i.qg
  br label %bb.bp

bb.bn:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i120
  br i1 %.not26.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 8
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !528 ; 2 uses
  %i.rx = icmp sgt i32 %i.rw, -1
  %i.ry = add i32 %i.rw, %i.qi
  %i.rz = select i1 %i.rx, i32 %i.ry, i32 -1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %.sink.i123 = phi i32 [ %i.rz, %bb.bo ], [ %i.ru, %bb.bm ], [ 0, %bb.bn ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.029.i, i64 4
  store i32 %.sink.i123, ptr %i.sa, align 4, !tbaa !529
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 12
  %i.sc = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  %i.sd = load <2 x i16>, ptr %i.sb, align 4, !tbaa !530
  store <2 x i16> %i.sd, ptr %i.sc, align 4, !tbaa !530
  %i.se = getelementptr inbounds nuw i8, ptr %.029.i, i64 12
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 24 ; 2 uses
  %.not25.i = icmp eq ptr %i.sf, %i.py
  br i1 %.not25.i, label %_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit, label %bb.bi

_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE.exit: ; preds = %bb.bp, %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit
  %i.sg = load i32, ptr %i.lv, align 8, !tbaa !663
  %i.sh = zext i32 %i.sg to i64
end_hunk_1
