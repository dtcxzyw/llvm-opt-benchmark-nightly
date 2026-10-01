Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_iterator?download=true
inline.NumInlined: 1909
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !663
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !316    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !139
  %i.s = load ptr, ptr %2, align 8, !tbaa !141    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !140  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !141
  %i.z = load i64, ptr %i.t, align 8, !tbaa !55
  store i64 %i.z, ptr %i.r, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !140
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !140
  store ptr %i.t, ptr %2, align 8, !tbaa !141
  store i64 0, ptr %i.ab, align 8, !tbaa !140
  store i8 0, ptr %i.t, align 8, !tbaa !55
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !139, !alias.scope !671, !noalias !672
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !141, !alias.scope !672, !noalias !671 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !140, !alias.scope !672, !noalias !671 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !673
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !141, !alias.scope !671, !noalias !672
  %i.al = load i64, ptr %i.af, align 8, !tbaa !55, !alias.scope !672, !noalias !671
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !55, !alias.scope !671, !noalias !672
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !140, !alias.scope !672, !noalias !671
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !140, !alias.scope !671, !noalias !672
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !141, !alias.scope !672, !noalias !671
  store i64 0, ptr %i.an, align 8, !tbaa !140, !alias.scope !672, !noalias !671
  store i8 0, ptr %i.af, align 8, !tbaa !55, !alias.scope !672, !noalias !671
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !667

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !139, !alias.scope !674, !noalias !675
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !141, !alias.scope !675, !noalias !674 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !140, !alias.scope !675, !noalias !674 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !676
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !141, !alias.scope !674, !noalias !675
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !55, !alias.scope !675, !noalias !674
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !55, !alias.scope !674, !noalias !675
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !140, !alias.scope !675, !noalias !674
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !140, !alias.scope !674, !noalias !675
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !141, !alias.scope !675, !noalias !674
  store i64 0, ptr %i.bc, align 8, !tbaa !140, !alias.scope !675, !noalias !674
  store i8 0, ptr %i.au, align 8, !tbaa !55, !alias.scope !675, !noalias !674
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !667

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !318
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !316
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !317
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5tupleIJmmEESaIS1_EE17_M_realloc_insertIJmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !292    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %3, align 8, !tbaa !176
  store i64 %i.r, ptr %i.q, align 8, !tbaa !325
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %2, align 8, !tbaa !176
  store i64 %i.t, ptr %i.s, align 8, !tbaa !327
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.u = add i64 %i.m, -16
  %i.v = sub i64 %i.u, %i.e                       ; 3 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 240
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %4 = and i64 %i.v, -16
  %5 = add i64 %4, 16                             ; 2 uses
  %6 = getelementptr i8, ptr %i.p, i64 %5
  %7 = getelementptr i8, ptr %i.c, i64 %5
  %bound0 = icmp ult ptr %i.p, %7
  %bound1 = icmp ult ptr %i.c, %6
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 2305843009213693944      ; 3 uses
  %i.y = shl i64 %n.vec, 4                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 4                       ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 64               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab
  %next.gep37.a = getelementptr i8, ptr %i.p, i64 %i.ac
  %next.gep38.a = getelementptr i8, ptr %i.c, i64 %i.ab
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %wide.vec = load <8 x i64>, ptr %next.gep38.a, align 8, !tbaa !176, !alias.scope !688, !noalias !687
  %wide.vec41 = load <8 x i64>, ptr %next.gep39, align 8, !tbaa !176, !alias.scope !688, !noalias !687
  store <8 x i64> %wide.vec, ptr %next.gep, align 8, !tbaa !176, !alias.scope !687, !noalias !688
  store <8 x i64> %wide.vec41, ptr %next.gep37.a, align 8, !tbaa !176, !alias.scope !687, !noalias !688
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !680

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader79

.lr.ph.i.i.i.preheader79:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader79, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader79 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader79 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.ae = load <2 x i64>, ptr %.0911.i.i.i, align 8, !tbaa !176, !alias.scope !688, !noalias !687
  store <2 x i64> %i.ae, ptr %.012.i.i.i, align 8, !tbaa !176, !alias.scope !687, !noalias !688
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !681

_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt5tupleIJmmEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 7 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18.preheader

