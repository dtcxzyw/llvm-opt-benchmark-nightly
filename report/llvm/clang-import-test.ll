Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/clang-import-test?download=true
inline.NumInlined: 2450
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang17DiagnosticOptionsD2Ev:bb.a
  br i1 %.not.i.i.i18, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i19, label %.lr.ph.i.i.i14, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i19: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i17
  %.pr.i20 = load ptr, ptr %i.ag, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i21

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i21: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i19, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12
  %i.aq = phi ptr [ %.pr.i20, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i19 ], [ %i.ah, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i22 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i22, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i21, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i.i25 = icmp eq ptr %i.ax, %i.az
  br i1 %.not4.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i33, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29
  %.05.i.i.i27 = phi ptr [ %i.bf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29 ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24 ] ; 3 uses
  %i.ba = load ptr, ptr %.05.i.i.i27, align 8, !tbaa !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i26
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !24
  %i.be = add i64 %i.bd, 1
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29: ; preds = %.lr.ph.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bf, %i.az
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i31, label %.lr.ph.i.i.i26, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i31: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i29
  %.pr.i32 = load ptr, ptr %i.aw, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i33

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i33: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i31, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24
  %i.bg = phi ptr [ %.pr.i32, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i31 ], [ %i.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit24 ] ; 3 uses
  %.not.i.i1.i34 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !45
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i33, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i45, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i41
  %.05.i.i.i39 = phi ptr [ %i.bv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i41 ], [ %i.bn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36 ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i39, align 8, !tbaa !23 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i38
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i41

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i41: ; preds = %.lr.ph.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i40
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 32 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i.i42, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i43, label %.lr.ph.i.i.i38, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i43: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i41
  %.pr.i44 = load ptr, ptr %i.bm, align 8, !tbaa !43
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i45

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i45: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i43, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36
  %i.bw = phi ptr [ %.pr.i44, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i43 ], [ %i.bn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit36 ] ; 3 uses
  %.not.i.i1.i46 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i46, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit48, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i45
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit48

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit48: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i45, %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !23 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit48
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !24
  %i.ch = add i64 %i.cg, 1
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cn = add i64 %i.cm, 1
  tail call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !24
  %i.ct = add i64 %i.cs, 1
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16init_convenience15BuildASTContextERN5clang16CompilerInstanceERNS0_13SelectorTableERNS0_7Builtin7ContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.347") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.j = tail call noalias noundef nonnull dereferenceable(23904) ptr @_Znwm(i64 noundef 23904) #23, !noalias !332 ; 3 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !100, !noalias !332
  tail call void @_ZN5clang10ASTContextC1ERNS_11LangOptionsERNS_13SourceManagerERNS_15IdentifierTableERNS_13SelectorTableERNS_7Builtin7ContextENS_19TranslationUnitKindE(ptr noundef nonnull align 8 dereferenceable(23904) %i.j, ptr noundef nonnull align 8 dereferenceable(1136) %i.e, ptr noundef nonnull align 8 dereferenceable(776) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(176) %3, i32 noundef %i.k) #21, !noalias !332
  store ptr %i.j, ptr %0, align 8, !tbaa !102, !alias.scope !332
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  tail call void @_ZN5clang10ASTContext16InitBuiltinTypesERKNS_10TargetInfoEPS2_(ptr noundef nonnull align 8 dereferenceable(23904) %i.j, ptr noundef nonnull align 8 dereferenceable(517) %i.m, ptr noundef null) #21
  ret void
}

declare void @_ZN5clang10ASTContext16InitBuiltinTypesERKNS_10TargetInfoEPS2_(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(517), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16init_convenience12BuildCodeGenERN5clang16CompilerInstanceERN4llvm11LLVMContextE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.996") align 8 %0, ptr noundef nonnull align 8 dereferenceable(528) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 {
bb.a:
  tail call void @_ZN5clang17CreateLLVMCodeGenERKNS_16CompilerInstanceEN4llvm9StringRefERNS3_11LLVMContextEPNS_18CoverageSourceInfoE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.996") align 8 %0, ptr noundef nonnull align 8 dereferenceable(528) %1, ptr nonnull @.str.27, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #21
  ret void
}

declare void @_ZN5clang17CreateLLVMCodeGenERKNS_16CompilerInstanceEN4llvm9StringRefERNS3_11LLVMContextEPNS_18CoverageSourceInfoE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.996") align 8, ptr noundef nonnull align 8 dereferenceable(528), ptr, i64, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.1198", align 8 ; 10 uses
  %3 = alloca %"class.clang::ExternalASTMerger::ImporterSource", align 8 ; 9 uses
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr.250", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %9 = alloca %"struct.(anonymous namespace)::CIAndOrigins", align 8 ; 10 uses
  %10 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN4llvm3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr %i.b, i64 %.sroa.0.0.i, i1 noundef zeroext true) #21
  %i.d = tail call noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef %0, ptr noundef nonnull %1, ptr nonnull @.str.28, i64 0, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #21 ; 0 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7ImportsB5cxx11, i64 120), align 8, !tbaa !65 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7ImportsB5cxx11, i64 128), align 8, !tbaa !65 ; 2 uses
  %.not155177 = icmp eq ptr %i.e, %i.f
  br i1 %.not155177, label %.loopexit161.thread, label %.lr.ph

