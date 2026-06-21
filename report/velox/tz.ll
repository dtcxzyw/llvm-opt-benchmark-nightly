inline.NumInlined: 839
inline.NumDeleted: 378
begin_hunk_0_@_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #12 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !51
  store i64 %i.r, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !22
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE12_M_check_lenEmPKc.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !27
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !13
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !24
  store ptr %i.w, ptr %i.t, align 8, !tbaa !27
  store i64 0, ptr %i.ae, align 8, !tbaa !24
  store i8 0, ptr %i.w, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !66, !range !74, !noundef !75
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !66
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !122, !noalias !119
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !119, !noalias !122
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !22, !alias.scope !119, !noalias !122
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !27, !alias.scope !122, !noalias !119 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24, !alias.scope !122, !noalias !119 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false), !alias.scope !124
  br label %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !27, !alias.scope !119, !noalias !122
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !13, !alias.scope !122, !noalias !119
  store i64 %i.au, ptr %i.am, align 8, !tbaa !13, !alias.scope !119, !noalias !122
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !24, !alias.scope !122, !noalias !119
  br label %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !24, !alias.scope !119, !noalias !122
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !27, !alias.scope !122, !noalias !119
  store i64 0, ptr %i.aw, align 8, !tbaa !24, !alias.scope !122, !noalias !119
  store i8 0, ptr %i.ao, align 8, !tbaa !13, !alias.scope !122, !noalias !119
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !66, !range !74, !alias.scope !122, !noalias !119, !noundef !75
  store i8 %i.ba, ptr %i.ay, align 8, !tbaa !66, !alias.scope !119, !noalias !122
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !118

_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atIN8facebook5velox4date15expanded_ttinfoEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ], [ %i.bc, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bd, %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.be = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !51, !alias.scope !128, !noalias !125
  store i64 %i.be, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !125, !noalias !128
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 3 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !22, !alias.scope !125, !noalias !128
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !27, !alias.scope !128, !noalias !125 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24, !alias.scope !128, !noalias !125 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false), !alias.scope !130
  br label %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !27, !alias.scope !125, !noalias !128
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !13, !alias.scope !128, !noalias !125
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !13, !alias.scope !125, !noalias !128
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !24, !alias.scope !128, !noalias !125
  br label %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bq = phi i64 [ %i.bm, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !24, !alias.scope !125, !noalias !128
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !27, !alias.scope !128, !noalias !125
  store i64 0, ptr %i.br, align 8, !tbaa !24, !alias.scope !128, !noalias !125
  store i8 0, ptr %i.bj, align 8, !tbaa !13, !alias.scope !128, !noalias !125
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !66, !range !74, !alias.scope !128, !noalias !125, !noundef !75
  store i8 %i.bv, ptr %i.bt, align 8, !tbaa !66, !alias.scope !125, !noalias !128
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bw, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !118

_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26: ; preds = %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bd, %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bx, %_ZSt19__relocate_object_aIN8facebook5velox4date15expanded_ttinfoES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN8facebook5velox4date15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cb) #15
  br label %_ZNSt12_Vector_baseIN8facebook5velox4date15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook5velox4date15expanded_ttinfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4date15expanded_ttinfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !111
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !70
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !73
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE14_M_emplace_auxIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENSJ_IPKS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !51 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %i.e, align 8, !tbaa !81
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !103
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !81   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.e, align 8, !tbaa !81
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.r, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.r, 16
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !103
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %.sroa.0.0.copyload.i, ptr %i.l, align 8, !tbaa !51
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.7.8..sroa_idx, align 8, !tbaa !76
  %.pre = load ptr, ptr %0, align 8, !tbaa !40
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.y = ptrtoint ptr %i.f to i64
  %i.z = sub i64 %i.y, %i.c                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.j, label %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ab = ashr exact i64 %i.z, 4                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 3 uses
  %.not.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #12 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %2, align 8, !tbaa !51
  store i64 %.sroa.0.0.copyload.i.i9, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !78
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.a, %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !103, !alias.scope !131
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !109

_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i26.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i26.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, %.lr.ph.i.i.i27.i
  %.012.i.i.i28.i = phi ptr [ %i.ao, %.lr.ph.i.i.i27.i ], [ %i.am, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  %.0911.i.i.i29.i = phi ptr [ %i.an, %.lr.ph.i.i.i27.i ], [ %i.x, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i28.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i29.i, i64 16, i1 false), !tbaa.struct !103, !alias.scope !135
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i28.i, i64 16 ; 2 uses
  %.not.i.i.i30.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i30.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, label %.lr.ph.i.i.i27.i, !llvm.loop !109

_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i: ; preds = %.lr.ph.i.i.i27.i, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.0.lcssa.i.i.i31.i = phi ptr [ %i.am, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ], [ %i.ao, %.lr.ph.i.i.i27.i ]
  %.not.i33.i = icmp eq ptr %i.a, null
  br i1 %.not.i33.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.z) #15
  br label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit

_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i, %bb.k
  store ptr %i.ah, ptr %0, align 8, !tbaa !40
  store ptr %.0.lcssa.i.i.i31.i, ptr %i.e, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit
  %i.aq = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.h ], [ %i.ah, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.d
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4date16load_transitionsIlEESt6vectorINS1_10transitionESaIS4_EERSii(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = shl nuw nsw i64 %i.c, 4
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #12 ; 6 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !40
  store ptr %i.f, ptr %i.d, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.c ; 3 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !43
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %bb.k ] ; 7 uses
  %.0828 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %bb.k ]
  %i.k = phi ptr [ %i.g, %.lr.ph ], [ %i.ak, %bb.k ] ; 6 uses
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.aj, %bb.k ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !51
  %i.o = call noundef i64 @llvm.bswap.i64(i64 %i.n) ; 3 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.j, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !81
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775792
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %i.b, align 8
  store ptr %i.l, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.w, i64 576460752303423487)
  %i.z = select i1 %i.x, i64 576460752303423487, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #12
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i64 %i.o, ptr %i.ac, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !78
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.l, %.noexc14 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !103, !alias.scope !139
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !109

_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc14 ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #15
  br label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ai = phi ptr [ %i.q, %bb.d ], [ %i.ag, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %i.l, %bb.d ], [ %i.ab, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.ak = phi ptr [ %i.k, %bb.d ], [ %i.ah, %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EE17_M_realloc_insertIJNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %i.al, align 8, !tbaa !51
  %i.am = icmp slt i64 %.sroa.0.0.copyload.i.i15, -9223372017043200
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store i64 -9223372017043200, ptr %i.al, align 8, !tbaa !51
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %i.b, align 8
  store ptr %i.l, ptr %0, align 8
  br label %bb.l

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox4date10transitionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %i.b, align 8
  store ptr %i.l, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ao = add nuw nsw i32 %.0828, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.k, %bb.a, %_ZNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE11_M_allocateEm.exit.i
  %.lcssa24 = phi ptr [ %i.f, %_ZNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.a ], [ %i.aj, %bb.k ]
  %.lcssa19 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIN8facebook5velox4date10transitionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.a ], [ %i.ak, %bb.k ]
  store ptr %.lcssa19, ptr %i.b, align 8
  store ptr %.lcssa24, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %bb.j, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i.i.i16 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = ptrtoint ptr %i.k to i64
  %i.aq = ptrtoint ptr %i.l to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ar) #15
  br label %_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4date10transitionESaIS3_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
