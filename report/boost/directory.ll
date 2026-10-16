Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/directory?download=true
inline.NumInlined: 734
inline.NumDeleted: 307
begin_hunk_0_@_ZN5boost10filesystem6detail38recursive_directory_iterator_constructERNS0_28recursive_directory_iteratorERKNS0_4pathENS0_17directory_optionsEPNS_6system10error_codeE:bb.a
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #33
  br label %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i

_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i: ; preds = %bb.n, %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 40) #33
  br label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.p:                                             ; preds = %.critedge
  %i.ag = call noalias noundef dereferenceable_or_null(40) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 40, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #36 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49.thread, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEC2EPS3_b.exit.i

_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEC2EPS3_b.exit.i: ; preds = %bb.p
  store i32 0, ptr %i.ag, align 4, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 %2, ptr %i.aj, align 8, !tbaa !71
  %i.ak = atomicrmw add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !62    ; 6 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !62
  %.not.i.i37 = icmp eq ptr %.pre, null
  br i1 %.not.i.i37, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEC2EPS3_b.exit.i
  %i.al = atomicrmw sub ptr %.pre, i32 1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.r, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i.i.i.i38 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not4.i.i.i.i.i.i.i38, label %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i46, label %.lr.ph.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i39:                           ; preds = %bb.r, %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42
  %.05.i.i.i.i.i.i.i40 = phi ptr [ %i.au, %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42 ], [ %i.ao, %bb.r ] ; 2 uses
  %i.ar = load ptr, ptr %.05.i.i.i.i.i.i.i40, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i41 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i41, label %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i39
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.t, label %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42

bb.t:                                             ; preds = %bb.s
  call void @_ZN5boost10filesystem6detail11dir_itr_impD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ar) #29
  call void @free(ptr noundef nonnull %i.ar) #29
  br label %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42

_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.i.i.i.i.i39
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i40, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i43 = icmp eq ptr %i.au, %i.aq
  br i1 %.not.i.i.i.i.i.i.i43, label %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i44, label %.lr.ph.i.i.i.i.i.i.i39, !llvm.loop !5

_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i44: ; preds = %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i.i42
  %.pr.i.i.i.i.i45 = load ptr, ptr %i.an, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i46

_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i46: ; preds = %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i44, %bb.r
  %i.av = phi ptr [ %.pr.i.i.i.i.i45, %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i44 ], [ %i.ao, %bb.r ] ; 3 uses
  %.not.i.i1.i.i.i.i.i47 = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i.i.i.i47, label %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i48, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i46
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #33
  br label %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i48

_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i48: ; preds = %bb.u, %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i46
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 40) #33
  br label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49

_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49: ; preds = %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i48, %bb.q
  %.pr = load ptr, ptr %5, align 8, !tbaa !62
  %.not80 = icmp eq ptr %.pr, null
  br i1 %.not80, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49.thread, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit, !prof !141

_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49.thread: ; preds = %bb.p, %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37, !noalias !142
  %i.bc = and i64 %i.bb, -2
  %switch.i.i.i = icmp eq i64 %i.bc, -5572340897628102704
  br i1 %switch.i.i.i, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.thread, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit

_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit: ; preds = %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49.thread
  %i.bd = load ptr, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !142
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !142
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i32 noundef 12) #29, !noalias !142, !inline_history !4
  br i1 %i.bg, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.thread, label %thread-pre-split.thread

_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.thread: ; preds = %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49.thread, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.thread, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit
  %i.bh = phi i64 [ 3, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit.thread ], [ 2, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit ]
  store i64 12, ptr %3, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !23
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.bh, ptr %.sroa.664.0..sroa_idx, align 8, !tbaa !20
  br label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev.exit

_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit: ; preds = %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEC2EPS3_b.exit.i, %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i.i, %bb.j, %bb.i, %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit49
  %i.bi = load ptr, ptr %5, align 8, !tbaa !62    ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !73 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !74
  %.not.i.i50 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit
  %i.bo = load ptr, ptr %4, align 8, !tbaa !56
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !56
  store ptr null, ptr %4, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !73
  br label %thread-pre-split

bb.w:                                             ; preds = %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEaSEPS3_.exit
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !72 ; 7 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.x, label %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #30
          to label %.noexc61 unwind label %bb.z