.loopexit161.thread:                              ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10UseOrigins, i64 120), align 8, !range !29
  %i.h = trunc nuw i8 %i.g to i1
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = ptrtoint ptr %.sroa.19.1135 to i64       ; 2 uses
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL6Direct, i64 120), align 8, !tbaa !78, !range !29, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10UseOrigins, i64 120), align 8, !range !29 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %.not205 = xor i1 %i.p, true
  %or.cond.not = select i1 %i.n, i1 %.not205, i1 false
  %.not156184 = icmp eq ptr %.sroa.0120.1137, %.sroa.11121.1136 ; 4 uses
  %or.cond202 = select i1 %or.cond.not, i1 true, i1 %.not156184
  br i1 %or.cond202, label %.loopexit161, label %.lr.ph189

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0120.0181 = phi ptr [ null, %.lr.ph ], [ %.sroa.0120.1137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 11 uses
  %.sroa.11121.0180 = phi ptr [ null, %.lr.ph ], [ %.sroa.11121.1136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %.sroa.19.0179 = phi ptr [ null, %.lr.ph ], [ %.sroa.19.1135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.0117.0178 = phi ptr [ %i.e, %.lr.ph ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.i, ptr %5, align 8, !tbaa !46
  %i.q = load ptr, ptr %.sroa.0117.0178, align 8, !tbaa !23 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0117.0178, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.s, ptr %i.a, align 8, !tbaa !103
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !23
  %i.v = load i64, ptr %i.a, align 8, !tbaa !103
  store i64 %i.v, ptr %i.i, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !24
  store i8 %i.x, ptr %i.w, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.y = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !47
  %i.z = load ptr, ptr %5, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call fastcc void @_ZN12_GLOBAL__N_15ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm15MutableArrayRefINS_12CIAndOriginsEEEbb(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr null, i64 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ab = load i8, ptr %i.k, align 8, !noalias !374
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit, label %_ZN4llvm5ErrorD2Ev.exit29

_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = load i64, ptr %6, align 8, !tbaa !105, !noalias !374 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !105, !noalias !374
  %.not159 = icmp eq i64 %i.ad, 0
  br i1 %.not159, label %_ZN4llvm5ErrorD2Ev.exit29, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #21
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.ae, ptr %8, align 8, !tbaa !107
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %8) #21
  %i.ah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull @.str.30) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  %i.aj = load ptr, ptr %8, align 8, !tbaa !107   ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #21, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @exit(i32 noundef -1) #25
  unreachable

_ZN4llvm5ErrorD2Ev.exit29:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit
  %.not.i.i = icmp eq ptr %.sroa.11121.0180, %.sroa.19.0179
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZN4llvm5ErrorD2Ev.exit29
  %i.ao = load i64, ptr %6, align 8, !tbaa !81
  store i64 %i.ao, ptr %.sroa.11121.0180, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.11121.0180, i64 8
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit

bb.i:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit29
  %i.aq = ptrtoint ptr %.sroa.11121.0180 to i64   ; 3 uses
  %i.ar = ptrtoint ptr %.sroa.0120.0181 to i64    ; 3 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %i.av = icmp eq ptr %.sroa.11121.0180, %.sroa.0120.0181 ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.av, i64 1, i64 %i.au
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.au
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #23 ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  %i.bd = load i64, ptr %6, align 8, !tbaa !81
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !81
  store ptr null, ptr %6, align 8, !tbaa !81
  br i1 %i.av, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = add i64 %i.aq, -8
  %i.bf = sub i64 %i.be, %i.ar                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader319, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bb, i64 8
  %i.bi = add i64 %i.aq, -8
  %i.bj = sub i64 %i.bi, %i.ar
  %i.bk = and i64 %i.bj, -8                       ; 2 uses
  %scevgep264.a = getelementptr i8, ptr %scevgep, i64 %i.bk
  %scevgep265 = getelementptr i8, ptr %.sroa.0120.0181, i64 8
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.bk
  %bound0 = icmp ult ptr %i.bb, %scevgep266
  %bound1 = icmp ult ptr %.sroa.0120.0181, %scevgep264.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader319, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.0120.0181, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bo ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.sroa.0120.0181, i64 %i.bo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.bp = getelementptr i8, ptr %next.gep267, i64 16
end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %.not.i.i45.a, label %_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit, label %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44
  %i.ev = load ptr, ptr %.val.pr, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(528) %.val.pr) #21, !inline_history !3
  br label %_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit

_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit:         ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44.thread, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44, %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i
  %.sroa.20.4145 = phi ptr [ %.sroa.20.0187, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44.thread ], [ %i.eu, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44 ], [ %i.eu, %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i ] ; 2 uses
  %.sroa.11.4144 = phi ptr [ %i.dm, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44.thread ], [ %i.et, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44 ], [ %i.et, %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i ] ; 2 uses
  %.sroa.0100.4143 = phi ptr [ %.sroa.0100.0185, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44.thread ], [ %i.dy, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit44 ], [ %i.dy, %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.095.0188, i64 8 ; 2 uses
  %.not156.a = icmp eq ptr %i.ey, %.sroa.11121.1136
  br i1 %.not156.a, label %.loopexit161.loopexit, label %.lr.ph189

.loopexit161.loopexit:                            ; preds = %_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10UseOrigins, i64 120), align 8, !tbaa !78, !range !29
  br label %.loopexit161

.loopexit161:                                     ; preds = %.loopexit161.loopexit, %._crit_edge
  %i.ez = phi i8 [ %i.o, %._crit_edge ], [ %.pre, %.loopexit161.loopexit ]
  %.sroa.0100.1 = phi ptr [ null, %._crit_edge ], [ %.sroa.0100.4143, %.loopexit161.loopexit ] ; 2 uses
  %.sroa.11.1 = phi ptr [ null, %._crit_edge ], [ %.sroa.11.4144, %.loopexit161.loopexit ] ; 2 uses
  %.sroa.20.1 = phi ptr [ null, %._crit_edge ], [ %.sroa.20.4145, %.loopexit161.loopexit ] ; 2 uses
  %i.fa = trunc nuw i8 %i.ez to i1                ; 2 uses
  %not. = xor i1 %i.fa, true
  %i.fb = select i1 %not., i1 true, i1 %.not156184
  br i1 %i.fb, label %.loopexit, label %.lr.ph198

.lr.ph198:                                        ; preds = %.loopexit161, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59
  %.sroa.093.0197 = phi ptr [ %i.gk, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59 ], [ %.sroa.0120.1137, %.loopexit161 ] ; 5 uses
  %.sroa.20.2196 = phi ptr [ %.sroa.20.5, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59 ], [ %.sroa.20.1, %.loopexit161 ] ; 5 uses
  %.sroa.11.2195 = phi ptr [ %.sroa.11.5, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59 ], [ %.sroa.11.1, %.loopexit161 ] ; 3 uses
  %.sroa.0100.2194 = phi ptr [ %.sroa.0100.5, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59 ], [ %.sroa.0100.1, %.loopexit161 ] ; 11 uses
  %.not.i.i46 = icmp eq ptr %.sroa.11.2195, %.sroa.20.2196
  br i1 %.not.i.i46, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph198
  %i.fc = load i64, ptr %.sroa.093.0197, align 8, !tbaa !81
  store i64 %i.fc, ptr %.sroa.11.2195, align 8, !tbaa !81
  store ptr null, ptr %.sroa.093.0197, align 8, !tbaa !81
  br label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59

bb.v:                                             ; preds = %.lr.ph198
  %i.fd = ptrtoint ptr %.sroa.20.2196 to i64      ; 3 uses
  %i.fe = ptrtoint ptr %.sroa.0100.2194 to i64    ; 3 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.w, label %_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i48

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i48: ; preds = %bb.v
  %i.fh = ashr exact i64 %i.ff, 3                 ; 3 uses
  %i.fi = icmp eq ptr %.sroa.20.2196, %.sroa.0100.2194 ; 2 uses
  %.sroa.speculated.i.i.i.i49 = select i1 %i.fi, i64 1, i64 %i.fh
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i49, %i.fh ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fh
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 1152921504606846975)
  %i.fm = select i1 %i.fk, i64 1152921504606846975, i64 %i.fl ; 3 uses
  %.not.i.i.i.i50 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i50)
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #23 ; 10 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ff
  %i.fq = load i64, ptr %.sroa.093.0197, align 8, !tbaa !81
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !81
  store ptr null, ptr %.sroa.093.0197, align 8, !tbaa !81
  br i1 %i.fi, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i.i51.preheader:                   ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i48
  %i.fr = add i64 %i.fd, -8
  %i.fs = sub i64 %i.fr, %i.fe                    ; 2 uses
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.fs, 56
  br i1 %min.iters.check302, label %.lr.ph.i.i.i.i.i.i51.preheader316, label %vector.memcheck293

