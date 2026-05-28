inline.NumInlined: 418
inline.NumDeleted: 274
begin_hunk_0_@_ZSt25__throw_bad_function_callv
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v84base12MemoryRegionESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
  unreachable

_ZNKSt6vectorIN2v84base12MemoryRegionESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN2v84base12MemoryRegionESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2v84base12MemoryRegionESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8
  %i.ab = load i64, ptr %i.v, align 8
  store i64 %i.ab, ptr %i.t, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %i.ac, ptr %i.ae, align 8
  store ptr %i.v, ptr %i.s, align 8
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.v, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i, i64 48, i1 false), !alias.scope !28
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !alias.scope !23, !noalias !26
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !26, !noalias !23 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !26, !noalias !23 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !28
  br label %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !alias.scope !23, !noalias !26
  %i.ap = load i64, ptr %i.aj, align 8, !alias.scope !26, !noalias !23
  store i64 %i.ap, ptr %i.ah, align 8, !alias.scope !23, !noalias !26
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !26, !noalias !23
  br label %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  store i64 %i.aq, ptr %i.as, align 8, !alias.scope !23, !noalias !26
  store ptr %i.aj, ptr %i.ag, align 8, !alias.scope !26, !noalias !23
  store i64 0, ptr %i.ar, align 8, !alias.scope !26, !noalias !23
  store i8 0, ptr %i.aj, align 8, !alias.scope !26, !noalias !23
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN2v84base12MemoryRegionEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(80) %.0911.i.i.i19, i64 48, i1 false), !alias.scope !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !alias.scope !30, !noalias !33
  %i.az = load ptr, ptr %i.ax, align 8, !alias.scope !33, !noalias !30 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !33, !noalias !30 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !35
  br label %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !alias.scope !30, !noalias !33
  %i.bg = load i64, ptr %i.ba, align 8, !alias.scope !33, !noalias !30
  store i64 %i.bg, ptr %i.ay, align 8, !alias.scope !30, !noalias !33
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !alias.scope !33, !noalias !30
  br label %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  store i64 %i.bh, ptr %i.bj, align 8, !alias.scope !30, !noalias !33
  store ptr %i.ba, ptr %i.ax, align 8, !alias.scope !33, !noalias !30
  store i64 0, ptr %i.bi, align 8, !alias.scope !33, !noalias !30
  store i8 0, ptr %i.ba, align 8, !alias.scope !33, !noalias !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 80 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !29

_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN2v84base12MemoryRegionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #22
  br label %_ZNSt12_Vector_baseIN2v84base12MemoryRegionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2v84base12MemoryRegionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN2v84base12MemoryRegionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #21
  unreachable

_ZNKSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %5 = sdiv exact i64 %i.f, 56                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i, %5        ; 2 uses
  %7 = icmp ult i64 %6, %5
  %8 = tail call i64 @llvm.umin.i64(i64 %6, i64 164703072086692425)
  %9 = select i1 %7, i64 164703072086692425, i64 %8 ; 3 uses
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %10, %i.e
  %.not.i = icmp eq i64 %9, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit, label %12

