Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/coalescing_iterator?download=true
inline.NumInlined: 352
inline.NumDeleted: 195
begin_hunk_0_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS6_S6_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !53
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !53
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre39 = load i64, ptr %.phi.trans.insert38, align 8, !tbaa !52
  br label %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i
  %i.an = phi i64 [ %i.aj, %bb.d ], [ %.pre39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !52
  store ptr %i.ag, ptr %3, align 8, !tbaa !51
  store i64 0, ptr %i.ao, align 8, !tbaa !52
  store i8 0, ptr %i.ag, align 8, !tbaa !53
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i, align 8, !tbaa !49, !alias.scope !94
  %i.ar = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !95 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !52, !alias.scope !95 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ar, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !94
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !53, !alias.scope !95
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !53, !alias.scope !94
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !52, !alias.scope !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.az = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.av, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !52, !alias.scope !94
  store ptr %i.as, ptr %.0911.i.i.i, align 8, !tbaa !51, !alias.scope !95
  store i64 0, ptr %i.ba, align 8, !tbaa !52, !alias.scope !95
  store i8 0, ptr %i.as, align 8, !tbaa !53, !alias.scope !95
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !49, !alias.scope !94
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !51, !alias.scope !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !52, !alias.scope !95 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false), !alias.scope !96
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !51, !alias.scope !94
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !53, !alias.scope !95
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !53, !alias.scope !94
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !52, !alias.scope !95
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.f
  %i.bn = phi i64 [ %i.bj, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !52, !alias.scope !94
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !51, !alias.scope !95
  store i64 0, ptr %i.bo, align 8, !tbaa !52, !alias.scope !95
  store i8 0, ptr %i.bg, align 8, !tbaa !53, !alias.scope !95
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJS6_S6_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit31, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28
  %.012.i.i.i19 = phi ptr [ %i.cu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28 ], [ %i.bs, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i20 = phi ptr [ %i.ct, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 3 uses
  store ptr %i.bt, ptr %.012.i.i.i19, align 8, !tbaa !49, !alias.scope !97
  %i.bu = load ptr, ptr %.0911.i.i.i20, align 8, !tbaa !51, !alias.scope !98 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21

bb.g:                                             ; preds = %.lr.ph.i.i.i18
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !52, !alias.scope !98 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false), !alias.scope !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i18
  store ptr %i.bu, ptr %.012.i.i.i19, align 8, !tbaa !51, !alias.scope !97
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !53, !alias.scope !98
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !53, !alias.scope !97
  %.phi.trans.insert.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %.pre.i.i.i.i23 = load i64, ptr %.phi.trans.insert.i.i.i.i22, align 8, !tbaa !52, !alias.scope !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i24: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21, %bb.g
  %i.cc = phi i64 [ %.pre.i.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i21 ], [ %i.by, %bb.g ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !52, !alias.scope !97
  store ptr %i.bv, ptr %.0911.i.i.i20, align 8, !tbaa !51, !alias.scope !98
  store i64 0, ptr %i.cd, align 8, !tbaa !52, !alias.scope !98
  store i8 0, ptr %i.bv, align 8, !tbaa !53, !alias.scope !98
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !49, !alias.scope !97
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !51, !alias.scope !98 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i24
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !52, !alias.scope !98 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false), !alias.scope !99
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i24
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !51, !alias.scope !97
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !53, !alias.scope !98
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !53, !alias.scope !97
  %.phi.trans.insert5.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40
  %.pre6.i.i.i.i27 = load i64, ptr %.phi.trans.insert5.i.i.i.i26, align 8, !tbaa !52, !alias.scope !98
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i25, %bb.h
  %i.cq = phi i64 [ %i.cm, %bb.h ], [ %.pre6.i.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i25 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !52, !alias.scope !97
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !51, !alias.scope !98
  store i64 0, ptr %i.cr, align 8, !tbaa !52, !alias.scope !98
  store i8 0, ptr %i.cj, align 8, !tbaa !53, !alias.scope !98
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 64 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ct, %i.b
  br i1 %.not.i.i.i29, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit31, label %.lr.ph.i.i.i18, !llvm.loop !1

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit31: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i30 = phi ptr [ %i.bs, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.cu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i28 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit31
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !45
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cy) #15
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit31, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !46
  store ptr %.0.lcssa.i.i.i30, ptr %i.a, align 8, !tbaa !47
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #14 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !51
  store ptr %i.r, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !52
  store i64 %i.u, ptr %i.s, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load ptr, ptr %3, align 8, !tbaa !51
  store ptr %i.w, ptr %i.v, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !52
  store i64 %i.z, ptr %i.x, align 8, !tbaa !41
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !35, !alias.scope !106
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %4 = add i64 %i.d, -32
  %5 = sub i64 %4, %i.m
  %6 = and i64 %5, -32                            ; 2 uses
  %7 = add i64 %6, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %1, i64 %7, i1 false), !alias.scope !107
  %i.ad = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %6
  %scevgep = getelementptr i8, ptr %i.ad, i64 64
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ac, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %scevgep, %.lr.ph.i.i.i28 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #15
  br label %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !30
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10BinaryHeapINS_18CoalescingIterator19WideColumnWithOrderENS1_29WideColumnWithOrderComparatorEE6upheapEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr i8, ptr %i.g, i64 -128
  %.0.i = select i1 %i.a, ptr %i.d, ptr %i.h      ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.0.i, align 8, !tbaa !24 ; 3 uses
  %.sroa.5.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.i = load <2 x i32>, ptr %.sroa.5.0..0.i.sroa_idx, align 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..0.i.sroa_idx, align 8, !tbaa !25
  %.not19 = icmp eq i64 %1, 0
  br i1 %.not19, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0920 = phi i64 [ %1, %.lr.ph ], [ %i.l, %bb.c ] ; 5 uses
  %i.k = add i64 %.0920, -1
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = icmp ult i64 %.0920, 17
  %i.n = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.l
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr [16 x i8], ptr %i.p, i64 %i.l
  %i.r = getelementptr i8, ptr %i.q, i64 -128
  %.0.i10 = select i1 %i.m, ptr %i.o, ptr %i.r    ; 3 uses
  %i.s = load ptr, ptr %.0.i10, align 8, !tbaa !39 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41   ; 2 uses
  %i.v = load i64, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.x = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !42
  %i.y = tail call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.x, i64 noundef %..i.i) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  %.mux.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.u, i64 %i.v)
  %.0.i.i = select i1 %.not.i.i, i32 %.mux.i.i, i32 %i.y ; 2 uses
  %i.z = icmp eq i32 %.0.i.i, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i10, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp sgt i32 %i.ab, %.sroa.5.0.copyload
  %i.ad = icmp sgt i32 %.0.i.i, 0
  %i.ae = select i1 %i.z, i1 %i.ac, i1 %i.ad
  %i.af = icmp ult i64 %.0920, 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.0920
  %i.ah = getelementptr [16 x i8], ptr %i.p, i64 %.0920
  %i.ai = getelementptr i8, ptr %i.ah, i64 -128
  %.0.i12 = select i1 %i.af, ptr %i.ag, ptr %i.ai ; 2 uses
  br i1 %i.ae, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i12, ptr noundef nonnull align 8 dereferenceable(16) %.0.i10, i64 16, i1 false), !tbaa.struct !37
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %..thread.loopexit_crit_edge, label %bb.b

