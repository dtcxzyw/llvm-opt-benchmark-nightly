inline.NumInlined: 1126
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #26
  unreachable

_ZNKSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !204
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.q, i8 0, i64 72, i1 false)
  store ptr %2, ptr %i.s, align 8, !tbaa !395
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store ptr %i.r, ptr %i.t, align 8, !tbaa !380
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store i8 0, ptr %i.u, align 8, !tbaa !396
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.af, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(89) %.0911.i.i.i, i64 40, i1 false), !alias.scope !402
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 24, i1 false), !alias.scope !397, !noalias !400
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !403, !alias.scope !400, !noalias !397
  store ptr %i.y, ptr %i.w, align 8, !tbaa !403, !alias.scope !397, !noalias !400
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !207, !alias.scope !400, !noalias !397 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZN14ArgumentParser11ParserStateC2EOS0_.exit.i.i.i.i

_ZN14ArgumentParser11ParserStateC2EOS0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 16, i1 false), !tbaa.struct !376, !alias.scope !402
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !207, !alias.scope !397, !noalias !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !400, !noalias !397
  br label %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN14ArgumentParser11ParserStateC2EOS0_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ad, ptr noundef nonnull align 8 dereferenceable(17) %i.ae, i64 17, i1 false), !alias.scope !402
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !404

_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i29 = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ah, %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i30 = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(89) %.0911.i.i.i30, i64 40, i1 false), !alias.scope !410
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 24, i1 false), !alias.scope !405, !noalias !408
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !403, !alias.scope !408, !noalias !405
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !403, !alias.scope !405, !noalias !408
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 56 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !207, !alias.scope !408, !noalias !405 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i31 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i.i.i.i.i31, label %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33, label %_ZN14ArgumentParser11ParserStateC2EOS0_.exit.i.i.i.i32

_ZN14ArgumentParser11ParserStateC2EOS0_.exit.i.i.i.i32: ; preds = %.lr.ph.i.i.i28
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !376, !alias.scope !410
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !207, !alias.scope !405, !noalias !408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !alias.scope !408, !noalias !405
  br label %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZN14ArgumentParser11ParserStateC2EOS0_.exit.i.i.i.i32, %.lr.ph.i.i.i28
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aq, ptr noundef nonnull align 8 dereferenceable(17) %i.ar, i64 17, i1 false), !alias.scope !410
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 96 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.as, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, label %.lr.ph.i.i.i28, !llvm.loop !404

_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36: ; preds = %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ah, %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.at, %_ZSt19__relocate_object_aIN14ArgumentParser11ParserStateES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN14ArgumentParser11ParserStateESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !210
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ax) #24
  br label %_ZNSt12_Vector_baseIN14ArgumentParser11ParserStateESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN14ArgumentParser11ParserStateESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit36, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !205
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !206
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !210
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @_ZN14ArgumentParser8Instance7ConsumeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40), i64, ptr) local_unnamed_addr #1

declare void @_ZN14ArgumentParser8Instance13FinishKeywordEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare ptr @_ZNK14ArgumentParser16KeywordActionMap4FindESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24), i64, ptr) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !293    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !334

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !335
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN22cmInstrumentationQuery6OptionEEZN12_GLOBAL__N_110EnumParserIS9_EESt8functionIFbS7_RT_EESt6vectorIS5_SaIS5_EEEUlS7_SA_E_E9_M_invokeERKSt9_Any_dataS7_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !204   ; 2 uses
  %.val3 = load ptr, ptr %.val, align 8           ; 5 uses
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val4 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.val5 = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8
  %.8.val3.fr.i.i.i = freeze i64 %.val6           ; 3 uses
  %i.c = ptrtoint ptr %.val4 to i64
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val4, %.val3
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = icmp eq i64 %.8.val3.fr.i.i.i, 0
  br i1 %i.g, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1)
  %exitcond22.not.i.i.i19 = icmp ult i64 %i.f, 2
  br i1 %exitcond22.not.i.i.i19, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, label %.lr.ph, !llvm.loop !411

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i
  br label %bb.b, !llvm.loop !411

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i
  %.089.us15.i.i.i20 = phi i64 [ 0, %.lr.ph ], [ %i.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i ]
  %i.k = add nuw i64 %.089.us15.i.i.i20, 1        ; 4 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val3, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i, !llvm.loop !411

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i: ; preds = %bb.b
  %exitcond23.not.i.i.i = icmp eq i64 %i.k, %3
  br i1 %exitcond23.not.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge, label %bb.b, !llvm.loop !411

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i
  %.089.i.i.i = phi i64 [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.val3, i64 %.089.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp eq i64 %.8.val3.fr.i.i.i, %i.r
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val5, ptr %i.t, i64 %.8.val3.fr.i.i.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %.lr.ph.split.i.i.i
  %i.v = add nuw i64 %.089.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %i.f
  br i1 %exitcond.not.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !411

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.b, %.lr.ph.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.089.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ]
  %i.w = trunc i64 %.us-phi.i.i.i to i32
  store i32 %i.w, ptr %2, align 4, !tbaa !311
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, !llvm.loop !411