vector.memcheck293:                               ; preds = %.lr.ph.i.i.i.i.i.i51.preheader
  %scevgep294.a = getelementptr i8, ptr %i.fo, i64 8
  %i.fv = add i64 %i.fd, -8
  %i.fw = sub i64 %i.fv, %i.fe
  %i.fx = and i64 %i.fw, -8                       ; 2 uses
  %scevgep295.a = getelementptr i8, ptr %scevgep294.a, i64 %i.fx
  %scevgep296 = getelementptr i8, ptr %.sroa.0100.2194, i64 8
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.fx
  %bound0298 = icmp ult ptr %i.fo, %scevgep297
  %bound1299 = icmp ult ptr %.sroa.0100.2194, %scevgep295.a
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %.lr.ph.i.i.i.i.i.i51.preheader316, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck293
  %n.vec304 = and i64 %i.fu, 4611686018427387900  ; 3 uses
  %i.fy = shl i64 %n.vec304, 3                    ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fo, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %.sroa.0100.2194, i64 %i.fy
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.gb = shl i64 %index306, 3                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.fo, i64 %i.gb ; 2 uses
  %next.gep308 = getelementptr i8, ptr %.sroa.0100.2194, i64 %i.gb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.gc = getelementptr i8, ptr %next.gep308, i64 16
  %wide.load309 = load <2 x i64>, ptr %next.gep308, align 8, !tbaa !81, !alias.scope !392
  %wide.load310 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !81, !alias.scope !392
  %i.gd = getelementptr i8, ptr %next.gep307, i64 16
  store <2 x i64> %wide.load309, ptr %next.gep307, align 8, !tbaa !81, !alias.scope !393, !noalias !394
  store <2 x i64> %wide.load310, ptr %i.gd, align 8, !tbaa !81, !alias.scope !393, !noalias !394
  %i.ge = getelementptr i8, ptr %next.gep308, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep308, align 8, !tbaa !81, !alias.scope !392
  store <2 x ptr> splat (ptr null), ptr %i.ge, align 8, !tbaa !81, !alias.scope !392
  %index.next311 = add nuw i64 %index306, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gf, label %middle.block312, label %vector.body305, !llvm.loop !368

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fu, %n.vec304
  br i1 %cmp.n313, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51.preheader316

