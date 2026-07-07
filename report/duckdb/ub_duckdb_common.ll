inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3410 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3408   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #64 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !178
  %i.s = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !139  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !16
  %i.z = load i64, ptr %i.t, align 8, !tbaa !79
  store i64 %i.z, ptr %i.r, align 8, !tbaa !79
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !139
  store ptr %i.t, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %i.ab, align 8, !tbaa !139
  store i8 0, ptr %i.t, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !3411
  store double %i.af, ptr %i.ad, align 8, !tbaa !3411
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6900)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ag, ptr %.012.i.i.i.i, align 8, !tbaa !178, !alias.scope !6897, !noalias !6900
  %i.ah = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6900, !noalias !6897 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !139, !alias.scope !6900, !noalias !6897 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !6902
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !6897, !noalias !6900
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !79, !alias.scope !6900, !noalias !6897
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !79, !alias.scope !6897, !noalias !6900
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !6900, !noalias !6897
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.ap = phi i64 [ %i.al, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !139, !alias.scope !6897, !noalias !6900
  store ptr %i.ai, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !6900, !noalias !6897
  store i64 0, ptr %i.aq, align 8, !tbaa !139, !alias.scope !6900, !noalias !6897
  store i8 0, ptr %i.ai, align 8, !tbaa !79, !alias.scope !6900, !noalias !6897
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32
  %i.au = load double, ptr %i.at, align 8, !tbaa !3411, !alias.scope !6900, !noalias !6897
  store double %i.au, ptr %i.as, align 8, !tbaa !3411, !alias.scope !6897, !noalias !6900
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6903

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2EOS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.ax, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 6 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6907)
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ay, ptr %.012.i.i.i.i18, align 8, !tbaa !178, !alias.scope !6904, !noalias !6907
  %i.az = load ptr, ptr %.0911.i.i.i.i19, align 8, !tbaa !16, !alias.scope !6907, !noalias !6904 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !139, !alias.scope !6907, !noalias !6904 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !6909
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %.012.i.i.i.i18, align 8, !tbaa !16, !alias.scope !6904, !noalias !6907
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !79, !alias.scope !6907, !noalias !6904
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !79, !alias.scope !6904, !noalias !6907
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !139, !alias.scope !6907, !noalias !6904
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !139, !alias.scope !6904, !noalias !6907
  store ptr %i.ba, ptr %.0911.i.i.i.i19, align 8, !tbaa !16, !alias.scope !6907, !noalias !6904
  store i64 0, ptr %i.bi, align 8, !tbaa !139, !alias.scope !6907, !noalias !6904
  store i8 0, ptr %i.ba, align 8, !tbaa !79, !alias.scope !6907, !noalias !6904
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !3411, !alias.scope !6907, !noalias !6904
  store double %i.bm, ptr %i.bk, align 8, !tbaa !3411, !alias.scope !6904, !noalias !6907
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bn, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !6903

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bo, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit26, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !3408
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !3410
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !3418
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb_jaro_winkler::common::PatternMatchVector", align 8 ; 18 uses
  %6 = alloca %"struct.duckdb_jaro_winkler::common::BlockPatternMatchVector", align 8 ; 19 uses
  %7 = alloca %"struct.duckdb_jaro_winkler::detail::FlaggedCharsMultiword", align 8 ; 14 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = icmp ne ptr %3, %2
  %i.h = icmp ne ptr %1, %0
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %8 = sitofp i64 %i.f to double                  ; 4 uses
  %9 = insertelement <2 x double> poison, double %i.i, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x double> poison, double %i.j, i64 0
  %12 = insertelement <2 x double> %11, double %8, i64 1
  %13 = fdiv <2 x double> %10, %12                ; 2 uses
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %13, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.k = fadd double %14, 1.000000e+00
  %i.l = fdiv double %i.k, 3.000000e+00
  %i.m = fcmp ult double %i.l, %4
  br i1 %i.m, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit
  %i.n = icmp eq i64 %i.c, 1
  %i.o = icmp eq i64 %i.f, 1
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %0, align 1, !tbaa !79
  %i.q = load i8, ptr %2, align 1, !tbaa !79
  %i.r = icmp eq i8 %i.p, %i.q
  %i.s = uitofp i1 %i.r to double
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = icmp sgt i64 %i.f, %i.c
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 %i.f, 2
  %i.v = add nsw i64 %i.u, -1                     ; 5 uses
  %i.w = add nsw i64 %i.v, %i.c
  %i.x = icmp sgt i64 %i.f, %i.w
  br i1 %i.x, label %bb.f, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v ; 2 uses
  %.pre284 = ptrtoint ptr %i.z to i64
  %.pre286 = add nsw i64 %i.c, %i.v
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.g:                                             ; preds = %bb.d
  %i.aa = sdiv i64 %i.c, 2
  %i.ab = add nsw i64 %i.aa, -1                   ; 5 uses
  %i.ac = add nsw i64 %i.ab, %i.f
  %i.ad = icmp sgt i64 %i.c, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab ; 2 uses
  %.pre281 = ptrtoint ptr %i.af to i64
  %.pre282 = add nsw i64 %i.f, %i.ab
  br label %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit

