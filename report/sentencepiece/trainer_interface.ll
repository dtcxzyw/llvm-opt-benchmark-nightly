Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/trainer_interface?download=true
inline.NumInlined: 5380
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE17_M_default_appendEm:bb.a
  store i64 0, ptr %i.ae, align 8, !tbaa !47
  store i8 0, ptr %i.ad, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
  store i64 0, ptr %i.af, align 8, !tbaa !170
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 136 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128
  store i64 0, ptr %i.ai, align 8, !tbaa !47
  store i8 0, ptr %i.ah, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  store i64 0, ptr %i.aj, align 8, !tbaa !170
  %i.ak = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !845

_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !124
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #31
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 230584300921369395) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 40
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter48 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16 ; 2 uses
  store ptr %i.as, ptr %.013.i.i.i31.prol, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !47
  store i8 0, ptr %i.as, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 32
  store i64 0, ptr %i.au, align 8, !tbaa !170
  %i.av = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !846

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16 ; 2 uses
  store ptr %i.ay, ptr %.013.i.i.i31, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !47
  store i8 0, ptr %i.ay, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  store i64 0, ptr %i.ba, align 8, !tbaa !170
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !47
  store i8 0, ptr %i.bc, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store i64 0, ptr %i.be, align 8, !tbaa !170
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store i64 0, ptr %i.bh, align 8, !tbaa !47
  store i8 0, ptr %i.bg, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  store i64 0, ptr %i.bi, align 8, !tbaa !170
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 136 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  store i64 0, ptr %i.bl, align 8, !tbaa !47
  store i8 0, ptr %i.bk, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  store i64 0, ptr %i.bm, align 8, !tbaa !170
  %i.bn = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !845

_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cf, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35 ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ce, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35 ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.012.i.i.i, align 8, !tbaa !46, !alias.scope !850, !noalias !851
  %i.bq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !851, !noalias !850 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !47, !alias.scope !851, !noalias !850 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !852
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.bq, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !850, !noalias !851
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !48, !alias.scope !851, !noalias !850
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !48, !alias.scope !850, !noalias !851
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !47, !alias.scope !851, !noalias !850
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.by = phi i64 [ %i.bu, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !47, !alias.scope !850, !noalias !851
  store ptr %i.br, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !851, !noalias !850
  store i64 0, ptr %i.bz, align 8, !tbaa !47, !alias.scope !851, !noalias !850
  store i8 0, ptr %i.br, align 8, !tbaa !48, !alias.scope !851, !noalias !850
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !170, !alias.scope !851, !noalias !850
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !170, !alias.scope !850, !noalias !851
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.ce, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i37, !llvm.loop !7

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE13_M_deallocateEPS7_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ci) #33
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE13_M_deallocateEPS7_m.exit41

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE13_M_deallocateEPS7_m.exit41: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !123
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %1
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !124
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.ck, ptr %i.h, align 8, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEmS7_ET_S9_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EE13_M_deallocateEPS7_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::gaussian_distribution", align 4 ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !118   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !856  ; 4 uses
  %i.c = tail call noundef ptr @_ZN13sentencepiece6random18GetRandomGeneratorEv()
  %i.d = load i64, ptr %.val, align 8, !tbaa !857 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !123  ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40                  ; 3 uses
  %i.m = icmp ult i64 %i.d, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.s = load float, ptr %i.n, align 8, !tbaa !198 ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  br i1 %i.t, label %.lr.ph.split.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !858, !nonnull !53, !align !66 ; 2 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %.pre.i.us.peel.i.i.i = load i64, ptr %i.w, align 8, !tbaa !168
  %i.x = load i64, ptr %i.q, align 8, !tbaa !199
  %i.y = icmp ult i64 %.pre.i.us.peel.i.i.i, %i.x
  br i1 %i.y, label %bb.b, label %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.us.i.i.i
  store i64 0, ptr %i.w, align 8, !tbaa !168
  br label %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i

_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i: ; preds = %bb.b, %.lr.ph.split.us.i.i.i
  %i.z = load i64, ptr %i.u, align 8, !tbaa !168  ; 2 uses
  %i.aa = add i64 %i.z, %i.d                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.l
  br i1 %i.ab, label %._crit_edge.i.us.i.i.i, label %"_ZSt10__invoke_rIvRZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit"

._crit_edge.i.us.i.i.i:                           ; preds = %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i
  %i.ac = phi i64 [ %i.af, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i ], [ %i.z, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i ]
  %.04.us.i.i.i.a = phi i64 [ %i.ag, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i ], [ %i.aa, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i ] ; 2 uses
  %2 = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.04.us.i.i.i.a
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre.i.us.i.i.i = load i64, ptr %3, align 8, !tbaa !168
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !199
  %i.ae = icmp ult i64 %.pre.i.us.i.i.i, %i.ad
  br i1 %i.ae, label %bb.c, label %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.us.i.i.i
  store i64 0, ptr %3, align 8, !tbaa !168
  %.pre.i.i.i.a = load i64, ptr %i.u, align 8, !tbaa !168
  br label %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i