.lr.ph.i.i.i.i.i.i51.preheader316:                ; preds = %vector.memcheck293, %.lr.ph.i.i.i.i.i.i51.preheader, %middle.block312
  %.03.i.i.i.i.i.i52.ph = phi ptr [ %i.fo, %vector.memcheck293 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i51.preheader ], [ %i.fz, %middle.block312 ]
  %.092.i.i.i.i.i.i53.ph = phi ptr [ %.sroa.0100.2194, %vector.memcheck293 ], [ %.sroa.0100.2194, %.lr.ph.i.i.i.i.i.i51.preheader ], [ %i.ga, %middle.block312 ]
  br label %.lr.ph.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i51:                             ; preds = %.lr.ph.i.i.i.i.i.i51.preheader316, %.lr.ph.i.i.i.i.i.i51
  %.03.i.i.i.i.i.i52 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i51 ], [ %.03.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i51.preheader316 ] ; 2 uses
  %.092.i.i.i.i.i.i53 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i51 ], [ %.092.i.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i.i51.preheader316 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.gg = load i64, ptr %.092.i.i.i.i.i.i53, align 8, !tbaa !81, !alias.scope !391
  store i64 %i.gg, ptr %.03.i.i.i.i.i.i52, align 8, !tbaa !81, !alias.scope !390
  store ptr null, ptr %.092.i.i.i.i.i.i53, align 8, !tbaa !81, !alias.scope !391
  %i.gh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i53, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i52, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i54 = icmp eq ptr %i.gh, %.sroa.20.2196
  br i1 %.not.i.i.i.i.i.i54, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i55, label %.lr.ph.i.i.i.i.i.i51, !llvm.loop !369

_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i51, %middle.block312, %_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i48
  %.0.lcssa.i.i.i.i.i.i56 = phi ptr [ %i.fo, %_ZNKSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i48 ], [ %i.fz, %middle.block312 ], [ %i.gi, %.lr.ph.i.i.i.i.i.i51 ]
  %.not.i27.i.i.i57 = icmp eq ptr %.sroa.0100.2194, null
  br i1 %.not.i27.i.i.i57, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i55
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.2194, i64 noundef %i.ff) #22
  br label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58

_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58: ; preds = %bb.x, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i55
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  br label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59