_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi287 = phi i64 [ %i.f, %bb.e ], [ %.pre286, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  %.pre-phi285 = phi i64 [ %i.d, %bb.e ], [ %.pre284, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ]
  %.pre-phi283 = phi i64 [ %i.c, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.g ], [ %.pre282, %bb.h ]
  %.pre-phi = phi i64 [ %i.a, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ], [ %.pre281, %bb.h ]
  %.0173 = phi ptr [ %3, %bb.e ], [ %i.z, %bb.f ], [ %3, %bb.g ], [ %3, %bb.h ]
  %.0 = phi ptr [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %.0.i52 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ] ; 6 uses
  %.sroa.speculated.i53 = tail call i64 @llvm.smin.i64(i64 %.pre-phi287, i64 %.pre-phi283) ; 3 uses
  %i.ag = icmp sgt i64 %.sroa.speculated.i53, 0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

.lr.ph.i:                                         ; preds = %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit, %bb.i
  %.018.i = phi i64 [ %i.al, %bb.i ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.018.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !79
  %.not.i = icmp eq i8 %i.ai, %i.ak
  br i1 %.not.i, label %bb.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.al = add nuw nsw i64 %.018.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %.sroa.speculated.i53
  br i1 %exitcond.not.i, label %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit, label %.lr.ph.i, !llvm.loop !6910

_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit: ; preds = %.lr.ph.i, %bb.i, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIPKcS3_EElT_RS4_T0_RS6_.exit ], [ %.sroa.speculated.i53, %bb.i ], [ %.018.i, %.lr.ph.i ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa.i ; 7 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %.pre-phi, %i.ao                ; 8 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %.pre-phi285, %i.aq             ; 8 uses
  %i.as = icmp ne ptr %.0, %i.am
  %i.at = icmp ne ptr %.0173, %i.an
  %or.cond4 = and i1 %i.as, %i.at
  br i1 %or.cond4, label %bb.j, label %bb.bj

bb.j:                                             ; preds = %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %i.au = icmp slt i64 %i.ap, 65
  %i.av = icmp slt i64 %i.ar, 65
  %or.cond6 = and i1 %i.au, %i.av
  br i1 %or.cond6, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 2048 ; 4 uses
  %i.ax = icmp sgt i64 %i.ap, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %5, i8 0, i64 4096, i1 false)
  br i1 %i.ax, label %.lr.ph22.i.i, label %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit

.lr.ph22.i.i:                                     ; preds = %bb.k, %bb.o
  %.021.i.i = phi i64 [ %i.ck, %bb.o ], [ 1, %bb.k ] ; 3 uses
  %.01520.i.i = phi i64 [ %i.cl, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %.01520.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !79  ; 3 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph22.i.i
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !33
  %i.be = or i64 %i.bd, %.021.i.i
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !33
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph22.i.i
  %i.bf = sext i8 %i.az to i64                    ; 8 uses
  %i.bg = and i64 %i.bf, 127                      ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !6913
  %i.bl = icmp eq i64 %i.bk, %i.bf
  br i1 %i.bl, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.n
  %i.bm = mul nsw i64 %i.bf, 5
  %i.bn = add nsw i64 %i.bf, 1
  %i.bo = add nsw i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bo, 127                      ; 4 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not1718.i.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !6913
  %i.bu = icmp eq i64 %i.bt, %i.bf
  br i1 %i.bu, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %.019.i.i16.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.preheader.i.i ]
  %i.bv = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.preheader.i.i ]
  %i.bw = lshr i64 %.019.i.i16.i.i, 5             ; 2 uses
  %i.bx = mul nuw nsw i64 %i.bv, 5
  %i.by = add nuw nsw i64 %i.bw, 1
  %i.bz = add nuw nsw i64 %i.by, %i.bx
  %i.ca = and i64 %i.bz, 127                      ; 4 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not17.i.i.i.i, label %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6914

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.ce = load i64, ptr %i.cb, align 8, !tbaa !6913
  %i.cf = icmp eq i64 %i.ce, %i.bf
  br i1 %i.cf, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, label %.lr.ph.i.i, !llvm.loop !6914

._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i
  br label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, !llvm.loop !6914

