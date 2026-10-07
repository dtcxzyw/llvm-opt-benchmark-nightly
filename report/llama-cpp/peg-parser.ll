Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/peg-parser?download=true
inline.NumInlined: 11123
inline.NumDeleted: 4735
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_Z16build_peg_parserRKSt8functionIF17common_peg_parserR25common_peg_parser_builderEE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %3, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store i64 %i.e, ptr %i.f, align 16, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  invoke void @_ZN16common_peg_arena12resolve_refsEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %.noexc5 unwind label %bb.j

.noexc5:                                          ; preds = %bb.d
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !123, !noalias !769
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !123, !alias.scope !769
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !74, !noalias !769
  store ptr %i.j, ptr %i.h, align 8, !tbaa !74, !alias.scope !769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %2, i8 0, i64 24, i1 false), !noalias !769
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !152, !noalias !769 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !152, !alias.scope !769
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 16, !tbaa !153, !noalias !769 ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !153, !alias.scope !769
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !192, !noalias !769 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !193, !alias.scope !769
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load i64, ptr %i.u, align 16, !tbaa !194, !noalias !769
  store i64 %i.v, ptr %i.t, align 8, !tbaa !194, !alias.scope !769
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !196
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store ptr null, ptr %i.y, align 8, !tbaa !197, !alias.scope !769
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.aa = icmp eq ptr %i.m, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc5
  store ptr %i.y, ptr %i.k, align 8, !tbaa !152, !alias.scope !769
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !197, !noalias !769
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !197, !alias.scope !769
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc5
  %i.ac = phi ptr [ %i.y, %bb.e ], [ %i.m, %.noexc5 ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !199
  %i.af = urem i64 %i.ae, %i.p
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  store ptr %i.q, ptr %i.ag, align 8, !tbaa !200
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.ah, align 16, !tbaa !201, !noalias !769
  store i64 1, ptr %i.o, align 16, !tbaa !153, !noalias !769
  store ptr null, ptr %i.z, align 8, !tbaa !197, !noalias !769
  store ptr %i.z, ptr %i.l, align 8, !tbaa !152, !noalias !769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !noalias !769
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load i64, ptr %i.f, align 16, !tbaa !97, !noalias !769
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !97, !alias.scope !769
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.al, %bb.j ], [ %i.ak, %bb.i ]
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104, !noalias !779 ; 2 uses
  store i32 1, ptr %0, align 8, !tbaa !248, !alias.scope !779
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !249, !alias.scope !779
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !250, !alias.scope !779
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !779
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104, !noalias !789 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr %0, align 8, !tbaa !248, !alias.scope !789
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.e, align 8, !tbaa !249, !alias.scope !789
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.f, align 8, !tbaa !250, !alias.scope !789
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !alias.scope !789
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104, !noalias !799 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251, !noalias !799, !nonnull !143, !align !144
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66, !noalias !799
  %.not.i.i.i = icmp uge i64 %i.b, %i.f
  %i.g = zext i1 %.not.i.i.i to i32
  store i32 %i.g, ptr %0, align 8, !tbaa !248, !alias.scope !799
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.h, align 8, !tbaa !249, !alias.scope !799
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.i, align 8, !tbaa !250, !alias.scope !799
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !alias.scope !799
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104, !noalias !810 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66, !noalias !810 ; 2 uses
  %.not1519.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not1519.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !251, !noalias !810, !nonnull !143, !align !144 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66, !noalias !810 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !noalias !810
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.h) ; 2 uses
  %exitcond.not.i.i.i3.not = icmp ult i64 %i.b, %i.h
  br i1 %exitcond.not.i.i.i3.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !67, !noalias !810
  br label %.lr.ph

