Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/tutorial7?download=true
inline.NumInlined: 1314
inline.NumDeleted: 478
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z16load_and_executePKN5boost10filesystem4pathEm:._crit_edge.i.i

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost3dll12library_info7symbolsB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(524) %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  switch i32 %i.b, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail8elf_infoIjE7symbolsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail8elf_infoImE7symbolsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail7pe_infoIjE7symbolsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail7pe_infoImE7symbolsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail10macho_infoIjE7symbolsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost3dll6detail10macho_infoImE7symbolsB5cxx11ERSt14basic_ifstreamIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !26
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::vector.5", align 8     ; 15 uses
  %4 = alloca %"class.boost::filesystem::path", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = add nsw i32 %0, -1                       ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.b, label %_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.not71 = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %.not71)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = shl nuw nsw i64 %i.d, 5
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #32
          to label %.noexc17 unwind label %bb.e   ; 6 uses

.noexc17:                                         ; preds = %_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE11_M_allocateEm.exit.i
  %i.j = load ptr, ptr %3, align 8, !tbaa !58     ; 5 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc17, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.i, %.noexc17 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.j, %.noexc17 ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i.i, align 8, !tbaa !21, !alias.scope !170, !noalias !171
  %i.m = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !171, !noalias !170 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27, !alias.scope !171, !noalias !170 ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false), !alias.scope !172
  br label %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.m, ptr %.012.i.i.i.i, align 8, !tbaa !25, !alias.scope !170, !noalias !171
  %i.t = load i64, ptr %i.n, align 8, !tbaa !26, !alias.scope !171, !noalias !170
  store i64 %i.t, ptr %i.l, align 8, !tbaa !26, !alias.scope !170, !noalias !171
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !27, !alias.scope !171, !noalias !170
  br label %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.u = phi i64 [ %i.q, %bb.c ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !27, !alias.scope !170, !noalias !171
  store ptr %i.n, ptr %.0911.i.i.i.i, align 8, !tbaa !25, !alias.scope !171, !noalias !170
  store i64 0, ptr %i.v, align 8, !tbaa !27, !alias.scope !171, !noalias !170
  store i8 0, ptr %i.n, align 8, !tbaa !26, !alias.scope !171, !noalias !170
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc17
  %.not.i8.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.j to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ac) #30
  br label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, %bb.d
  store ptr %i.i, ptr %3, align 8, !tbaa !58
  store ptr %i.i, ptr %i.g, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.d
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !60
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre44 = load ptr, ptr %3, align 8, !tbaa !58
  %.pre45 = load ptr, ptr %i.ai, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit
  %i.aj = phi ptr [ %.pre45, %._crit_edge.loopexit ], [ %i.i, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit ]
  %i.ak = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ %i.i, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 5
  invoke void @_Z16load_and_executePKN5boost10filesystem4pathEm(ptr noundef nonnull %i.ak, i64 noundef %i.ao)
          to label %bb.u unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE11_M_allocateEm.exit.i, %bb.b, %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.ae, ptr %2, align 8, !tbaa !21
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #28
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %.noexc.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.at, ptr %i.b, align 8, !tbaa !23
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc19 unwind label %.loopexit ; 2 uses

.noexc19:                                         ; preds = %.noexc.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !25
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.aw, ptr %i.ae, align 8, !tbaa !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc19, %bb.g
  %i.ax = phi ptr [ %i.av, %.noexc19 ], [ %i.ae, %bb.g ] ; 2 uses
  switch i64 %i.at, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !26
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !26
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.ar, i64 %i.at, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  store i64 %i.az, ptr %i.af, align 8, !tbaa !27
  %i.ba = load ptr, ptr %2, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bc = call noundef zeroext i1 @_ZN14b2_workarounds17is_shared_libraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.bd = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ae
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.bf = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.bc, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 4 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !21
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.noexc.i22, label %bb.l

.noexc.i22:                                       ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #28
          to label %.noexc23 unwind label %.loopexit.split-lp34

.noexc23:                                         ; preds = %.noexc.i22
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !23
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i.i21, label %._crit_edge.i.i.i20

.noexc.i.i21:                                     ; preds = %bb.l
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %.loopexit33 ; 2 uses

.noexc24:                                         ; preds = %.noexc.i.i21
  store ptr %i.bl, ptr %4, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.bm, ptr %i.ag, align 8, !tbaa !26
  br label %._crit_edge.i.i.i20

