Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarmodule?download=true
inline.NumInlined: 5871
inline.NumDeleted: 859
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !1090
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !32, !alias.scope !1091 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29, !alias.scope !1091 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !1092
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !32, !alias.scope !1090
  %i.al = load i64, ptr %i.af, align 8, !tbaa !30, !alias.scope !1091
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !30, !alias.scope !1090
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !29, !alias.scope !1091
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !29, !alias.scope !1090
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !32, !alias.scope !1091
  store i64 0, ptr %i.an, align 8, !tbaa !29, !alias.scope !1091
  store i8 0, ptr %i.af, align 8, !tbaa !30, !alias.scope !1091
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !26, !alias.scope !1093
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !32, !alias.scope !1094 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !29, !alias.scope !1094 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !1095
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !32, !alias.scope !1093
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !30, !alias.scope !1094
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !30, !alias.scope !1093
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !29, !alias.scope !1094
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !29, !alias.scope !1093
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !32, !alias.scope !1094
  store i64 0, ptr %i.bc, align 8, !tbaa !29, !alias.scope !1094
  store i8 0, ptr %i.au, align 8, !tbaa !30, !alias.scope !1094
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !4

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !161
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !159
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !160
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN12colvarmodule11load_coordsEPKcPSt6vectorINS_7rvectorESaIS3_EEPNS_10atom_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::vector.74", align 8    ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = getelementptr i8, ptr %0, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = select i1 %i.d, ptr %i.f, ptr %0         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.j, ptr %i.b, align 8, !tbaa !31
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !32
  %i.m = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.m, ptr %i.h, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.g, align 1, !tbaa !30
  store i8 %i.o, ptr %i.n, align 1, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = load ptr, ptr %5, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.t = invoke noundef i32 @_ZN12colvarmodule10atom_group17create_sorted_idsEv(ptr noundef nonnull align 8 dereferenceable(1712) %2)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1144 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1105 ; 4 uses
  %i.w = icmp ugt i64 %i.v, 384307168202282325
  br i1 %i.w, label %bb.g, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #27
          to label %.noexc50 unwind label %bb.m

.noexc50:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %.loopexit85

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = mul nuw nsw i64 %i.v, 24                 ; 3 uses
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %.noexc51 unwind label %bb.m   ; 5 uses

.noexc51:                                         ; preds = %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.z, ptr %6, align 8, !tbaa !269
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !270
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1106
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.y, i1 false), !tbaa !100
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.y
  br label %.loopexit85

.loopexit85:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.ad = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.aa, %.noexc51 ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %scevgep, %.noexc51 ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !26, !alias.scope !1107
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !29, !alias.scope !1107
  store i8 0, ptr %i.ae, align 8, !tbaa !30, !alias.scope !1107
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !1107
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %.loopexit85
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph.i:                                         ; preds = %.loopexit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i
  %.011.i = phi i64 [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i ], [ 0, %.loopexit85 ] ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !32, !noalias !1107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.011.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !30
  %i.ak = sext i8 %i.aj to i32
  %i.al = call i32 @tolower(i32 noundef %i.ak) #32
  %i.am = trunc i32 %i.al to i8
  %i.an = load i64, ptr %i.af, align 8, !tbaa !29, !alias.scope !1107
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.an, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.am)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i: ; preds = %.lr.ph.i
  %i.ap = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !1107
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !2

bb.h:                                             ; preds = %.lr.ph.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %7, align 8, !tbaa !32, !alias.scope !1107 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ae
  br i1 %i.au, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !30, !alias.scope !1107
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #31
  br label %.body

