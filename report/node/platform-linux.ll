inline.NumInlined: 418
inline.NumDeleted: 274
begin_hunk_0_@_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8
  store i64 %i.x, ptr %i.u, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit
  %i.ad = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  switch i64 %i.x, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %i.v, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit

_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.x, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %i.s, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %i.t, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 0, ptr %i.aj, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ay, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !alias.scope !36, !noalias !39
  %i.al = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !39, !noalias !36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !39, !noalias !36 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !41
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %.012.i.i.i, align 8, !alias.scope !36, !noalias !39
  %i.as = load i64, ptr %i.am, align 8, !alias.scope !39, !noalias !36
  store i64 %i.as, ptr %i.ak, align 8, !alias.scope !36, !noalias !39
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !39, !noalias !36
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.at, ptr %i.av, align 8, !alias.scope !36, !noalias !39
  store ptr %i.am, ptr %.0911.i.i.i, align 8, !alias.scope !39, !noalias !36
  store i64 0, ptr %i.au, align 8, !alias.scope !39, !noalias !36
  store i8 0, ptr %i.am, align 8, !alias.scope !39, !noalias !36
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !alias.scope !41
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !42

_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZSt12construct_atIN2v84base2OS20SharedLibraryAddressEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmRKmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSG_DpOSH_.exit ], [ %i.az, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i18, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25
  %.012.i.i.i20 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %i.ba, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i21 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ], [ %1, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16 ; 3 uses
  store ptr %i.bb, ptr %.012.i.i.i20, align 8, !alias.scope !43, !noalias !46
  %i.bc = load ptr, ptr %.0911.i.i.i21, align 8, !alias.scope !46, !noalias !43 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22

bb.k:                                             ; preds = %.lr.ph.i.i.i19
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !46, !noalias !43 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !48
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i19
  store ptr %i.bc, ptr %.012.i.i.i20, align 8, !alias.scope !43, !noalias !46
  %i.bj = load i64, ptr %i.bd, align 8, !alias.scope !46, !noalias !43
  store i64 %i.bj, ptr %i.bb, align 8, !alias.scope !43, !noalias !46
  %.phi.trans.insert.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8
  %.pre.i.i.i.i24 = load i64, ptr %.phi.trans.insert.i.i.i.i23, align 8, !alias.scope !46, !noalias !43
  br label %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25

_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22, %bb.k
  %i.bk = phi i64 [ %i.bg, %bb.k ], [ %.pre.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !alias.scope !43, !noalias !46
  store ptr %i.bd, ptr %.0911.i.i.i21, align 8, !alias.scope !46, !noalias !43
  store i64 0, ptr %i.bl, align 8, !alias.scope !46, !noalias !43
  store i8 0, ptr %i.bd, align 8, !alias.scope !46, !noalias !43
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !alias.scope !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 56 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, label %.lr.ph.i.i.i19, !llvm.loop !42

_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28: ; preds = %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.ba, %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bq, %_ZSt19__relocate_object_aIN2v84base2OS20SharedLibraryAddressES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #22
  br label %_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN2v84base2OS20SharedLibraryAddressESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN2v84base2OS20SharedLibraryAddressESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit28, %bb.l
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8
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
  %2 = load i8, ptr %i.a, align 8
  %3 = icmp eq i8 %2, 114
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 45
  %or.cond.i.i.i = select i1 %3, i1 %6, i1 false
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %8 = load i8, ptr %7, align 2
  %i.b = icmp eq i8 %8, 120
  %or.cond8.i.i.i = select i1 %or.cond.i.i.i, i1 %i.b, i1 false
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
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