_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.x = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i ]
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN22cmInstrumentationQuery6OptionEEZN12_GLOBAL__N_110EnumParserIS9_EESt8functionIFbS7_RT_EESt6vectorIS5_SaIS5_EEEUlS7_SA_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.i
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEEUlSB_RS2_E_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %.val, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %.val7.i = load ptr, ptr %.val6, align 8        ; 3 uses
  %i.a = getelementptr i8, ptr %.val6, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8          ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 7 uses
  %i.c = ptrtoint ptr %.val8.i to i64
  %i.d = ptrtoint ptr %.val7.i to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i, %.val7.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc3.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ugt i64 %i.e, 9223372036854775776
  br i1 %i.f, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !338

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i.i unwind label %bb.h

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28
          to label %.noexc3.i.i.i unwind label %bb.h

.noexc3.i.i.i:                                    ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.h = phi ptr [ null, %bb.d ], [ %i.g, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !293
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !294
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !335
  %i.l = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %.val7.i, ptr %.val8.i, ptr noundef %i.h)
          to label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E15_M_init_functorIRKSM_EEvRSt9_Any_dataOSE_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc3.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !293  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !335
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #24
  br label %.body.i.i.i

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.g, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.m, %bb.g ], [ %i.m, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #24
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E15_M_init_functorIRKSM_EEvRSt9_Any_dataOSE_.exit.i: ; preds = %.noexc3.i.i.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !294
  store ptr %i.b, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.i:                                             ; preds = %bb.a
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !204 ; 6 uses
  %i.t = icmp eq ptr %.val9.i, null
  br i1 %i.t, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %.val9.i, align 8, !tbaa !293 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !294  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.u, %bb.j ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !334

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.val9.i, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.j
  %i.ad = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.u, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !335
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i

_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 24) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i, %bb.i, %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery6OptionEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E15_M_init_functorIRKSM_EEvRSt9_Any_dataOSE_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !12
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !17
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %.014, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !412

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !293    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !334

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !335
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN22cmInstrumentationQuery4HookEEZN12_GLOBAL__N_110EnumParserIS9_EESt8functionIFbS7_RT_EESt6vectorIS5_SaIS5_EEEUlS7_SA_E_E9_M_invokeERKSt9_Any_dataS7_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !204   ; 2 uses
  %.val3 = load ptr, ptr %.val, align 8           ; 5 uses
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val4 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.val5 = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.b, align 8
  %.8.val3.fr.i.i.i = freeze i64 %.val6           ; 3 uses
  %i.c = ptrtoint ptr %.val4 to i64
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val4, %.val3
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = icmp eq i64 %.8.val3.fr.i.i.i, 0
  br i1 %i.g, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1)
  %exitcond22.not.i.i.i19 = icmp ult i64 %i.f, 2
  br i1 %exitcond22.not.i.i.i19, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, label %.lr.ph, !llvm.loop !413

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i
  br label %bb.b, !llvm.loop !413

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i
  %.089.us15.i.i.i20 = phi i64 [ 0, %.lr.ph ], [ %i.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i ]
  %i.k = add nuw i64 %.089.us15.i.i.i20, 1        ; 4 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val3, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i, !llvm.loop !413

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i: ; preds = %bb.b
  %exitcond23.not.i.i.i = icmp eq i64 %i.k, %3
  br i1 %exitcond23.not.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge, label %bb.b, !llvm.loop !413

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i
  %.089.i.i.i = phi i64 [ %i.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.val3, i64 %.089.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp eq i64 %.8.val3.fr.i.i.i, %i.r
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val5, ptr %i.t, i64 %.8.val3.fr.i.i.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %.lr.ph.split.i.i.i
  %i.v = add nuw i64 %.089.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %i.f
  br i1 %exitcond.not.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !413

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.b, %.lr.ph.split.us.i.i.i
  %.us-phi.i.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.split.us.i.i.i ], [ %.089.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i ]
  %i.w = trunc i64 %.us-phi.i.i.i to i32
  store i32 %i.w, ptr %2, align 4, !tbaa !329
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit, !llvm.loop !413

_ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.x = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.preheader.i.i.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.us.i.i.i._ZSt10__invoke_rIbRZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISA_SaISA_EEEUlSC_RS3_E_JSC_SK_EENSt9enable_ifIX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSO_DpOSP_.exit.loopexit_crit_edge ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5.i.i.i ]
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN22cmInstrumentationQuery4HookEEZN12_GLOBAL__N_110EnumParserIS9_EESt8functionIFbS7_RT_EESt6vectorIS5_SaIS5_EEEUlS7_SA_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.i
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEEUlSB_RS2_E_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !204
  store ptr %.val, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %.val7.i = load ptr, ptr %.val6, align 8        ; 3 uses
  %i.a = getelementptr i8, ptr %.val6, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8          ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 7 uses
  %i.c = ptrtoint ptr %.val8.i to i64
  %i.d = ptrtoint ptr %.val7.i to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i, %.val7.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc3.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ugt i64 %i.e, 9223372036854775776
  br i1 %i.f, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !338

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i.i unwind label %bb.h

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28
          to label %.noexc3.i.i.i unwind label %bb.h

.noexc3.i.i.i:                                    ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.h = phi ptr [ null, %bb.d ], [ %i.g, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !293
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !294
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !335
  %i.l = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %.val7.i, ptr %.val8.i, ptr noundef %i.h)
          to label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E15_M_init_functorIRKSM_EEvRSt9_Any_dataOSE_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc3.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !293  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !335
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #24
  br label %.body.i.i.i

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.g, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.m, %bb.g ], [ %i.m, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #24
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E15_M_init_functorIRKSM_EEvRSt9_Any_dataOSE_.exit.i: ; preds = %.noexc3.i.i.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !294
  store ptr %i.b, ptr %0, align 8, !tbaa !204
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.i:                                             ; preds = %bb.a
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !204 ; 6 uses
  %i.t = icmp eq ptr %.val9.i, null
  br i1 %i.t, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %.val9.i, align 8, !tbaa !293 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !294  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.u, %bb.j ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !334

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.val9.i, align 8, !tbaa !293
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.j
  %i.ad = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.u, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !335
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i

_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val9.i, i64 noundef 24) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorIS9_SaIS9_EEENUlSB_RS2_E_D2Ev.exit.i.i, %bb.i, %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_110EnumParserIN22cmInstrumentationQuery4HookEEESt8functionIFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_EESt6vectorISB_SaISB_EEEUlSD_RS4_E_E15_M_init_functorIRKSM_EEvRSt9_Any_dataOSE_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmInstrumentationCommand.cxx() #18 section ".text.startup" {
bb.a:
  store i64 7, ptr @_ZN12cmStateEnumsL16AllTargetDomainsE, align 8, !tbaa !15
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12cmStateEnumsL16AllTargetDomainsE) ; 0 uses
  tail call void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5cmsysL26SystemToolsManagerInstanceE)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys18SystemToolsManagerD1Ev, ptr nonnull @_ZN5cmsysL26SystemToolsManagerInstanceE, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!18, !14, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !7, i64 16}