_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59: ; preds = %bb.u, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58
  %.sroa.0100.5 = phi ptr [ %i.fo, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58 ], [ %.sroa.0100.2194, %bb.u ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i56.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i56, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58 ], [ %.sroa.11.2195, %bb.u ]
  %.sroa.20.5 = phi ptr [ %i.gj, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i58 ], [ %.sroa.20.2196, %bb.u ] ; 2 uses
  %.sroa.11.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i56.pn, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.093.0197, i64 8 ; 2 uses
  %.not157.a = icmp eq ptr %i.gk, %.sroa.11121.1136
  br i1 %.not157.a, label %.loopexit.loopexit, label %.lr.ph198

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EE9push_backEOS1_.exit59
  %.pre209.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10UseOrigins, i64 120), align 8, !range !29
  %.pre211 = trunc nuw i8 %.pre209.a to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit161.thread, %.loopexit.loopexit, %.loopexit161
  %.sroa.19.0.lcssa242257 = phi i64 [ %i.l, %.loopexit.loopexit ], [ %i.l, %.loopexit161 ], [ 0, %.loopexit161.thread ]
  %.sroa.11121.0.lcssa243256 = phi ptr [ %.sroa.11121.1136, %.loopexit.loopexit ], [ %.sroa.11121.1136, %.loopexit161 ], [ null, %.loopexit161.thread ] ; 3 uses
  %.sroa.0120.0.lcssa244255 = phi ptr [ %.sroa.0120.1137, %.loopexit.loopexit ], [ %.sroa.0120.1137, %.loopexit161 ], [ null, %.loopexit161.thread ] ; 6 uses
  %.not156184245254 = phi i1 [ %.not156184, %.loopexit.loopexit ], [ %.not156184, %.loopexit161 ], [ true, %.loopexit161.thread ]
  %.pre-phi = phi i1 [ %.pre211, %.loopexit.loopexit ], [ %i.fa, %.loopexit161 ], [ %i.h, %.loopexit161.thread ]
  %.sroa.0100.3 = phi ptr [ %.sroa.0100.5, %.loopexit.loopexit ], [ %.sroa.0100.1, %.loopexit161 ], [ null, %.loopexit161.thread ] ; 7 uses
  %.sroa.11.3 = phi ptr [ %.sroa.11.5, %.loopexit.loopexit ], [ %.sroa.11.1, %.loopexit161 ], [ null, %.loopexit161.thread ] ; 4 uses
  %.sroa.20.3 = phi ptr [ %.sroa.20.5, %.loopexit.loopexit ], [ %.sroa.20.1, %.loopexit161 ], [ null, %.loopexit161.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.gl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL6Direct, i64 120), align 8, !tbaa !78, !range !29, !noundef !30
  %i.gm = trunc nuw i8 %i.gl to i1
  %.not149 = xor i1 %i.gm, true
  %or.cond151 = select i1 %.not149, i1 true, i1 %.pre-phi ; 2 uses
  %.sroa.phi.sroa.speculated = select i1 %or.cond151, ptr %.sroa.11.3, ptr %.sroa.11121.0.lcssa243256
  %.sroa.speculated109 = select i1 %or.cond151, ptr %.sroa.0100.3, ptr %.sroa.0120.0.lcssa244255 ; 2 uses
  %i.gn = ptrtoint ptr %.sroa.phi.sroa.speculated to i64
  %i.go = ptrtoint ptr %.sroa.speculated109 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %i.gr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7DumpAST, i64 120), align 8, !tbaa !78, !range !29, !noundef !30
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL6DumpIR, i64 120), align 8, !tbaa !78, !range !29, !noundef !30
  %i.gu = trunc nuw i8 %i.gt to i1
  call fastcc void @_ZN12_GLOBAL__N_15ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm15MutableArrayRefINS_12CIAndOriginsEEEbb(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL10ExpressionB5cxx11, i64 120), ptr %.sroa.speculated109, i64 %i.gq, i1 noundef zeroext %i.gs, i1 noundef zeroext %i.gu)
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gw = load i8, ptr %i.gv, align 8, !noalias !395
  %i.gx = trunc i8 %i.gw to i1
  br i1 %i.gx, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit62, label %.loopexit._ZN4llvm5ErrorD2Ev.exit64_crit_edge

.loopexit._ZN4llvm5ErrorD2Ev.exit64_crit_edge:    ; preds = %.loopexit
  %.val27.pre = load ptr, ptr %10, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit64

_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit62: ; preds = %.loopexit
  %i.gy = load i64, ptr %10, align 8, !tbaa !105, !noalias !395 ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !105, !noalias !395
  %.not158 = icmp eq i64 %i.gy, 0
  br i1 %.not158, label %_ZN4llvm5ErrorD2Ev.exit64, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit62
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #21
  %i.hb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ha, ptr noundef nonnull @.str.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %i.gz, ptr %12, align 8, !tbaa !107
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nofree noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.hc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.hd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull @.str.30) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #21
  %i.he = load ptr, ptr %12, align 8, !tbaa !107  ; 3 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZN4llvm5ErrorD2Ev.exit63.a, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !15
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.he) #21, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit63.a

_ZN4llvm5ErrorD2Ev.exit63.a:                      ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @exit(i32 noundef -1) #25
  unreachable