.lr.ph.i.i.i18.preheader:                         ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ai = add i64 %i.d, -16
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.aj, 304
  br i1 %min.iters.check52, label %.lr.ph.i.i.i18.preheader78, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i.i18.preheader
  %i.am = and i64 %i.aj, -16                      ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %bound054 = icmp ult ptr %i.ah, %i.aq
  %bound155 = icmp ult ptr %1, %i.ao
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i.i.i18.preheader78, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck53
  %n.vec58 = and i64 %i.al, 2305843009213693944   ; 3 uses
  %i.ar = shl i64 %n.vec58, 4                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next73, %vector.body59 ] ; 2 uses
  %i.au = shl i64 %index60, 4                     ; 3 uses
  %i.av = or disjoint i64 %i.au, 64               ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ah, i64 %i.au
  %next.gep62 = getelementptr i8, ptr %i.ah, i64 %i.av
  %next.gep63 = getelementptr i8, ptr %1, i64 %i.au
  %next.gep64 = getelementptr i8, ptr %1, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %wide.vec65 = load <8 x i64>, ptr %next.gep63, align 8, !tbaa !176, !alias.scope !692, !noalias !691
  %wide.vec68 = load <8 x i64>, ptr %next.gep64, align 8, !tbaa !176, !alias.scope !692, !noalias !691
  store <8 x i64> %wide.vec65, ptr %next.gep61, align 8, !tbaa !176, !alias.scope !691, !noalias !692
  store <8 x i64> %wide.vec68, ptr %next.gep62, align 8, !tbaa !176, !alias.scope !691, !noalias !692
  %index.next73 = add nuw i64 %index60, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next73, %n.vec58
  br i1 %i.aw, label %middle.block74, label %vector.body59, !llvm.loop !685

middle.block74:                                   ; preds = %vector.body59
  %cmp.n75 = icmp eq i64 %i.al, %n.vec58
  br i1 %cmp.n75, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18.preheader78

.lr.ph.i.i.i18.preheader78:                       ; preds = %vector.memcheck53, %.lr.ph.i.i.i18.preheader, %middle.block74
  %.012.i.i.i19.ph = phi ptr [ %i.ah, %vector.memcheck53 ], [ %i.ah, %.lr.ph.i.i.i18.preheader ], [ %i.as, %middle.block74 ]
  %.0911.i.i.i20.ph = phi ptr [ %1, %vector.memcheck53 ], [ %1, %.lr.ph.i.i.i18.preheader ], [ %i.at, %middle.block74 ]
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.preheader78, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.az, %.lr.ph.i.i.i18 ], [ %.012.i.i.i19.ph, %.lr.ph.i.i.i18.preheader78 ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ay, %.lr.ph.i.i.i18 ], [ %.0911.i.i.i20.ph, %.lr.ph.i.i.i18.preheader78 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ax = load <2 x i64>, ptr %.0911.i.i.i20, align 8, !tbaa !176, !alias.scope !692, !noalias !691
  store <2 x i64> %i.ax, ptr %.012.i.i.i19, align 8, !tbaa !176, !alias.scope !691, !noalias !692
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !686

_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23: ; preds = %.lr.ph.i.i.i18, %middle.block74, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ah, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.as, %middle.block74 ], [ %i.az, %.lr.ph.i.i.i18 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt5tupleIJmmEESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !315
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #24
  br label %_ZNSt12_Vector_baseISt5tupleIJmmEESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt5tupleIJmmEESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !292
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !291
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !315
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.165", align 8 ; 4 uses
  %2 = alloca %"struct.std::_Deque_iterator.165", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = load <4 x ptr>, ptr %i.a, align 8, !tbaa !188, !noalias !697
  store <4 x ptr> %i.e, ptr %1, align 8, !tbaa !188
  %i.f = load <4 x ptr>, ptr %i.c, align 8, !tbaa !188, !noalias !698
  store <4 x ptr> %i.f, ptr %2, align 8, !tbaa !188
  invoke void @_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !347    ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !348  ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !219  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.06.i.i, align 8, !tbaa !220
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 480) #24
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.n = icmp ult ptr %.06.i.i, %i.i
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, !llvm.loop !4

_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !347
  br label %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, %bb.c
  %i.o = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !346
  %i.r = shl i64 %i.q, 3
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev.exit

