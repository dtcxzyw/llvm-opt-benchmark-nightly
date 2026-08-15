inline.NumInlined: 4620
inline.NumDeleted: 2194
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !28
  store i64 %.0, ptr %i.h, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !502  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !509    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #35
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !28
  %i.z = load i64, ptr %i.t, align 8, !tbaa !30
  store i64 %i.z, ptr %i.r, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !31
  store ptr %i.t, ptr %2, align 8, !tbaa !28
  store i64 0, ptr %i.ab, align 8, !tbaa !31
  store i8 0, ptr %i.t, align 8, !tbaa !30
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !899, !noalias !902
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !902, !noalias !899 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31, !alias.scope !902, !noalias !899 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !904
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !899, !noalias !902
  %i.al = load i64, ptr %i.af, align 8, !tbaa !30, !alias.scope !902, !noalias !899
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !30, !alias.scope !899, !noalias !902
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !31, !alias.scope !902, !noalias !899
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !31, !alias.scope !899, !noalias !902
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !28, !alias.scope !902, !noalias !899
  store i64 0, ptr %i.an, align 8, !tbaa !31, !alias.scope !902, !noalias !899
  store i8 0, ptr %i.af, align 8, !tbaa !30, !alias.scope !902, !noalias !899
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !905

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !906, !noalias !909
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !28, !alias.scope !909, !noalias !906 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31, !alias.scope !909, !noalias !906 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !911
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !28, !alias.scope !906, !noalias !909
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !30, !alias.scope !909, !noalias !906
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !30, !alias.scope !906, !noalias !909
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !31, !alias.scope !909, !noalias !906
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !31, !alias.scope !906, !noalias !909
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !28, !alias.scope !909, !noalias !906
  store i64 0, ptr %i.bc, align 8, !tbaa !31, !alias.scope !909, !noalias !906
  store i8 0, ptr %i.au, align 8, !tbaa !30, !alias.scope !909, !noalias !906
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !905

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !503
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !509
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !502
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !503
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [16 x i8], align 16                 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 5 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 4 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %.not = icmp eq i64 %i.f, 0
  %.not38 = icmp eq i64 %i.l, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.n = add nuw nsw i64 %i.l, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  %i.o = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 16 dereferenceable(1) %2, i64 %i.n, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.p = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.p, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !28
  %.pre51 = load i64, ptr %i.k, align 8, !tbaa !31
  store i64 %.pre51, ptr %i.e, align 8, !tbaa !31
  store i64 0, ptr %i.k, align 8, !tbaa !31
  store i8 0, ptr %.pre52, align 1, !tbaa !30
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.q = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.q, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !28
  %.pre = load i64, ptr %i.e, align 8, !tbaa !31
  store i64 %.pre, ptr %i.k, align 8, !tbaa !31
  store i64 0, ptr %i.e, align 8, !tbaa !31
  store i8 0, ptr %.pre50, align 1, !tbaa !30
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.r = load i64, ptr %i.i, align 8, !tbaa !30
  %i.s = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.s, i1 false)
  store ptr %i.h, ptr %0, align 8, !tbaa !28
  store ptr %i.i, ptr %1, align 8, !tbaa !28
  store i64 %i.r, ptr %i.c, align 8, !tbaa !30
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.t = load i64, ptr %i.c, align 8, !tbaa !30
  %i.u = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  store ptr %i.b, ptr %1, align 8, !tbaa !28
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !28
  store ptr %i.b, ptr %1, align 8, !tbaa !28
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !30
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.t, ptr %i.v, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !31
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22BlockBasedTableBuilder22ParallelCompressionRep15StateTransitionILNS1_10ThreadKindE0EEEvRNS1_11ThreadStateERj(ptr noundef nonnull align 64 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 64 ; 2 uses
  %i.c = and i64 %i.b, 549755813888
  %.not6061 = icmp eq i64 %i.c, 0
  br i1 %.not6061, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  store i32 3, ptr %1, align 4, !tbaa !574
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.031.062 = phi i64 [ %i.b, %.lr.ph ], [ %.sroa.031.1, %bb.v ] ; 14 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !574
  switch i32 %i.l, label %bb.k [
    i32 0, label %bb.c
    i32 5, label %bb.j
    i32 2, label %bb.h
    i32 3, label %.critedge
    i32 4, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %.sroa.031.062, 56
  %i.n = trunc nuw i64 %i.m to i8
  %i.o = add i8 %i.n, 1                           ; 2 uses
  %i.p = and i64 %.sroa.031.062, 72057044282114047
  %i.q = zext i8 %i.o to i64
  %i.r = shl nuw i64 %i.q, 56
  %i.s = or disjoint i64 %i.r, %i.p               ; 4 uses
  %i.t = lshr i64 %.sroa.031.062, 32
  %i.u = trunc i64 %i.t to i8
  %i.v = and i8 %i.u, 31                          ; 2 uses
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i64 %.sroa.031.062, 48
  %i.x = trunc i64 %i.w to i8
  %i.y = sub i8 %i.o, %i.x
  %i.z = zext i8 %i.y to i32
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !408
  %i.ab = add i32 %i.aa, 1
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = load i32, ptr %i.d, align 16, !tbaa !356 ; 2 uses
  %i.ae = zext nneg i8 %i.v to i32
  %i.af = sub i32 %i.ad, %i.ae
  %i.ag = add i32 %i.af, %i.ac
  %.not18 = icmp ugt i32 %i.ag, %i.z
  br i1 %.not18, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !912 ; 2 uses
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !913 ; 2 uses
  %.not19 = icmp slt i32 %i.ah, %i.ai
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = and i64 %i.s, -682899800065
  %i.ak = add nuw nsw i64 %.sroa.031.062, 133143986176
  %i.al = and i64 %i.ak, 133143986176
  %i.am = or disjoint i64 %i.aj, %i.al
  store i32 0, ptr %i.f, align 8, !tbaa !912
  %i.an = add nsw i32 %i.ai, 1
  %i.ao = add i32 %i.ad, 8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.an)
  store i32 %.sroa.speculated, ptr %i.g, align 4, !tbaa !913
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ap = add nsw i32 %i.ah, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !912
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %2, align 4, !tbaa !116
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = trunc i64 %.sroa.031.062 to i32
  %i.at = or i32 %i.ar, %i.as
  %i.au = and i64 %.sroa.031.062, -554050781184
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %i.au, %i.av            ; 2 uses
  %i.ax = lshr i64 %.sroa.031.062, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = load i32, ptr %i.d, align 16, !tbaa !356
  %i.bb = icmp eq i32 %i.ba, %i.az
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = and i64 %i.aw, -682899800065
  %i.bd = add nuw nsw i64 %.sroa.031.062, 133143986176
  %i.be = and i64 %i.bd, 133143986176
  %i.bf = or disjoint i64 %i.bc, %i.be
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.bg = add i64 %.sroa.031.062, 1099511627776
  %i.bh = and i64 %.sroa.031.062, -280925220896769
  %i.bi = and i64 %i.bg, 280375465082880
  %i.bj = or disjoint i64 %i.bi, %i.bh            ; 2 uses
  %i.bk = and i64 %.sroa.031.062, 137438953472
  %i.bl = icmp ne i64 %i.bk, 0                    ; 2 uses
  %i.bm = and i64 %i.bj, -687194767361
  %spec.select = select i1 %i.bl, i64 %i.bm, i64 %i.bj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.c, %bb.d, %bb.g, %bb.f, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.031.062, %bb.b ], [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %bb.g ], [ %i.am, %bb.f ], [ %i.bf, %bb.i ], [ %i.aw, %bb.h ], [ %spec.select, %bb.j ] ; 7 uses
  %.012 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.i ], [ false, %bb.h ], [ %i.bl, %bb.j ]
  %i.bn = lshr i64 %.sroa.0.0, 56                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb30UserDefinedIndexBuilderWrapper24CreatePreparedIndexEntryEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper17PrepareIndexEntryERKNS_5SliceEPS2_PNS_12IndexBuilder18PreparedIndexEntryE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper16FinishIndexEntryERKNS_11BlockHandleEPNS_12IndexBuilder18PreparedIndexEntryEb(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper10OnKeyAddedERKNS_5SliceERKSt8optionalIS1_E(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 8 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr @.str, ptr %3, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 72057594037927935, ptr %i.g, align 8, !tbaa !1249
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !1252
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !471
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !461, !range !450, !noundef !413
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr @.str.89, ptr %5, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 90, ptr %i.o, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr @.str, ptr %6, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !14
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  %i.q = load <4 x i8>, ptr %4, align 8, !tbaa !30
  store <4 x i8> %i.q, ptr %i.i, align 8, !tbaa !30
  store <4 x i8> zeroinitializer, ptr %4, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !495, !range !450, !noundef !413
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.s, ptr %i.t, align 4, !tbaa !475
  store i8 0, ptr %i.r, align 4, !tbaa !475
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.v, ptr %i.w, align 1, !tbaa !476
  store i8 0, ptr %i.u, align 1, !tbaa !476
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !452
  store ptr null, ptr %i.x, align 8, !tbaa !452
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !452 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !452
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #37
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !452  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.c, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.ab = load <4 x i8>, ptr %7, align 8, !tbaa !30
  store <4 x i8> %i.ab, ptr %i.i, align 8, !tbaa !30
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !495, !range !450, !noundef !413
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.ad, ptr %i.ae, align 4, !tbaa !475
  store i8 0, ptr %i.ac, align 4, !tbaa !475
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !476
  store i8 0, ptr %i.af, align 1, !tbaa !476
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !452
  store ptr null, ptr %i.ai, align 8, !tbaa !452
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !452 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !452
  %.not.i.i.i.i.i6 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i6, label %_ZN7rocksdb6StatusD2Ev.exit11, label %_ZN7rocksdb6StatusaSEOS0_.exit8

_ZN7rocksdb6StatusaSEOS0_.exit8:                  ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.al) #37
  %.pr13 = load ptr, ptr %i.ai, align 8, !tbaa !452 ; 2 uses
  %.not.i.i9 = icmp eq ptr %.pr13, null
  br i1 %.not.i.i9, label %_ZN7rocksdb6StatusD2Ev.exit11, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit8
  call void @_ZdaPv(ptr noundef nonnull %.pr13) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit11

_ZN7rocksdb6StatusD2Ev.exit11:                    ; preds = %bb.d, %_ZN7rocksdb6StatusaSEOS0_.exit8, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZN7rocksdb6StatusD2Ev.exit11
  %.pr15 = load i8, ptr %i.i, align 8, !tbaa !471
  %i.am = icmp eq i8 %.pr15, 0
  br i1 %i.am, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.an = load i8, ptr %i.l, align 8, !tbaa !461, !range !450, !noundef !413
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #35
  unreachable

_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit:  ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !455
  %i.ap = load i8, ptr %i.h, align 8, !tbaa !1252 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 24
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit
  %i.ar = call { ptr, i64 } @_ZN7rocksdb24ParsePackedValueForValueERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  store ptr %i.as, ptr %8, align 8, !tbaa !452
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !390
  %.pr16 = load i8, ptr %i.h, align 8, !tbaa !1252
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit
  %i.au = phi i8 [ %.pr16, %bb.h ], [ %i.ap, %_ZNKRSt8optionalIN7rocksdb5SliceEE5valueEv.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1134 ; 2 uses
  %i.ax = icmp ult i8 %i.au, 25
  br i1 %i.ax, label %switch.lookup, label %_ZN7rocksdb30UserDefinedIndexBuilderWrapper17MapToUDIValueTypeENS_9ValueTypeE.exit

switch.lookup:                                    ; preds = %bb.i
  %i.ay = zext nneg i8 %i.au to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN7rocksdb30UserDefinedIndexBuilderWrapper10OnKeyAddedERKNS_5SliceERKSt8optionalIS1_E, i64 %i.ay
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN7rocksdb30UserDefinedIndexBuilderWrapper17MapToUDIValueTypeENS_9ValueTypeE.exit

_ZN7rocksdb30UserDefinedIndexBuilderWrapper17MapToUDIValueTypeENS_9ValueTypeE.exit: ; preds = %bb.i, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 3, %bb.i ]
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext %.0.i, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %_ZN7rocksdb30UserDefinedIndexBuilderWrapper17MapToUDIValueTypeENS_9ValueTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb30UserDefinedIndexBuilderWrapper6FinishEPNS_12IndexBuilder11IndexBlocksERKNS_11BlockHandleE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.190", align 8 ; 4 uses
  %5 = alloca %"class.std::unique_ptr.190", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::unique_ptr.190", align 8 ; 4 uses
  %8 = alloca %"class.std::unique_ptr.190", align 8 ; 4 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 8 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"struct.std::pair.311", align 8   ; 12 uses
  %.sroa.5 = alloca [23 x i8], align 1            ; 5 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !471   ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.d
    i8 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i8 %i.b, ptr %0, align 8, !tbaa !471
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.e = load <4 x i8>, ptr %i.d, align 1, !tbaa !30
  store <4 x i8> %i.e, ptr %i.c, align 1, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.h = load i8, ptr %i.g, align 1, !tbaa !476
  store i8 %i.h, ptr %i.f, align 1, !tbaa !476
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !452  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.190") align 8 %8, ptr noundef nonnull %i.k)
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !452
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %bb.b, %bb.c
  %storemerge74 = phi ptr [ %.pre.i, %bb.c ], [ null, %bb.b ]
  store ptr %storemerge74, ptr %i.i, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.u

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1223, !range !450, !noundef !413
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr @.str, ptr %9, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1134 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %9)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.v = load <4 x i8>, ptr %10, align 8, !tbaa !30
  store <4 x i8> %i.v, ptr %i.a, align 8, !tbaa !30
  store <4 x i8> zeroinitializer, ptr %10, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !495, !range !450, !noundef !413
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i8 %i.x, ptr %i.y, align 4, !tbaa !475
  store i8 0, ptr %i.w, align 4, !tbaa !475
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 93 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !476
  store i8 0, ptr %i.z, align 1, !tbaa !476
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !452
  store ptr null, ptr %i.ac, align 8, !tbaa !452
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !452 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !452
  %.not.i.i.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i9, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.af) #37
  %.pr = load ptr, ptr %i.ac, align 8, !tbaa !452 ; 2 uses
  %.not.i.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.e, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !471  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  store i8 %i.ag, ptr %0, align 8, !tbaa !471
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = load <4 x i8>, ptr %i.u, align 1, !tbaa !30
  store <4 x i8> %i.aj, ptr %i.ai, align 1, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !476
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !476
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !452 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.an, null
  br i1 %.not.i.i13, label %.thread.i24, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.190") align 8 %7, ptr noundef nonnull %i.an)
  %.pre.i17 = load ptr, ptr %7, align 8, !tbaa !452
  br label %.thread.i24