..thread.loopexit_crit_edge:                      ; preds = %bb.c
  %.pre.pre = load ptr, ptr %i.b, align 8
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.b, %..thread.loopexit_crit_edge, %bb.a
  %i.aj = phi ptr [ %.pre.pre, %..thread.loopexit_crit_edge ], [ %i.c, %bb.a ], [ %.0.i12, %bb.b ] ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.aj, align 8, !tbaa !24
  %.sroa.5.0..0.i13.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store <2 x i32> %i.i, ptr %.sroa.5.0..0.i13.sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 -1, ptr %i.ak, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10BinaryHeapINS_18CoalescingIterator19WideColumnWithOrderENS1_29WideColumnWithOrderComparatorEE8downheapEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp ult i64 %1, 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %1
  %i.i = getelementptr i8, ptr %i.h, i64 -128
  %.0.i = select i1 %i.b, ptr %i.e, ptr %i.i      ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.0.i, align 8, !tbaa !24 ; 3 uses
  %.sroa.5.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.j = load <2 x i32>, ptr %.sroa.5.0..0.i.sroa_idx, align 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..0.i.sroa_idx, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = shl i64 %1, 1                            ; 2 uses
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4
  %i.t = add i64 %i.s, %i.n                       ; 2 uses
  %.not45 = icmp ult i64 %i.m, %i.t
  br i1 %.not45, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i64 [ %i.t, %.lr.ph ], [ %i.cj, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.ce, %bb.f ] ; 5 uses
  %i.y = phi i64 [ %i.m, %.lr.ph ], [ %i.cb, %bb.f ] ; 4 uses
  %i.z = phi i64 [ %i.l, %.lr.ph ], [ %i.ca, %bb.f ] ; 3 uses
  %.02046 = phi i64 [ %1, %.lr.ph ], [ %.119, %bb.f ] ; 5 uses
  %i.aa = add nuw i64 %i.z, 2                     ; 4 uses
  %i.ab = icmp eq i64 %.02046, 0
  br i1 %i.ab, label %bb.c, label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.b
  %.pre52.pre = load ptr, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !22  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.w
  %.pre52.pre54 = load ptr, ptr %i.c, align 8     ; 2 uses
  br i1 %i.ad, label %._crit_edge51, label %bb.d