._crit_edge.i.i.i20:                              ; preds = %.noexc24, %bb.l
  %i.bn = phi ptr [ %i.bl, %.noexc24 ], [ %i.ag, %bb.l ] ; 2 uses
  switch i64 %i.bj, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i20
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !26
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bh, i64 %i.bj, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i20
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  store i64 %i.bp, ptr %i.ah, align 8, !tbaa !27
  %i.bq = load ptr, ptr %4, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 7 uses
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !21
  %i.bv = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ag
  br i1 %i.bw, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bx = load i64, ptr %i.ah, align 8, !tbaa !27 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !25
  %i.ca = load i64, ptr %i.ag, align 8, !tbaa !26
  store i64 %i.ca, ptr %i.bu, align 8, !tbaa !26
  %.pre = load i64, ptr %i.ah, align 8, !tbaa !27
  br label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cb = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bx, %bb.q ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !27
  store ptr %i.ag, ptr %4, align 8, !tbaa !25
  store i64 0, ptr %i.ah, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %i.cd, ptr %i.ai, align 8, !tbaa !59
  br label %_ZN5boost10filesystem4pathD2Ev.exit

bb.r:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit unwind label %bb.s

_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.r
  %.pre43 = load ptr, ptr %4, align 8, !tbaa !25  ; 2 uses
  %i.ce = icmp eq ptr %.pre43, %i.ag
  br i1 %i.ce, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit
  %i.cf = load i64, ptr %i.ag, align 8, !tbaa !26
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.pre43, i64 noundef %i.cg) #30
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE9push_backEOS2_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
end_hunk_0
begin_hunk_1_@_ZSt19__throw_logic_errorPKc

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost10filesystem4pathESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #28
  unreachable

_ZNKSt6vectorIN5boost10filesystem4pathESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !21
  %i.s = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5boost10filesystem4pathESaIS2_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN5boost10filesystem4pathC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN5boost10filesystem4pathESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !25
  %i.z = load i64, ptr %i.t, align 8, !tbaa !26
  store i64 %i.z, ptr %i.r, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZN5boost10filesystem4pathC2EOS1_.exit

