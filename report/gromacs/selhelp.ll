Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/selhelp?download=true
inline.NumInlined: 520
inline.NumDeleted: 272
begin_hunk_0_@_ZN3gmx24createSelectionHelpTopicEv:bb.a
bb.bh:                                            ; preds = %.noexc37
  %i.fa = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i35, label %bb.bj, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i36

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i36: ; preds = %bb.bh
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.fa) #22, !inline_history !66
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc37
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %.not.i2.i32 = icmp eq ptr %i.ff, null
  br i1 %.not.i2.i32, label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i33

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i33: ; preds = %bb.bi
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !11
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff) #22, !inline_history !66
  br label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58

bb.bj:                                            ; preds = %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i36, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.fj = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %.noexc45 unwind label %bb.bq  ; 2 uses

.noexc45:                                         ; preds = %bb.bj
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN3gmx15SimpleHelpTopicIN12_GLOBAL__N_119LimitationsHelpTextEEE, i64 16), ptr %i.fj, align 8, !tbaa !11
  store ptr %i.fj, ptr %2, align 8, !tbaa !71
  invoke void @_ZN3gmx26AbstractCompositeHelpTopic11addSubTopicESt10unique_ptrINS_10IHelpTopicESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 %2)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %.noexc45
  %i.fk = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i43, label %bb.bm, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i44

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i44: ; preds = %bb.bk
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fk) #22, !inline_history !67
  br label %bb.bm

bb.bl:                                            ; preds = %.noexc45
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %2, align 8, !tbaa !71    ; 3 uses
  %.not.i2.i40 = icmp eq ptr %i.fp, null
  br i1 %.not.i2.i40, label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i41

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i41: ; preds = %bb.bl
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(8) %i.fp) #22, !inline_history !67
  br label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58

bb.bm:                                            ; preds = %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i44, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ft = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %.noexc53 unwind label %bb.bq  ; 2 uses

.noexc53:                                         ; preds = %bb.bm
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN3gmx15SimpleHelpTopicIN12_GLOBAL__N_116ExamplesHelpTextEEE, i64 16), ptr %i.ft, align 8, !tbaa !11
  store ptr %i.ft, ptr %1, align 8, !tbaa !71
  invoke void @_ZN3gmx26AbstractCompositeHelpTopic11addSubTopicESt10unique_ptrINS_10IHelpTopicESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 %1)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %.noexc53
  %i.fu = load ptr, ptr %1, align 8, !tbaa !71    ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i51, label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i52

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i52: ; preds = %bb.bn
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu) #22, !inline_history !68
  br label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit

bb.bo:                                            ; preds = %.noexc53
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %1, align 8, !tbaa !71    ; 3 uses
  %.not.i2.i48 = icmp eq ptr %i.fz, null
  br i1 %.not.i2.i48, label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i49

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i49: ; preds = %bb.bo
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(8) %i.fz) #22, !inline_history !68
  br label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58

_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bn, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.c, ptr %0, align 8, !tbaa !71
  ret void

bb.bp:                                            ; preds = %bb.a
  %i.gd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #23
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm, %bb.bj, %bb.bg, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58

_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58: ; preds = %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i4, %bb.g, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i20, %bb.m, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i33, %bb.bi, %bb.bq, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i49, %bb.bo, %bb.bl, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i41, %.body.i, %bb.bf, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i6.i, %bb.j, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i12, %bb.d, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i ], [ %i.s, %bb.g ], [ %i.s, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i4 ], [ %i.ac, %bb.j ], [ %i.ac, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i12 ], [ %i.am, %bb.m ], [ %i.am, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i20 ], [ %i.eu, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i6.i ], [ %eh.lpad-body.i, %.body.i ], [ %i.eu, %bb.bf ], [ %i.fe, %bb.bi ], [ %i.fe, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i33 ], [ %i.fo, %bb.bl ], [ %i.fo, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i41 ], [ %i.ge, %bb.bq ], [ %i.fy, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3.i49 ], [ %i.fy, %bb.bo ]
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !69
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58, %bb.bp
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt10unique_ptrIN3gmx26AbstractCompositeHelpTopicESt14default_deleteIS1_EED2Ev.exit58 ], [ %i.gd, %bb.bp ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3gmx26AbstractCompositeHelpTopicC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3gmx18CompositeHelpTopicIN12_GLOBAL__N_114CommonHelpTextEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN3gmx26AbstractCompositeHelpTopicD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK3gmx18CompositeHelpTopicIN12_GLOBAL__N_114CommonHelpTextEE4nameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZN12_GLOBAL__N_114CommonHelpText4nameE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK3gmx18CompositeHelpTopicIN12_GLOBAL__N_114CommonHelpTextEE5titleEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZN12_GLOBAL__N_114CommonHelpText5titleE
}