.noexc61:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i59 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i59)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #35
          to label %.noexc62 unwind label %bb.z   ; 7 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = load ptr, ptr %4, align 8, !tbaa !56
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !56
  store ptr null, ptr %4, align 8, !tbaa !56
  %.not10.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc62
  %i.ce = add i64 %i.br, -8
  %i.cf = sub i64 %i.ce, %i.bs                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cb, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bq, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cl ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.bq, i64 %i.cl ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.cm = getelementptr i8, ptr %next.gep118, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep118, align 8, !tbaa !56, !alias.scope !144
  %wide.load119 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !56, !alias.scope !144
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !56, !alias.scope !143
  store <2 x ptr> %wide.load119, ptr %i.cn, align 8, !tbaa !56, !alias.scope !143
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !56, !alias.scope !144
  store <2 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !56, !alias.scope !144
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader121

.lr.ph.i.i.i.i.preheader121:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader121, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader121 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.cp = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !56, !alias.scope !144
  store ptr %i.cp, ptr %.012.i.i.i.i, align 8, !tbaa !56, !alias.scope !143
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !56, !alias.scope !144
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.cq, %i.bl
  br i1 %.not.i.i.i.i60, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc62
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cb, %.noexc62 ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i, label %.noexc, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  %i.ct = load ptr, ptr %i.bm, align 8, !tbaa !74
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cv) #33
  br label %.noexc

.noexc:                                           ; preds = %bb.y, %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !72
  store ptr %i.cs, ptr %i.bk, align 8, !tbaa !73
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cw, ptr %i.bm, align 8, !tbaa !74
  br label %thread-pre-split

bb.z:                                             ; preds = %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.cy = extractvalue { ptr, i32 } %i.cx, 1
  %i.cz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #29
  %i.da = icmp eq i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %bb.z
  %i.db = extractvalue { ptr, i32 } %i.cx, 0
  %i.dc = call ptr @__cxa_begin_catch(ptr %i.db) #29 ; 0 uses
  br i1 %.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37, !noalias !145
  %i.de = and i64 %i.dd, -2
  %switch.i.i.i51 = icmp eq i64 %i.de, -5572340897628102704
  br i1 %switch.i.i.i51, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53.thread, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53

_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53: ; preds = %bb.ab
  %i.df = load ptr, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, align 8, !tbaa !39, !noalias !145
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !145
  %i.di = call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i32 noundef 12) #29, !noalias !145, !inline_history !4
  br i1 %i.di, label %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53.thread, label %bb.ac

_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53.thread: ; preds = %bb.ab, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53.thread
  %i.dj = phi i64 [ 3, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53.thread ], [ 2, %_ZN5boost6system4errc15make_error_codeENS1_6errc_tE.exit53 ]
  store i64 12, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  invoke void @__cxa_end_catch()
          to label %thread-pre-split.thread116 unwind label %bb.af

bb.ad:                                            ; preds = %bb.aa
  invoke void @__cxa_rethrow() #30
          to label %bb.ar unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.aq

bb.af:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

thread-pre-split:                                 ; preds = %bb.v, %.noexc
  %i.dm = load ptr, ptr %0, align 8, !tbaa !62    ; 3 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !62
  store ptr %i.dm, ptr %5, align 8, !tbaa !62
  %.not.i54 = icmp eq ptr %i.dm, null
  br i1 %.not.i54, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev.exit, label %thread-pre-split.thread116

thread-pre-split.thread116:                       ; preds = %bb.ac, %thread-pre-split
  %i.dn = phi ptr [ %i.dm, %thread-pre-split ], [ %i.bi, %bb.ac ] ; 5 uses
  %i.do = atomicrmw sub ptr %i.dn, i32 1 acq_rel, align 4
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.ag, label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev.exit

bb.ag:                                            ; preds = %thread-pre-split.thread116
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !72 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !73 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.dt
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ag, %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.dx, %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i ], [ %i.dr, %bb.ag ] ; 2 uses
  %i.du = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dv = atomicrmw sub ptr %i.du, i32 1 acq_rel, align 4
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.ai, label %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5boost10filesystem6detail11dir_itr_impD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.du) #29
  call void @free(ptr noundef nonnull %i.du) #29
  br label %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.dt
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5boost10filesystem18directory_iteratorEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ag
  %i.dy = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.dr, %bb.ag ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #33
  br label %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i

_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i: ; preds = %bb.aj, %_ZSt8_DestroyIPN5boost10filesystem18directory_iteratorES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 40) #33
  br label %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev.exit