_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i, %.preheader.i.i.i.i, %bb.n, %bb.m
  %i.cg = phi i64 [ 0, %bb.m ], [ %i.bj, %bb.n ], [ 0, %.preheader.i.i.i.i ], [ %i.bs, %.lr.ph.i.i.preheader.i.i ], [ 0, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %.015.i.i.i.i = phi i64 [ %i.bg, %bb.m ], [ %i.bg, %bb.n ], [ %i.bp, %.preheader.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.preheader.i.i ], [ %i.ca, %._ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.loopexit_crit_edge.i.i ], [ %i.ca, %.lr.ph.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.015.i.i.i.i ; 2 uses
  store i64 %i.bf, ptr %i.ch, align 8, !tbaa !6913
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = or i64 %i.cg, %.021.i.i
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !6911
  br label %bb.o

bb.o:                                             ; preds = %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i.i, %bb.l
  %i.ck = shl i64 %.021.i.i, 1
  %i.cl = add nuw nsw i64 %.01520.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cl, %i.ap
  br i1 %exitcond.not.i.i, label %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit, label %.lr.ph22.i.i, !llvm.loop !6915

_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.o, %bb.k
  %i.cm = trunc i64 %.0.i52 to i32
  %i.cn = add nsw i64 %.0.i52, 1
  %i.co = icmp slt i32 %i.cm, 63
  %i.cp = and i64 %i.cn, 4294967295
  %notmask.i.i = shl nsw i64 -1, %i.cp
  %i.cq = xor i64 %notmask.i.i, -1
  %.0.i.i = select i1 %i.co, i64 %i.cq, i64 -1    ; 2 uses
  %sext = shl i64 %.0.i52, 32
  %i.cr = ashr exact i64 %sext, 32
  %.sroa.speculated.i54 = tail call i64 @llvm.smin.i64(i64 %i.ar, i64 %i.cr) ; 3 uses
  %i.cs = icmp sgt i64 %.sroa.speculated.i54, 0
  br i1 %i.cs, label %.lr.ph.i56, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit
  %.034.lcssa.i = phi i64 [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.em, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ]
  %.0.lcssa.i55 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %.sroa.speculated.i54, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ], [ %i.eg, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ] ; 2 uses
  %i.ct = icmp slt i64 %.0.lcssa.i55, %i.ar
  br i1 %i.ct, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit

.lr.ph.i56:                                       ; preds = %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i
  %.sroa.0.057.i = phi i64 [ %i.eg, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %.sroa.8.056.i = phi i64 [ %i.ek, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ]
  %.055.i = phi i64 [ %i.en, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ 0, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %.03454.i = phi i64 [ %i.em, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i ], [ %.0.i.i, %_ZN19duckdb_jaro_winkler6common18PatternMatchVectorC2IPKcEET_S5_.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 %.055.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !79  ; 3 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i56
  %i.cx = zext nneg i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i

bb.q:                                             ; preds = %.lr.ph.i56
  %i.da = sext i8 %i.cv to i64                    ; 7 uses
  %i.db = and i64 %i.da, 127
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i.i57 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i.i57, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !6913
  %i.dg = icmp eq i64 %i.df, %i.da
  br i1 %i.dg, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.preheader.i.i.i.i58

.preheader.i.i.i.i58:                             ; preds = %bb.r
  %i.dh = mul nsw i64 %i.da, 5
  %i.di = add nsw i64 %i.da, 1
  %i.dj = add nsw i64 %i.di, %i.dh
  %i.dk = and i64 %i.dj, 127                      ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i.i59 = icmp eq i64 %i.dn, 0
  br i1 %.not1718.i.i.i.i59, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i.preheader.i.i60

.lr.ph.i.i.preheader.i.i60:                       ; preds = %.preheader.i.i.i.i58
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !6913
  %i.dp = icmp eq i64 %i.do, %i.da
  br i1 %i.dp, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %.lr.ph.i.i.preheader.i.i60, %.lr.ph.i.i.i.i63
  %.019.i.i7.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i63 ], [ %i.da, %.lr.ph.i.i.preheader.i.i60 ]
  %i.dq = phi i64 [ %i.dv, %.lr.ph.i.i.i.i63 ], [ %i.dk, %.lr.ph.i.i.preheader.i.i60 ]
  %i.dr = lshr i64 %.019.i.i7.i.i, 5              ; 2 uses
  %i.ds = mul nuw nsw i64 %i.dq, 5
  %i.dt = add nuw nsw i64 %i.dr, 1
  %i.du = add nuw nsw i64 %i.dt, %i.ds
  %i.dv = and i64 %i.du, 127                      ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i.i62 = icmp eq i64 %i.dy, 0
  br i1 %.not17.i.i.i.i62, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, label %.lr.ph.i.i.i.i63, !llvm.loop !6914

.lr.ph.i.i.i.i63:                                 ; preds = %.lr.ph.i.i61
  %i.dz = load i64, ptr %i.dw, align 8, !tbaa !6913
  %i.ea = icmp eq i64 %i.dz, %i.da
  br i1 %i.ea, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, label %.lr.ph.i.i61, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i: ; preds = %.lr.ph.i.i61
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i: ; preds = %.lr.ph.i.i.i.i63, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i, %.lr.ph.i.i.preheader.i.i60, %.preheader.i.i.i.i58, %bb.r, %bb.q, %bb.p
  %.0.i36.i = phi i64 [ %i.cz, %bb.p ], [ 0, %bb.q ], [ %i.de, %bb.r ], [ 0, %.preheader.i.i.i.i58 ], [ %i.dn, %.lr.ph.i.i.preheader.i.i60 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i ], [ %i.dy, %.lr.ph.i.i.i.i63 ]
  %i.eb = xor i64 %.sroa.0.057.i, -1
  %i.ec = and i64 %.0.i36.i, %i.eb
  %i.ed = and i64 %i.ec, %.03454.i                ; 3 uses
  %i.ee = sub i64 0, %i.ed
  %i.ef = and i64 %i.ed, %i.ee
  %i.eg = or i64 %i.ef, %.sroa.0.057.i            ; 2 uses
  %i.eh = icmp ne i64 %i.ed, 0
  %i.ei = zext i1 %i.eh to i64
  %i.ej = shl nuw i64 %i.ei, %.055.i
  %i.ek = or i64 %i.ej, %.sroa.8.056.i            ; 2 uses
  %i.el = shl i64 %.03454.i, 1
  %i.em = or disjoint i64 %i.el, 1                ; 2 uses
  %i.en = add nuw nsw i64 %.055.i, 1              ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.en, %.sroa.speculated.i54
  br i1 %exitcond.not.i64, label %.preheader.i, label %.lr.ph.i56, !llvm.loop !6916

.lr.ph65.i:                                       ; preds = %.preheader.i, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i
  %.sroa.0.164.i = phi i64 [ %i.ga, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.0.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.8.163.i = phi i64 [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.sroa.8.0.lcssa.i, %.preheader.i ]
  %.162.i = phi i64 [ %i.gg, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.0.lcssa.i55, %.preheader.i ] ; 3 uses
  %.13561.i = phi i64 [ %i.gf, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ], [ %.034.lcssa.i, %.preheader.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.an, i64 %.162.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !79  ; 3 uses
  %i.eq = icmp sgt i8 %i.ep, -1
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph65.i
  %i.er = zext nneg i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i

bb.t:                                             ; preds = %.lr.ph65.i
  %i.eu = sext i8 %i.ep to i64                    ; 7 uses
  %i.ev = and i64 %i.eu, 127
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i37.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i37.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !6913
  %i.fa = icmp eq i64 %i.ez, %i.eu
  br i1 %i.fa, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.preheader.i.i.i38.i

.preheader.i.i.i38.i:                             ; preds = %bb.u
  %i.fb = mul nsw i64 %i.eu, 5
  %i.fc = add nsw i64 %i.eu, 1
  %i.fd = add nsw i64 %i.fc, %i.fb
  %i.fe = and i64 %i.fd, 127                      ; 2 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i39.i = icmp eq i64 %i.fh, 0
  br i1 %.not1718.i.i.i39.i, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i.i.preheader.i40.i

.lr.ph.i.i.preheader.i40.i:                       ; preds = %.preheader.i.i.i38.i
  %i.fi = load i64, ptr %i.ff, align 8, !tbaa !6913
  %i.fj = icmp eq i64 %i.fi, %i.eu
  br i1 %i.fj, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i.i.preheader.i40.i, %.lr.ph.i.i.i44.i
  %.019.i.i7.i42.i = phi i64 [ %i.fl, %.lr.ph.i.i.i44.i ], [ %i.eu, %.lr.ph.i.i.preheader.i40.i ]
  %i.fk = phi i64 [ %i.fp, %.lr.ph.i.i.i44.i ], [ %i.fe, %.lr.ph.i.i.preheader.i40.i ]
  %i.fl = lshr i64 %.019.i.i7.i42.i, 5            ; 2 uses
  %i.fm = mul nuw nsw i64 %i.fk, 5
  %i.fn = add nuw nsw i64 %i.fl, 1
  %i.fo = add nuw nsw i64 %i.fn, %i.fm
  %i.fp = and i64 %i.fo, 127                      ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i43.i = icmp eq i64 %i.fs, 0
  br i1 %.not17.i.i.i43.i, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, label %.lr.ph.i.i.i44.i, !llvm.loop !6914

.lr.ph.i.i.i44.i:                                 ; preds = %.lr.ph.i41.i
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !6913
  %i.fu = icmp eq i64 %i.ft, %i.eu
  br i1 %i.fu, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, label %.lr.ph.i41.i, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i: ; preds = %.lr.ph.i41.i
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i: ; preds = %.lr.ph.i.i.i44.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i, %.lr.ph.i.i.preheader.i40.i, %.preheader.i.i.i38.i, %bb.u, %bb.t, %bb.s
  %.0.i45.i = phi i64 [ %i.et, %bb.s ], [ 0, %bb.t ], [ %i.ey, %bb.u ], [ 0, %.preheader.i.i.i38.i ], [ %i.fh, %.lr.ph.i.i.preheader.i40.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i46.i ], [ %i.fs, %.lr.ph.i.i.i44.i ]
  %i.fv = xor i64 %.sroa.0.164.i, -1
  %i.fw = and i64 %.0.i45.i, %i.fv
  %i.fx = and i64 %i.fw, %.13561.i                ; 3 uses
  %i.fy = sub i64 0, %i.fx
  %i.fz = and i64 %i.fx, %i.fy
  %i.ga = or i64 %i.fz, %.sroa.0.164.i            ; 2 uses
  %i.gb = icmp ne i64 %i.fx, 0
  %i.gc = zext i1 %i.gb to i64
  %i.gd = shl nuw i64 %i.gc, %.162.i
  %i.ge = or i64 %i.gd, %.sroa.8.163.i            ; 2 uses
  %i.gf = shl i64 %.13561.i, 1
  %i.gg = add nuw nsw i64 %.162.i, 1              ; 2 uses
  %i.gh = icmp slt i64 %i.gg, %i.ar
  br i1 %i.gh, label %.lr.ph65.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, !llvm.loop !6917

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i, %.preheader.i
  %.sroa.8.1.lcssa.i = phi i64 [ %.sroa.8.0.lcssa.i, %.preheader.i ], [ %i.ge, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader.i ], [ %i.ga, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit47.i ] ; 2 uses
  %i.gi = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.0.1.lcssa.i)
  %i.gj = add nuw nsw i64 %i.gi, %.0.lcssa.i      ; 3 uses
  %.not.i65 = icmp eq i64 %i.gj, 0
  br i1 %.not.i65, label %.critedge, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gk = uitofp nneg i64 %i.gj to double
  %15 = insertelement <2 x double> poison, double %i.gk, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %8, i64 0
  %18 = insertelement <2 x double> %17, double %i.j, i64 1
  %19 = fdiv <2 x double> %16, %18                ; 2 uses
  %20 = extractelement <2 x double> %19, i64 1
  %i.gl = fadd double %20, 0.000000e+00
  %21 = extractelement <2 x double> %19, i64 0
  %i.gm = fadd double %21, %i.gl
  %i.gn = fadd double %i.gm, 1.000000e+00
  %i.go = fdiv double %i.gn, 3.000000e+00
  %i.gp = fcmp ult double %i.go, %4
  br i1 %i.gp, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  %.not2.i = icmp eq i64 %.sroa.8.1.lcssa.i, 0
  br i1 %.not2.i, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.v, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76
  %.05.i = phi i64 [ %i.if, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76 ], [ %.sroa.0.1.lcssa.i, %bb.v ] ; 3 uses
  %.0124.i = phi i64 [ %i.ic, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76 ], [ 0, %bb.v ]
  %.0133.i = phi i64 [ %i.ie, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76 ], [ %.sroa.8.1.lcssa.i, %bb.v ] ; 3 uses
  %i.gq = sub i64 0, %.05.i
  %i.gr = and i64 %.05.i, %i.gq                   ; 2 uses
  %i.gs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0133.i, i1 true)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !79  ; 3 uses
  %i.gv = icmp sgt i8 %i.gu, -1
  br i1 %i.gv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i67
  %i.gw = zext nneg i8 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76

bb.x:                                             ; preds = %.lr.ph.i67
  %i.gz = sext i8 %i.gu to i64                    ; 7 uses
  %i.ha = and i64 %i.gz, 127
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i.i68 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i.i68, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = load i64, ptr %i.hb, align 8, !tbaa !6913
  %i.hf = icmp eq i64 %i.he, %i.gz
  br i1 %i.hf, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, label %.preheader.i.i.i.i69

.preheader.i.i.i.i69:                             ; preds = %bb.y
  %i.hg = mul nsw i64 %i.gz, 5
  %i.hh = add nsw i64 %i.gz, 1
  %i.hi = add nsw i64 %i.hh, %i.hg
  %i.hj = and i64 %i.hi, 127                      ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i.i70 = icmp eq i64 %i.hm, 0
  br i1 %.not1718.i.i.i.i70, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, label %.lr.ph.i.i.preheader.i.i71

.lr.ph.i.i.preheader.i.i71:                       ; preds = %.preheader.i.i.i.i69
  %i.hn = load i64, ptr %i.hk, align 8, !tbaa !6913
  %i.ho = icmp eq i64 %i.hn, %i.gz
  br i1 %i.ho, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %.lr.ph.i.i.preheader.i.i71, %.lr.ph.i.i.i.i75
  %.019.i.i7.i.i73 = phi i64 [ %i.hq, %.lr.ph.i.i.i.i75 ], [ %i.gz, %.lr.ph.i.i.preheader.i.i71 ]
  %i.hp = phi i64 [ %i.hu, %.lr.ph.i.i.i.i75 ], [ %i.hj, %.lr.ph.i.i.preheader.i.i71 ]
  %i.hq = lshr i64 %.019.i.i7.i.i73, 5            ; 2 uses
  %i.hr = mul nuw nsw i64 %i.hp, 5
  %i.hs = add nuw nsw i64 %i.hq, 1
  %i.ht = add nuw nsw i64 %i.hs, %i.hr
  %i.hu = and i64 %i.ht, 127                      ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i.i74 = icmp eq i64 %i.hx, 0
  br i1 %.not17.i.i.i.i74, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i79, label %.lr.ph.i.i.i.i75, !llvm.loop !6914

.lr.ph.i.i.i.i75:                                 ; preds = %.lr.ph.i.i72
  %i.hy = load i64, ptr %i.hv, align 8, !tbaa !6913
  %i.hz = icmp eq i64 %i.hy, %i.gz
  br i1 %i.hz, label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, label %.lr.ph.i.i72, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i79: ; preds = %.lr.ph.i.i72
  br label %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76: ; preds = %.lr.ph.i.i.i.i75, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i79, %.lr.ph.i.i.preheader.i.i71, %.preheader.i.i.i.i69, %bb.y, %bb.x, %bb.w
  %.0.i.i77 = phi i64 [ %i.gy, %bb.w ], [ 0, %bb.x ], [ %i.hd, %bb.y ], [ 0, %.preheader.i.i.i.i69 ], [ %i.hm, %.lr.ph.i.i.preheader.i.i71 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i79 ], [ %i.hx, %.lr.ph.i.i.i.i75 ]
  %i.ia = and i64 %.0.i.i77, %i.gr
  %.not14.i = icmp eq i64 %i.ia, 0
  %i.ib = zext i1 %.not14.i to i64
  %i.ic = add nuw nsw i64 %.0124.i, %i.ib         ; 2 uses
  %i.id = add i64 %.0133.i, -1
  %i.ie = and i64 %i.id, %.0133.i                 ; 2 uses
  %i.if = xor i64 %i.gr, %.05.i
  %.not.i78 = icmp eq i64 %i.ie, 0
  br i1 %.not.i78, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, label %.lr.ph.i67, !llvm.loop !6918

_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit: ; preds = %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76, %bb.v
  %.012.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.ic, %_ZNK19duckdb_jaro_winkler6common18PatternMatchVector3getIcEEmT_.exit.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.bj

bb.z:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  invoke void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %i.am, ptr noundef %.0)
          to label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i80, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.ii) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.ab, %bb.aa
  %i.ij = load ptr, ptr %6, align 8, !tbaa !6919  ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i4.i, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ij) #60
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.ac, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.kc, %.body ], [ %i.ig, %bb.ac ], [ %i.ig, %_ZNSt6vectorImSaImEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !6922)
  %i.ik = sdiv i64 %i.ar, 64
  %i.il = and i64 %i.ar, 63
  %i.im = icmp ne i64 %i.il, 0
  %i.in = zext i1 %i.im to i64
  %i.io = add nsw i64 %i.ik, %i.in                ; 5 uses
  %i.ip = sdiv i64 %i.ap, 64
  %i.iq = and i64 %i.ap, 63
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = zext i1 %i.ir to i64
  %i.it = add nsw i64 %i.ip, %i.is                ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false), !alias.scope !6922
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not52.i = icmp eq i64 %i.io, 0
  br i1 %.not52.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ix = icmp ugt i64 %i.io, 1152921504606846975
  br i1 %i.ix, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i131