_ZN4llvm5ErrorD2Ev.exit64:                        ; preds = %.loopexit._ZN4llvm5ErrorD2Ev.exit64_crit_edge, %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit62
  %.val27 = phi ptr [ %.val27.pre, %.loopexit._ZN4llvm5ErrorD2Ev.exit64_crit_edge ], [ null, %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEE9takeErrorEv.exit62 ]
  %i.hj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL6Direct, i64 120), align 8, !tbaa !78, !range !29, !noundef !30
  %i.hk = trunc nuw i8 %i.hj to i1
  %.not152 = xor i1 %i.hk, true
  %i.hl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL10UseOrigins, i64 120), align 8, !range !29
  %i.hm = trunc nuw i8 %i.hl to i1
  %or.cond154 = select i1 %.not152, i1 true, i1 %i.hm ; 2 uses
  %.sroa.phi97.sroa.speculated = select i1 %or.cond154, ptr %.sroa.11.3, ptr %.sroa.11121.0.lcssa243256 ; 2 uses
  %.sroa.speculated = select i1 %or.cond154, ptr %.sroa.0100.3, ptr %.sroa.0120.0.lcssa244255 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.hn, ptr %2, align 8, !tbaa !33
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.ho, align 8, !tbaa !114
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.hp, align 4, !tbaa !115
  %.not3.i = icmp eq ptr %.sroa.phi97.sroa.speculated, %.sroa.speculated
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm5ErrorD2Ev.exit64
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE9push_backERKS3_.exit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !33
  %.pre5.i = load i32, ptr %i.ho, align 8, !tbaa !114
  %i.hu = zext i32 %.pre5.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4llvm5ErrorD2Ev.exit64
  %i.hv = phi i64 [ %i.hu, %._crit_edge.loopexit.i ], [ 0, %_ZN4llvm5ErrorD2Ev.exit64 ]
  %i.hw = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.hn, %_ZN4llvm5ErrorD2Ev.exit64 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.val27, i64 136
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !111
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 18624
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !118
  call void @_ZN5clang17ExternalASTMerger13RemoveSourcesEN4llvm8ArrayRefINS0_14ImporterSourceEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.ia, ptr %i.hw, i64 %i.hv) #21
  %i.ib = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.hn
  br i1 %i.ic, label %_ZN12_GLOBAL__N_16ForgetERNS_12CIAndOriginsEN4llvm15MutableArrayRefIS0_EE.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.ib) #21
  br label %_ZN12_GLOBAL__N_16ForgetERNS_12CIAndOriginsEN4llvm15MutableArrayRefIS0_EE.exit

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE9push_backERKS3_.exit.i, %.lr.ph.i
  %.04.i = phi ptr [ %.sroa.speculated, %.lr.ph.i ], [ %i.iw, %_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE9push_backERKS3_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.0.val.i = load ptr, ptr %.04.i, align 8, !tbaa !81 ; 2 uses
  %i.id = getelementptr i8, ptr %.0.val.i, i64 136
  %.0.val.val.i = load ptr, ptr %i.id, align 8, !tbaa !111
  %i.ie = getelementptr i8, ptr %.0.val.i, i64 72
  %.0.val12.val.i = load ptr, ptr %i.ie, align 8, !tbaa !121
  %i.if = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap acquire, align 8
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %bb.ac, label %_ZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEv.exit.i, !prof !122

bb.ac:                                            ; preds = %bb.ab
  %i.ih = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap) #21
  %.not.i.i66 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i66, label %_ZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEv.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, i8 0, i64 24, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, i64 8)>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, i64 24), align 8, !tbaa !124
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, i64 40), align 8, !tbaa !128
  %i.ii = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIPKN5clang11DeclContextENS0_17ExternalASTMerger8DCOriginESt4lessIS3_ESaISt4pairIKS3_S5_EEED2Ev, ptr nonnull @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap) #21
  br label %_ZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEv.exit.i

_ZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEv.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ij = load ptr, ptr %.04.i, align 8, !tbaa !81
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 136
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !111
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 18624
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !118 ; 2 uses
  %.not6.not.i.i = icmp eq ptr %i.in, null
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  %spec.select.i.i = select i1 %.not6.not.i.i, ptr @_ZZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEvE14EmptyOriginMap, ptr %i.io
  store ptr %.0.val.val.i, ptr %3, align 8, !tbaa !102
  store ptr %.0.val12.val.i, ptr %i.hq, align 8, !tbaa !129
  store ptr %spec.select.i.i, ptr %i.hr, align 8, !tbaa !131
  store i8 0, ptr %i.hs, align 8, !tbaa !134
  store ptr null, ptr %i.ht, align 8, !tbaa !135
  %i.ip = load i32, ptr %i.ho, align 8, !tbaa !114 ; 2 uses
  %i.iq = load i32, ptr %i.hp, align 4, !tbaa !115
  %.not.i15.i = icmp ult i32 %i.ip, %i.iq
  br i1 %.not.i15.i, label %bb.af, label %bb.ae, !prof !136

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEv.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE9push_backERKS3_.exit.i

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_112CIAndOrigins12getOriginMapEv.exit.i
  %i.ir = zext i32 %i.ip to i64
  %i.is = load ptr, ptr %2, align 8, !tbaa !33
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.is, i64 %i.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.it, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.iu = load i32, ptr %i.ho, align 8, !tbaa !114
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.ho, align 8, !tbaa !114
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE9push_backERKS3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang17ExternalASTMerger14ImporterSourceELb1EE9push_backERKS3_.exit.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.iw = getelementptr inbounds nuw i8, ptr %.04.i, i64 8 ; 2 uses
  %.not.i65 = icmp eq ptr %i.iw, %.sroa.phi97.sroa.speculated
  br i1 %.not.i65, label %._crit_edge.loopexit.i, label %bb.ab

_ZN12_GLOBAL__N_16ForgetERNS_12CIAndOriginsEN4llvm15MutableArrayRefIS0_EE.exit: ; preds = %._crit_edge.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.val15 = load ptr, ptr %10, align 8            ; 3 uses
  %.not.i.i67 = icmp eq ptr %.val15, null
  br i1 %.not.i.i67, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit69, label %_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit.sink.split.i68

_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit.sink.split.i68: ; preds = %_ZN12_GLOBAL__N_16ForgetERNS_12CIAndOriginsEN4llvm15MutableArrayRefIS0_EE.exit
  %i.ix = load ptr, ptr %.val15, align 8, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %.val15) #21, !inline_history !343
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit69