declare noundef zeroext i1 @_ZNK3gmx26AbstractCompositeHelpTopic12hasSubTopicsEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef ptr @_ZNK3gmx26AbstractCompositeHelpTopic12findSubTopicEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @_ZNK3gmx26AbstractCompositeHelpTopic9writeHelpERKNS_17HelpWriterContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3gmx18CompositeHelpTopicIN12_GLOBAL__N_114CommonHelpTextEE8helpTextB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.gmx::IdentityFormatter", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !78
  call void @_ZN3gmx13formatAndJoinIPKPKcNS_17IdentityFormatterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SC_S2_RKT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @_ZN12_GLOBAL__N_114CommonHelpText4textE, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114CommonHelpText4textE, i64 120), ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !78
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx13formatAndJoinIPKPKcNS_17IdentityFormatterEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SC_S2_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !23
  %.not58 = icmp eq ptr %1, %2
  br i1 %.not58, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.j = load ptr, ptr %1, align 8, !tbaa !84     ; 4 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !17
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit68, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.peel
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.l, ptr %i.b, align 8, !tbaa !22
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.peel, label %._crit_edge.i.i.peel

.noexc.i.peel:                                    ; preds = %bb.b
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20.peel unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20.peel:                                    ; preds = %.noexc.i.peel
  store ptr %i.n, ptr %6, align 8, !tbaa !20
  %i.o = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.o, ptr %i.e, align 8, !tbaa !23
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %.noexc20.peel, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc20.peel ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.peel
  %i.q = load i8, ptr %i.j, align 1, !tbaa !23
  store i8 %i.q, ptr %i.p, align 1, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.peel
  %i.r = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  store i64 %i.r, ptr %i.f, align 8, !tbaa !21
  %i.s = load ptr, ptr %6, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  store ptr %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !85
  %i.u = load ptr, ptr %6, align 8, !tbaa !20, !noalias !85 ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !85 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !85
  store i64 %i.v, ptr %i.a, align 8, !tbaa !22, !noalias !85
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i.peel, label %._crit_edge.i.i.i.peel

.noexc.i.i.peel:                                  ; preds = %bb.e
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21.peel unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc21.peel:                                    ; preds = %.noexc.i.i.peel
  store ptr %i.x, ptr %5, align 8, !tbaa !20, !alias.scope !85
  %i.y = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !85
  store i64 %i.y, ptr %i.g, align 8, !tbaa !23, !alias.scope !85
  br label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel:                           ; preds = %.noexc21.peel, %bb.e
  %i.z = phi ptr [ %i.x, %.noexc21.peel ], [ %i.g, %bb.e ] ; 2 uses
  switch i64 %i.v, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.peel
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !23
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.peel
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !85 ; 2 uses
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !21, !alias.scope !85
  %i.ac = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !85
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.af = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ag = sub i64 4611686018427387903, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %.loopexit76, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel: ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !20
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ai, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel
  %i.ak = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %i.am = load i64, ptr %i.g, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.ao = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !23
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.as, %2
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.01360 = phi ptr [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.peel ] ; 2 uses
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22 ; 2 uses
  %i.au = load i64, ptr %i.d, align 8, !tbaa !21
  %i.av = sub i64 4611686018427387903, %i.au
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.loopexit:                                        ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.peel.next
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %3, i64 noundef %i.at)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ay = load ptr, ptr %.01360, align 8, !tbaa !84 ; 4 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !17
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.loopexit68, label %bb.i

.loopexit68:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.peel
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #24
          to label %.noexc19 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.loopexit68
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !22
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %.noexc.i
  store ptr %i.bc, ptr %6, align 8, !tbaa !20
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc20, %bb.i
  %i.be = phi ptr [ %i.bc, %.noexc20 ], [ %i.e, %bb.i ] ; 2 uses
  switch i64 %i.ba, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !23
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !23
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !21
  %i.bh = load ptr, ptr %6, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  store ptr %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !86
  %i.bj = load ptr, ptr %6, align 8, !tbaa !20, !noalias !86 ; 2 uses
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !86 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !86
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !22, !noalias !86
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc21:                                         ; preds = %.noexc.i.i
  store ptr %i.bm, ptr %5, align 8, !tbaa !20, !alias.scope !86
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !86
  store i64 %i.bn, ptr %i.g, align 8, !tbaa !23, !alias.scope !86
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc21, %bb.l
  %i.bo = phi ptr [ %i.bm, %.noexc21 ], [ %i.g, %bb.l ] ; 2 uses
  switch i64 %i.bk, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !23
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !23
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !86 ; 2 uses
  store i64 %i.bq, ptr %i.h, align 8, !tbaa !21, !alias.scope !86
  %i.br = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !86
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bs, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !86
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bv = sub i64 4611686018427387903, %i.bu
  %i.bw = icmp ult i64 %i.bv, %i.bt
  br i1 %i.bw, label %.loopexit76, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit76:                                      ; preds = %bb.o, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
          to label %.noexc22 unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %.loopexit76
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.o
  %i.bx = load ptr, ptr %5, align 8, !tbaa !20
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bx, i64 noundef %i.bt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.bz = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.g
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !23
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cd = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.e
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.e, align 8, !tbaa !23
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ch = getelementptr inbounds nuw i8, ptr %.01360, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %2
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !83

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel, %.loopexit
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %.noexc.i.peel, %.loopexit68
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %.noexc.i.i.peel
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel, %.loopexit76
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.g
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp
  %i.ck = load i64, ptr %i.g, align 8, !tbaa !23
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %lpad.loopexit.split-lp114, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp42.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cm = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
end_hunk_0