_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev.exit: ; preds = %thread-pre-split.thread, %thread-pre-split, %thread-pre-split.thread116, %_ZN5boost10filesystem6detail17recur_dir_itr_impD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNK5boost10filesystem18directory_iterator6is_endEv.exit.i.i.i, %bb.f, %_ZNK5boost6system10error_codecvbEv.exit, %_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev.exit
  %.pr77 = load ptr, ptr %4, align 8, !tbaa !56   ; 4 uses
  %.not.i.i55 = icmp eq ptr %.pr77, null
  br i1 %.not.i.i55, label %_ZN5boost10filesystem18directory_iteratorD2Ev.exit56, label %bb.ak

bb.ak:                                            ; preds = %.critedge.thread
  %i.ee = atomicrmw sub ptr %.pr77, i32 1 acq_rel, align 4
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.al, label %_ZN5boost10filesystem18directory_iteratorD2Ev.exit56

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5boost10filesystem6detail11dir_itr_impD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.pr77) #29
  call void @free(ptr noundef nonnull %.pr77) #29
  br label %_ZN5boost10filesystem18directory_iteratorD2Ev.exit56

_ZN5boost10filesystem18directory_iteratorD2Ev.exit56: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread70, %.critedge.thread, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.am:                                            ; preds = %bb.af, %bb.ae, %bb.z, %bb.o
  %.merged32 = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.cx, %bb.z ], [ %i.dl, %bb.af ], [ %i.dk, %bb.ae ]
  call void @_ZN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.g
  %.merged = phi { ptr, i32 } [ %.merged32, %bb.am ], [ %i.j, %bb.g ]
  %i.eg = load ptr, ptr %4, align 8, !tbaa !56    ; 4 uses
  %.not.i.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i57, label %_ZN5boost10filesystem18directory_iteratorD2Ev.exit58, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = atomicrmw sub ptr %i.eg, i32 1 acq_rel, align 4
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.ap, label %_ZN5boost10filesystem18directory_iteratorD2Ev.exit58

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5boost10filesystem6detail11dir_itr_impD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.eg) #29
  call void @free(ptr noundef nonnull %i.eg) #29
  br label %_ZN5boost10filesystem18directory_iteratorD2Ev.exit58

_ZN5boost10filesystem18directory_iteratorD2Ev.exit58: ; preds = %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.merged

bb.aq:                                            ; preds = %bb.ae
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #31
  unreachable

end_hunk_0
begin_hunk_1_@_ZNK5boost6system6detail12std_category10equivalentERKSt10error_codei:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = select i1 %.0.i.i17, i64 3, i64 2
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !52
  store i32 %i.aa, ptr %4, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(52) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.as = tail call ptr @__dynamic_cast(ptr nonnull %i.ar, ptr nonnull @_ZTINSt3_V214error_categoryE, ptr nonnull @_ZTIN5boost6system6detail12std_categoryE, i64 0) #29 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.at = load i32, ptr %1, align 8, !tbaa !59    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88 ; 4 uses
  store i64 0, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !37
  %i.ay = and i64 %i.ax, -2
  %switch.i.i19 = icmp eq i64 %i.ay, -5572340897628102704
  br i1 %switch.i.i19, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ne i32 %i.at, 0
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit21