_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit69: ; preds = %_ZN12_GLOBAL__N_16ForgetERNS_12CIAndOriginsEN4llvm15MutableArrayRefIS0_EE.exit, %_ZN12_GLOBAL__N_112CIAndOriginsD2Ev.exit.sink.split.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.not4.i.i.i = icmp eq ptr %.sroa.0100.3, %.sroa.11.3
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit69, %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jd, %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i ], [ %.sroa.0100.3, %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit69 ] ; 2 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ja = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !15
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(528) %.0.val.i.i.i) #21, !inline_history !372
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jd, %.sroa.11.3
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !373

_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i, %_ZN4llvm8ExpectedIN12_GLOBAL__N_112CIAndOriginsEED2Ev.exit69
  %.not.i.i2.i = icmp eq ptr %.sroa.0100.3, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i
  %i.je = ptrtoint ptr %.sroa.20.3 to i64
  %i.jf = ptrtoint ptr %.sroa.0100.3 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.3, i64 noundef %i.jg) #22
  br label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i, %bb.ag
  br i1 %.not156184245254, label %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i82, label %.lr.ph.i.i.i73

.lr.ph.i.i.i73:                                   ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i78
  %.05.i.i.i74 = phi ptr [ %i.jk, %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i78 ], [ %.sroa.0120.0.lcssa244255, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit ] ; 2 uses
  %.0.val.i.i.i75 = load ptr, ptr %.05.i.i.i74, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i76 = icmp eq ptr %.0.val.i.i.i75, null
  br i1 %.not.i.i.i.i.i.i76, label %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i78, label %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i.i.i.i.i77

_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i.i.i.i.i77: ; preds = %.lr.ph.i.i.i73
  %i.jh = load ptr, ptr %.0.val.i.i.i75, align 8, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(528) %.0.val.i.i.i75) #21, !inline_history !372
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i78

_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i78: ; preds = %_ZNKSt14default_deleteIN5clang16CompilerInstanceEEclEPS1_.exit.i.i.i.i.i.i77, %.lr.ph.i.i.i73
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.jk, %.sroa.11121.0.lcssa243256
  br i1 %.not.i.i.i79, label %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i82, label %.lr.ph.i.i.i73, !llvm.loop !373

_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i82: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112CIAndOriginsEEvPT_.exit.i.i.i78, %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit
  %.not.i.i2.i84 = icmp eq ptr %.sroa.0120.0.lcssa244255, null
  br i1 %.not.i.i2.i84, label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit86, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i82
  %i.jl = ptrtoint ptr %.sroa.0120.0.lcssa244255 to i64
  %i.jm = sub i64 %.sroa.19.0.lcssa242257, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0.lcssa244255, i64 noundef %i.jm) #22
  br label %_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit86

_ZNSt6vectorIN12_GLOBAL__N_112CIAndOriginsESaIS1_EED2Ev.exit86: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112CIAndOriginsEEvT_S3_.exit.i82, %bb.ah
  ret i32 0
}

