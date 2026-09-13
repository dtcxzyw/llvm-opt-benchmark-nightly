Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Counters?download=true
inline.NumInlined: 651
inline.NumDeleted: 301
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@llvm.memmove.p0.p0.i64

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI14ModuleCountersSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.q, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !32, !alias.scope !113, !noalias !114
  %i.w = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !37, !alias.scope !114, !noalias !113 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !35, !alias.scope !114, !noalias !113 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false), !alias.scope !115
  br label %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !37, !alias.scope !113, !noalias !114
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !38, !alias.scope !114, !noalias !113
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !38, !alias.scope !113, !noalias !114
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !114, !noalias !113
  br label %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ae = phi i64 [ %i.aa, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !35, !alias.scope !113, !noalias !114
  store ptr %i.x, ptr %.0911.i.i.i, align 8, !tbaa !37, !alias.scope !114, !noalias !113
  store i64 0, ptr %i.af, align 8, !tbaa !35, !alias.scope !114, !noalias !113
  store i8 0, ptr %i.x, align 8, !tbaa !38, !alias.scope !114, !noalias !113
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !40, !alias.scope !114, !noalias !113
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !40, !alias.scope !113, !noalias !114
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55, !alias.scope !114, !noalias !113
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !55, !alias.scope !113, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !114, !noalias !113
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !109

_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI14ModuleCountersSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ao, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.bj, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ap, %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 7 uses
  %.0911.i.i.i18 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i17, align 8, !tbaa !32, !alias.scope !116, !noalias !117
  %i.ar = load ptr, ptr %.0911.i.i.i18, align 8, !tbaa !37, !alias.scope !117, !noalias !116 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !35, !alias.scope !117, !noalias !116 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !118
  br label %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.ar, ptr %.012.i.i.i17, align 8, !tbaa !37, !alias.scope !116, !noalias !117
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !38, !alias.scope !117, !noalias !116
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !38, !alias.scope !116, !noalias !117
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !tbaa !35, !alias.scope !117, !noalias !116
  br label %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19, %bb.d
  %i.az = phi i64 [ %i.av, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !35, !alias.scope !116, !noalias !117
  store ptr %i.as, ptr %.0911.i.i.i18, align 8, !tbaa !37, !alias.scope !117, !noalias !116
  store i64 0, ptr %i.ba, align 8, !tbaa !35, !alias.scope !117, !noalias !116
  store i8 0, ptr %i.as, align 8, !tbaa !38, !alias.scope !117, !noalias !116
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !40, !alias.scope !117, !noalias !116
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !40, !alias.scope !116, !noalias !117
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !55, !alias.scope !117, !noalias !116
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !55, !alias.scope !116, !noalias !117
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !alias.scope !117, !noalias !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 56 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !109

_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25: ; preds = %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ap, %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bj, %_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseI14ModuleCountersSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bn) #21
  br label %_ZNSt12_Vector_baseI14ModuleCountersSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI14ModuleCountersSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI14ModuleCountersSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit25, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !13
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %.sroa.4.i.i9.i = alloca [28 x i8], align 4     ; 4 uses
  %.sroa.4.i.i.i = alloca [28 x i8], align 4      ; 4 uses
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr26, i64 40 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEET_SG_SG_T0_.exit"
  %i.j = icmp eq i64 %i.cm, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !119

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dk, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i25.lcssa, 5               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i25.lcssa, 32
  %i.q = icmp eq i64 %i.p, 0
  %.sroa.4.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 4
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %i.m ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %.08.i.i.i ; 2 uses
  %.sroa.08.0.copyload.i.i.i = load i32, ptr %i.w, align 8 ; 2 uses
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, i64 28, i1 false)
  %i.x = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.y = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.z = add i64 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %i.z
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %i.ab
  %.val.i.i.i.i.i = load i32, ptr %i.aa, align 8, !tbaa !50
  %.val1.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.ad = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.ab, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %.037.i.i.i.i ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !29
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !51
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !120

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ak, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i32, ptr %i.s, align 4, !tbaa !29
  store i32 %i.al, ptr %i.t, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ao = icmp slt i32 %.val.i.i.i.i.i.i, %.sroa.08.0.copyload.i.i.i
  br i1 %i.ao, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i ; 2 uses
  store i32 %.val.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !51
  %i.as = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i", !llvm.loop !121

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.0911.i.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.08.0.copyload.i.i.i, ptr %i.at, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.av = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !122

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_SH_T1_T2_.exit.i.i.i"
  %.sroa.4.8..sroa_idx.i.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i9.i, i64 4
  br label %bb.g