_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i: ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %i.af = phi i64 [ %.pre.i.i.i.a, %bb.c ], [ %i.ac, %._crit_edge.i.us.i.i.i ] ; 2 uses
  %i.ag = add i64 %i.af, %.04.us.i.i.i.a          ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.l
  br i1 %i.ah, label %._crit_edge.i.us.i.i.i, label %"_ZSt10__invoke_rIvRZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit", !llvm.loop !853

.lr.ph.splitthread-pre-split.i.i.i:               ; preds = %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.i.i.i
  %.pr.i.i.i = load float, ptr %i.n, align 8, !tbaa !198
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i
  %i.ai = phi float [ %.pr.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.s, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = phi ptr [ %i.bd, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.h, %.lr.ph.i.i.i ]
  %.04.i.i.i = phi i64 [ %i.bb, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %.04.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 4 uses
  %i.am = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.am, label %bb.d, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !168
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !860
  store float %i.ai, ptr %i.p, align 4, !tbaa !861
  %i.an = call noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_6BitGenEEEdRT_(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(288) %i.c)
  %i.ao = fptrunc double %i.an to float
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ao, float 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !168
  %i.ar = sitofp i64 %i.aq to float
  %i.as = fadd float %i.ap, %i.ar                 ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.at, float %i.as, float 0.000000e+00
  %i.au = call noundef float @llvm.round.f32(float %.sroa.speculated.i.i.i.i)
  %i.av = fptosi float %i.au to i64               ; 2 uses
  store i64 %i.av, ptr %i.al, align 8, !tbaa !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.aw = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.av, %bb.d ]
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !199
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.al, align 8, !tbaa !168
  br label %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.i.i.i

_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !858, !nonnull !53, !align !66
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !168
  %i.bb = add i64 %i.ba, %.04.i.i.i               ; 2 uses
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !124
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !123 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 40
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %.lr.ph.splitthread-pre-split.i.i.i, label %"_ZSt10__invoke_rIvRZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit", !llvm.loop !854

"_ZSt10__invoke_rIvRZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit": ; preds = %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.i.i.i, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.i.i.i, %bb.a, %_ZN13sentencepiece10AddDPNoiseIlEEvRKNS_11TrainerSpecEPN4absl12lts_202605266BitGenEPT_.exit.us.peel.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1", ptr %0, align 8, !tbaa !288
  br label %"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %.val, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !863
  store ptr %i.a, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !118 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef ptr @_ZN13sentencepiece6random18GetRandomGeneratorEv() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_6BitGenEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(288) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.pre = load i64, ptr %i.d, align 8, !tbaa !229
  br label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23, %bb.a
  %i.g = phi i64 [ %i.av, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23 ], [ %.pre, %bb.a ]
  %i.h = icmp ugt i64 %i.g, 31
  br i1 %i.h, label %bb.c, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %i.d, align 8, !tbaa !229
  %i.i = load i8, ptr %i.f, align 8, !tbaa !276, !range !52, !noundef !53
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !277  ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.l = load i64, ptr %i.d, align 8, !tbaa !229  ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !229
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168  ; 5 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 127                        ; 2 uses
  %i.r = and i64 %i.o, -9223372036854775808
  %i.s = and i64 %i.o, 9223372036854775807
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false) ; 2 uses
  %i.u = and i64 %i.t, 63
  %i.v = shl i64 %i.o, %i.u
  %i.w = lshr i64 %i.v, 11
  %i.x = shl nuw nsw i64 %i.t, 52
  %i.y = or disjoint i64 %i.x, %i.r
  %i.z = and i64 %i.w, 4503599627370495
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = xor i64 %i.aa, 4607182418800017408
  %i.ac = bitcast i64 %i.ab to double             ; 2 uses
  %i.ad = and i64 %i.o, 127                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !203
  %i.ag = fmul double %i.af, %i.ac                ; 5 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.ag)
  %i.ai = add nuw nsw i32 %i.q, 1
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !203
  %i.am = fcmp olt double %i.ah, %i.al
  br i1 %i.am, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit
  %i.an = icmp eq i32 %i.q, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = fcmp olt double %i.ac, 0.000000e+00
  %i.ap = tail call noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_6BitGenEEEdRT_b(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, i1 noundef zeroext %i.ao)
  br label %select.unfold

bb.h:                                             ; preds = %bb.f
  %i.aq = icmp ugt i64 %i.m, 31
  br i1 %i.aq, label %bb.i, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23

bb.i:                                             ; preds = %bb.h
  store i64 2, ptr %i.d, align 8, !tbaa !229
  %i.ar = load i8, ptr %i.f, align 8, !tbaa !276, !range !52, !noundef !53
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !277 ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.at, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.at, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit23: ; preds = %bb.h, %bb.j, %bb.k
  %i.au = load i64, ptr %i.d, align 8, !tbaa !229 ; 2 uses
end_hunk_0