.invoke:                                          ; preds = %bb.ae, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2092) #59
          to label %.cont unwind label %.body

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i131: ; preds = %bb.ad
  %i.iy = shl nuw nsw i64 %i.io, 3
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #64
          to label %.noexc140 unwind label %.body ; 5 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i131
  store i64 0, ptr %i.iz, align 8, !tbaa !33
  %i.ja = add nsw i64 %i.io, -1                   ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i133

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i133: ; preds = %.noexc140
  %i.jc = getelementptr i8, ptr %i.iz, i64 8
  %.idx.i.i.i.i.i31.i134 = shl nuw nsw i64 %i.ja, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jc, i8 0, i64 %.idx.i.i.i.i.i31.i134, i1 false), !tbaa !33
  br label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i:  ; preds = %.noexc140, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i133
  store ptr %i.iz, ptr %i.iu, align 8, !tbaa !152
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.io ; 3 uses
  store ptr %i.jd, ptr %i.iv, align 8, !tbaa !150
  store ptr %i.jd, ptr %i.iw, align 8, !tbaa !168
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit
  %i.je = phi ptr [ %i.jd, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 3 uses
  %i.jf = phi ptr [ %i.iz, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge.i ], [ null, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorC2IPKcEET_S5_.exit ] ; 15 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not = icmp eq i64 %i.it, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE6resizeEm.exit34.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ji = icmp ugt i64 %i.it, 1152921504606846975
  br i1 %i.ji, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ae
  %i.jj = shl nuw nsw i64 %i.it, 3
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #64
          to label %.noexc124 unwind label %.body ; 5 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

.lr.ph.i.i.i93.i.i:                               ; preds = %.lr.ph.i90.i.i
  %i.rj = load i64, ptr %i.rg, align 8, !tbaa !6913
  %i.rk = icmp eq i64 %i.rj, %i.qk
  br i1 %i.rk, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, label %.lr.ph.i90.i.i, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i: ; preds = %.lr.ph.i90.i.i
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i: ; preds = %.lr.ph.i.i.i93.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i, %.lr.ph.i.i.preheader.i89.i.i, %.preheader.i.i.i87.i.i, %bb.av, %bb.au, %bb.at
  %.0.i94.i.i = phi i64 [ %i.qi, %bb.at ], [ 0, %bb.au ], [ %i.qo, %bb.av ], [ 0, %.preheader.i.i.i87.i.i ], [ %i.qx, %.lr.ph.i.i.preheader.i89.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i95.i.i ], [ %i.ri, %.lr.ph.i.i.i93.i.i ]
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %.2.lcssa.i.i ; 2 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !33 ; 2 uses
  %i.rn = xor i64 %i.rm, -1
  %i.ro = and i64 %.0.i94.i.i, %i.rn
  %i.rp = and i64 %i.ro, %.sroa.13.074.i          ; 3 uses
  %i.rq = sub i64 0, %i.rp
  %i.rr = and i64 %i.rp, %i.rq
  %i.rs = or i64 %i.rr, %i.rm
  store i64 %i.rs, ptr %i.rl, align 8, !tbaa !33
  %i.rt = icmp ne i64 %i.rp, 0
  %i.ru = zext i1 %i.rt to i64
  %i.rv = shl nuw i64 %i.ru, %i.kg
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.kf ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !33
  %i.ry = or i64 %i.rv, %i.rx
  store i64 %i.ry, ptr %i.rw, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, %._crit_edge.i.i, %.split.us.i.i, %bb.ap, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i
  %i.rz = add nsw i64 %.079.i, %.0.i52            ; 2 uses
  %i.sa = add nsw i64 %i.rz, 1
  %i.sb = icmp slt i64 %i.sa, %i.ap
  br i1 %i.sb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %i.sc = shl i64 %.sroa.13.074.i, 1              ; 2 uses
  %i.sd = or disjoint i64 %i.sc, 1
  %i.se = add nsw i64 %i.rz, 2
  %i.sf = icmp slt i64 %i.se, %i.ap
  %i.sg = icmp eq i64 %i.sc, -2
  %or.cond.i85 = select i1 %i.sf, i1 %i.sg, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i85, i64 0, i64 %i.sd
  %i.sh = zext i1 %or.cond.i85 to i64
  %spec.select51.i = add nsw i64 %.sroa.0.078.i, %i.sh
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.13.1.i = phi i64 [ %.sroa.13.074.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select.i, %bb.aw ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.078.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select51.i, %bb.aw ] ; 3 uses
  %.not.i83 = icmp slt i64 %.079.i, %.0.i52
  br i1 %.not.i83, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.si = shl i64 %.sroa.17.076.i, 1              ; 2 uses
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.sk = add nsw i64 %.sroa.0.1.i, -1
  %i.sl = add nsw i64 %.sroa.10.073.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10.1.i = phi i64 [ %.sroa.10.073.i, %bb.ax ], [ %i.sl, %bb.az ], [ %.sroa.10.073.i, %bb.ay ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.076.i, %bb.ax ], [ -1, %bb.az ], [ %i.si, %bb.ay ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ax ], [ %i.sk, %bb.az ], [ %.sroa.0.1.i, %bb.ay ]
  %i.sm = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.sm, %i.ar
  br i1 %exitcond.not.i84, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit, label %bb.af, !llvm.loop !6926

_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit: ; preds = %bb.ba, %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.sn = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.so = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.sp = sub i64 %i.sn, %i.so
  %i.sq = ptrtoint ptr %i.je to i64               ; 2 uses
  %i.sr = ptrtoint ptr %i.jf to i64               ; 2 uses
  %i.ss = sub i64 %i.sq, %i.sr
  %i.st = icmp ult i64 %i.sp, %i.ss
  br i1 %i.st, label %.preheader.i90, label %.preheader20.i

.preheader20.i:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit
  %.not22.i = icmp eq ptr %i.jf, %i.je
  br i1 %.not22.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %.preheader20.i
  %i.su = sub i64 %i.sq, %i.sr
  %i.sv = add i64 %i.su, -8                       ; 2 uses
  %i.sw = lshr i64 %i.sv, 3
  %i.sx = add nuw nsw i64 %i.sw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.sv, 24
  br i1 %min.iters.check, label %.lr.ph.i88.preheader540, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i88.preheader
  %n.vec = and i64 %i.sx, 4611686018427387900     ; 3 uses
  %i.sy = shl i64 %n.vec, 3
  %i.sz = getelementptr i8, ptr %i.jf, i64 %i.sy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.te, %vector.body ]
  %vec.phi492 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.tf, %vector.body ]
  %i.ta = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jf, i64 %i.ta ; 2 uses
  %i.tb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !33
  %wide.load493 = load <2 x i64>, ptr %i.tb, align 8, !tbaa !33
  %i.tc = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.td = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load493)
  %i.te = add <2 x i64> %i.tc, %vec.phi           ; 2 uses
  %i.tf = add <2 x i64> %i.td, %vec.phi492        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tg = icmp eq i64 %index.next, %n.vec
  br i1 %i.tg, label %middle.block, label %vector.body, !llvm.loop !6927

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.tf, %i.te
  %i.th = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.sx, %n.vec
  br i1 %cmp.n, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i88.preheader540