declare void @_ZN4llvm3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr, i64, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef, ptr noundef, ptr, i64, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_15ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm15MutableArrayRefINS_12CIAndOriginsEEEbb(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree readonly captures(address) %2, i64 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #5 {
_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEEC2EPS2_.exit:
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %9 = alloca %class.anon.1298, align 1           ; 3 uses
  %10 = alloca %"class.llvm::ErrorOr", align 8    ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %13 = alloca %"struct.(anonymous namespace)::CIAndOrigins", align 8 ; 14 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr.250", align 8 ; 3 uses
  %15 = alloca %"class.std::unique_ptr.996", align 8 ; 6 uses
  %16 = alloca %"class.std::unique_ptr.252", align 8 ; 6 uses
  %17 = alloca %"class.std::unique_ptr.313", align 8 ; 3 uses
  %18 = alloca %"class.clang::MultiplexConsumer", align 8 ; 6 uses
  %19 = alloca %"class.std::vector.1041", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @_ZN16init_convenience21BuildCompilerInstanceEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13)
  %i.a = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23, !noalias !431 ; 4 uses
  call void @_ZN5clang13SelectorTableC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21, !noalias !431
  %i.b = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #23, !noalias !432 ; 9 uses
  call void @_ZN5clang7Builtin7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.b) #21, !noalias !432
  %.val9 = load ptr, ptr %13, align 8, !tbaa !81  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95, !noalias !433 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83, !noalias !433
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72, !noalias !433
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98, !noalias !433
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 748
  %i.l = call noalias noundef nonnull dereferenceable(23904) ptr @_Znwm(i64 noundef 23904) #23, !noalias !434 ; 5 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !100, !noalias !434
  call void @_ZN5clang10ASTContextC1ERNS_11LangOptionsERNS_13SourceManagerERNS_15IdentifierTableERNS_13SelectorTableERNS_7Builtin7ContextENS_19TranslationUnitKindE(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, ptr noundef nonnull align 8 dereferenceable(1136) %i.g, ptr noundef nonnull align 8 dereferenceable(776) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %i.b, i32 noundef %i.m) #21, !noalias !434
  %i.n = getelementptr inbounds nuw i8, ptr %.val9, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !433
  call void @_ZN5clang10ASTContext16InitBuiltinTypesERKNS_10TargetInfoEPS2_(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, ptr noundef nonnull align 8 dereferenceable(517) %i.o, ptr noundef null) #21, !noalias !433
  %.val8 = load ptr, ptr %13, align 8, !tbaa !81
  store ptr %i.l, ptr %14, align 8, !tbaa !111
  %i.p = load i32, ptr %i.l, align 4, !tbaa !113
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !113
  call void @_ZN5clang16CompilerInstance13setASTContextEN4llvm18IntrusiveRefCntPtrINS_10ASTContextEEE(ptr noundef nonnull align 8 dereferenceable(528) %.val8, ptr nofree noundef nonnull align 8 dereferenceable(8) %14) #21
  %i.r = load ptr, ptr %14, align 8, !tbaa !111   ; 5 uses
  %.not.i.i18 = icmp eq ptr %i.r, null
  br i1 %.not.i.i18, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEEC2EPS2_.exit
  %i.s = load i32, ptr %i.r, align 4, !tbaa !113
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !113
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5clang10ASTContextD1Ev(ptr noundef nonnull align 8 dead_on_return(23904) dereferenceable(23904) %i.r) #21
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.r, i64 noundef 23904) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEEC2EPS2_.exit, %bb.a, %bb.b
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEED2Ev.exit
  call fastcc void @_ZN12_GLOBAL__N_117AddExternalSourceERNS_12CIAndOriginsEN4llvm15MutableArrayRefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr %2, i64 %3)
  br label %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang10ASTContextEED2Ev.exit, %bb.c
  %i.u = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23, !noalias !435 ; 4 uses
  call void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #21, !noalias !435
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %.val7 = load ptr, ptr %13, align 8, !tbaa !81
  call void @_ZN5clang17CreateLLVMCodeGenERKNS_16CompilerInstanceEN4llvm9StringRefERNS3_11LLVMContextEPNS_18CoverageSourceInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.996") align 8 %15, ptr noundef nonnull align 8 dereferenceable(528) %.val7, ptr nonnull @.str.27, i64 9, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef null) #21
  %i.v = load ptr, ptr %15, align 8, !tbaa !437   ; 2 uses
  store ptr null, ptr %15, align 8, !tbaa !437
  %i.w = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 6 uses
  %i.x = ptrtoint ptr %i.v to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !439
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %15, align 8, !tbaa !437   ; 3 uses
  %.not.i20 = icmp eq ptr %i.z, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang13CodeGeneratorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5clang13CodeGeneratorEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(10) %i.z) #21, !inline_history !406
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !439
  br label %_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5clang13CodeGeneratorEEclEPS1_.exit.i
  %i.ad = phi ptr [ %i.v, %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit ], [ %.pre, %_ZNKSt14default_deleteIN5clang13CodeGeneratorEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br i1 %4, label %_ZNKSt6vectorISt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49, label %bb.d

_ZNKSt6vectorISt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49: ; preds = %_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr null, ptr %17, align 8, !tbaa !442
  call void @_ZN5clang15CreateASTDumperESt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS2_EENS1_9StringRefEbbbbNS_19ASTDumpOutputFormatE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.252") align 8 %16, ptr nofree noundef nonnull align 8 dereferenceable(8) %17, ptr nonnull @.str.28, i64 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0) #21
  %i.ae = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %16, align 8, !tbaa !439
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !439
  store ptr null, ptr %16, align 8, !tbaa !439
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !439, !alias.scope !444
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !439, !alias.scope !443
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 8) #22
  %.pr = load ptr, ptr %16, align 8, !tbaa !439   ; 3 uses
  %.not.i23 = icmp eq ptr %.pr, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN5clang11ASTConsumerEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN5clang11ASTConsumerEEclEPS1_.exit.i24: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49
  %i.aj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(9) %.pr) #21, !inline_history !410
  br label %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit25: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i49, %_ZNKSt14default_deleteIN5clang11ASTConsumerEEclEPS1_.exit.i24
  %i.am = load ptr, ptr %17, align 8, !tbaa !445  ; 3 uses
  %.not.i26 = icmp eq ptr %i.am, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(48) %i.am) #21, !inline_history !411
  br label %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5clang11ASTConsumerESt14default_deleteIS1_EED2Ev.exit25, %_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit
  %.sroa.080.0 = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit ], [ %i.w, %_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit ]
  %.sroa.11.0 = phi ptr [ %i.ai, %_ZNSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EED2Ev.exit ], [ %i.y, %_ZNSt10unique_ptrIN5clang13CodeGeneratorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.val16 = load ptr, ptr %13, align 8, !tbaa !81 ; 3 uses
  %i.aq = getelementptr i8, ptr %.val16, i64 40
  %.val16.val = load ptr, ptr %i.aq, align 8, !tbaa !68
  %i.ar = getelementptr i8, ptr %.val16.val, i64 48
  %.val16.val.val = load ptr, ptr %i.ar, align 8, !tbaa !446 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72
end_hunk_1