12:                                               ; preds = %_ZNKSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE12_M_check_lenEmPKc.exit
  %13 = mul nuw nsw i64 %9, 56
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #19
  br label %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE12_M_check_lenEmPKc.exit, %12
  %15 = phi ptr [ %14, %12 ], [ null, %_ZNKSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 %11 ; 7 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = load i64, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 8 uses
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit
  %i.p = icmp slt i64 %i.n, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = add nuw i64 %i.n, 1                      ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !17

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 2 uses
  store ptr %i.s, ptr %i.h, align 8
  store i64 %i.n, ptr %i.k, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit
  %i.t = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.n, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = load i8, ptr %i.l, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit

_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.j, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 0, ptr %i.z, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %15, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.aa, ptr %.012.i.i.i, align 8, !alias.scope !36, !noalias !39
  %i.ab = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !39, !noalias !36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !39, !noalias !36 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false), !alias.scope !41
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ab, ptr %.012.i.i.i, align 8, !alias.scope !36, !noalias !39
  %i.ai = load i64, ptr %i.ac, align 8, !alias.scope !39, !noalias !36
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !36, !noalias !39
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !39, !noalias !36
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.i
  %i.aj = phi i64 [ %i.af, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !alias.scope !36, !noalias !39
  store ptr %i.ac, ptr %.0911.i.i.i, align 8, !alias.scope !39, !noalias !36
  store i64 0, ptr %i.ak, align 8, !alias.scope !39, !noalias !36
  store i8 0, ptr %i.ac, align 8, !alias.scope !39, !noalias !36
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !alias.scope !41
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !42

_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit
  %.0.lcssa.i.i.i = phi ptr [ %15, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit ], [ %i.ap, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i18, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25
  %.012.i.i.i20 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %i.aq, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i21 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %1, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i20, align 8, !alias.scope !43, !noalias !46
  %i.as = load ptr, ptr %.0911.i.i.i21, align 8, !alias.scope !46, !noalias !43 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22

bb.j:                                             ; preds = %.lr.ph.i.i.i19
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !46, !noalias !43 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !48
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i19
  store ptr %i.as, ptr %.012.i.i.i20, align 8, !alias.scope !43, !noalias !46
  %i.az = load i64, ptr %i.at, align 8, !alias.scope !46, !noalias !43
  store i64 %i.az, ptr %i.ar, align 8, !alias.scope !43, !noalias !46
  %.phi.trans.insert.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8
  %.pre.i.i.i.i24 = load i64, ptr %.phi.trans.insert.i.i.i.i23, align 8, !alias.scope !46, !noalias !43
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22, %bb.j
  %i.ba = phi i64 [ %i.aw, %bb.j ], [ %.pre.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !43, !noalias !46
  store ptr %i.at, ptr %.0911.i.i.i21, align 8, !alias.scope !46, !noalias !43
  store i64 0, ptr %i.bb, align 8, !alias.scope !46, !noalias !43
  store i8 0, ptr %i.at, align 8, !alias.scope !46, !noalias !43
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !alias.scope !48
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 56 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19, !llvm.loop !42

_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28: ; preds = %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.aq, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bg, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bk) #22
  br label %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, %bb.k
  store ptr %15, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %15, i64 %9
  store ptr %i.bl, ptr %i.bh, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN2v84base12MemoryRegionEEZNS1_12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E9_M_invokeERKSt9_Any_dataS4_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) #13 align 2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8
  %.val3 = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.b, align 8
  %.not.i.i.i = icmp ule i64 %.val3, %.val
  %i.c = add i64 %.val2, %.val
  %i.d = icmp ult i64 %i.c, %.val4
  %i.e = select i1 %.not.i.i.i, i1 %i.d, i1 false
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN2v84base12MemoryRegionEEZNS1_12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN2v84base12MemoryRegionEEZNS1_25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E9_M_invokeERKSt9_Any_dataS4_"(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 114
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 45
  %or.cond.i.i.i = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, 120
  %or.cond8.i.i.i = select i1 %or.cond.i.i.i, i1 %i.i, i1 false
  ret i1 %or.cond8.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN2v84base12MemoryRegionEEZNS1_25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN2v84base25GetSharedLibraryAddressesEP8_IO_FILEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{null}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt11make_uniqueISt6vectorIN2v84base12MemoryRegionESaIS3_EEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_uniqueISt6vectorIN2v84base12MemoryRegionESaIS3_EEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!13 = distinct !{!13, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = distinct !{null}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmm: argument 0"}
!20 = distinct !{!20, !"_ZN2v84base12_GLOBAL__N_120FindEnclosingMappingEmm"}
!21 = distinct !{null, null}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !"_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!28 = !{!24, !27}
!29 = distinct !{!29, !7}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!32 = distinct !{!32, !"_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZSt19__relocate_object_aIN2v84base12MemoryRegionES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!35 = !{!31, !34}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !"_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!41 = !{!37, !40}
!42 = distinct !{!42, !7}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!45 = distinct !{!45, !"_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!48 = !{!44, !47}
end_hunk_0