_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i
  %.pre = load i64, ptr %i.af, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !26
  store i32 2054780974, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.az, align 4, !tbaa !30
  %i.ba = icmp eq i64 %.pre, 4
  br i1 %i.ba, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bb = load ptr, ptr %7, align 8, !tbaa !32
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = load i32, ptr %i.ax, align 1
  %i.be = icmp ne i32 %i.bc, %i.bd
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.i
  %i.bh = phi i1 [ false, %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.bg, %bb.i ], [ false, %_ZN11colvarparse15to_lower_cppstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  %.pre88 = load ptr, ptr %7, align 8, !tbaa !32  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bi = icmp eq ptr %.pre88, %i.ae
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %.pre88, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %i.bh, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !29
  %.not = icmp eq i64 %i.bm, 0
  br i1 %.not, label %_ZN12colvarmodule4mainEv.exit, label %.noexc.i60

.noexc.i60:                                       ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 65, ptr %i.a, align 8, !tbaa !31
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc61 unwind label %bb.n   ; 3 uses

.noexc61:                                         ; preds = %.noexc.i60
  store ptr %i.bo, ptr %9, align 8, !tbaa !32
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.bo, ptr noundef nonnull align 1 dereferenceable(65) @.str.202, i64 65, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bs = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %.noexc61
  %i.bt = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bn
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.k
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !30
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.loopexit

bb.l:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EEC2EmRKS2_.exit.i, %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit77

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.u

bb.n:                                             ; preds = %.noexc.i60
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.o:                                             ; preds = %.noexc61
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bn
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.o
  %i.cd = load i64, ptr %i.bn, align 8, !tbaa !30
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.n
  %.pn43 = phi { ptr, i32 } [ %i.bz, %bb.n ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.ca, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.u

_ZN12colvarmodule4mainEv.exit:                    ; preds = %bb.j
  %i.cf = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !92, !nonnull !184, !noundef !184
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1088
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !155
  %i.ci = invoke noundef i32 @_ZN12colvarmodule15load_coords_xyzEPKcPSt6vectorINS_7rvectorESaIS3_EEPNS_10atom_groupEb(ptr noundef nonnull align 8 dereferenceable(632) %i.ch, ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %_ZN12colvarmodule4mainEv.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ck = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !92 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 1368
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !95
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 208
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(1192) %i.ck, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %3, double noundef %4)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q, %_ZN12colvarmodule4mainEv.exit
  %.036 = phi i32 [ %i.ci, %_ZN12colvarmodule4mainEv.exit ], [ %i.cp, %bb.q ] ; 2 uses
  %.not42 = icmp eq i32 %.036, 0
  br i1 %.not42, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 1392
  %i.cr = load i64, ptr %i.u, align 8, !tbaa !1105
  %.not87 = icmp eq i64 %i.cr, 0
  br i1 %.not87, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.086 = phi i64 [ %i.da, %.lr.ph ], [ 0, %bb.s ] ; 3 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !269
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.086
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !125
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.086
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !79
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr %1, align 8, !tbaa !269
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !1108
  %i.da = add nuw i64 %.086, 1                    ; 2 uses
  %i.db = load i64, ptr %i.u, align 8, !tbaa !1105
  %i.dc = icmp ult i64 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph, label %.loopexit, !llvm.loop !1098

.loopexit:                                        ; preds = %.lr.ph, %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.037 = phi i32 [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.036, %bb.r ], [ 0, %bb.s ], [ 0, %.lr.ph ]
  %i.dd = load ptr, ptr %6, align 8, !tbaa !269   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1106
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #31
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %.loopexit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dj = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.h
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !30
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.037

bb.u:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %.body
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.cj, %bb.p ], [ %i.as, %.body ] ; 2 uses
  %10 = load ptr, ptr %6, align 8, !tbaa !269     ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %10, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit77, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1106
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %10 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %10, i64 noundef %i.dr) #31
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit77

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit77: ; preds = %bb.v, %bb.u, %bb.m
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.v ], [ %i.by, %bb.m ], [ %.pn43.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit77, %bb.l
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit77 ], [ %i.bx, %bb.l ]
  %i.ds = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.h
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.w
  %i.du = load i64, ptr %i.h, align 8, !tbaa !30
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

declare noundef i32 @_ZN12colvarmodule10atom_group17create_sorted_idsEv(ptr noundef nonnull align 8 dereferenceable(1712)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN12colvarmodule15load_coords_xyzEPKcPSt6vectorINS_7rvectorESaIS3_EEPNS_10atom_groupEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(632) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.k = alloca i64, align 8                      ; 7 uses
  %i.l = alloca [256 x i8], align 16              ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca double, align 8                   ; 8 uses
  %i.n = alloca double, align 8                   ; 8 uses
  %i.o = alloca double, align 8                   ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::allocator", align 1   ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.std::allocator", align 1   ; 4 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %51 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.s = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 864
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !26
  %i.v = icmp eq ptr %1, null
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i64 %i.w, ptr %i.j, align 8, !tbaa !31
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc165 unwind label %bb.q  ; 2 uses

.noexc165:                                        ; preds = %.noexc.i
  store ptr %i.y, ptr %5, align 8, !tbaa !32
  %i.z = load i64, ptr %i.j, align 8, !tbaa !31
  store i64 %i.z, ptr %i.u, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc165, %bb.c
  %i.aa = phi ptr [ %i.y, %.noexc165 ], [ %i.u, %bb.c ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %._crit_edge.i.i166
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %1, align 1, !tbaa !30
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !30
  br label %._crit_edge.i.i166

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %1, i64 %i.w, i1 false)
  br label %._crit_edge.i.i166

._crit_edge.i.i166:                               ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !31  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !29
  %i.ae = load ptr, ptr %5, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !26
  store i64 7308332182665845080, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.ai, align 8, !tbaa !30
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN14colvarproxy_io12input_streamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(224) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.r       ; 24 uses

bb.f:                                             ; preds = %._crit_edge.i.i166
  %i.ak = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ag
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !30
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ao = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.u
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.u, align 8, !tbaa !30
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !29
  store i8 0, ptr %i.as, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
end_hunk_0