.lr.ph.i88.preheader540:                          ; preds = %.lr.ph.i88.preheader, %middle.block
  %.124.i.ph = phi i64 [ 0, %.lr.ph.i88.preheader ], [ %i.th, %middle.block ]
  %.sroa.012.023.i.ph = phi ptr [ %i.jf, %.lr.ph.i88.preheader ], [ %i.sz, %middle.block ]
  br label %.lr.ph.i88

.preheader.i90:                                   ; preds = %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit
  %.not1925.i = icmp eq ptr %i.jq, %i.jp
  br i1 %.not1925.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i90
  %i.ti = sub i64 %i.sn, %i.so
  %i.tj = add i64 %i.ti, -8                       ; 2 uses
  %i.tk = lshr i64 %i.tj, 3
  %i.tl = add nuw nsw i64 %i.tk, 1                ; 2 uses
  %min.iters.check495 = icmp ult i64 %i.tj, 24
  br i1 %min.iters.check495, label %.lr.ph28.i.preheader536, label %vector.ph496

vector.ph496:                                     ; preds = %.lr.ph28.i.preheader
  %n.vec498 = and i64 %i.tl, 4611686018427387900  ; 3 uses
  %i.tm = shl i64 %n.vec498, 3
  %i.tn = getelementptr i8, ptr %i.jq, i64 %i.tm
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph496
  %index500 = phi i64 [ 0, %vector.ph496 ], [ %index.next506, %vector.body499 ] ; 2 uses
  %vec.phi501 = phi <2 x i64> [ zeroinitializer, %vector.ph496 ], [ %i.ts, %vector.body499 ]
  %vec.phi502 = phi <2 x i64> [ zeroinitializer, %vector.ph496 ], [ %i.tt, %vector.body499 ]
  %i.to = shl i64 %index500, 3
  %next.gep503 = getelementptr i8, ptr %i.jq, i64 %i.to ; 2 uses
  %i.tp = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load504 = load <2 x i64>, ptr %next.gep503, align 8, !tbaa !33
  %wide.load505 = load <2 x i64>, ptr %i.tp, align 8, !tbaa !33
  %i.tq = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load504)
  %i.tr = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load505)
  %i.ts = add <2 x i64> %i.tq, %vec.phi501        ; 2 uses
  %i.tt = add <2 x i64> %i.tr, %vec.phi502        ; 2 uses
  %index.next506 = add nuw i64 %index500, 4       ; 2 uses
  %i.tu = icmp eq i64 %index.next506, %n.vec498
  br i1 %i.tu, label %middle.block507, label %vector.body499, !llvm.loop !6928