bb.d:                                             ; preds = %._crit_edge53, %bb.c
  %.pre52 = phi ptr [ %.pre52.pre, %._crit_edge53 ], [ %.pre52.pre54, %bb.c ] ; 4 uses
  %i.ae = icmp ult i64 %i.aa, %i.w
  br i1 %i.ae, label %bb.e, label %._crit_edge51

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult i64 %i.z, 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.pre52, i64 %i.y
  %i.ah = getelementptr [16 x i8], ptr %i.x, i64 %i.y
  %i.ai = getelementptr i8, ptr %i.ah, i64 -128
  %.0.i26 = select i1 %i.af, ptr %i.ag, ptr %i.ai ; 2 uses
  %i.aj = icmp ult i64 %i.z, 6
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.pre52, i64 %i.aa
  %i.al = getelementptr [16 x i8], ptr %i.x, i64 %i.aa
  %i.am = getelementptr i8, ptr %i.al, i64 -128
  %.0.i27 = select i1 %i.aj, ptr %i.ak, ptr %i.am ; 2 uses
  %i.an = load ptr, ptr %.0.i26, align 8, !tbaa !39 ; 2 uses
  %i.ao = load ptr, ptr %.0.i27, align 8, !tbaa !39 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.as)
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.av = tail call i32 @memcmp(ptr noundef %i.at, ptr noundef %i.au, i64 noundef %..i.i) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.av, 0
  %.mux.i.i = tail call i32 @llvm.ucmp.i32.i64(i64 %i.aq, i64 %i.as)
  %.0.i.i = select i1 %.not.i.i, i32 %.mux.i.i, i32 %i.av ; 2 uses
  %i.aw = icmp eq i32 %.0.i.i, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i26, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp sgt i32 %i.ay, %i.ba
  %i.bc = icmp sgt i32 %.0.i.i, 0
  %i.bd = select i1 %i.aw, i1 %i.bb, i1 %i.bc
  %spec.select = select i1 %i.bd, i64 %i.aa, i64 %i.y
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.c, %bb.e, %bb.d
  %i.be = phi ptr [ %.pre52, %bb.e ], [ %.pre52, %bb.d ], [ %.pre52.pre54, %bb.c ] ; 2 uses
  %.119 = phi i64 [ %spec.select, %bb.e ], [ %i.y, %bb.d ], [ %i.ac, %bb.c ] ; 8 uses
end_hunk_0