bb.h:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28, !noalias !1257
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !31, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !1257
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.91, i64 noundef 27, ptr noundef %i.ap, i64 noundef %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !455
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.as, ptr %12, align 8, !tbaa !25
  %i.at = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !31 ; 8 uses
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %bb.i, label %._crit_edge.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp slt i64 %i.av, 0
  br i1 %i.ax, label %.noexc.i.i, label %bb.j

.noexc.i.i:                                       ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #35
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ay = add nuw i64 %i.av, 1                    ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !27

.noexc6.i.i:                                      ; preds = %bb.j
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc26 unwind label %bb.n

.noexc26:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.j
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #36
          to label %.noexc27 unwind label %bb.n   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ba, ptr %12, align 8, !tbaa !28
  store i64 %i.av, ptr %i.as, align 8, !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %bb.h
  %i.bb = phi ptr [ %i.ba, %.noexc27 ], [ %i.as, %bb.h ] ; 3 uses
  switch i64 %i.av, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !30
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !30
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.av, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  store i8 0, ptr %i.be, align 1, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 10, ptr %i.bf, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5, i64 23, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IN7rocksdb9BlockTypeENS8_5SliceEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJSC_EEES6_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIN7rocksdb9BlockTypeENS7_5SliceEESt4hashIS5_ESt8equal_toIS5_ESaIS6_IKS5_SA_EEE6insertEOSG_.exit unwind label %bb.o ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIN7rocksdb9BlockTypeENS7_5SliceEESt4hashIS5_ESt8equal_toIS5_ESaIS6_IKS5_SA_EEE6insertEOSG_.exit: ; preds = %bb.m
  %i.bi = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIN7rocksdb9BlockTypeENS7_5SliceEESt4hashIS5_ESt8equal_toIS5_ESaIS6_IKS5_SA_EEE6insertEOSG_.exit
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !30
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #37
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIN7rocksdb9BlockTypeENS7_5SliceEESt4hashIS5_ESt8equal_toIS5_ESaIS6_IKS5_SA_EEE6insertEOSG_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  store i8 1, ptr %i.l, align 8, !tbaa !1223
  %i.bm = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !30
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #37
  br label %.thread