middle.block507:                                  ; preds = %vector.body499
  %bin.rdx508 = add <2 x i64> %i.tt, %i.ts
  %i.tv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx508) ; 2 uses
  %cmp.n509 = icmp eq i64 %i.tl, %n.vec498
  br i1 %cmp.n509, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i.preheader536

.lr.ph28.i.preheader536:                          ; preds = %.lr.ph28.i.preheader, %middle.block507
  %.027.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %i.tv, %middle.block507 ]
  %.sroa.016.026.i.ph = phi ptr [ %i.jq, %.lr.ph28.i.preheader ], [ %i.tn, %middle.block507 ]
  br label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader536, %.lr.ph28.i
  %.027.i = phi i64 [ %i.ty, %.lr.ph28.i ], [ %.027.i.ph, %.lr.ph28.i.preheader536 ]
  %.sroa.016.026.i = phi ptr [ %i.tz, %.lr.ph28.i ], [ %.sroa.016.026.i.ph, %.lr.ph28.i.preheader536 ] ; 2 uses
  %i.tw = load i64, ptr %.sroa.016.026.i, align 8, !tbaa !33
  %i.tx = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.tw)
  %i.ty = add nuw nsw i64 %i.tx, %.027.i          ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.016.026.i, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %i.tz, %i.jp
  br i1 %.not19.i, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph28.i, !llvm.loop !6929

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader540, %.lr.ph.i88
  %.124.i = phi i64 [ %i.uc, %.lr.ph.i88 ], [ %.124.i.ph, %.lr.ph.i88.preheader540 ]
  %.sroa.012.023.i = phi ptr [ %i.ud, %.lr.ph.i88 ], [ %.sroa.012.023.i.ph, %.lr.ph.i88.preheader540 ] ; 2 uses
  %i.ua = load i64, ptr %.sroa.012.023.i, align 8, !tbaa !33
  %i.ub = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ua)
  %i.uc = add nuw nsw i64 %i.ub, %.124.i          ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 8 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ud, %i.je
  br i1 %.not.i89, label %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, label %.lr.ph.i88, !llvm.loop !6930

_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit: ; preds = %.lr.ph.i88, %.lr.ph28.i, %middle.block, %middle.block507, %.preheader20.i, %.preheader.i90
  %.2.i = phi i64 [ %i.ty, %.lr.ph28.i ], [ 0, %.preheader.i90 ], [ 0, %.preheader20.i ], [ %i.tv, %middle.block507 ], [ %i.th, %middle.block ], [ %i.uc, %.lr.ph.i88 ] ; 3 uses
  %i.ue = add nsw i64 %.2.i, %.0.lcssa.i          ; 3 uses
  %.not.i91 = icmp eq i64 %i.ue, 0
  br i1 %.not.i91, label %.critedge47, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.uf = sitofp i64 %i.ue to double
  %22 = insertelement <2 x double> poison, double %i.uf, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x double> poison, double %8, i64 0
  %25 = insertelement <2 x double> %24, double %i.j, i64 1
  %26 = fdiv <2 x double> %23, %25                ; 2 uses
  %27 = extractelement <2 x double> %26, i64 1
  %i.ug = fadd double %27, 0.000000e+00
  %28 = extractelement <2 x double> %26, i64 0
  %i.uh = fadd double %28, %i.ug
  %i.ui = fadd double %i.uh, 1.000000e+00
  %i.uj = fdiv double %i.ui, 3.000000e+00
  %i.uk = fcmp ult double %i.uj, %4
  br i1 %i.uk, label %.critedge47, label %bb.bb

bb.bb:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93
  %.not19.i94 = icmp eq i64 %.2.i, 0
  br i1 %.not19.i94, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.lr.ph.i

.preheader2.lr.ph.i:                              ; preds = %bb.bb
  %i.ul = load i64, ptr %i.jq, align 8, !tbaa !33
  %i.um = load i64, ptr %i.jf, align 8, !tbaa !33
  %i.un = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.uo = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.up = load ptr, ptr %6, align 8
  %i.uq = load i64, ptr %i.uo, align 8
  %i.ur = load ptr, ptr %i.un, align 8
  br label %.preheader2.i

.loopexit.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i
  %.not.i105 = icmp eq i64 %i.ws, 0
  br i1 %.not.i105, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %.preheader2.i, !llvm.loop !6931

.preheader2.i:                                    ; preds = %.loopexit.i, %.preheader2.lr.ph.i
  %.027.i95 = phi ptr [ %i.an, %.preheader2.lr.ph.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 2 uses
  %.02625.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %i.wo, %.loopexit.i ]
  %.02824.i = phi i64 [ %i.ul, %.preheader2.lr.ph.i ], [ %i.wr, %.loopexit.i ]
  %.03023.i = phi i64 [ %i.um, %.preheader2.lr.ph.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.03322.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.235.lcssa.i, %.loopexit.i ]
  %.03621.i = phi i64 [ 0, %.preheader2.lr.ph.i ], [ %.137.lcssa.i, %.loopexit.i ] ; 2 uses
  %.03820.i = phi i64 [ %.2.i, %.preheader2.lr.ph.i ], [ %i.ws, %.loopexit.i ]
  %.not404.i = icmp eq i64 %.03023.i, 0
  br i1 %.not404.i, label %.lr.ph.i107, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i107, %.preheader2.i
  %.137.lcssa.i = phi i64 [ %.03621.i, %.preheader2.i ], [ %i.us, %.lr.ph.i107 ]
  %.131.lcssa.i = phi i64 [ %.03023.i, %.preheader2.i ], [ %i.uv, %.lr.ph.i107 ]
  %.1.lcssa.i = phi ptr [ %.027.i95, %.preheader2.i ], [ %i.ut, %.lr.ph.i107 ] ; 2 uses
  br label %.preheader.i96