bb.n:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(52) %i.av, i32 noundef %i.at) #29, !inline_history !1
  br label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit21

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit21: ; preds = %bb.m, %bb.n
  %.0.i.i20 = phi i1 [ %i.az, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = select i1 %.0.i.i20, i64 3, i64 2
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !52
  store i32 %i.at, ptr %5, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.av, ptr %i.bg, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(52) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !37 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = icmp eq ptr %i.bo, @_ZN5boost6system6detail18generic_cat_holderIvE8instanceE
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, %i.bp
  %i.bv = select i1 %i.bq, i1 %i.br, i1 %i.bu
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #29
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit21, %bb.p, %bb.o, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit18, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit
  %.1 = phi i1 [ %i.v, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit ], [ %i.aq, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit18 ], [ %i.bm, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit21 ], [ %i.bz, %bb.p ], [ false, %bb.o ]
  ret i1 %.1

bb.r:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #31
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #24

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZN5boost10filesystem6detail15path_algorithms9append_v4ERNS0_4pathEPKcS6_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZN5boost10filesystem6detail15path_algorithms21find_parent_path_sizeERKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5boost10filesystem4path16replace_filenameERKS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN5boost10filesystem6detail19symlink_status_implERKNS0_4pathEPNS_6system10error_codeEi(ptr dead_on_unwind writable sret(%"class.boost::filesystem::file_status") align 4, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10filesystem6detail25directory_iterator_paramsD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = invoke i32 @close(i32 noundef %i.a)
          to label %_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #31
  unreachable

_ZN5boost5scope15unique_resourceIiNS0_10fd_deleterENS0_18fd_resource_traitsEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @dirfd(ptr noundef) local_unnamed_addr #14

declare noundef i64 @_ZN5boost10filesystem6detail15path_algorithms21find_filename_v4_sizeERKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #30
  unreachable

_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !56
  store ptr %i.r, ptr %i.q, align 8, !tbaa !56
  store ptr null, ptr %2, align 8, !tbaa !56
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep35, align 8, !tbaa !56, !alias.scope !195
  %wide.load36 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !56, !alias.scope !195
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !56, !alias.scope !194
  store <2 x ptr> %wide.load36, ptr %i.ab, align 8, !tbaa !56, !alias.scope !194
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !56, !alias.scope !195
  store <2 x ptr> splat (ptr null), ptr %i.aa, align 8, !tbaa !56, !alias.scope !195
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !56, !alias.scope !195
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !56, !alias.scope !194
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !56, !alias.scope !195
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !185

_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16 ; 2 uses
  %wide.load47 = load <2 x ptr>, ptr %next.gep46, align 8, !tbaa !56, !alias.scope !198
  %wide.load48 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !56, !alias.scope !198
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x ptr> %wide.load47, ptr %next.gep45, align 8, !tbaa !56, !alias.scope !199, !noalias !200
  store <2 x ptr> %wide.load48, ptr %i.av, align 8, !tbaa !56, !alias.scope !199, !noalias !200
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !56, !alias.scope !198
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !56, !alias.scope !198
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !192

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.ax = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !56, !alias.scope !197
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !56, !alias.scope !196
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !56, !alias.scope !197
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !193

_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5boost10filesystem18directory_iteratorESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !74
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #33
  br label %_ZNSt12_Vector_baseIN5boost10filesystem18directory_iteratorESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5boost10filesystem18directory_iteratorESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !72
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !74
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nounwind memory(none) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !32}
!1 = distinct !{null, null}
!2 = distinct !{!2, !32}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{!5, !32}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !11, i64 16}
!22 = !{!21, !16, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!21, !19, i64 8}
!25 = !{!"_ZTSN5boost10filesystem9file_typeE", !11, i64 0}
!26 = !{!"_ZTSN5boost10filesystem5permsE", !11, i64 0}
!27 = !{!"_ZTSN5boost10filesystem11file_statusE", !25, i64 0, !26, i64 4}
!28 = !{!27, !25, i64 0}
!29 = !{!27, !26, i64 4}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!12, !12, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"long long", !11, i64 0}
!34 = !{!"_ZTSSt13__atomic_baseIjE", !12, i64 0}
!35 = !{!"_ZTSSt6atomicIjE", !34, i64 0}
!36 = !{!"_ZTSN5boost6system14error_categoryE", !33, i64 8, !11, i64 16, !35, i64 48}
!37 = !{!36, !33, i64 8}
!38 = !{!"vtable pointer", !10, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSN5boost5scope6detail15compact_storageIivLb0EEE", !12, i64 0}
!41 = !{!40, !12, i64 0}
!42 = !{!"_ZTSSt13__atomic_baseIiE", !12, i64 0}
!43 = !{!"_ZTSSt6atomicIiE", !42, i64 0}
!44 = !{!"_ZTSN5boost6detail12atomic_countE", !43, i64 0}
!45 = !{!"_ZTSN5boost12sp_adl_block21intrusive_ref_counterINS_10filesystem6detail11dir_itr_impENS0_19thread_safe_counterEEE", !44, i64 0}
!46 = !{!"_ZTSN5boost10filesystem4pathE", !21, i64 0}
!47 = !{!"_ZTSN5boost10filesystem15directory_entryE", !46, i64 0, !27, i64 32, !27, i64 40}
!48 = !{!"_ZTSN5boost10filesystem6detail11dir_itr_impE", !45, i64 0, !47, i64 8, !15, i64 56}
!49 = !{!48, !15, i64 56}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{!"_ZTSN5boost6system10error_codeE", !11, i64 0, !19, i64 16}
!52 = !{!51, !19, i64 16}
!53 = !{i64 0, i64 16, !23, i64 16, i64 8, !20}
!54 = !{!"p1 _ZTSN5boost10filesystem6detail11dir_itr_impE", !15, i64 0}
!55 = !{!"_ZTSN5boost13intrusive_ptrINS_10filesystem6detail11dir_itr_impEEE", !54, i64 0}
!56 = !{!55, !54, i64 0}
!57 = !{!"p1 _ZTSNSt3_V214error_categoryE", !15, i64 0}
!58 = !{!"_ZTSSt10error_code", !12, i64 0, !57, i64 8}
!59 = !{!58, !12, i64 0}
!60 = !{!"p1 _ZTSN5boost10filesystem6detail17recur_dir_itr_impE", !15, i64 0}
!61 = !{!"_ZTSN5boost13intrusive_ptrINS_10filesystem6detail17recur_dir_itr_impEEE", !60, i64 0}
!62 = !{!61, !60, i64 0}
!63 = !{!"_ZTSN5boost12sp_adl_block21intrusive_ref_counterINS_10filesystem6detail17recur_dir_itr_impENS0_19thread_safe_counterEEE", !44, i64 0}
!64 = !{!"p1 _ZTSN5boost10filesystem18directory_iteratorE", !15, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN5boost10filesystem18directory_iteratorESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIN5boost10filesystem18directory_iteratorESaIS2_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN5boost10filesystem18directory_iteratorESaIS2_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIN5boost10filesystem18directory_iteratorESaIS2_EE", !67, i64 0}
!69 = !{!"_ZTSN5boost10filesystem17directory_optionsE", !11, i64 0}
!70 = !{!"_ZTSN5boost10filesystem6detail17recur_dir_itr_impE", !63, i64 0, !68, i64 8, !69, i64 32}
!71 = !{!70, !69, i64 32}
!72 = !{!65, !64, i64 0}
!73 = !{!65, !64, i64 8}
!74 = !{!65, !64, i64 16}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!64, !64, i64 0}
!78 = !{!"p1 _ZTSN5boost6system14error_categoryE", !15, i64 0}
!79 = !{!"_ZTSN5boost6system15error_conditionE", !12, i64 0, !78, i64 8}
!80 = !{!79, !12, i64 0}
!81 = !{!79, !78, i64 8}
!82 = !{!58, !57, i64 8}
!83 = !{!"_ZTSSt15error_condition", !12, i64 0, !57, i64 8}
!84 = !{!83, !57, i64 8}
!85 = !{!83, !12, i64 0}
!86 = !{!"_ZTSNSt3_V214error_categoryE"}
!87 = !{!"_ZTSN5boost6system6detail12std_categoryE", !86, i64 0, !78, i64 8}
!88 = !{!87, !78, i64 8}
!89 = distinct !{!89, i1 true, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!90 = distinct !{!90, !89, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, i1 true, !"_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE"}
!94 = distinct !{!94, !93, !"_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE: argument 0"}
!95 = !{!94}
!96 = distinct !{!96, i1 true, !"_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_"}
!97 = distinct !{!97, !96, !"_ZN5boost10filesystem6detail12_GLOBAL__N_114dir_itr_createERNS_13intrusive_ptrINS1_11dir_itr_impEEERKNS0_4pathENS0_17directory_optionsEPNS1_25directory_iterator_paramsERS7_RNS0_11file_statusESF_: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!99 = distinct !{!99, !98, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!100 = distinct !{null, null, null, null}
!101 = distinct !{!101, i1 true, !"_ZN5boost10filesystem6detail14open_directoryERKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE"}
!102 = distinct !{!102, !101, !"_ZN5boost10filesystem6detail14open_directoryERKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE: argument 0"}
!103 = distinct !{null, ptr @_ZN5boost10filesystem6detail14open_directoryERKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE, null, null}
!104 = distinct !{!104, !32}
!105 = distinct !{null, null, null}
!106 = distinct !{!106, !32}
!107 = distinct !{!107, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!108 = distinct !{!108, !107, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!109 = !{!97}
!110 = !{!"branch_weights", i32 1073205, i32 2146410443}
!111 = !{!99}
!112 = !{!99, !97}
!113 = !{!102, !97}
!114 = !{!102}
!115 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!116 = !{!108}
!117 = distinct !{!117, !32}
!118 = distinct !{!118, i1 true, !"_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE"}
!119 = distinct !{!119, !118, !"_ZN5boost10filesystem6detail12_GLOBAL__N_113dir_itr_closeERNS1_11dir_itr_impE: argument 0"}
!120 = !{!"branch_weights", i32 1430941, i32 2144621765, i32 1430941}
!121 = !{!119}
!122 = !{!"short", !11, i64 0}
!123 = !{!"_ZTS6dirent", !19, i64 0, !19, i64 8, !122, i64 16, !11, i64 18, !11, i64 19}
!124 = !{!123, !11, i64 18}
!125 = distinct !{!125, !32}
!126 = distinct !{!126, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!127 = distinct !{!127, !126, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!128 = !{i64 0, i64 12, !23, i64 12, i64 8, !20}
!129 = !{!"branch_weights", i32 4292816, i32 -4292817}
!130 = !{!127}
!131 = distinct !{!131, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!132 = distinct !{!132, !131, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_"}
!134 = distinct !{!134, !133, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!135 = distinct !{!135, !133, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!136 = distinct !{!136, !32, !75, !76}
!137 = distinct !{!137, !32, !76, !75}
!138 = distinct !{!138, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!139 = distinct !{!139, !138, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!140 = !{!42, !12, i64 0}
!141 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!142 = !{!132}
!143 = !{!134}
!144 = !{!135}
!145 = !{!139}
!146 = !{!"branch_weights", i32 4292820, i32 -4292821}
!147 = distinct !{null, null, null, null}
!148 = distinct !{!148, i1 true, !"_ZN5boost10filesystem6detail15path_algorithms11filename_v4ERKNS0_4pathE"}
!149 = distinct !{!149, !148, !"_ZN5boost10filesystem6detail15path_algorithms11filename_v4ERKNS0_4pathE: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZN5boost10filesystem6detail15path_algorithms11filename_v4ERKNS0_4pathE"}
!151 = distinct !{!151, !150, !"_ZN5boost10filesystem6detail15path_algorithms11filename_v4ERKNS0_4pathE: argument 0"}
!152 = distinct !{!152, i1 true, !"_ZN5boost10filesystem6detail16openat_directoryEiRKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE"}
!153 = distinct !{!153, !152, !"_ZN5boost10filesystem6detail16openat_directoryEiRKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE: argument 0"}
!154 = distinct !{null, ptr @_ZN5boost10filesystem6detail16openat_directoryEiRKNS0_4pathENS0_17directory_optionsERNS_6system10error_codeE, null, null}
!155 = distinct !{null, null, null}
!156 = distinct !{!156, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!157 = distinct !{!157, !156, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!158 = distinct !{null, null, null, null}
!159 = distinct !{!159, i1 true, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE"}
!160 = distinct !{!160, !159, !"_ZN5boost6system4errc15make_error_codeENS1_6errc_tE: argument 0"}
!161 = !{!69, !69, i64 0}
!162 = !{!"branch_weights", i32 -4292817, i32 4292816}
!163 = !{!149}
!164 = !{!"branch_weights", i32 -2146410, i32 2146410}
!165 = !{!151}
!166 = !{!153}
!167 = !{!157}
!168 = !{!160}
!169 = !{!"branch_weights", i32 3219345, i32 -3219346}
!170 = !{!"branch_weights", i32 2146410, i32 -2146410}
!171 = distinct !{!171, i1 true, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei"}
!172 = distinct !{!172, !171, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei: argument 0"}
!173 = distinct !{!173, i1 true, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!174 = distinct !{!174, !173, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!175 = !{!172}
!176 = !{!174}
!177 = !{!174, !172}
!178 = distinct !{null}
!179 = !{!57, !57, i64 0}
!180 = distinct !{null}
!181 = distinct !{!181, i1 true, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_"}
!182 = distinct !{!182, !181, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!183 = distinct !{!183, !181, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!184 = distinct !{!184, !32, !75, !76}
!185 = distinct !{!185, !32, !76, !75}
!186 = distinct !{!186, i1 true, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_"}
!187 = distinct !{!187, !186, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!188 = distinct !{!188, !186, !"_ZSt19__relocate_object_aIN5boost10filesystem18directory_iteratorES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!189 = distinct !{!189, i1 false, !"LVerDomain"}
!190 = distinct !{!190, !189}
!191 = distinct !{!191, !189}
!192 = distinct !{!192, !32, !75, !76}
!193 = distinct !{!193, !32, !75}
!194 = !{!182}
!195 = !{!183}
!196 = !{!187}
!197 = !{!188}
!198 = !{!188, !190}
!199 = !{!187, !191}
!200 = !{!190}
end_hunk_1