.thread:                                          ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.p

.thread.i24:                                      ; preds = %bb.f, %bb.g
  %storemerge = phi ptr [ %.pre.i17, %bb.g ], [ null, %bb.f ]
  store ptr %storemerge, ptr %i.am, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.u

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit31

bb.o:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.as
  br i1 %i.bu, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.o
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !30
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #37
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit31

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit31: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %bb.n
  %.pn = phi { ptr, i32 } [ %i.br, %bb.n ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ %i.bs, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.bx = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit31
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !30
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN7rocksdb9BlockTypeENS7_5SliceEEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !402 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ci = load <4 x i8>, ptr %13, align 8, !tbaa !30
  store <4 x i8> %i.ci, ptr %i.a, align 8, !tbaa !30
  store <4 x i8> zeroinitializer, ptr %13, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !495, !range !450, !noundef !413
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  store i8 %i.ck, ptr %i.cl, align 4, !tbaa !475
  store i8 0, ptr %i.cj, align 4, !tbaa !475
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 93 ; 3 uses
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !476
  store i8 0, ptr %i.cm, align 1, !tbaa !476
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !452
  store ptr null, ptr %i.cp, align 8, !tbaa !452
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !452 ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !452
  %.not.i.i.i.i.i35 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i35, label %_ZN7rocksdb6StatusD2Ev.exit41, label %_ZN7rocksdb6StatusaSEOS0_.exit38

_ZN7rocksdb6StatusaSEOS0_.exit38:                 ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.cs) #37
  %.pr70 = load ptr, ptr %i.cp, align 8, !tbaa !452 ; 2 uses
  %.not.i.i39 = icmp eq ptr %.pr70, null
  br i1 %.not.i.i39, label %_ZN7rocksdb6StatusD2Ev.exit41, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i40

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i40: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit38
  call void @_ZdaPv(ptr noundef nonnull %.pr70) #37
  br label %_ZN7rocksdb6StatusD2Ev.exit41