.lr.ph.i107:                                      ; preds = %.preheader2.i, %.lr.ph.i107
  %.16.i = phi ptr [ %i.ut, %.lr.ph.i107 ], [ %.027.i95, %.preheader2.i ]
  %.1375.i = phi i64 [ %i.us, %.lr.ph.i107 ], [ %.03621.i, %.preheader2.i ]
  %i.us = add nsw i64 %.1375.i, 1                 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.16.i, i64 64 ; 2 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.us
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !33 ; 2 uses
  %.not40.i = icmp eq i64 %i.uv, 0
  br i1 %.not40.i, label %.lr.ph.i107, label %.preheader1.i, !llvm.loop !6932

.preheader.i96:                                   ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, %.preheader1.i
  %.12718.i = phi i64 [ %.02625.i, %.preheader1.i ], [ %i.wo, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.12917.i = phi i64 [ %.02824.i, %.preheader1.i ], [ %i.wr, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.23216.i = phi i64 [ %.131.lcssa.i, %.preheader1.i ], [ %i.wq, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 3 uses
  %.13415.i = phi i64 [ %.03322.i, %.preheader1.i ], [ %.235.lcssa.i, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ] ; 2 uses
  %.13914.i = phi i64 [ %.03820.i, %.preheader1.i ], [ %i.ws, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i ]
  %.not429.i = icmp eq i64 %.12917.i, 0
  br i1 %.not429.i, label %.lr.ph11.i, label %._crit_edge.i

.lr.ph11.i:                                       ; preds = %.preheader.i96, %.lr.ph11.i
  %.23510.i = phi i64 [ %i.uw, %.lr.ph11.i ], [ %.13415.i, %.preheader.i96 ]
  %i.uw = add nsw i64 %.23510.i, 1                ; 3 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.uw
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !33 ; 2 uses
  %.not42.i = icmp eq i64 %i.uy, 0
  br i1 %.not42.i, label %.lr.ph11.i, label %._crit_edge.i, !llvm.loop !6933

._crit_edge.i:                                    ; preds = %.lr.ph11.i, %.preheader.i96
  %.235.lcssa.i = phi i64 [ %.13415.i, %.preheader.i96 ], [ %i.uw, %.lr.ph11.i ] ; 4 uses
  %.2.lcssa.i = phi i64 [ %.12917.i, %.preheader.i96 ], [ %i.uy, %.lr.ph11.i ] ; 3 uses
  %i.uz = sub i64 0, %.2.lcssa.i
  %i.va = and i64 %.2.lcssa.i, %i.uz              ; 2 uses
  %i.vb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.23216.i, i1 true)
  %i.vc = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !79  ; 3 uses
  %i.ve = icmp sgt i8 %i.vd, -1
  br i1 %i.ve, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i
  %i.vf = zext nneg i8 %i.vd to i64
  %i.vg = mul nsw i64 %i.uq, %i.vf
  %i.vh = getelementptr [8 x i8], ptr %i.ur, i64 %i.vg
  %i.vi = getelementptr [8 x i8], ptr %i.vh, i64 %.235.lcssa.i
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i

bb.bd:                                            ; preds = %._crit_edge.i
  %i.vk = getelementptr inbounds nuw [2048 x i8], ptr %i.up, i64 %.235.lcssa.i ; 3 uses
  %i.vl = sext i8 %i.vd to i64                    ; 7 uses
  %i.vm = and i64 %i.vl, 127
  %i.vn = getelementptr inbounds nuw [16 x i8], ptr %i.vk, i64 %i.vm ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i.i97 = icmp eq i64 %i.vp, 0
  br i1 %.not.i.i.i.i97, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vq = load i64, ptr %i.vn, align 8, !tbaa !6913
  %i.vr = icmp eq i64 %i.vq, %i.vl
  br i1 %i.vr, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.preheader.i.i.i.i98

.preheader.i.i.i.i98:                             ; preds = %bb.be
  %i.vs = mul nsw i64 %i.vl, 5
  %i.vt = add nsw i64 %i.vl, 1
  %i.vu = add nsw i64 %i.vt, %i.vs
  %i.vv = and i64 %i.vu, 127                      ; 2 uses
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %i.vk, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !6911 ; 2 uses
  %.not1718.i.i.i.i99 = icmp eq i64 %i.vy, 0
  br i1 %.not1718.i.i.i.i99, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i.preheader.i.i100

.lr.ph.i.i.preheader.i.i100:                      ; preds = %.preheader.i.i.i.i98
  %i.vz = load i64, ptr %i.vw, align 8, !tbaa !6913
  %i.wa = icmp eq i64 %i.vz, %i.vl
  br i1 %i.wa, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %.lr.ph.i.i.preheader.i.i100, %.lr.ph.i.i.i.i103
  %.019.i.i9.i.i = phi i64 [ %i.wc, %.lr.ph.i.i.i.i103 ], [ %i.vl, %.lr.ph.i.i.preheader.i.i100 ]
  %i.wb = phi i64 [ %i.wg, %.lr.ph.i.i.i.i103 ], [ %i.vv, %.lr.ph.i.i.preheader.i.i100 ]
  %i.wc = lshr i64 %.019.i.i9.i.i, 5              ; 2 uses
  %i.wd = mul nuw nsw i64 %i.wb, 5
  %i.we = add nuw nsw i64 %i.wc, 1
  %i.wf = add nuw nsw i64 %i.we, %i.wd
  %i.wg = and i64 %i.wf, 127                      ; 2 uses
  %i.wh = getelementptr inbounds nuw [16 x i8], ptr %i.vk, i64 %i.wg ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !6911 ; 2 uses
  %.not17.i.i.i.i102 = icmp eq i64 %i.wj, 0
  br i1 %.not17.i.i.i.i102, label %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i106, label %.lr.ph.i.i.i.i103, !llvm.loop !6914

.lr.ph.i.i.i.i103:                                ; preds = %.lr.ph.i.i101
  %i.wk = load i64, ptr %i.wh, align 8, !tbaa !6913
  %i.wl = icmp eq i64 %i.wk, %i.vl
  br i1 %i.wl, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, label %.lr.ph.i.i101, !llvm.loop !6914

._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i106: ; preds = %.lr.ph.i.i101
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i, !llvm.loop !6914

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i: ; preds = %.lr.ph.i.i.i.i103, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i106, %.lr.ph.i.i.preheader.i.i100, %.preheader.i.i.i.i98, %bb.be, %bb.bd, %bb.bc
  %.0.i.i104 = phi i64 [ %i.vj, %bb.bc ], [ 0, %bb.bd ], [ %i.vp, %bb.be ], [ 0, %.preheader.i.i.i.i98 ], [ %i.vy, %.lr.ph.i.i.preheader.i.i100 ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i106 ], [ %i.wj, %.lr.ph.i.i.i.i103 ]
  %i.wm = and i64 %.0.i.i104, %i.va
  %.not43.i = icmp eq i64 %i.wm, 0
  %i.wn = zext i1 %.not43.i to i64
  %i.wo = add nsw i64 %.12718.i, %i.wn            ; 3 uses
  %i.wp = add i64 %.23216.i, -1
  %i.wq = and i64 %i.wp, %.23216.i                ; 2 uses
  %i.wr = xor i64 %i.va, %.2.lcssa.i              ; 2 uses
  %i.ws = add nsw i64 %.13914.i, -1               ; 3 uses
  %.not41.i = icmp eq i64 %i.wq, 0
  br i1 %.not41.i, label %.loopexit.i, label %.preheader.i96, !llvm.loop !6934

_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit: ; preds = %.loopexit.i, %bb.bb
  %.026.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.wo, %.loopexit.i ]
  %.not.i.i.i.i108 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i108, label %_ZNSt6vectorImSaImEED2Ev.exit.i109, label %bb.bf

bb.bf:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #60
  %.pre = load ptr, ptr %7, align 8, !tbaa !152
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i109

_ZNSt6vectorImSaImEED2Ev.exit.i109:               ; preds = %bb.bf, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit
  %i.wt = phi ptr [ %.pre, %bb.bf ], [ %i.jq, %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit ] ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i1.i, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i109
  call void @_ZdlPv(ptr noundef nonnull %i.wt) #60
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i109, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %i.wu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i.i110, label %_ZNSt6vectorImSaImEED2Ev.exit.i111, label %bb.bh

bb.bh:                                            ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.wv) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i111