bb.b:                                             ; preds = %bb.f
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !806

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !258, !noalias !810
  %i.m = trunc i32 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store i32 0, ptr %0, align 8, !tbaa !248, !alias.scope !810
  store i64 %i.b, ptr %i.n, align 8, !tbaa !249, !alias.scope !810
  store i64 %i.b, ptr %i.o, align 8, !tbaa !250, !alias.scope !810
  br label %_ZSt8__invokeIR15parser_executorJRK25common_peg_literal_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.d:                                             ; preds = %._crit_edge
  store i32 2, ptr %0, align 8, !tbaa !248, !alias.scope !810
  store i64 %i.b, ptr %i.n, align 8, !tbaa !249, !alias.scope !810
  store i64 %umax.i.i.i, ptr %i.o, align 8, !tbaa !250, !alias.scope !810
  br label %_ZSt8__invokeIR15parser_executorJRK25common_peg_literal_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01220.i.i.i5 = phi i64 [ %i.w, %bb.b ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.01121.i.i.i4 = phi i32 [ %i.x, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.p = phi i64 [ %i.y, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01220.i.i.i5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !81, !noalias !810
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !tbaa !81, !noalias !810
  %.not14.i.i.i = icmp eq i8 %i.r, %i.t
  br i1 %.not14.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store i32 0, ptr %0, align 8, !tbaa !248, !alias.scope !810
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !249, !alias.scope !810
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.v, align 8, !tbaa !250, !alias.scope !810
  br label %_ZSt8__invokeIR15parser_executorJRK25common_peg_literal_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.w = add i64 %.01220.i.i.i5, 1                ; 3 uses
  %i.x = add i32 %.01121.i.i.i4, 1                ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.not15.i.i.i = icmp ugt i64 %i.d, %i.y
  br i1 %.not15.i.i.i, label %bb.b, label %.critedge.i.i.i, !llvm.loop !806

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.a
  %.012.lcssa.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.w, %bb.f ]
  store i32 1, ptr %0, align 8, !tbaa !248, !alias.scope !810
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.z, align 8, !tbaa !249, !alias.scope !810
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.012.lcssa.i.i.i, ptr %i.aa, align 8, !tbaa !250, !alias.scope !810
  br label %_ZSt8__invokeIR15parser_executorJRK25common_peg_literal_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

_ZSt8__invokeIR15parser_executorJRK25common_peg_literal_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %.critedge.i.i.i
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i, i8 0, i64 24, i1 false), !alias.scope !810
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK26common_peg_sequence_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !811
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK24common_peg_choice_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !812
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK28common_peg_repetition_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK21common_peg_and_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !814
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK21common_peg_not_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !815
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm9EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %struct.utf8_parse_result, align 8  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !825
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !noalias !825, !nonnull !143, !align !144 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !825
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66, !noalias !825
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104, !noalias !825
  call void @_Z27common_parse_utf8_codepointSt17basic_string_viewIcSt11char_traitsIcEEm(ptr dead_on_unwind nonnull writable sret(%struct.utf8_parse_result) align 8 %3, i64 %i.e, ptr %i.c, i64 noundef %i.g), !noalias !825
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !261, !noalias !825
  switch i32 %i.i, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !251, !noalias !825, !nonnull !143, !align !144
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !258, !noalias !825
  %i.m = trunc i32 %i.l to i1
  %i.n = load i64, ptr %i.f, align 8, !tbaa !104, !noalias !825 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %0, align 8, !tbaa !248, !alias.scope !825
  store i64 %i.n, ptr %i.o, align 8, !tbaa !249, !alias.scope !825
  store i64 %i.n, ptr %i.p, align 8, !tbaa !250, !alias.scope !825
  br label %_ZSt8__invokeIR15parser_executorJRK21common_peg_any_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.d:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 8, !tbaa !248, !alias.scope !825
  store i64 %i.n, ptr %i.o, align 8, !tbaa !249, !alias.scope !825
  store i64 %i.n, ptr %i.p, align 8, !tbaa !250, !alias.scope !825
  br label %_ZSt8__invokeIR15parser_executorJRK21common_peg_any_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.e:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.f, align 8, !tbaa !104, !noalias !825 ; 2 uses
  store i32 0, ptr %0, align 8, !tbaa !248, !alias.scope !825
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !249, !alias.scope !825
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.s, align 8, !tbaa !250, !alias.scope !825
  br label %_ZSt8__invokeIR15parser_executorJRK21common_peg_any_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.f:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.f, align 8, !tbaa !104, !noalias !825 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !262, !noalias !825
  %i.w = add i64 %i.v, %i.t
  store i32 1, ptr %0, align 8, !tbaa !248, !alias.scope !825
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.x, align 8, !tbaa !249, !alias.scope !825
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.y, align 8, !tbaa !250, !alias.scope !825
  br label %_ZSt8__invokeIR15parser_executorJRK21common_peg_any_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

_ZSt8__invokeIR15parser_executorJRK21common_peg_any_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i, i8 0, i64 24, i1 false), !alias.scope !825
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !825
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm10EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104, !noalias !835 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !251, !noalias !835, !nonnull !143, !align !144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66, !noalias !835 ; 2 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.f) ; 3 uses
  %exitcond.not.i.i.i2.not = icmp ult i64 %i.b, %i.f
  br i1 %exitcond.not.i.i.i2.not, label %.lr.ph.preheader, label %_ZSt8__invokeIR15parser_executorJRK23common_peg_space_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !67, !noalias !835
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i64 %.06.i.i.i3, 1                   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.h, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZSt8__invokeIR15parser_executorJRK23common_peg_space_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.06.i.i.i3 = phi i64 [ %i.h, %bb.b ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.06.i.i.i3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !81, !noalias !835
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #34, !noalias !835
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZSt8__invokeIR15parser_executorJRK23common_peg_space_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit, label %bb.b

_ZSt8__invokeIR15parser_executorJRK23common_peg_space_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.06.lcssa.i.i.i = phi i64 [ %umax.i.i.i, %bb.a ], [ %.06.i.i.i3, %.lr.ph ], [ %umax.i.i.i, %bb.b ]
  store i32 1, ptr %0, align 8, !tbaa !248, !alias.scope !835
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.m, align 8, !tbaa !249, !alias.scope !835
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.06.lcssa.i.i.i, ptr %i.n, align 8, !tbaa !250, !alias.scope !835
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !alias.scope !835
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm11EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZNK15parser_executorclERK23common_peg_chars_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(68) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm12EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK24common_peg_string_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm13EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZNK15parser_executorclERK23common_peg_until_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm14EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %struct.parser_executor, align 8    ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !263, !noalias !851, !nonnull !143, !align !144 ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !178, !noalias !851 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72, !noalias !852
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !73, !noalias !852 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 80                  ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.b, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, i64 noundef %i.b, i64 noundef %i.i) #30, !noalias !852, !inline_history !844
  unreachable