_ZN7rocksdb6StatusD2Ev.exit41:                    ; preds = %bb.p, %_ZN7rocksdb6StatusaSEOS0_.exit38, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ct = load i8, ptr %i.a, align 8, !tbaa !471  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit41
  store i8 %i.ct, ptr %0, align 8, !tbaa !471
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cw = load <4 x i8>, ptr %i.ch, align 1, !tbaa !30
  store <4 x i8> %i.cw, ptr %i.cv, align 1, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cy = load i8, ptr %i.co, align 1, !tbaa !476
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !476
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !452 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.da, null
  br i1 %.not.i.i42, label %_ZN7rocksdb6StatusC2ERKS0_.exit54, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.190") align 8 %5, ptr noundef nonnull %i.da)
  %.pre.i46 = load ptr, ptr %5, align 8, !tbaa !452
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit54

_ZN7rocksdb6StatusC2ERKS0_.exit54:                ; preds = %bb.q, %bb.r
  %storemerge72 = phi ptr [ %.pre.i46, %bb.r ], [ null, %bb.q ]
  store ptr %storemerge72, ptr %i.cz, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.u

bb.s:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit41
  %i.db = load ptr, ptr %i.cc, align 8, !tbaa !402 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !1222
  %i.dh = load <4 x i8>, ptr %i.a, align 8, !tbaa !30
  store <4 x i8> %i.dh, ptr %0, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dj = load i8, ptr %i.cl, align 4, !tbaa !475, !range !450, !noundef !413
  store i8 %i.dj, ptr %i.di, align 4, !tbaa !475
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dl = load i8, ptr %i.co, align 1, !tbaa !476
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !476
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.dn = load ptr, ptr %i.cq, align 8, !tbaa !452 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i55, label %_ZN7rocksdb6StatusC2ERKS0_.exit67, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.190") align 8 %4, ptr noundef nonnull %i.dn)
  %.pre.i59 = load ptr, ptr %4, align 8, !tbaa !452
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit67