bb.g:                                             ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %storemerge23.lcssa, %.lr.ph.i10.i ], [ %i.aw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i" ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 4 uses
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.aw, align 8 ; 2 uses
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i12.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i9.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.48.0..sroa.0.0..sroa_idx.i.i12.i, i64 28, i1 false)
  %i.ax = load i32, ptr %.fr26, align 4, !tbaa !29
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !50
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !51
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.az, %i.a                     ; 3 uses
  %i.bb = ashr exact i64 %i.ba, 5                 ; 3 uses
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = lshr i64 %i.bc, 1
  %i.be = icmp sgt i64 %i.bb, 2
  br i1 %i.be, label %.lr.ph.i.i.i27.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i27.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i27.i
  %.037.i.i.i28.i = phi i64 [ %spec.select.i.i.i31.i, %.lr.ph.i.i.i27.i ], [ 0, %bb.g ] ; 2 uses
  %i.bf = shl i64 %.037.i.i.i28.i, 1              ; 2 uses
  %i.bg = add i64 %i.bf, 2                        ; 2 uses
  %i.bh = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %i.bg
  %i.bi = or disjoint i64 %i.bf, 1                ; 2 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %i.bi
  %.val.i.i.i.i29.i = load i32, ptr %i.bh, align 8, !tbaa !50
  %.val1.i.i.i.i30.i = load i32, ptr %i.bj, align 8, !tbaa !50
  %i.bk = icmp slt i32 %.val.i.i.i.i29.i, %.val1.i.i.i.i30.i
  %spec.select.i.i.i31.i = select i1 %i.bk, i64 %i.bi, i64 %i.bg ; 4 uses
  %i.bl = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %spec.select.i.i.i31.i ; 2 uses
  %i.bm = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %.037.i.i.i28.i ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !29
  store i32 %i.bn, ptr %i.bm, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !51
  %i.bq = icmp slt i64 %spec.select.i.i.i31.i, %i.bd
  br i1 %i.bq, label %.lr.ph.i.i.i27.i, label %._crit_edge.i.i.i13.i, !llvm.loop !120

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i27.i, %bb.g
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i31.i, %.lr.ph.i.i.i27.i ] ; 5 uses
  %i.br = and i64 %i.ba, 32
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bt = add nsw i64 %i.bb, -2
  %i.bu = ashr exact i64 %i.bt, 1
  %i.bv = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bu
  br i1 %i.bv, label %.thread.i.i26.i, label %bb.i

.thread.i.i26.i:                                  ; preds = %bb.h
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bx = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !29
  store i32 %i.ca, ptr %i.bz, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !tbaa.struct !51
  br label %.lr.ph.i.i.i.i18.i.preheader

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i.preheader