_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !104, !noalias !851
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251, !noalias !851, !nonnull !143, !align !144
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !852
  store ptr %i.a, ptr %3, align 8, !tbaa !100, !noalias !852
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !102, !noalias !852
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.k, ptr %i.p, align 8, !tbaa !104, !noalias !852
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.r = load i8, ptr %i.q, align 8, !tbaa !76, !noalias !853 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i4.i.i.i.i, label %bb.c, label %_ZSt8__invokeIR15parser_executorJRK24common_peg_schema_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !853, !inline_history !847 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.s, align 8, !tbaa !106, !noalias !853
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @.str.41, ptr %i.t, align 8, !tbaa !109, !noalias !853
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30, !noalias !853, !inline_history !847
  unreachable

_ZSt8__invokeIR15parser_executorJRK24common_peg_schema_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit: ; preds = %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i
  %i.u = sext i8 %i.r to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEE9_S_vtableE, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80, !noalias !854
  call void %i.w(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(73) %i.n), !inline_history !850
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !852
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm15EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK22common_peg_rule_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(41) %2), !inline_history !855
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm16EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK21common_peg_ref_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !856
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm17EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK24common_peg_atomic_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !857
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm18EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  tail call void @_ZN15parser_executorclERK21common_peg_tag_parser(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2), !inline_history !858
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm19EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %struct.parser_executor, align 8    ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !263, !noalias !874, !nonnull !143, !align !144 ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !245, !noalias !874 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72, !noalias !875
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !73, !noalias !875 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 80                  ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %i.b, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.40, i64 noundef %i.b, i64 noundef %i.i) #30, !noalias !875, !inline_history !867
  unreachable

_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !104, !noalias !874
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251, !noalias !874, !nonnull !143, !align !144
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !875
  store ptr %i.a, ptr %3, align 8, !tbaa !100, !noalias !875
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !102, !noalias !875
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.k, ptr %i.p, align 8, !tbaa !104, !noalias !875
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.r = load i8, ptr %i.q, align 8, !tbaa !76, !noalias !876 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i4.i.i.i.i, label %bb.c, label %_ZSt8__invokeIR15parser_executorJRK22common_peg_gbnf_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #31, !noalias !876, !inline_history !870 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.s, align 8, !tbaa !106, !noalias !876
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @.str.41, ptr %i.t, align 8, !tbaa !109, !noalias !876
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30, !noalias !876, !inline_history !870
  unreachable

_ZSt8__invokeIR15parser_executorJRK22common_peg_gbnf_parserEENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit: ; preds = %_ZNKSt6vectorISt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEESaISM_EE2atEm.exit.i.i.i.i
  %i.u = sext i8 %i.r to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorJRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEE9_S_vtableE, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80, !noalias !877
  call void %i.w(ptr dead_on_unwind writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(73) %i.n), !inline_history !873
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !875
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultI23common_peg_parse_resultEER15parser_executorRKSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEEJEEESt16integer_sequenceImJLm20EEEE14__visit_invokeES7_SW_(ptr dead_on_unwind noalias writable sret(%struct.common_peg_parse_result) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %struct.parser_executor, align 8    ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !263, !noalias !893, !nonnull !143, !align !144 ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !212, !noalias !893 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72, !noalias !894
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !73, !noalias !894 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
end_hunk_0
