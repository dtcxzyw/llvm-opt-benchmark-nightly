inline.NumInlined: 7358
inline.NumDeleted: 3045
begin_hunk_0_@_ZN4LIEF5MachO6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a) #22
  %i.k = load ptr, ptr %3, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  tail call void @_ZN4LIEF5MachO6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(488) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1) ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread, label %_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK4LIEF5MachO14SegmentCommand11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) #22 ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread, label %bb.b

_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread: ; preds = %bb.a, %_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

bb.b:                                             ; preds = %_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #22
  %i.l = load ptr, ptr %4, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

bb.d:                                             ; preds = %bb.b
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4LIEF5MachO7Section5clearEh(ptr noundef nonnull align 8 dereferenceable(192) %i.b, i8 noundef zeroext 0) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr i64 %i.z, 5                        ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.j
  %.058.i.i.i = phi i64 [ %i.as, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.ar, %bb.j ], [ %i.u, %bb.f ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8 ; 2 uses
  %i.ac = load ptr, ptr %.val1.i.i.i.i, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  br i1 %i.ae, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.af, align 8 ; 2 uses
  %i.ag = load ptr, ptr %.val1.i22.i.i.i, align 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  br i1 %i.ai, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.aj, align 8 ; 2 uses
  %i.ak = load ptr, ptr %.val1.i23.i.i.i, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  br i1 %i.am, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit110", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.an, align 8 ; 2 uses
  %i.ao = load ptr, ptr %.val1.i24.i.i.i, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i24.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  br i1 %i.aq, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit112", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32 ; 3 uses
  %i.as = add nsw i64 %.058.i.i.i, -1
  %i.at = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !203

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.j
  %.pre.i.i.i = ptrtoint ptr %i.ar to i64
  %.pre63.i.i.i = sub i64 %i.x, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi64.i.i.i = phi i64 [ %.pre63.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.z, %bb.f ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %i.ar, %._crit_edge.loopexit.i.i.i ], [ %i.u, %bb.f ] ; 5 uses
  %i.au = ashr exact i64 %.pre-phi64.i.i.i, 3
  switch i64 %i.au, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit" [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.av = load ptr, ptr %.val1.i25.i.i.i, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i25.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  br i1 %i.ax, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.ay, %bb.l ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8 ; 2 uses
  %i.az = load ptr, ptr %.val1.i26.i.i.i, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i26.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  br i1 %i.bb, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.bc, %bb.n ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i, align 8 ; 2 uses
  %i.bd = load ptr, ptr %.val1.i27.i.i.i, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i27.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22, !inline_history !202
  %spec.select.i.i.i = select i1 %i.bf, ptr %.sroa.038.2.i.i.i, ptr %i.w
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit110": ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit112": ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit110", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit112", %._crit_edge.i.i.i, %bb.k, %bb.m, %bb.o
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %bb.m ], [ %spec.select.i.i.i, %bb.o ], [ %i.w, %._crit_edge.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.k ], [ %i.bi, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit112" ], [ %i.bh, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit110" ], [ %i.bg, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i, %.lr.ph.i.i.i ] ; 7 uses
  %i.bj = load ptr, ptr %i.v, align 8
  %i.bk = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit"
  %i.bl = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

bb.q:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESM_bE3$_0ET_SO_SO_T0_.exit"
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = load i8, ptr %i.bo, align 8, !range !102, !noundef !23
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = select i1 %i.bq, i64 80, i64 68         ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = trunc nuw nsw i64 %i.br to i32          ; 2 uses
  %i.bv = sub i32 %i.bt, %i.bu
  store i32 %i.bv, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = sub i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not71, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ac, %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = add i64 %i.ce, %i.br
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ch = load ptr, ptr %i.cg, align 8            ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = ashr i64 %i.cm, 5                       ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i42, label %._crit_edge.i.i.i39

.lr.ph.i.i.i42:                                   ; preds = %._crit_edge
  %.val21.val.i.i.i = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 4 uses
  %i.cp = and i64 %i.cm, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ch, i64 %i.cp ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph.i.i.i42
  %.052.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i42 ], [ %i.dc, %bb.v ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i42 ], [ %i.db, %bb.v ] ; 9 uses
  %i.cq = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.cr = icmp eq ptr %.val21.val.i.i.i, %i.cq
  br i1 %i.cr, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp eq ptr %.val21.val.i.i.i, %i.ct
  br i1 %i.cu, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = icmp eq ptr %.val21.val.i.i.i, %i.cw
  br i1 %i.cx, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit118", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = icmp eq ptr %.val21.val.i.i.i, %i.cz
  br i1 %i.da, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit120", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.dc = add nsw i64 %.052.i.i.i, -1
  %i.dd = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.dd, label %bb.r, label %._crit_edge.loopexit.i.i.i43, !llvm.loop !204

._crit_edge.loopexit.i.i.i43:                     ; preds = %bb.v
  %.pre.i.i.i44 = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ck, %.pre.i.i.i44
  br label %._crit_edge.i.i.i39

._crit_edge.i.i.i39:                              ; preds = %._crit_edge.loopexit.i.i.i43, %._crit_edge
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i43 ], [ %i.cm, %._crit_edge ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i43 ], [ %i.ch, %._crit_edge ] ; 5 uses
  %i.de = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.de, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.thread" [
    i64 3, label %bb.w
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge58.i.i.i
  ]