.lr.ph.i.i.i.i18.i.preheader:                     ; preds = %bb.i, %.thread.i.i26.i
  %.010.i.i.i.i19.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.i ], [ %i.bx, %.thread.i.i26.i ]
  br label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph.i.i.i.i18.i.preheader, %bb.j
  %.010.i.i.i.i19.i = phi i64 [ %.0911.i.i910.i.i21.i, %bb.j ], [ %.010.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i18.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i20.i = add nsw i64 %.010.i.i.i.i19.i, -1
  %.0911.i.i910.i.i21.i = lshr i64 %.0911.in.i.i.i.i20.i, 1 ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %.0911.i.i910.i.i21.i ; 2 uses
  %.val.i.i.i.i.i22.i = load i32, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %i.ce = icmp slt i32 %.val.i.i.i.i.i22.i, %.sroa.07.0.copyload.i.i.i
  br i1 %i.ce, label %bb.j, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i18.i
  %i.cf = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %.010.i.i.i.i19.i ; 2 uses
  store i32 %.val.i.i.i.i.i22.i, ptr %i.cf, align 8, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !tbaa.struct !51
  %.not11.i.i25.i = icmp eq i64 %.0911.i.i910.i.i21.i, 0
  br i1 %.not11.i.i25.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", label %.lr.ph.i.i.i.i18.i, !llvm.loop !121

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i": ; preds = %bb.j, %.lr.ph.i.i.i.i18.i, %bb.i
  %.0.lcssa.i.i.i.i24.i = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %.010.i.i.i.i19.i, %.lr.ph.i.i.i.i18.i ]
  %i.ci = getelementptr inbounds [32 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i24.i ; 2 uses
  store i32 %.sroa.07.0.copyload.i.i.i, ptr %i.ci, align 8, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i11.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i9.i)
  %i.ck = icmp sgt i64 %i.ba, 32
  br i1 %i.ck, label %bb.g, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !123

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 5 uses
  %.02440 = phi i64 [ %i.cm, %bb.b ], [ %2, %.lr.ph ]
  %i.cl = phi i64 [ %i.dl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cm = add nsw i64 %.02440, -1                 ; 3 uses
  %i.cn = lshr i64 %i.cl, 1
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.fr26, i64 %i.cn ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %storemerge2341, i64 -32 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !50 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.co, align 8, !tbaa !50 ; 5 uses
  %i.cq = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.cp, align 8, !tbaa !50 ; 6 uses
  br i1 %i.cq, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.lr.ph42
  %i.cr = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = load i32, ptr %.fr26, align 8, !tbaa !29
  store i32 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !29
  store i32 %i.cs, ptr %i.co, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.0.0.copyload, ptr %i.ct, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.m:                                             ; preds = %bb.k
  %i.cu = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.cv = load i32, ptr %.fr26, align 8, !tbaa !29 ; 2 uses
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !29
  store i32 %i.cv, ptr %i.cp, align 8, !tbaa !29
  %i.cw = getelementptr inbounds i8, ptr %storemerge2341, i64 -24 ; 2 uses
  %.sroa.049.0.copyload = load <3 x i64>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.049.0.copyload, ptr %i.cw, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  store i32 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !29
  store i32 %i.cv, ptr %i.f, align 8, !tbaa !29
  %.sroa.051.0.copyload = load <3 x i64>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.051.0.copyload, ptr %i.h, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.p:                                             ; preds = %.lr.ph42
  %i.cx = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = load i32, ptr %.fr26, align 8, !tbaa !29
  store i32 %.val.i.i.i, ptr %.fr26, align 8, !tbaa !29
  store i32 %i.cy, ptr %i.f, align 8, !tbaa !29
  %.sroa.053.0.copyload = load <3 x i64>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.053.0.copyload, ptr %i.h, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.cz = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.da = load i32, ptr %.fr26, align 8, !tbaa !29 ; 2 uses
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %.val1.i27.i.i, ptr %.fr26, align 8, !tbaa !29
  store i32 %i.da, ptr %i.cp, align 8, !tbaa !29
  %i.db = getelementptr inbounds i8, ptr %storemerge2341, i64 -24 ; 2 uses
  %.sroa.055.0.copyload = load <3 x i64>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.055.0.copyload, ptr %i.db, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i32 %.val1.i.i.i, ptr %.fr26, align 8, !tbaa !29
  store i32 %i.da, ptr %i.co, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %.sroa.057.0.copyload = load <3 x i64>, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.057.0.copyload, ptr %i.dc, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader": ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader", %bb.w
  %.sroa.012.0.i.i = phi ptr [ %i.de, %bb.w ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.w ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr26, align 8, !tbaa !50 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i" ], [ %i.de, %bb.u ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 8, !tbaa !50 ; 2 uses
  %i.dd = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.dd, label %bb.u, label %.preheader.i.i, !llvm.loop !124

.preheader.i.i:                                   ; preds = %bb.u, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.u ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !50 ; 2 uses
  %i.df = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.df, label %.preheader.i.i, label %bb.v, !llvm.loop !125

bb.v:                                             ; preds = %.preheader.i.i
  %i.dg = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dg, label %bb.w, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEET_SG_SG_T0_.exit"

bb.w:                                             ; preds = %bb.v
  store i32 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 4, !tbaa !29
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %.sroa.059.0.copyload = load <3 x i64>, ptr %i.dh, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !tbaa.struct !51
  store <3 x i64> %.sroa.059.0.copyload, ptr %i.di, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_SG_T0_.exit.i", !llvm.loop !126

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.v
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2341, i64 noundef %i.cm)
  %i.dj = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 5                 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 16
  br i1 %i.dm, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !119

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_SG_RT0_.exit.i23.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_Counters.cpp() #17 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @gCounters, i8 0, i64 56, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8CountersD2Ev, ptr nonnull @gCounters, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !47}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS14ModuleCounters", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseI14ModuleCountersSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!12, !11, i64 16}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 16}
!20 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !17, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIiSaIiEE", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseI14ModuleCountersSaIS0_EE12_Vector_implE", !12, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseI14ModuleCountersSaIS0_EE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorI14ModuleCountersSaIS0_EE", !25, i64 0}
!27 = !{!"_ZTS8Counters", !20, i64 0, !23, i64 8, !26, i64 32}
!28 = !{!27, !20, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!"p1 omnipotent char", !10, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"long", !6, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !33, i64 8, !6, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!33, !33, i64 0}
!37 = !{!34, !30, i64 0}
!38 = !{!6, !6, i64 0}
!39 = !{!"p1 _ZTS16FunctionCounters", !10, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSSt4pairIi12LineCountersE", !10, i64 0}
!42 = !{!"_ZTSSt4hashIiE"}
!43 = !{!"_ZTSSt8equal_toIiE"}
!44 = !{!"_ZTSN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEEE", !41, i64 0, !33, i64 8, !33, i64 16, !7, i64 24, !42, i64 28, !43, i64 29}
!45 = !{!44, !33, i64 8}
!46 = !{!44, !41, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"_ZTS12LineCounters", !33, i64 0, !33, i64 8, !33, i64 16}
!49 = !{!"_ZTSSt4pairIi12LineCountersE", !7, i64 0, !48, i64 8}
!50 = !{!49, !7, i64 0}
!51 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36}
!52 = !{!48, !33, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseI16FunctionCountersSaIS0_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!54 = !{!53, !39, i64 8}
!55 = !{!53, !39, i64 16}
!56 = !{!44, !7, i64 24}
!57 = !{!44, !33, i64 16}
!58 = !{!53, !39, i64 0}
!59 = !{!17, !16, i64 8}
!60 = distinct !{!60, !47}
!61 = distinct !{!61, !47}
!62 = distinct !{!62, !47}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !47}
!65 = distinct !{!65, !"_ZSt19__relocate_object_aISt4pairIi12LineCountersES2_SaIS2_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aISt4pairIi12LineCountersES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!67 = distinct !{!67, !65, !"_ZSt19__relocate_object_aISt4pairIi12LineCountersES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = !{!16, !16, i64 0}
!71 = !{!11, !11, i64 0}
!72 = !{!"_ZTS9lua_Debug", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !7, i64 32, !7, i64 36, !6, i64 40, !6, i64 41, !6, i64 42, !10, i64 48, !6, i64 56}
!73 = !{!72, !30, i64 24}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!67, !66}
!78 = distinct !{!78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!79 = distinct !{!79, !78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!80 = distinct !{!80, !"_ZNSt7__cxx119to_stringEi"}
!81 = distinct !{!81, !80, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!82 = distinct !{!82, !47}
!83 = distinct !{!83, !47}
!84 = distinct !{!84, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!85 = distinct !{!85, !84, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!86 = distinct !{!86, !"_ZNSt7__cxx119to_stringEi"}
!87 = distinct !{!87, !86, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!88 = distinct !{!88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!89 = distinct !{!89, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!90 = !{!79}
!91 = !{!81}
!92 = !{!85}
!93 = !{!87}
!94 = !{!89}
!95 = distinct !{!95, !47}
!96 = !{!48, !33, i64 8}
!97 = !{!48, !33, i64 16}
!98 = distinct !{!98, !47}
!99 = distinct !{!99, !47}
!100 = distinct !{!100, !47}
!101 = distinct !{!101, !47}
!102 = distinct !{!102, !104}
!103 = distinct !{!103, !47}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = !{!41, !41, i64 0}
!106 = distinct !{!106, !"_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_"}
!107 = distinct !{!107, !106, !"_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!109 = distinct !{!109, !47}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!112 = distinct !{!112, !110, !"_ZSt19__relocate_object_aI14ModuleCountersS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!113 = !{!107}
!114 = !{!108}
!115 = !{!107, !108}
!116 = !{!111}
!117 = !{!112}
!118 = !{!111, !112}
!119 = distinct !{!119, !47}
!120 = distinct !{!120, !47}
!121 = distinct !{!121, !47}
!122 = distinct !{!122, !47}
!123 = distinct !{!123, !47}
!124 = distinct !{!124, !47}
!125 = distinct !{!125, !47}
!126 = distinct !{!126, !47}
end_hunk_0