!19 = !{!7, !7, i64 0}
!20 = !{!18, !16, i64 8}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTS17cmExecutionStatus", !23, i64 0, !18, i64 8, !24, i64 40, !24, i64 41, !24, i64 42, !24, i64 43, !25, i64 44, !29, i64 56}
!23 = !{!"p1 _ZTS10cmMakefile", !11, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSSt8optionalIiE", !26, i64 0}
!26 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !27, i64 0}
!27 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !28, i64 0}
!28 = !{!"_ZTSSt22_Optional_payload_baseIiE", !7, i64 0, !24, i64 4}
!29 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!33 = !{}
!34 = !{i64 8}
!35 = !{!36, !24, i64 1844}
!36 = !{!"_ZTS5cmake", !37, i64 0, !42, i64 24, !18, i64 48, !18, i64 80, !18, i64 112, !48, i64 144, !48, i64 184, !24, i64 224, !24, i64 225, !24, i64 226, !29, i64 232, !18, i64 256, !53, i64 288, !24, i64 320, !24, i64 321, !55, i64 328, !24, i64 408, !24, i64 409, !63, i64 412, !64, i64 416, !77, i64 1032, !78, i64 1040, !24, i64 1048, !24, i64 1049, !24, i64 1050, !85, i64 1056, !18, i64 1104, !18, i64 1136, !18, i64 1168, !18, i64 1200, !18, i64 1232, !18, i64 1264, !18, i64 1296, !18, i64 1328, !94, i64 1360, !94, i64 1440, !94, i64 1520, !94, i64 1600, !94, i64 1680, !94, i64 1760, !24, i64 1840, !24, i64 1841, !24, i64 1842, !24, i64 1843, !24, i64 1844, !18, i64 1848, !102, i64 1880, !18, i64 1888, !109, i64 1920, !112, i64 1968, !115, i64 2016, !118, i64 2064, !125, i64 2072, !132, i64 2080, !139, i64 2088, !146, i64 2096, !149, i64 2120, !156, i64 2128, !24, i64 2152, !18, i64 2160, !29, i64 2192, !161, i64 2216, !161, i64 2264, !164, i64 2312, !24, i64 2316, !24, i64 2317, !29, i64 2320, !165, i64 2344, !172, i64 2352, !179, i64 2360, !24, i64 2376, !18, i64 2384, !18, i64 2416, !25, i64 2448}
!37 = !{!"_ZTSSt6vectorISt10unique_ptrI24cmGlobalGeneratorFactorySt14default_deleteIS1_EESaIS4_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI24cmGlobalGeneratorFactorySt14default_deleteIS1_EESaIS4_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI24cmGlobalGeneratorFactorySt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI24cmGlobalGeneratorFactorySt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSSt10unique_ptrI24cmGlobalGeneratorFactorySt14default_deleteIS0_EE", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIP41cmExternalMakefileProjectGeneratorFactorySaIS1_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIP41cmExternalMakefileProjectGeneratorFactorySaIS1_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIP41cmExternalMakefileProjectGeneratorFactorySaIS1_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIP41cmExternalMakefileProjectGeneratorFactorySaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p2 _ZTS41cmExternalMakefileProjectGeneratorFactory", !47, i64 0}
!47 = !{!"any p2 pointer", !11, i64 0}
!48 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !49, i64 0}
!49 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !50, i64 0}
!50 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !51, i64 0}
!51 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !52, i64 0}
!52 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !24, i64 32}
!53 = !{!"_ZTSSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEE", !54, i64 0, !11, i64 24}
!54 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!55 = !{!"_ZTSSt5stackIbSt5dequeIbSaIbEEE", !56, i64 0}
!56 = !{!"_ZTSSt5dequeIbSaIbEE", !57, i64 0}
!57 = !{!"_ZTSSt11_Deque_baseIbSaIbEE", !58, i64 0}
!58 = !{!"_ZTSNSt11_Deque_baseIbSaIbEE11_Deque_implE", !59, i64 0}
!59 = !{!"_ZTSNSt11_Deque_baseIbSaIbEE16_Deque_impl_dataE", !60, i64 0, !16, i64 8, !61, i64 16, !61, i64 48}
!60 = !{!"p2 bool", !47, i64 0}
!61 = !{!"_ZTSSt15_Deque_iteratorIbRbPbE", !62, i64 0, !62, i64 8, !62, i64 16, !60, i64 24}
!62 = !{!"p1 bool", !11, i64 0}
!63 = !{!"_ZTSN12cmTraceEnums17TraceOutputFormatE", !7, i64 0}
!64 = !{!"_ZTS21cmGeneratedFileStream", !65, i64 0, !76, i64 248}
!65 = !{!"_ZTSSt14basic_ofstreamIcSt11char_traitsIcEE", !66, i64 0, !67, i64 8}
!66 = !{!"_ZTSSo"}
!67 = !{!"_ZTSSt13basic_filebufIcSt11char_traitsIcEE", !68, i64 0, !7, i64 64, !71, i64 104, !73, i64 120, !74, i64 124, !74, i64 132, !74, i64 140, !14, i64 152, !16, i64 160, !24, i64 168, !24, i64 169, !24, i64 170, !7, i64 171, !14, i64 176, !14, i64 184, !24, i64 192, !75, i64 200, !14, i64 208, !16, i64 216, !14, i64 224, !14, i64 232}
!68 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !69, i64 56}
!69 = !{!"_ZTSSt6locale", !70, i64 0}
!70 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!71 = !{!"_ZTSSt12__basic_fileIcE", !72, i64 0, !24, i64 8}
!72 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!73 = !{!"_ZTSSt13_Ios_Openmode", !7, i64 0}
!74 = !{!"_ZTS11__mbstate_t", !6, i64 0, !7, i64 4}
!75 = !{!"p1 _ZTSSt7codecvtIcc11__mbstate_tE", !11, i64 0}
!76 = !{!"_ZTS25cmGeneratedFileStreamBase", !18, i64 0, !18, i64 32, !18, i64 64, !24, i64 96, !24, i64 97, !24, i64 98, !24, i64 99}
!77 = !{!"p1 _ZTS5cmake", !11, i64 0}
!78 = !{!"_ZTSSt10unique_ptrI14cmConfigureLogSt14default_deleteIS0_EE", !79, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataI14cmConfigureLogSt14default_deleteIS0_ELb1ELb1EE", !80, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implI14cmConfigureLogSt14default_deleteIS0_EE", !81, i64 0}
!81 = !{!"_ZTSSt5tupleIJP14cmConfigureLogSt14default_deleteIS0_EEE", !82, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJP14cmConfigureLogSt14default_deleteIS0_EEE", !83, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm0EP14cmConfigureLogLb0EE", !84, i64 0}
!84 = !{!"p1 _ZTS14cmConfigureLog", !11, i64 0}
!85 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4lessIS5_ESaISt4pairIKS5_bEEE", !86, i64 0}
!86 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !87, i64 0}
!87 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !88, i64 0, !90, i64 8}
!88 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !89, i64 0}
!89 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!90 = !{!"_ZTSSt15_Rb_tree_header", !91, i64 0, !16, i64 32}
!91 = !{!"_ZTSSt18_Rb_tree_node_base", !92, i64 0, !93, i64 8, !93, i64 16, !93, i64 24}
!92 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!93 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!94 = !{!"_ZTSN5cmake14FileExtensionsE", !29, i64 0, !95, i64 24}
!95 = !{!"_ZTSSt13unordered_setISt17basic_string_viewIcSt11char_traitsIcEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !96, i64 0}
!96 = !{!"_ZTSSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !97, i64 0, !16, i64 8, !98, i64 16, !16, i64 24, !100, i64 32, !99, i64 48}
!97 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !47, i64 0}
!98 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !99, i64 0}
!99 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!100 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !101, i64 0, !16, i64 8}
!101 = !{!"float", !7, i64 0}
!102 = !{!"_ZTSSt10unique_ptrI15cmFileTimeCacheSt14default_deleteIS0_EE", !103, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataI15cmFileTimeCacheSt14default_deleteIS0_ELb1ELb1EE", !104, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_implI15cmFileTimeCacheSt14default_deleteIS0_EE", !105, i64 0}
!105 = !{!"_ZTSSt5tupleIJP15cmFileTimeCacheSt14default_deleteIS0_EEE", !106, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJP15cmFileTimeCacheSt14default_deleteIS0_EEE", !107, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EP15cmFileTimeCacheLb0EE", !108, i64 0}
!108 = !{!"p1 _ZTS15cmFileTimeCache", !11, i64 0}
!109 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15cmInstalledFileSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !110, i64 0}
!110 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_15cmInstalledFileESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !111, i64 0}
!111 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_15cmInstalledFileESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !88, i64 0, !90, i64 8}
!112 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIN19cmCMakePresetsGraph13CacheVariableEESt4lessIS5_ESaISt4pairIKS5_S9_EEE", !113, i64 0}
!113 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIN19cmCMakePresetsGraph13CacheVariableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !114, i64 0}
!114 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIN19cmCMakePresetsGraph13CacheVariableEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !88, i64 0, !90, i64 8}
!115 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !116, i64 0}
!116 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !117, i64 0}
!117 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8optionalIS5_EESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !88, i64 0, !90, i64 8}
!118 = !{!"_ZTSSt10unique_ptrI15cmVariableWatchSt14default_deleteIS0_EE", !119, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI15cmVariableWatchSt14default_deleteIS0_ELb1ELb1EE", !120, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implI15cmVariableWatchSt14default_deleteIS0_EE", !121, i64 0}
!121 = !{!"_ZTSSt5tupleIJP15cmVariableWatchSt14default_deleteIS0_EEE", !122, i64 0}
!122 = !{!"_ZTSSt11_Tuple_implILm0EJP15cmVariableWatchSt14default_deleteIS0_EEE", !123, i64 0}
!123 = !{!"_ZTSSt10_Head_baseILm0EP15cmVariableWatchLb0EE", !124, i64 0}
!124 = !{!"p1 _ZTS15cmVariableWatch", !11, i64 0}
!125 = !{!"_ZTSSt10unique_ptrI9cmFileAPISt14default_deleteIS0_EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataI9cmFileAPISt14default_deleteIS0_ELb1ELb1EE", !127, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implI9cmFileAPISt14default_deleteIS0_EE", !128, i64 0}
!128 = !{!"_ZTSSt5tupleIJP9cmFileAPISt14default_deleteIS0_EEE", !129, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJP9cmFileAPISt14default_deleteIS0_EEE", !130, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EP9cmFileAPILb0EE", !131, i64 0}
!131 = !{!"p1 _ZTS9cmFileAPI", !11, i64 0}
!132 = !{!"_ZTSSt10unique_ptrI17cmInstrumentationSt14default_deleteIS0_EE", !133, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataI17cmInstrumentationSt14default_deleteIS0_ELb1ELb1EE", !134, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_implI17cmInstrumentationSt14default_deleteIS0_EE", !135, i64 0}
!135 = !{!"_ZTSSt5tupleIJP17cmInstrumentationSt14default_deleteIS0_EEE", !136, i64 0}
!136 = !{!"_ZTSSt11_Tuple_implILm0EJP17cmInstrumentationSt14default_deleteIS0_EEE", !137, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm0EP17cmInstrumentationLb0EE", !138, i64 0}
!138 = !{!"p1 _ZTS17cmInstrumentation", !11, i64 0}
!139 = !{!"_ZTSSt10unique_ptrI7cmStateSt14default_deleteIS0_EE", !140, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_dataI7cmStateSt14default_deleteIS0_ELb1ELb1EE", !141, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implI7cmStateSt14default_deleteIS0_EE", !142, i64 0}
!142 = !{!"_ZTSSt5tupleIJP7cmStateSt14default_deleteIS0_EEE", !143, i64 0}
!143 = !{!"_ZTSSt11_Tuple_implILm0EJP7cmStateSt14default_deleteIS0_EEE", !144, i64 0}
!144 = !{!"_ZTSSt10_Head_baseILm0EP7cmStateLb0EE", !145, i64 0}
!145 = !{!"p1 _ZTS7cmState", !11, i64 0}
!146 = !{!"_ZTS15cmStateSnapshot", !145, i64 0, !147, i64 8}
!147 = !{!"_ZTSN12cmLinkedTreeIN13cmStateDetail16SnapshotDataTypeEE8iteratorE", !148, i64 0, !16, i64 8}
!148 = !{!"p1 _ZTS12cmLinkedTreeIN13cmStateDetail16SnapshotDataTypeEE", !11, i64 0}
!149 = !{!"_ZTSSt10unique_ptrI11cmMessengerSt14default_deleteIS0_EE", !150, i64 0}
!150 = !{!"_ZTSSt15__uniq_ptr_dataI11cmMessengerSt14default_deleteIS0_ELb1ELb1EE", !151, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_implI11cmMessengerSt14default_deleteIS0_EE", !152, i64 0}
!152 = !{!"_ZTSSt5tupleIJP11cmMessengerSt14default_deleteIS0_EEE", !153, i64 0}
!153 = !{!"_ZTSSt11_Tuple_implILm0EJP11cmMessengerSt14default_deleteIS0_EEE", !154, i64 0}
!154 = !{!"_ZTSSt10_Head_baseILm0EP11cmMessengerLb0EE", !155, i64 0}
!155 = !{!"p1 _ZTS11cmMessenger", !11, i64 0}
!156 = !{!"_ZTSSt6vectorIN5cmake20DiagnosticAlterationESaIS1_EE", !157, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseIN5cmake20DiagnosticAlterationESaIS1_EE", !158, i64 0}
!158 = !{!"_ZTSNSt12_Vector_baseIN5cmake20DiagnosticAlterationESaIS1_EE12_Vector_implE", !159, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN5cmake20DiagnosticAlterationESaIS1_EE17_Vector_impl_dataE", !160, i64 0, !160, i64 8, !160, i64 16}
!160 = !{!"p1 _ZTSN5cmake20DiagnosticAlterationE", !11, i64 0}
!161 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !162, i64 0}
!162 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !163, i64 0}
!163 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !88, i64 0, !90, i64 8}
!164 = !{!"_ZTSN7Message8LogLevelE", !7, i64 0}
!165 = !{!"_ZTSSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EE", !166, i64 0}
end_hunk_0