._crit_edge._crit_edge58.i.i.i:                   ; preds = %._crit_edge.i.i.i39
  %.val.val.pre.i.i.i = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  br label %bb.aa

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i39
  %.val16.val.pre.i.i.i = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge.i.i.i39
  %.val17.val.i.i.i = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 2 uses
  %i.df = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.dg = icmp eq ptr %.val17.val.i.i.i, %i.df
  br i1 %i.dg, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge._crit_edge.i.i.i
  %.val16.val.i.i.i = phi ptr [ %.val17.val.i.i.i, %bb.x ], [ %.val16.val.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.dh, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.di = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.dj = icmp eq ptr %.val16.val.i.i.i, %i.di
  br i1 %i.dj, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge._crit_edge58.i.i.i
  %.val.val.i.i.i = phi ptr [ %.val16.val.i.i.i, %bb.z ], [ %.val.val.pre.i.i.i, %._crit_edge._crit_edge58.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.dk, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge58.i.i.i ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.dm = icmp eq ptr %.val.val.i.i.i, %i.dl
  %spec.select.i.i.i40 = select i1 %i.dm, ptr %.sroa.032.2.i.i.i, ptr %i.cj
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit118": ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit120": ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit": ; preds = %bb.r, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit118", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit120", %bb.w, %bb.y, %bb.aa
  %.sroa.08.0.in.sroa.speculated.i.i.i41 = phi ptr [ %.sroa.032.1.i.i.i, %bb.y ], [ %spec.select.i.i.i40, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i, %bb.w ], [ %i.dp, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit120" ], [ %i.do, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit118" ], [ %i.dn, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.032.051.i.i.i, %bb.r ] ; 2 uses
  %i.dq = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i41, %i.cj
  br i1 %i.dq, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.thread", label %bb.ad

.lr.ph:                                           ; preds = %bb.q, %bb.ac
  %.sroa.055.072 = phi ptr [ %i.dw, %bb.ac ], [ %i.ca, %bb.q ] ; 2 uses
  %i.dr = load ptr, ptr %.sroa.055.072, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp ugt i64 %i.dt, %i.bn
  br i1 %i.du, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %i.dv = sub i64 %i.dt, %i.br
  store i64 %i.dv, ptr %i.ds, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.055.072, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dw, %i.cc
  br i1 %.not, label %._crit_edge, label %.lr.ph

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.thread": ; preds = %._crit_edge.i.i.i39, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit"
  %i.dx = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dy = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.dy) #22
  %i.ec = load ptr, ptr %5, align 8               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.thread"
  %i.ef = load i64, ptr %i.ed, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit.thread", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ai

bb.ad:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_bE3$_1ET_SL_SL_T0_.exit"
  %i.eh = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i41 to i64
  %i.ei = sub i64 %i.eh, %i.cl
  %i.ej = getelementptr inbounds i8, ptr %i.ch, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %.not.i.i48 = icmp eq ptr %i.ek, %i.cj
  br i1 %.not.i.i48, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.ck, %i.el                    ; 3 uses
  %i.en = icmp sgt i64 %i.em, 8
  br i1 %i.en, label %bb.af, label %bb.ag, !prof !12

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ej, ptr nonnull align 8 %i.ek, i64 %i.em, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.ag:                                            ; preds = %bb.ae
  %i.eo = icmp eq i64 %i.em, 8
  br i1 %i.eo, label %bb.ah, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load ptr, ptr %i.ek, align 8
  store ptr %i.ep, ptr %i.ej, align 8
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit: ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah
  %i.eq = load ptr, ptr %i.ci, align 8
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -8
  store ptr %i.er, ptr %i.ci, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.es = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.et = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.ey = load ptr, ptr %i.v, align 8             ; 4 uses
  %.not.i.i49 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i.i49, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj, %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.fl, %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.fc, %bb.aj ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.fk, %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ew, %bb.aj ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.fj, %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ex, %bb.aj ] ; 3 uses
  %i.fe = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8
  %i.ff = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 3 uses
  store ptr %i.fe, ptr %.0811.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(192) %i.ff) #22, !inline_history !205
  br label %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.fl = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.fm = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !206

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.v, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.aj, %bb.ai
  %i.fn = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.ey, %bb.aj ], [ %i.ey, %bb.ai ]
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  store ptr %i.fo, ptr %i.v, align 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(192) %i.fp) #22, !inline_history !207
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread
  ret void
}

declare void @_ZN4LIEF5MachO7Section5clearEh(ptr noundef nonnull align 8 dereferenceable(192), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO6Binary11add_sectionERKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 align 2 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 6, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.c, align 2
  %i.d = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = call noundef ptr @_ZN4LIEF5MachO6Binary11add_sectionERKNS0_14SegmentCommandERKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO6Binary11add_sectionERKNS0_14SegmentCommandERKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.052.i.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.b, %bb.a ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #22, !inline_history !208
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEEZNS3_6Binary11add_sectionERKS4_RKNS3_7SectionEE3$_0ET_SI_SI_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22, !inline_history !208
  br i1 %i.r, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEEZNS3_6Binary11add_sectionERKS4_RKNS3_7SectionEE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %1, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.t) #22, !inline_history !208
  br i1 %i.w, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEEZNS3_6Binary11add_sectionERKS4_RKNS3_7SectionEE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit110", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %1, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.y) #22, !inline_history !208
  br i1 %i.ab, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEEZNS3_6Binary11add_sectionERKS4_RKNS3_7SectionEE3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit112", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32 ; 3 uses
  %i.ad = add nsw i64 %.052.i.i.i, -1
  %i.ae = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !209

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %i.ac to i64
  %.pre57.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi58.i.i.i = phi i64 [ %.pre57.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %i.ac, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi58.i.i.i, 3
  switch i64 %i.af, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEEZNS3_6Binary11add_sectionERKS4_RKNS3_7SectionEE3$_0ET_SI_SI_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22, !inline_history !208
  br i1 %i.aj, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEEZNS3_6Binary11add_sectionERKS4_RKNS3_7SectionEE3$_0ET_SI_SI_T0_.exit", label %bb.g
end_hunk_0