_ZN7rocksdb6StatusC2ERKS0_.exit67:                ; preds = %bb.s, %bb.t
  %storemerge73 = phi ptr [ %.pre.i59, %bb.t ], [ null, %bb.s ]
  store ptr %storemerge73, ptr %i.dm, align 8, !tbaa !452
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.u

bb.u:                                             ; preds = %.thread.i24, %_ZN7rocksdb6StatusC2ERKS0_.exit67, %_ZN7rocksdb6StatusC2ERKS0_.exit54, %_ZN7rocksdb6StatusC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb30UserDefinedIndexBuilderWrapper9IndexSizeEv(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1222
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb12IndexBuilder21NumUniformIndexBlocksEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb30UserDefinedIndexBuilderWrapper24CurrentIndexSizeEstimateEv(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb30UserDefinedIndexBuilderWrapper25separator_is_key_plus_seqEv(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb12IndexBuilder23UpdateIndexSizeEstimateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = icmp ult i64 %i.b, 8
  br i1 %i.c, label %_ZNSt7__cxx119to_stringEm.exit, label %bb.l

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !25, !alias.scope !1260
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !31, !alias.scope !1260
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !30
  %i.g = trunc nuw nsw i64 %i.b to i8
  %i.h = or disjoint i8 %i.g, 48
  store i8 %i.h, ptr %i.d, align 8, !tbaa !30
end_hunk_1