_ZNSt6vectorImSaImEED2Ev.exit.i111:               ; preds = %bb.bh, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit
  %i.ww = load ptr, ptr %6, align 8, !tbaa !6919  ; 2 uses
  %.not.i.i.i1.i112 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i.i1.i112, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i111
  call void @_ZdlPv(ptr noundef nonnull %i.ww) #60
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i111, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit
  %.244 = phi i64 [ %.012.lcssa.i, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ %.026.lcssa.i, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ]
  %.041 = phi i64 [ %i.gj, %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit ], [ %i.ue, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ]
  %i.wx = sdiv i64 %.244, 2
  %i.wy = sitofp i64 %.041 to double              ; 3 uses
  %29 = insertelement <2 x double> poison, double %i.wy, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> poison, double %8, i64 0
  %32 = insertelement <2 x double> %31, double %i.j, i64 1
  %33 = fdiv <2 x double> %30, %32                ; 2 uses
  %34 = extractelement <2 x double> %33, i64 1
  %i.wz = fadd double %34, 0.000000e+00
  %35 = extractelement <2 x double> %33, i64 0
  %i.xa = fadd double %35, %i.wz
  %i.xb = sitofp i64 %i.wx to double
  %i.xc = fsub double %i.wy, %i.xb
  %i.xd = fdiv double %i.xc, %i.wy
  %i.xe = fadd double %i.xd, %i.xa
  %i.xf = fdiv double %i.xe, 3.000000e+00         ; 2 uses
  %i.xg = fcmp oge double %i.xf, %4
  %i.xh = select i1 %i.xg, double %i.xf, double 0.000000e+00
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.critedge:                                        ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

.critedge47:                                      ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit, %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit93
  %.not.i.i.i.i114 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorImSaImEED2Ev.exit.i115, label %bb.bk

bb.bk:                                            ; preds = %.critedge47
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #60
  %.pre280 = load ptr, ptr %7, align 8, !tbaa !152
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i115

_ZNSt6vectorImSaImEED2Ev.exit.i115:               ; preds = %bb.bk, %.critedge47
  %i.xi = phi ptr [ %.pre280, %bb.bk ], [ %i.jq, %.critedge47 ] ; 2 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i.i1.i116, label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit117, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i115
  call void @_ZdlPv(ptr noundef nonnull %i.xi) #60
  br label %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit117

_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit117: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i115, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %i.xj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.xk, null
  br i1 %.not.i.i.i.i118, label %_ZNSt6vectorImSaImEED2Ev.exit.i119, label %bb.bm

bb.bm:                                            ; preds = %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit117
  call void @_ZdlPv(ptr noundef nonnull %i.xk) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i119

_ZNSt6vectorImSaImEED2Ev.exit.i119:               ; preds = %bb.bm, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit117
  %i.xl = load ptr, ptr %6, align 8, !tbaa !6919  ; 2 uses
  %.not.i.i.i1.i120 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i1.i120, label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit122, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i119
  call void @_ZdlPv(ptr noundef nonnull %i.xl) #60
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit122

_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit122: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i119, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread: ; preds = %bb.a, %bb.bj, %.critedge, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit122, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit, %bb.c
  %.3 = phi double [ %i.s, %bb.c ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit ], [ %i.xh, %bb.bj ], [ 0.000000e+00, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit122 ], [ 0.000000e+00, %.critedge ], [ 0.000000e+00, %bb.a ]
  ret double %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !6919   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #60
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit

_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIPKcEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv i64 %i.c, 64
  %i.e = and i64 %i.c, 63
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !6935
  tail call void @_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !6935
  %i.l = shl nsw i64 %i.k, 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !150  ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !152  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.u)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ult i64 %i.l, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.w, ptr %i.m, align 8, !tbaa !150
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.x = icmp sgt i64 %i.c, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit, %_ZNSt6vectorImSaImEE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit
  %.015 = phi i64 [ %i.bt, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit ], [ 0, %_ZNSt6vectorImSaImEE6resizeEm.exit ] ; 4 uses
  %i.y = lshr i64 %.015, 6                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !79   ; 3 uses
  %i.ab = and i64 %.015, 63
  %i.ac = shl nuw i64 1, %i.ab                    ; 2 uses
  %i.ad = icmp sgt i8 %i.aa, -1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ae = zext nneg i8 %i.aa to i64
  %i.af = load i64, ptr %i.i, align 8, !tbaa !6935
  %i.ag = mul nsw i64 %i.af, %i.ae
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !33
  %i.al = or i64 %i.ak, %i.ac
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVector6insertIcEEvlT_i.exit

bb.f:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %0, align 8, !tbaa !6919
  %i.an = getelementptr inbounds nuw [2048 x i8], ptr %i.am, i64 %i.y ; 4 uses
  %i.ao = sext i8 %i.aa to i64                    ; 8 uses
  %i.ap = and i64 %i.ao, 127                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !6911 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !6913
  %i.au = icmp eq i64 %i.at, %i.ao
  br i1 %i.au, label %_ZN19duckdb_jaro_winkler6common16BitvectorHashmap11insert_maskIcEEvT_m.exit.i, label %.preheader.i.i.i

end_hunk_1