_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18FilePrefetchBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::vector.324", align 8   ; 11 uses
  %2 = alloca %"class.rocksdb::IOStatus", align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !722
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !723, !noalias !724 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !723, !noalias !725 ; 2 uses
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !726, !noalias !724
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !727, !noalias !724
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!481 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb17FilterBlockReaderELb0EE", !480, i64 0}
!482 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb17FilterBlockReaderESt14default_deleteIS1_EEE", !481, i64 0}
!483 = !{!"_ZTSSt5tupleIJPN7rocksdb17FilterBlockReaderESt14default_deleteIS1_EEE", !482, i64 0}
!484 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb17FilterBlockReaderESt14default_deleteIS1_EE", !483, i64 0}
!485 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb17FilterBlockReaderESt14default_deleteIS1_ELb1ELb1EE", !484, i64 0}
!486 = !{!"_ZTSSt10unique_ptrIN7rocksdb17FilterBlockReaderESt14default_deleteIS1_EE", !485, i64 0}
!487 = !{!"p1 _ZTSN7rocksdb23UncompressionDictReaderE", !23, i64 0}
!488 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb23UncompressionDictReaderELb0EE", !487, i64 0}
!489 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EEE", !488, i64 0}
!490 = !{!"_ZTSSt5tupleIJPN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EEE", !489, i64 0}
!491 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EE", !490, i64 0}
!492 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_ELb1ELb1EE", !491, i64 0}
!493 = !{!"_ZTSSt10unique_ptrIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EE", !492, i64 0}
!494 = !{!"_ZTSN7rocksdb15BlockBasedTable3Rep10FilterTypeE", !19, i64 0}
!495 = !{!"p1 _ZTSN7rocksdb15TablePropertiesE", !23, i64 0}
!496 = !{!"_ZTSSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EE", !495, i64 0, !52, i64 8}
!497 = !{!"_ZTSSt10shared_ptrIKN7rocksdb15TablePropertiesEE", !496, i64 0}
!498 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE16_Deque_impl_dataE", !295, i64 0, !25, i64 8, !297, i64 16, !297, i64 48}
!499 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE11_Deque_implE", !498, i64 0}
!500 = !{!"_ZTSSt11_Deque_baseIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE", !499, i64 0}
!501 = !{!"_ZTSSt5dequeIN7rocksdb18SeqnoToTimeMapping13SeqnoTimePairESaIS2_EE", !500, i64 0}
!502 = !{!"_ZTSN7rocksdb18SeqnoToTimeMappingE", !25, i64 0, !25, i64 8, !501, i64 16, !41, i64 96}
!503 = !{!"_ZTSSt12__shared_ptrIKN7rocksdb14SliceTransformELN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0, !52, i64 8}
!504 = !{!"_ZTSSt10shared_ptrIKN7rocksdb14SliceTransformEE", !503, i64 0}
!505 = !{!"p1 _ZTSN7rocksdb28FragmentedRangeTombstoneListE", !23, i64 0}
!506 = !{!"_ZTSSt12__shared_ptrIN7rocksdb28FragmentedRangeTombstoneListELN9__gnu_cxx12_Lock_policyE2EE", !505, i64 0, !52, i64 8}
!507 = !{!"_ZTSSt10shared_ptrIN7rocksdb28FragmentedRangeTombstoneListEE", !506, i64 0}
!508 = !{!"p1 _ZTSN7rocksdb22BlockBasedTableOptionsE", !23, i64 0}
!509 = !{!"p1 _ZTSN7rocksdb12DecompressorE", !23, i64 0}
!510 = !{!"_ZTSN7rocksdb18BlockCreateContextE", !508, i64 0, !427, i64 8, !255, i64 16, !509, i64 24, !33, i64 32, !19, i64 40, !41, i64 41, !41, i64 42, !20, i64 44, !20, i64 48}
!511 = !{!"_ZTSSt12__shared_ptrIN7rocksdb12DecompressorELN9__gnu_cxx12_Lock_policyE2EE", !509, i64 0, !52, i64 8}
!512 = !{!"_ZTSSt10shared_ptrIN7rocksdb12DecompressorEE", !511, i64 0}
!513 = !{!"p1 _ZTSN7rocksdb10BlobSourceE", !23, i64 0}
!514 = !{!"_ZTSSt13__atomic_baseIjE", !20, i64 0}
!515 = !{!"_ZTSSt6atomicIjE", !514, i64 0}
!516 = !{!"_ZTSN7rocksdb13RelaxedAtomicIjEE", !515, i64 0}
!517 = !{!"p1 _ZTSN7rocksdb23CacheReservationManager22CacheReservationHandleE", !23, i64 0}
!518 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb23CacheReservationManager22CacheReservationHandleELb0EE", !517, i64 0}
!519 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EEE", !518, i64 0}
!520 = !{!"_ZTSSt5tupleIJPN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EEE", !519, i64 0}
!521 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE", !520, i64 0}
!522 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_ELb1ELb1EE", !521, i64 0}
!523 = !{!"_ZTSSt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS2_EE", !522, i64 0}
!524 = !{!"p1 _ZTSN7rocksdb23Block_kUserDefinedIndexE", !23, i64 0}
!525 = !{!"_ZTSN7rocksdb13CachableEntryINS_23Block_kUserDefinedIndexEEE", !524, i64 0, !151, i64 8, !81, i64 16, !41, i64 24}
!526 = !{!"_ZTSN7rocksdb15BlockBasedTable3RepE", !427, i64 0, !428, i64 8, !462, i64 16, !455, i64 328, !75, i64 336, !48, i64 344, !469, i64 360, !471, i64 368, !472, i64 384, !285, i64 424, !479, i64 480, !486, i64 488, !493, i64 496, !494, i64 504, !165, i64 512, !165, i64 528, !497, i64 544, !502, i64 560, !165, i64 664, !434, i64 680, !41, i64 681, !41, i64 682, !504, i64 688, !507, i64 704, !510, i64 720, !25, i64 776, !25, i64 784, !20, i64 792, !26, i64 800, !26, i64 816, !512, i64 832, !41, i64 848, !41, i64 849, !41, i64 850, !20, i64 852, !20, i64 856, !41, i64 860, !41, i64 861, !513, i64 864, !41, i64 872, !41, i64 873, !41, i64 874, !41, i64 875, !516, i64 876, !523, i64 880, !525, i64 888}
!527 = !{!526, !427, i64 0}
!528 = !{!"p1 _ZTSN7rocksdb3EnvE", !23, i64 0}
!529 = !{!"p1 _ZTSN7rocksdb11RateLimiterE", !23, i64 0}
!530 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE", !529, i64 0, !52, i64 8}
!531 = !{!"_ZTSSt10shared_ptrIN7rocksdb11RateLimiterEE", !530, i64 0}
!532 = !{!"p1 _ZTSN7rocksdb14SstFileManagerE", !23, i64 0}
!533 = !{!"_ZTSSt12__shared_ptrIN7rocksdb14SstFileManagerELN9__gnu_cxx12_Lock_policyE2EE", !532, i64 0, !52, i64 8}
!534 = !{!"_ZTSSt10shared_ptrIN7rocksdb14SstFileManagerEE", !533, i64 0}
!535 = !{!"p1 _ZTSN7rocksdb6LoggerE", !23, i64 0}
!536 = !{!"_ZTSSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EE", !535, i64 0, !52, i64 8}
!537 = !{!"_ZTSSt10shared_ptrIN7rocksdb6LoggerEE", !536, i64 0}
!538 = !{!"_ZTSN7rocksdb12InfoLogLevelE", !19, i64 0}
!539 = !{!"_ZTSSt12__shared_ptrIN7rocksdb10StatisticsELN9__gnu_cxx12_Lock_policyE2EE", !255, i64 0, !52, i64 8}
!540 = !{!"_ZTSSt10shared_ptrIN7rocksdb10StatisticsEE", !539, i64 0}
!541 = !{!"p1 _ZTSN7rocksdb6DbPathE", !23, i64 0}
!542 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE17_Vector_impl_dataE", !541, i64 0, !541, i64 8, !541, i64 16}
!543 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE12_Vector_implE", !542, i64 0}
!544 = !{!"_ZTSSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE", !543, i64 0}
!545 = !{!"_ZTSSt6vectorIN7rocksdb6DbPathESaIS1_EE", !544, i64 0}
!546 = !{!"p1 _ZTSN7rocksdb18WriteBufferManagerE", !23, i64 0}
!547 = !{!"_ZTSSt12__shared_ptrIN7rocksdb18WriteBufferManagerELN9__gnu_cxx12_Lock_policyE2EE", !546, i64 0, !52, i64 8}
!548 = !{!"_ZTSSt10shared_ptrIN7rocksdb18WriteBufferManagerEE", !547, i64 0}
!549 = !{!"p1 _ZTSSt10shared_ptrIN7rocksdb13EventListenerEE", !23, i64 0}
!550 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE17_Vector_impl_dataE", !549, i64 0, !549, i64 8, !549, i64 16}
!551 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_Vector_implE", !550, i64 0}
!552 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !551, i64 0}
!553 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !552, i64 0}
!554 = !{!"_ZTSN7rocksdb15WALRecoveryModeE", !19, i64 0}
!555 = !{!"p1 _ZTSN7rocksdb9WalFilterE", !23, i64 0}
!556 = !{!"_ZTSN7rocksdb15CompressionTypeE", !19, i64 0}
!557 = !{!"p1 _ZTSN7rocksdb22FileChecksumGenFactoryE", !23, i64 0}
!558 = !{!"_ZTSSt12__shared_ptrIN7rocksdb22FileChecksumGenFactoryELN9__gnu_cxx12_Lock_policyE2EE", !557, i64 0, !52, i64 8}
!559 = !{!"_ZTSSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEE", !558, i64 0}
!560 = !{!"_ZTSSt5arrayImLm1EE", !19, i64 0}
!561 = !{!"_ZTSN7rocksdb12SmallEnumSetINS_8FileTypeELS1_10EEE", !560, i64 0}
!562 = !{!"_ZTSN7rocksdb9CacheTierE", !19, i64 0}
!563 = !{!"p1 _ZTSN7rocksdb17CompactionServiceE", !23, i64 0}
!564 = !{!"_ZTSSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EE", !563, i64 0, !52, i64 8}
!565 = !{!"_ZTSSt10shared_ptrIN7rocksdb17CompactionServiceEE", !564, i64 0}
!566 = !{!"_ZTSN7rocksdb11TemperatureE", !19, i64 0}
!567 = !{!"_ZTSN7rocksdb12SmallEnumSetINS_15CompactionStyleELS1_3EEE", !560, i64 0}
!568 = !{!"_ZTSSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EE", !298, i64 0, !52, i64 8}
!569 = !{!"_ZTSSt10shared_ptrIN7rocksdb10FileSystemEE", !568, i64 0}
!570 = !{!"_ZTSN7rocksdb18ImmutableDBOptionsE", !41, i64 0, !41, i64 1, !41, i64 2, !41, i64 3, !41, i64 4, !41, i64 5, !41, i64 6, !41, i64 7, !41, i64 8, !41, i64 9, !528, i64 16, !531, i64 24, !534, i64 40, !537, i64 56, !538, i64 72, !20, i64 76, !20, i64 80, !540, i64 88, !41, i64 104, !545, i64 112, !85, i64 136, !85, i64 168, !25, i64 200, !25, i64 208, !25, i64 216, !25, i64 224, !41, i64 232, !20, i64 236, !25, i64 240, !25, i64 248, !25, i64 256, !41, i64 264, !41, i64 265, !41, i64 266, !41, i64 267, !41, i64 268, !41, i64 269, !41, i64 270, !41, i64 271, !25, i64 272, !548, i64 280, !41, i64 296, !553, i64 304, !41, i64 328, !41, i64 329, !41, i64 330, !41, i64 331, !41, i64 332, !25, i64 336, !25, i64 344, !41, i64 352, !554, i64 353, !41, i64 354, !439, i64 360, !555, i64 376, !41, i64 384, !41, i64 385, !41, i64 386, !41, i64 387, !41, i64 388, !41, i64 389, !556, i64 390, !41, i64 391, !41, i64 392, !41, i64 393, !41, i64 394, !41, i64 395, !41, i64 396, !41, i64 397, !41, i64 398, !25, i64 400, !559, i64 408, !41, i64 424, !20, i64 428, !25, i64 432, !41, i64 440, !85, i64 448, !561, i64 480, !562, i64 488, !565, i64 496, !41, i64 512, !25, i64 520, !25, i64 528, !25, i64 536, !566, i64 544, !566, i64 545, !567, i64 552, !569, i64 560, !299, i64 576, !255, i64 584, !535, i64 592}
!571 = !{!570, !299, i64 576}
!572 = !{!271, !25, i64 8}
!573 = !{!421}
!574 = !{!137, !126, i64 44}
!575 = !{!137, !25, i64 48}
!576 = !{!137, !41, i64 72}
!577 = !{!137, !41, i64 73}
!578 = !{!137, !41, i64 76}
!579 = !{!137, !135, i64 176}
!580 = !{!"p1 _ZTSN7rocksdb5IOJobE", !23, i64 0}
!581 = !{!580, !580, i64 0}
!582 = !{!"_ZTSN7rocksdb10JobOptionsE", !25, i64 0, !137, i64 8, !41, i64 200}
!583 = !{!"_ZTSN7rocksdb5IOJobE", !237, i64 0, !73, i64 24, !582, i64 32}
!584 = !{!583, !73, i64 24}
!585 = !{!271, !25, i64 0}
!586 = !{!583, !25, i64 32}
!587 = !{!271, !41, i64 16}
!588 = !{!"_ZTSSt12__shared_ptrIN7rocksdb5IOJobELN9__gnu_cxx12_Lock_policyE2EE", !580, i64 0, !52, i64 8}
!589 = !{!588, !580, i64 0}
!590 = !{!583, !41, i64 115}
!591 = !{!583, !41, i64 232}
!592 = !{!264, !263, i64 0}
!593 = distinct !{!593, !"_ZSt19__relocate_object_aIN7rocksdb11BlockHandleES1_SaIS1_EEvPT_PT0_RT1_"}
!594 = distinct !{!594, !593, !"_ZSt19__relocate_object_aIN7rocksdb11BlockHandleES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!595 = distinct !{!595, !593, !"_ZSt19__relocate_object_aIN7rocksdb11BlockHandleES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!596 = distinct !{!596, !221}
!597 = distinct !{!597, !221}
!598 = distinct !{!598, !"_ZSt19__relocate_object_aIN7rocksdb11BlockHandleES1_SaIS1_EEvPT_PT0_RT1_"}
!599 = distinct !{!599, !598, !"_ZSt19__relocate_object_aIN7rocksdb11BlockHandleES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!600 = distinct !{!600, !598, !"_ZSt19__relocate_object_aIN7rocksdb11BlockHandleES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!601 = distinct !{!601, !"_ZN7rocksdb6Status2OKEv"}
!602 = distinct !{!602, !601, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!603 = !{!266, !266, i64 0}
!604 = !{!233, !233, i64 0}
!605 = !{!"p1 _ZTSN7rocksdb12Configurable17RegisteredOptionsE", !23, i64 0}
!606 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_Vector_impl_dataE", !605, i64 0, !605, i64 8, !605, i64 16}
!607 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12_Vector_implE", !606, i64 0}
!608 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !607, i64 0}
!609 = !{!"_ZTSSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !608, i64 0}
!610 = !{!"_ZTSN7rocksdb12ConfigurableE", !609, i64 8}
!611 = !{!"_ZTSN7rocksdb12CustomizableE", !610, i64 0}
!612 = !{!"_ZTSN7rocksdb10ComparatorE", !611, i64 0, !77, i64 32, !25, i64 40}
!613 = !{!612, !25, i64 40}
!614 = !{!595, !594}
!615 = !{!600, !599}
!616 = !{!602}
!617 = distinct !{null, null, null}
!618 = !{!263, !263, i64 0}
!619 = distinct !{!619, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE5beginEv"}
!620 = distinct !{!620, !619, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE5beginEv: argument 0"}
!621 = distinct !{!621, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE3endEv"}
!622 = distinct !{!622, !621, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE3endEv: argument 0"}
!623 = distinct !{null, null}
!624 = !{!620}
!625 = !{!622}
!626 = !{!87, !86, i64 16}
!627 = !{!297, !296, i64 0}
!628 = distinct !{null, null, null}
!629 = !{!92, !83, i64 632}
!630 = !{!92, !20, i64 640}
!631 = !{!"p1 _ZTSSt6atomicIjE", !23, i64 0}
!632 = !{!"_ZTSSt13__atomic_baseIPN7rocksdb10StatisticsEE", !255, i64 0}
!633 = !{!"_ZTSSt6atomicIPN7rocksdb10StatisticsEE", !632, i64 0}
!634 = !{!"_ZTSN7rocksdb18BlockReadAmpBitmapE", !20, i64 0, !20, i64 4, !631, i64 8, !19, i64 16, !633, i64 24, !20, i64 32}
!635 = !{!634, !19, i64 16}
!636 = !{!634, !20, i64 32}
!637 = !{!634, !20, i64 4}
!638 = !{!634, !631, i64 8}
!639 = distinct !{!639, !"_ZNK7rocksdb9BlockIterINS_5SliceEE6statusEv"}
!640 = distinct !{!640, !639, !"_ZNK7rocksdb9BlockIterINS_5SliceEE6statusEv: argument 0"}
!641 = distinct !{!641, !"_ZN7rocksdb6Status2OKEv"}
!642 = distinct !{!642, !641, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!643 = !{!640}
!644 = !{!642}
!645 = !{!345, !25, i64 168}
!646 = !{!"_ZTSN7rocksdb17ReadaheadFileInfo13ReadaheadInfoE", !25, i64 0, !25, i64 8}
!647 = !{!646, !25, i64 0}
!648 = !{!345, !25, i64 232}
!649 = !{!646, !25, i64 8}
!650 = distinct !{!650, !221}
!651 = distinct !{!651, !221}
!652 = distinct !{null, null}
!653 = distinct !{!653, !221}
!654 = !{!64, !23, i64 0}
!655 = !{!64, !23, i64 8}
!656 = !{!64, !23, i64 16}
!657 = !{!64, !62, i64 24}
!658 = !{!63, !23, i64 0}
!659 = !{!63, !23, i64 8}
!660 = !{!63, !23, i64 16}
!661 = !{!63, !62, i64 24}
!662 = distinct !{!662, !221}
!663 = distinct !{null}
!664 = distinct !{!664, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!665 = distinct !{!665, !664, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!666 = distinct !{!666, !664, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!667 = distinct !{!667, !221}
!668 = distinct !{!668, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!669 = distinct !{!669, !668, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!670 = distinct !{!670, !668, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!671 = !{!665}
!672 = !{!666}
!673 = !{!665, !666}
!674 = !{!669}
!675 = !{!670}
!676 = !{!669, !670}
!677 = distinct !{!677, !"_ZSt19__relocate_object_aISt5tupleIJmmEES1_SaIS1_EEvPT_PT0_RT1_"}
!678 = distinct !{!678, !677, !"_ZSt19__relocate_object_aISt5tupleIJmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!679 = distinct !{!679, !677, !"_ZSt19__relocate_object_aISt5tupleIJmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!680 = distinct !{!680, !221, !689, !690}
!681 = distinct !{!681, !221, !689}
!682 = distinct !{!682, !"_ZSt19__relocate_object_aISt5tupleIJmmEES1_SaIS1_EEvPT_PT0_RT1_"}
!683 = distinct !{!683, !682, !"_ZSt19__relocate_object_aISt5tupleIJmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!684 = distinct !{!684, !682, !"_ZSt19__relocate_object_aISt5tupleIJmmEES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!685 = distinct !{!685, !221, !689, !690}
!686 = distinct !{!686, !221, !689}
!687 = !{!678}
!688 = !{!679}
!689 = !{!"llvm.loop.isvectorized", i32 1}
!690 = !{!"llvm.loop.unroll.runtime.disable"}
!691 = !{!683}
!692 = !{!684}
!693 = distinct !{!693, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE5beginEv"}
!694 = distinct !{!694, !693, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE5beginEv: argument 0"}
!695 = distinct !{!695, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE3endEv"}
!696 = distinct !{!696, !695, !"_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE3endEv: argument 0"}
!697 = !{!694}
!698 = !{!696}
!699 = distinct !{!699, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv"}
!700 = distinct !{!700, !699, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv: argument 0"}
!701 = distinct !{!701, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv"}
!702 = distinct !{!702, !701, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv: argument 0"}
!703 = distinct !{!703, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv"}
!704 = distinct !{!704, !703, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv: argument 0"}
!705 = distinct !{!705, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv"}
!706 = distinct !{!706, !705, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv: argument 0"}
!707 = distinct !{null}
!708 = distinct !{!708, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv"}
!709 = distinct !{!709, !708, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv: argument 0"}
!710 = distinct !{!710, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv"}
!711 = distinct !{!711, !710, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv: argument 0"}
!712 = distinct !{!712, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv"}
!713 = distinct !{!713, !712, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv: argument 0"}
!714 = distinct !{!714, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv"}
!715 = distinct !{!715, !714, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv: argument 0"}
!716 = distinct !{!716, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv"}
!717 = distinct !{!717, !716, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE5beginEv: argument 0"}
!718 = distinct !{!718, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv"}
!719 = distinct !{!719, !718, !"_ZNSt5dequeIPN7rocksdb10BufferInfoESaIS2_EE3endEv: argument 0"}
!720 = distinct !{null}
!721 = distinct !{!721, !221}
!722 = !{!345, !298, i64 248}
!723 = !{!337, !336, i64 0}
!724 = !{!700}
!725 = !{!702}
!726 = !{!337, !335, i64 24}
!727 = !{!337, !336, i64 16}
!728 = !{!195, !195, i64 0}
!729 = !{!342, !342, i64 0}
!730 = !{!"_ZTSSt8functionIFvPvEE", !131, i64 0, !23, i64 24}
!731 = !{!"_ZTSSt10_Head_baseILm1ESt8functionIFvPvEELb0EE", !730, i64 0}
!732 = !{!"_ZTSSt11_Tuple_implILm1EJSt8functionIFvPvEEEE", !731, i64 0}
!733 = !{!"_ZTSSt10_Head_baseILm0EPvLb0EE", !23, i64 0}
!734 = !{!"_ZTSSt11_Tuple_implILm0EJPvSt8functionIFvS0_EEEE", !732, i64 0, !733, i64 32}
!735 = !{!"_ZTSSt5tupleIJPvSt8functionIFvS0_EEEE", !734, i64 0}
!736 = !{!"_ZTSSt15__uniq_ptr_implIvSt8functionIFvPvEEE", !735, i64 0}
!737 = !{!"_ZTSSt15__uniq_ptr_dataIvSt8functionIFvPvEELb1ELb1EE", !736, i64 0}
!738 = !{!"_ZTSSt10unique_ptrIvSt8functionIFvPvEEE", !737, i64 0}
!739 = !{!"_ZTSN7rocksdb13AlignedBufferE", !25, i64 0, !738, i64 8, !25, i64 48, !25, i64 56, !24, i64 64}
!740 = !{!"_ZTSN7rocksdb10BufferInfoE", !739, i64 0, !25, i64 72, !25, i64 80, !41, i64 88, !23, i64 96, !730, i64 104, !25, i64 136}
!741 = !{!740, !41, i64 88}
!742 = !{!740, !23, i64 96}
!743 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !195, i64 0, !195, i64 8, !195, i64 16}
!744 = !{!743, !195, i64 16}
!745 = !{!743, !195, i64 8}
!746 = !{!743, !195, i64 0}
!747 = !{!336, !336, i64 0}
!748 = !{!345, !299, i64 256}
!749 = !{!345, !255, i64 264}
!750 = !{!704}
!751 = !{!706}
!752 = !{!730, !23, i64 24}
!753 = !{!739, !25, i64 56}
!754 = !{!740, !25, i64 136}
!755 = !{!740, !25, i64 80}
!756 = !{!709}
!757 = !{!711}
!758 = !{!713}
!759 = !{!715}
!760 = !{!345, !25, i64 208}
!761 = !{!740, !25, i64 72}
!762 = !{!345, !25, i64 216}
!763 = !{!717}
!764 = !{!719}
!765 = !{!345, !342, i64 160}
!766 = !{!338, !335, i64 0}
!767 = !{!338, !335, i64 40}
!768 = !{!338, !335, i64 72}
!769 = !{!338, !25, i64 8}
!770 = !{!80, !24, i64 112}
!771 = !{!80, !25, i64 120}
!772 = distinct !{null}
!773 = distinct !{!773, !221}
!774 = distinct !{!774, !221}
!775 = !{!82, !20, i64 612}
!776 = !{!82, !24, i64 72}
!777 = distinct !{!777, !"_ZNSt7__cxx119to_stringEm"}
!778 = distinct !{!778, !777, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!779 = distinct !{!779, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!780 = distinct !{!780, !779, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!781 = distinct !{!781, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!782 = distinct !{!782, !781, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!783 = distinct !{!783, !"_ZN7rocksdb6Status2OKEv"}
!784 = distinct !{!784, !783, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!785 = !{!778}
!786 = !{!780}
!787 = !{!782}
!788 = !{!784}
!789 = !{!80, !41, i64 71}
!790 = !{!82, !41, i64 617}
!791 = !{!82, !25, i64 576}
!792 = !{!82, !19, i64 616}
!793 = !{!82, !24, i64 600}
!794 = distinct !{!794, !"_ZNSt7__cxx119to_stringEj"}
!795 = distinct !{!795, !794, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!796 = distinct !{!796, !221}
!797 = distinct !{!797, !221}
!798 = distinct !{!798, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!799 = distinct !{!799, !798, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!800 = distinct !{!800, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!801 = distinct !{!801, !800, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!802 = distinct !{!802, !"_ZNSt7__cxx119to_stringEi"}
!803 = distinct !{!803, !802, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!804 = distinct !{!804, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!805 = distinct !{!805, !804, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!806 = distinct !{!806, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!807 = distinct !{!807, !806, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!808 = !{!795}
!809 = !{!799}
!810 = !{!801}
!811 = !{!803}
!812 = !{!805}
!813 = !{!807}
!814 = distinct !{null, null, null, null, null, null}
!815 = !{!"p1 _ZTSSt9type_info", !23, i64 0}
!816 = !{!815, !815, i64 0}
!817 = !{!218, !194, i64 24}
end_hunk_1