_ZN5boost10filesystem4pathC2EOS1_.exit:           ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !27
  store ptr %i.t, ptr %2, align 8, !tbaa !25
  store i64 0, ptr %i.ab, align 8, !tbaa !27
  store i8 0, ptr %i.t, align 8, !tbaa !26
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost10filesystem4pathC2EOS1_.exit, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5boost10filesystem4pathC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5boost10filesystem4pathC2EOS1_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !380, !noalias !381
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !381, !noalias !380 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27, !alias.scope !381, !noalias !380 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !382
  br label %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !380, !noalias !381
  %i.al = load i64, ptr %i.af, align 8, !tbaa !26, !alias.scope !381, !noalias !380
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !26, !alias.scope !380, !noalias !381
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !381, !noalias !380
  br label %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !27, !alias.scope !380, !noalias !381
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !25, !alias.scope !381, !noalias !380
  store i64 0, ptr %i.an, align 8, !tbaa !27, !alias.scope !381, !noalias !380
  store i8 0, ptr %i.af, align 8, !tbaa !26, !alias.scope !381, !noalias !380
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN5boost10filesystem4pathC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN5boost10filesystem4pathC2EOS1_.exit ], [ %i.aq, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !383, !noalias !384
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !25, !alias.scope !384, !noalias !383 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27, !alias.scope !384, !noalias !383 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !385
  br label %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !383, !noalias !384
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !26, !alias.scope !384, !noalias !383
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !26, !alias.scope !383, !noalias !384
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !27, !alias.scope !384, !noalias !383
  br label %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !27, !alias.scope !383, !noalias !384
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !25, !alias.scope !384, !noalias !383
  store i64 0, ptr %i.bc, align 8, !tbaa !27, !alias.scope !384, !noalias !383
  store i8 0, ptr %i.au, align 8, !tbaa !26, !alias.scope !384, !noalias !383
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1

_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bf, %_ZSt19__relocate_object_aIN5boost10filesystem4pathES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #30
  br label %_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5boost10filesystem4pathESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{null, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !22, i64 8, !14, i64 16}
!25 = !{!24, !19, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!24, !22, i64 8}
!28 = !{!"vtable pointer", !13, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!31 = !{!"_ZTSSt6locale", !30, i64 0}
!32 = !{!"_ZTSN5boost3dll6detail19shared_library_implE", !18, i64 0}
!33 = !{!32, !18, i64 0}
!34 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!35, !34, i64 16}
!40 = !{!15, !15, i64 0}
!41 = !{!"p1 _ZTSNSt3_V214error_categoryE", !18, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTSSi", !22, i64 8}
!44 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !31, i64 56}
!45 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!46 = !{!"bool", !14, i64 0}
!47 = !{!"_ZTSSt12__basic_fileIcE", !45, i64 0, !46, i64 8}
!48 = !{!"_ZTSSt13_Ios_Openmode", !14, i64 0}
!49 = !{!"_ZTS11__mbstate_t", !15, i64 0, !14, i64 4}
!50 = !{!"p1 _ZTSSt7codecvtIcc11__mbstate_tE", !18, i64 0}
!51 = !{!"_ZTSSt13basic_filebufIcSt11char_traitsIcEE", !44, i64 0, !14, i64 64, !47, i64 104, !48, i64 120, !49, i64 124, !49, i64 132, !49, i64 140, !19, i64 152, !22, i64 160, !46, i64 168, !46, i64 169, !46, i64 170, !14, i64 171, !19, i64 176, !19, i64 184, !46, i64 192, !50, i64 200, !19, i64 208, !22, i64 216, !19, i64 224, !19, i64 232}
!52 = !{!"_ZTSSt14basic_ifstreamIcSt11char_traitsIcEE", !43, i64 0, !51, i64 16}
!53 = !{!"_ZTSN5boost3dll12library_infoUt_E", !14, i64 0}
!54 = !{!"_ZTSN5boost3dll12library_infoE", !52, i64 0, !53, i64 520}
!55 = !{!54, !53, i64 520}
!56 = !{!"p1 _ZTSN5boost10filesystem4pathE", !18, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN5boost10filesystem4pathESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{!57, !56, i64 16}
!61 = !{!19, !19, i64 0}
!62 = !{!"p1 _ZTSN5boost6system14error_categoryE", !18, i64 0}
!63 = !{!"_ZTSN5boost6system15error_conditionE", !15, i64 0, !62, i64 8}
!64 = !{!63, !15, i64 0}
!65 = !{!63, !62, i64 8}
!66 = !{!"long long", !14, i64 0}
!67 = !{!"_ZTSSt13__atomic_baseIjE", !15, i64 0}
!68 = !{!"_ZTSSt6atomicIjE", !67, i64 0}
!69 = !{!"_ZTSN5boost6system14error_categoryE", !66, i64 8, !14, i64 16, !68, i64 48}
!70 = !{!69, !66, i64 8}
!71 = !{!"_ZTSN5boost6system10error_codeE", !14, i64 0, !22, i64 16}
!72 = !{!71, !22, i64 16}
!73 = !{!"_ZTSSt10error_code", !15, i64 0, !41, i64 8}
!74 = !{!73, !41, i64 8}
!75 = !{!"short", !14, i64 0}
!76 = !{!"_ZTSN5boost3dll6detail17IMAGE_DOS_HEADER_E", !75, i64 0, !75, i64 2, !75, i64 4, !75, i64 6, !75, i64 8, !75, i64 10, !75, i64 12, !75, i64 14, !75, i64 16, !75, i64 18, !75, i64 20, !75, i64 22, !75, i64 24, !75, i64 26, !14, i64 28, !75, i64 36, !75, i64 38, !14, i64 40, !15, i64 60}
!77 = !{!76, !15, i64 60}
!78 = !{!"_ZTSN5boost3dll6detail18IMAGE_FILE_HEADER_E", !75, i64 0, !75, i64 2, !15, i64 4, !15, i64 8, !15, i64 12, !75, i64 16, !75, i64 18}
!79 = !{!"_ZTSN5boost3dll6detail30IMAGE_OPTIONAL_HEADER_templateIjEE", !75, i64 0, !14, i64 2, !14, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !14, i64 20, !15, i64 28, !15, i64 32, !15, i64 36, !75, i64 40, !75, i64 42, !75, i64 44, !75, i64 46, !75, i64 48, !75, i64 50, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !75, i64 68, !75, i64 70, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !14, i64 96}
!80 = !{!"_ZTSN5boost3dll6detail25IMAGE_NT_HEADERS_templateIjEE", !15, i64 0, !78, i64 4, !79, i64 24}
!81 = !{!"_ZTSN5boost3dll6detail30IMAGE_OPTIONAL_HEADER_templateImEE", !75, i64 0, !14, i64 2, !14, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !14, i64 20, !22, i64 24, !15, i64 32, !15, i64 36, !75, i64 40, !75, i64 42, !75, i64 44, !75, i64 46, !75, i64 48, !75, i64 50, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !75, i64 68, !75, i64 70, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !15, i64 104, !15, i64 108, !14, i64 112}
!82 = !{!"_ZTSN5boost3dll6detail25IMAGE_NT_HEADERS_templateImEE", !15, i64 0, !78, i64 4, !81, i64 24}
!83 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !18, i64 0}
!84 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !83, i64 0}
!85 = !{!"_ZTSN5boost9exceptionE", !84, i64 8, !19, i64 16, !19, i64 24, !15, i64 32, !15, i64 36}
!86 = !{!85, !15, i64 32}
!87 = !{!85, !15, i64 36}
!88 = !{!84, !83, i64 0}
!89 = !{!"_ZTSN5boost3dll6detail17Elf_Ehdr_templateIjEE", !14, i64 0, !75, i64 16, !75, i64 18, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !75, i64 40, !75, i64 42, !75, i64 44, !75, i64 46, !75, i64 48, !75, i64 50}
!90 = !{!89, !75, i64 48}
!91 = !{!89, !15, i64 32}
!92 = !{!"_ZTSN5boost3dll6detail17Elf_Shdr_templateIjEE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!93 = !{!92, !15, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!95 = !{!94, !19, i64 8}
!96 = !{!94, !19, i64 0}
!97 = !{!92, !15, i64 20}
!98 = !{!"p1 _ZTSN5boost3dll6detail16Elf_Sym_templateIjEE", !18, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN5boost3dll6detail16Elf_Sym_templateIjEESaIS4_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!99, !98, i64 8}
!101 = !{!99, !98, i64 0}
!102 = !{!94, !19, i64 16}
!103 = !{!99, !98, i64 16}
!104 = !{!34, !34, i64 0}
!105 = !{!"_ZTSN5boost3dll6detail17Elf_Ehdr_templateImEE", !14, i64 0, !75, i64 16, !75, i64 18, !15, i64 20, !22, i64 24, !22, i64 32, !22, i64 40, !15, i64 48, !75, i64 52, !75, i64 54, !75, i64 56, !75, i64 58, !75, i64 60, !75, i64 62}
!106 = !{!105, !75, i64 60}
!107 = !{!105, !22, i64 40}
!108 = !{!"_ZTSN5boost3dll6detail17Elf_Shdr_templateImEE", !15, i64 0, !15, i64 4, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !15, i64 40, !15, i64 44, !22, i64 48, !22, i64 56}
!109 = !{!108, !15, i64 0}
!110 = !{!108, !22, i64 32}
!111 = !{!"p1 _ZTSN5boost3dll6detail16Elf_Sym_templateImEE", !18, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN5boost3dll6detail16Elf_Sym_templateImEESaIS4_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 8}
!114 = !{!112, !111, i64 0}
!115 = !{!112, !111, i64 16}
!116 = !{!80, !75, i64 6}
!117 = !{!"_ZTSN5boost3dll6detail23IMAGE_EXPORT_DIRECTORY_E", !15, i64 0, !15, i64 4, !75, i64 8, !75, i64 10, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!118 = !{!117, !15, i64 20}
!119 = !{!117, !15, i64 32}
!120 = !{!"_ZTSN5boost3dll6detail21IMAGE_SECTION_HEADER_E", !14, i64 0, !14, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !75, i64 32, !75, i64 34, !15, i64 36}
!121 = !{!120, !15, i64 12}
!122 = !{!120, !15, i64 16}
!123 = !{!120, !15, i64 20}
!124 = !{!117, !15, i64 36}
!125 = !{!117, !15, i64 28}
!126 = !{!75, !75, i64 0}
!127 = !{!82, !75, i64 6}
!128 = !{!92, !15, i64 16}
!129 = !{!108, !22, i64 24}
!130 = !{!"_ZTSN5boost3dll6detail21IMAGE_DATA_DIRECTORY_E", !15, i64 0, !15, i64 4}
!131 = !{!130, !15, i64 0}
!132 = !{!"_ZTSN5boost3dll6detail20mach_header_templateIjEE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !14, i64 24}
!133 = !{!132, !15, i64 16}
!134 = !{!"_ZTSN5boost3dll6detail13load_command_E", !15, i64 0, !15, i64 4}
!135 = !{!134, !15, i64 0}
!136 = !{!134, !15, i64 4}
!137 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !18, i64 0}
!138 = !{}
!139 = !{i64 8}
!140 = !{!"_ZTSN5boost3dll6detail15symtab_command_E", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!141 = !{!140, !15, i64 12}
!142 = !{!140, !15, i64 8}
!143 = !{!140, !15, i64 16}
!144 = !{!"_ZTSN5boost3dll6detail20mach_header_templateImEE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !14, i64 24}
!145 = !{!144, !15, i64 16}
!146 = !{!73, !15, i64 0}
!147 = !{!"_ZTSNSt3_V214error_categoryE"}
!148 = !{!"_ZTSN5boost6system6detail12std_categoryE", !147, i64 0, !62, i64 8}
!149 = !{!148, !62, i64 8}
!150 = !{i64 0, i64 4, !40, i64 8, i64 8, !42}
!151 = !{i64 0, i64 16, !26, i64 16, i64 8, !23}
!152 = distinct !{!152, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!153 = distinct !{!153, !152, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!154 = !{!153}
!155 = distinct !{!155, !38}
!156 = distinct !{!156, !38}
!157 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!158 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!159 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!160 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !22, i64 8}
end_hunk_1
