Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/chat?download=true
inline.NumInlined: 1363
inline.NumDeleted: 545
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10ChatPrompt5inputERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE:bb.a
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.p, align 8, !tbaa !105
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !101
  %.pre2.i = load ptr, ptr %i.e, align 8, !tbaa !103
  %.pre3.i = zext i32 %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ], [ %i.d, %bb.c ]
  %i.ah = phi ptr [ %.pre2.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ], [ %i.h, %bb.c ]
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %.pre-phi.i
  br label %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit

_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit:       ; preds = %bb.b, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.ai, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !106
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !75 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %bb.h, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmRKS4_.exit

bb.h:                                             ; preds = %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23, i64 noundef %i.al, i64 noundef %i.an) #29
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmRKS4_.exit: ; preds = %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !75
  %i.ar = load ptr, ptr %1, align 8, !tbaa !74
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 noundef %i.al, i64 noundef 0, ptr noundef %i.ar, i64 noundef %i.aq) ; 0 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !75
  %i.au = load i32, ptr %i.aj, align 8, !tbaa !106
  %i.av = trunc i64 %i.at to i32
  %i.aw = add i32 %i.au, %i.av                    ; 3 uses
  store i32 %i.aw, ptr %i.aj, align 8, !tbaa !106
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !101
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !103 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 72
  %.not.i.i = icmp ugt i64 %i.be, %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %i.ay
  %i.bh = select i1 %.not.i.i, ptr %i.bg, ptr %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !75
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !107 ; 3 uses
  %.not.not.i = icmp sgt i32 %i.bm, %i.bk
  br i1 %.not.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmRKS4_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.bn, align 4, !tbaa !108
  br label %_ZN10ChatPrompt9clampViewEv.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertEmRKS4_.exit
  %i.bo = add nsw i32 %i.bk, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !108
  %i.br = sub i32 %i.bo, %i.bm
  %..i = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.br)
  %i.bs = call i32 @llvm.smin.i32(i32 %..i, i32 %i.aw)
  %reass.sub.i = add i32 %i.aw, 1
  %i.bt = sub i32 %reass.sub.i, %i.bm
  %i.bu = call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bt)
  %i.bv = call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !108
  br label %_ZN10ChatPrompt9clampViewEv.exit

_ZN10ChatPrompt9clampViewEv.exit:                 ; preds = %bb.i, %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.bw, align 8, !tbaa !109
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.bx, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatPrompt12addToHistoryERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string.32", align 8 ; 13 uses
  %3 = alloca %"struct.ChatPrompt::HistoryEntry", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !101, !noalias !146
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 17 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102, !noalias !146
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !103, !noalias !146 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 72
  %.not.i.i = icmp ugt i64 %i.m, %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.e
  %i.p = select i1 %.not.i.i, ptr %i.o, ptr %i.n  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !78, !alias.scope !146
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !146
  store i64 %i.t, ptr %i.b, align 8, !tbaa !44, !noalias !146
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !74, !alias.scope !146
  %i.w = load i64, ptr %i.b, align 8, !tbaa !44, !noalias !146 ; 2 uses
  store i64 %i.w, ptr %i.q, align 8, !tbaa !47, !alias.scope !146
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.x = phi i64 [ %i.w, %.noexc.i.i ], [ %i.t, %bb.a ] ; 2 uses
  %i.y = phi ptr [ %i.v, %.noexc.i.i ], [ %i.q, %bb.a ] ; 4 uses
  switch i64 %i.t, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i32, ptr %i.r, align 4, !tbaa !80
  store i32 %i.z, ptr %i.y, align 4, !tbaa !80
  br label %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = call ptr @wmemcpy(ptr noundef %i.y, ptr noundef %i.r, i64 noundef %i.t) #26 ; 0 uses
  %.pre6.i.i.i = load i64, ptr %i.b, align 8, !tbaa !44, !noalias !146
  %.pre7.i.i.i = load ptr, ptr %2, align 8, !tbaa !74, !alias.scope !146
  br label %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit

_ZNK10ChatPrompt7getLineB5cxx11Ev.exit:           ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.ab = phi ptr [ %i.y, %._crit_edge.i.i.i ], [ %i.y, %bb.b ], [ %.pre7.i.i.i, %bb.c ]
  %i.ac = phi i64 [ %i.x, %._crit_edge.i.i.i ], [ %i.x, %bb.b ], [ %.pre6.i.i.i, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !75, !alias.scope !146
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 0, ptr %i.ae, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !146
  %i.af = load i32, ptr %i.c, align 8, !tbaa !101
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !103 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 72
  %i.an = icmp ugt i64 %i.am, %i.ag
  br i1 %i.an, label %bb.d, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.d:                                             ; preds = %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %i.ag ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !105, !range !49, !noundef !92
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !75 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !75
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.f
  %i.az = load ptr, ptr %1, align 8, !tbaa !74
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.bb = call i32 @wmemcmp(ptr noundef %i.ba, ptr noundef %i.az, i64 noundef %i.au) #30
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.f, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSERKS4_.exit unwind label %bb.q

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSERKS4_.exit: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bd = load i8, ptr %i.aq, align 8, !tbaa !105, !range !49, !noundef !92
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.g, label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSESt9nullopt_t.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSERKS4_.exit
  store i8 0, ptr %i.aq, align 8, !tbaa !105
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !74 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !47
  %i.bj = shl i64 %i.bi, 2
  %i.bk = add i64 %i.bj, 4
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bk) #27
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSESt9nullopt_t.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSESt9nullopt_t.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.bm = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %i.bl, ptr nonnull %i.ao, ptr nonnull align 8 dereferenceable(72) %i.ao)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit unwind label %bb.q ; 2 uses

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSESt9nullopt_t.exit
  %.not = icmp eq ptr %i.bm, %i.ao
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !111 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72 ; 2 uses
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !111 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN10ChatPrompt12HistoryEntryES5_EET0_T_S7_S6_(ptr noundef nonnull %i.bs, ptr noundef %i.bt, ptr noundef %i.br) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = phi ptr [ %.pre.i.i, %bb.i ], [ %i.bt, %bb.h ] ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -72 ; 2 uses
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !102
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !105, !range !49, !noundef !92
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 -40
  store i8 0, ptr %i.bx, align 8, !tbaa !105
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !74 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bv, i64 -24 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !47
  %i.cf = shl i64 %i.ce, 2
  %i.cg = add i64 %i.cf, 4
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cg) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.j
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !74 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.bv, i64 -56 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.sink.split

bb.l:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.cm = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr nonnull %i.ck, ptr %i.cl, ptr nonnull align 8 dereferenceable(72) %i.ao)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit31 unwind label %bb.q

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit31: ; preds = %bb.l
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !111 ; 4 uses
  %.not84 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not84, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit31
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !111 ; 2 uses
  %i.cp = ptrtoint ptr %i.ao to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.ct, %i.cn
  br i1 %.not.i.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN10ChatPrompt12HistoryEntryES5_EET0_T_S7_S6_(ptr noundef nonnull %i.ct, ptr noundef %i.cn, ptr noundef %i.cs) ; 0 uses
  %.pre.i.i33 = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = phi ptr [ %.pre.i.i33, %bb.n ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -72 ; 2 uses
  store ptr %i.cw, ptr %i.g, align 8, !tbaa !102
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -8 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !105, !range !49, !noundef !92
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 -40
  store i8 0, ptr %i.cx, align 8, !tbaa !105
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !74 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cv, i64 -24 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i37: ; preds = %bb.p
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !47
  %i.df = shl i64 %i.de, 2
  %i.dg = add i64 %i.df, 4
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.dg) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i37, %bb.o
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !74 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.cv, i64 -56 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.sink.split

bb.q:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSESt9nullopt_t.exit, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.sink.split: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i
  %.sink144.in = phi ptr [ %i.ci, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i ], [ %i.di, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34 ]
  %.sink = phi ptr [ %i.ch, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i ], [ %i.dh, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34 ]
  %.sink144 = load i64, ptr %.sink144.in, align 8, !tbaa !47
  %i.dl = shl i64 %.sink144, 2
  %i.dm = add i64 %i.dl, 4
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dm) #27
  br label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit.sink.split, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i34, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i, %bb.e, %bb.d, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit31, %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !75 ; 8 uses
  %i.dp = icmp eq i64 %i.do, 0
  %.pre88 = load ptr, ptr %i.g, align 8, !tbaa !102 ; 5 uses
  %.pre90 = load ptr, ptr %i.f, align 8, !tbaa !103 ; 3 uses
  br i1 %i.dp, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.dq = icmp eq ptr %.pre88, %.pre90
  br i1 %i.dq, label %._ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge, label %bb.s

._ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge: ; preds = %bb.r
  %.pre = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds i8, ptr %.pre88, i64 -64
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !75
  %i.dt = icmp eq i64 %i.ds, %i.do
  %.pre86 = load ptr, ptr %1, align 8, !tbaa !74  ; 3 uses
  br i1 %i.dt, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.s
  %i.du = getelementptr inbounds i8, ptr %.pre88, i64 -72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.dw = call i32 @wmemcmp(ptr noundef %i.dv, ptr noundef %.pre86, i64 noundef %i.do) #30
  %.not85 = icmp eq i32 %i.dw, 0
  br i1 %.not85, label %bb.ac, label %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %._ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge, %bb.s, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dx = phi ptr [ %.pre, %._ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread_crit_edge ], [ %.pre86, %bb.s ], [ %.pre86, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.dy, ptr %3, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.do, ptr %i.a, align 8, !tbaa !44
  %i.dz = icmp ugt i64 %i.do, 3
  br i1 %i.dz, label %.noexc.i.i43, label %._crit_edge.i.i.i40

.noexc.i.i43:                                     ; preds = %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i40.thread unwind label %bb.z ; 2 uses

._crit_edge.i.i.i40.thread:                       ; preds = %.noexc.i.i43
  store ptr %i.ea, ptr %3, align 8, !tbaa !74
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.eb, ptr %i.dy, align 8, !tbaa !47
  br label %bb.u

._crit_edge.i.i.i40:                              ; preds = %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %cond = icmp eq i64 %i.do, 1
  br i1 %cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i40
  %i.ec = load i32, ptr %i.dx, align 4, !tbaa !80
  store i32 %i.ec, ptr %i.dy, align 8, !tbaa !80
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i40.thread, %._crit_edge.i.i.i40
  %i.ed = phi ptr [ %i.ea, %._crit_edge.i.i.i40.thread ], [ %i.dy, %._crit_edge.i.i.i40 ]
  %i.ee = call ptr @wmemcpy(ptr noundef %i.ed, ptr noundef %i.dx, i64 noundef %i.do) #26 ; 0 uses
  %.pre6.i.i.i41 = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i.i42 = load ptr, ptr %3, align 8, !tbaa !74
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ef = phi ptr [ %.pre7.i.i.i42, %bb.u ], [ %i.dy, %bb.t ]
  %i.eg = phi i64 [ %.pre6.i.i.i41, %bb.u ], [ %i.do, %bb.t ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !75
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg
  store i32 0, ptr %i.ei, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  store i8 0, ptr %i.ej, align 8, !tbaa !105
  %i.ek = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.em = invoke ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_(ptr %i.ek, ptr %i.el, ptr nonnull align 8 dereferenceable(72) %3)
          to label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit unwind label %bb.aa ; 2 uses

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit: ; preds = %bb.v
  %i.en = load ptr, ptr %i.g, align 8, !tbaa !111 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i45, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.eo = load ptr, ptr %i.f, align 8, !tbaa !111 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.eq, %i.ep
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %_ZSt8_DestroyIN10ChatPrompt12HistoryEntryEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.fj, %_ZSt8_DestroyIN10ChatPrompt12HistoryEntryEEvPT_.exit.i.i.i.i.i ], [ %i.es, %bb.w ] ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !105, !range !49, !noundef !92
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.x, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  store i8 0, ptr %i.et, align 8, !tbaa !105
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !74 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !47
  %i.fb = shl i64 %i.fa, 2
  %i.fc = add i64 %i.fb, 4
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fc) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.fd = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZSt8_DestroyIN10ChatPrompt12HistoryEntryEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i47: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !47
  %i.fh = shl i64 %i.fg, 2
  %i.fi = add i64 %i.fh, 4
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fi) #27
  br label %_ZSt8_DestroyIN10ChatPrompt12HistoryEntryEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN10ChatPrompt12HistoryEntryEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i47
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, %i.en
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN10ChatPrompt12HistoryEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !145

_ZSt8_DestroyIPN10ChatPrompt12HistoryEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN10ChatPrompt12HistoryEntryEEvPT_.exit.i.i.i.i.i
  store ptr %i.es, ptr %i.g, align 8, !tbaa !102
  br label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %_ZSt8_DestroyIPN10ChatPrompt12HistoryEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit
  %i.fk = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE9push_backEOS1_.exit unwind label %bb.aa ; 0 uses

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.fl = load i8, ptr %i.ej, align 8, !tbaa !105, !range !49, !noundef !92
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.y, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i

bb.y:                                             ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE9push_backEOS1_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.ej, align 8, !tbaa !105
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !74 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !47
  %i.fs = shl i64 %i.fr, 2
  %i.ft = add i64 %i.fs, 4
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.ft) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE9push_backEOS1_.exit
  %i.fu = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.dy
  br i1 %i.fv, label %_ZN10ChatPrompt12HistoryEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i
  %i.fw = load i64, ptr %i.dy, align 8, !tbaa !47
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, 4
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #27
  br label %_ZN10ChatPrompt12HistoryEntryD2Ev.exit

_ZN10ChatPrompt12HistoryEntryD2Ev.exit:           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.pre87 = load ptr, ptr %i.g, align 8, !tbaa !102
  %.pre89 = load ptr, ptr %i.f, align 8, !tbaa !103
  br label %bb.ac

bb.z:                                             ; preds = %.noexc.i.i43
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10ChatPrompt12HistoryEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn25.pn = phi { ptr, i32 } [ %i.ga, %bb.aa ], [ %i.fz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.al

bb.ac:                                            ; preds = %_ZN10ChatPrompt12HistoryEntryD2Ev.exit, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.gb = phi ptr [ %.pre89, %_ZN10ChatPrompt12HistoryEntryD2Ev.exit ], [ %.pre90, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.pre90, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ] ; 3 uses
  %i.gc = phi ptr [ %.pre87, %_ZN10ChatPrompt12HistoryEntryD2Ev.exit ], [ %.pre88, %_ZStneIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.pre88, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ] ; 4 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 72
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !100
  %i.gj = zext i32 %i.gi to i64
  %i.gk = icmp ugt i64 %i.gg, %i.gj
  br i1 %i.gk, label %bb.ad, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit57

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 72 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.gl, %i.gc
  br i1 %.not.i.i50, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN10ChatPrompt12HistoryEntryES5_EET0_T_S7_S6_(ptr noundef nonnull %i.gl, ptr noundef %i.gc, ptr noundef %i.gb) ; 0 uses
  %.pre.i.i51 = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gn = phi ptr [ %.pre.i.i51, %bb.ae ], [ %i.gc, %bb.ad ] ; 5 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -72 ; 2 uses
  store ptr %i.go, ptr %i.g, align 8, !tbaa !102
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -8 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !105, !range !49, !noundef !92
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ag, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i52

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds i8, ptr %i.gn, i64 -40
  store i8 0, ptr %i.gp, align 8, !tbaa !105
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !74 ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gn, i64 -24 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i52, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i55: ; preds = %bb.ag
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !47
  %i.gx = shl i64 %i.gw, 2
  %i.gy = add i64 %i.gx, 4
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gy) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i52

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i52: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i55, %bb.af
  %i.gz = load ptr, ptr %i.go, align 8, !tbaa !74 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gn, i64 -56 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit57, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i53: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i52
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !47
  %i.hd = shl i64 %i.hc, 2
  %i.he = add i64 %i.hd, 4
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.he) #27
  br label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit57

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit57: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i.i.i52, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i53, %bb.ac
  %i.hf = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.hg = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 72
  %i.hl = trunc i64 %i.hk to i32
  store i32 %i.hl, ptr %i.c, align 8, !tbaa !101
  %i.hm = load ptr, ptr %i.n, align 8, !tbaa !74  ; 8 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  %i.hp = load ptr, ptr %2, align 8, !tbaa !74    ; 7 uses
  %i.hq = icmp eq ptr %i.hp, %i.q                 ; 2 uses
  %.pre92 = load i64, ptr %i.ad, align 8, !tbaa !75 ; 6 uses
  br i1 %i.ho, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit57
  br i1 %i.hq, label %bb.ah, label %.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit57
  br i1 %i.hq, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.hr = icmp ult i64 %.pre92, 4
  call void @llvm.assume(i1 %i.hr)
  switch i64 %.pre92, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.hs = load i32, ptr %i.hp, align 4, !tbaa !80
  store i32 %i.hs, ptr %i.hm, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ht = call ptr @wmemcpy(ptr noundef %i.hm, ptr noundef %i.hp, i64 noundef %.pre92) #26 ; 0 uses
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !75
  %.pre30.i = load ptr, ptr %i.n, align 8, !tbaa !74
  %.pre31.pre.i = load ptr, ptr %2, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre31.i = phi ptr [ %i.hp, %bb.ah ], [ %.pre31.pre.i, %bb.aj ], [ %i.hp, %bb.ai ]
  %i.hu = phi ptr [ %i.hm, %bb.ah ], [ %.pre30.i, %bb.aj ], [ %i.hm, %bb.ai ]
  %i.hv = phi i64 [ %.pre92, %bb.ah ], [ %.pre.i, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !75
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv
  store i32 0, ptr %i.hx, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.hp, ptr %i.n, align 8, !tbaa !74
  store i64 %.pre92, ptr %i.hy, align 8, !tbaa !75
  %i.hz = load i64, ptr %i.q, align 8, !tbaa !47
  store i64 %i.hz, ptr %i.hn, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i
  %i.ia = load i64, ptr %i.hn, align 8, !tbaa !47
  store ptr %i.hp, ptr %i.n, align 8, !tbaa !74
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.pre92, ptr %i.ib, align 8, !tbaa !75
  %i.ic = load i64, ptr %i.q, align 8, !tbaa !47
  store i64 %i.ic, ptr %i.hn, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.hm, null
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hm, ptr %2, align 8, !tbaa !74
  store i64 %i.ia, ptr %i.q, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i, %bb.ak
  %i.id = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.hm, %bb.ak ] ; 3 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !75
  store i32 0, ptr %i.id, align 4, !tbaa !80
  %i.ie = icmp eq ptr %i.id, %i.q
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit
  %i.if = load i64, ptr %i.q, align 8, !tbaa !47
  %i.ig = shl i64 %i.if, 2
  %i.ih = add i64 %i.ig, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i, %.thread.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.al:                                            ; preds = %bb.q, %bb.ab
  %.pn28 = phi { ptr, i32 } [ %i.dk, %bb.q ], [ %.pn25.pn, %bb.ab ]
  %i.ii = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.q
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58: ; preds = %bb.al
  %i.ik = load i64, ptr %i.q, align 8, !tbaa !47
  %i.il = shl i64 %i.ik, 2
  %i.im = add i64 %i.il, 4
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10ChatPrompt12HistoryEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105, !range !49, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !105
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !47
  %i.i = shl i64 %i.h, 2
  %i.j = add i64 %i.i, 4
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !47
  %i.o = shl i64 %i.n, 2
  %i.p = add i64 %i.o, 4
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatPrompt5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !101
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 72
  %.not.i = icmp ugt i64 %i.l, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.d ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !105, !range !49, !noundef !92
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !78
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !44
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.d
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !74
  %i.y = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  store i64 %i.y, ptr %i.s, align 8, !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i, %bb.d
  %i.z = phi i64 [ %i.y, %.noexc.i.i.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %.noexc.i.i.i.i.i.i ], [ %i.s, %bb.d ] ; 4 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !80
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !80
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ac = call ptr @wmemcpy(ptr noundef %i.aa, ptr noundef %i.t, i64 noundef %i.v) #26 ; 0 uses
  %.pre6.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.aa, %._crit_edge.i.i.i.i.i.i.i ], [ %i.aa, %bb.e ], [ %.pre7.i.i.i.i.i.i.i, %bb.f ]
  %i.ae = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i.i.i ], [ %i.z, %bb.e ], [ %.pre6.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.p, align 8, !tbaa !105
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !101
  %.pre2.i = load ptr, ptr %i.e, align 8, !tbaa !103
  %.pre3.i = zext i32 %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ], [ %i.d, %bb.c ]
  %i.ah = phi ptr [ %.pre2.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEaSIRS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESA_ISt6__and_IJSt9is_scalarIS5_ESB_IS5_NSt5decayISE_E4typeEEEEESt16is_constructibleIS5_JSE_EESt13is_assignableIS8_SE_EEERS6_E4typeEOSE_.exit.i ], [ %i.h, %bb.c ]
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %.pre-phi.i
  br label %_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit

_ZN10ChatPrompt11makeLineRefB5cxx11Ev.exit:       ; preds = %bb.b, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.b ], [ %i.ai, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !75
  %i.ak = load ptr, ptr %.0.i, align 8, !tbaa !74
  store i32 0, ptr %i.ak, align 4, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.al, align 4, !tbaa !108
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.am, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.an, align 8, !tbaa !109
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ao, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatPrompt7replaceERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !101, !noalias !149
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102, !noalias !149
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !103, !noalias !149 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 72
  %.not.i.i = icmp ugt i64 %i.m, %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.e
  %i.p = select i1 %.not.i.i, ptr %i.o, ptr %i.n  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !78, !alias.scope !149
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !74   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !149
  store i64 %i.t, ptr %i.b, align 8, !tbaa !44, !noalias !149
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !74, !alias.scope !149
  %i.w = load i64, ptr %i.b, align 8, !tbaa !44, !noalias !149 ; 2 uses
  store i64 %i.w, ptr %i.q, align 8, !tbaa !47, !alias.scope !149
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.x = phi i64 [ %i.w, %.noexc.i.i ], [ %i.t, %bb.a ] ; 2 uses
  %i.y = phi ptr [ %i.v, %.noexc.i.i ], [ %i.q, %bb.a ] ; 4 uses
  switch i64 %i.t, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i32, ptr %i.r, align 4, !tbaa !80
  store i32 %i.z, ptr %i.y, align 4, !tbaa !80
  br label %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = call ptr @wmemcpy(ptr noundef %i.y, ptr noundef %i.r, i64 noundef %i.t) #26 ; 0 uses
  %.pre6.i.i.i = load i64, ptr %i.b, align 8, !tbaa !44, !noalias !149
  %.pre7.i.i.i = load ptr, ptr %0, align 8, !tbaa !74, !alias.scope !149
  br label %_ZNK10ChatPrompt7getLineB5cxx11Ev.exit

_ZNK10ChatPrompt7getLineB5cxx11Ev.exit:           ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.ab = phi ptr [ %i.y, %._crit_edge.i.i.i ], [ %i.y, %bb.b ], [ %.pre7.i.i.i, %bb.c ]
  %i.ac = phi i64 [ %i.x, %._crit_edge.i.i.i ], [ %i.x, %bb.b ], [ %.pre6.i.i.i, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !75, !alias.scope !149
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 0, ptr %i.ae, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !149
  %i.af = load i32, ptr %i.c, align 8, !tbaa !101
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN10ChatPrompt12HistoryEntryES5_EET0_T_S7_S6_:bb.a
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !75
  %.pre30.i.i = load ptr, ptr %.0812, align 8, !tbaa !74
  %.pre31.pre.i.i = load ptr, ptr %.0910, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.pre31.i.i = phi ptr [ %i.i, %bb.c ], [ %.pre31.pre.i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.q = phi ptr [ %i.f, %bb.c ], [ %.pre30.i.i, %bb.e ], [ %i.f, %bb.d ]
  %i.r = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0812, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  store i32 0, ptr %i.t, align 4, !tbaa !80
  br label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0812, i64 8
  store ptr %i.i, ptr %.0812, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !75
  store i64 %i.w, ptr %i.u, align 8, !tbaa !75
  %i.x = load i64, ptr %i.j, align 8, !tbaa !47
  store i64 %i.x, ptr %i.g, align 8, !tbaa !47
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i
  %i.y = load i64, ptr %i.g, align 8, !tbaa !47
  store ptr %i.i, ptr %.0812, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %.0812, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !75
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !47
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.f, ptr %.0910, align 8, !tbaa !74
  store i64 %i.y, ptr %i.j, align 8, !tbaa !47
  br label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.j, ptr %.0910, align 8, !tbaa !74
  br label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit

_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit:        ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i, %bb.f, %bb.g
  %i.ad = phi ptr [ %.pre31.i.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i ], [ %i.f, %bb.f ], [ %i.j, %bb.g ], [ %i.i, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !75
  store i32 0, ptr %i.ad, align 4, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %.0812, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910, i64 32
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %.0812, i64 72 ; 2 uses
  %i.aj = add nsw i64 %.014, -1
  %i.ak = icmp sgt i64 %.014, 1
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !215
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105, !range !49, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !49
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !74     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !74     ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !75   ; 4 uses
  %i.o = icmp ult i64 %i.n, 4
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.j, align 4, !tbaa !80
  store i32 %i.p, ptr %i.g, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @wmemcpy(ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.n) #26 ; 0 uses
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !75
  %.pre30.i = load ptr, ptr %0, align 8, !tbaa !74
  %.pre31.pre.i = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.pre31.i = phi ptr [ %i.j, %bb.d ], [ %.pre31.pre.i, %bb.f ], [ %i.j, %bb.e ]
  %i.r = phi ptr [ %i.g, %bb.d ], [ %.pre30.i, %bb.f ], [ %i.g, %bb.e ]
  %i.s = phi i64 [ %i.n, %bb.d ], [ %.pre.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.u, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !75
  store i64 %i.x, ptr %i.v, align 8, !tbaa !75
  %i.y = load i64, ptr %i.k, align 8, !tbaa !47
  store i64 %i.y, ptr %i.h, align 8, !tbaa !47
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i
  %i.z = load i64, ptr %i.h, align 8, !tbaa !47
  store ptr %i.j, ptr %0, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !47
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !74
  store i64 %i.z, ptr %i.k, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i, %bb.g, %bb.h
  %i.ae = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !75
  store i32 0, ptr %i.ae, align 4, !tbaa !80
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !78
  %i.ah = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !75 ; 2 uses
  %i.am = icmp ult i64 %i.al, 4
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  %i.ao = tail call ptr @wmemcpy(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai, i64 noundef %i.an) #26 ; 0 uses
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ah, ptr %0, align 8, !tbaa !74
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !47
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !47
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !75
  store ptr %i.ai, ptr %1, align 8, !tbaa !74
  store i64 0, ptr %i.aq, align 8, !tbaa !75
  store i32 0, ptr %i.ai, align 8, !tbaa !80
  store i8 1, ptr %i.a, align 8, !tbaa !105
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 8, !tbaa !105
  %i.at = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !47
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 4
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ay) #27
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN10ChatPrompt12HistoryEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops16_Iter_equals_valIKS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  %.sroa.07.016 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.07.016, %1
  %or.cond = select i1 %i.b, i1 true, i1 %.not17
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.sroa.07.020 = phi ptr [ %.sroa.07.0, %bb.i ], [ %.sroa.07.016, %bb.a ] ; 8 uses
  %.sroa.013.019 = phi ptr [ %.sroa.013.1, %bb.i ], [ %i.a, %bb.a ] ; 12 uses
  %.pn18 = phi ptr [ %.sroa.07.020, %bb.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.c = tail call noundef zeroext i1 @_ZN10ChatPrompt12HistoryEntryeqERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.07.020, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr %.sroa.013.019, align 8, !tbaa !74 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %.sroa.07.020, align 8, !tbaa !74 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn18, i64 88 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pn18, i64 80 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75   ; 4 uses
  %i.l = icmp ult i64 %i.k, 4
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i.i = icmp eq ptr %.sroa.07.020, %.sroa.013.019
  br i1 %.not21.i.i, label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.g, align 4, !tbaa !80
  store i32 %i.m, ptr %i.d, align 4, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @wmemcpy(ptr noundef %i.d, ptr noundef %i.g, i64 noundef %i.k) #26 ; 0 uses
  %.pre.i.i = load i64, ptr %i.j, align 8, !tbaa !75
  %.pre30.i.i = load ptr, ptr %.sroa.013.019, align 8, !tbaa !74
  %.pre31.pre.i.i = load ptr, ptr %.sroa.07.020, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.pre31.i.i = phi ptr [ %i.g, %bb.d ], [ %.pre31.pre.i.i, %bb.f ], [ %i.g, %bb.e ]
  %i.o = phi ptr [ %i.d, %bb.d ], [ %.pre30.i.i, %bb.f ], [ %i.d, %bb.e ]
  %i.p = phi i64 [ %i.k, %bb.d ], [ %.pre.i.i, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  store i32 0, ptr %i.r, align 4, !tbaa !80
  br label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8
  store ptr %i.g, ptr %.sroa.013.019, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %.pn18, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !75
  store i64 %i.u, ptr %i.s, align 8, !tbaa !75
  %i.v = load i64, ptr %i.h, align 8, !tbaa !47
  store i64 %i.v, ptr %i.e, align 8, !tbaa !47
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i
  %i.w = load i64, ptr %i.e, align 8, !tbaa !47
  store ptr %i.g, ptr %.sroa.013.019, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %.pn18, i64 80
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !75
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !47
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.d, ptr %.sroa.07.020, align 8, !tbaa !74
  store i64 %i.w, ptr %i.h, align 8, !tbaa !47
  br label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.h, ptr %.sroa.07.020, align 8, !tbaa !74
  br label %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit

_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit:        ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i, %bb.g, %bb.h
  %i.ab = phi ptr [ %.pre31.i.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i.i ], [ %i.d, %bb.g ], [ %i.h, %bb.h ], [ %i.g, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18, i64 80
  store i64 0, ptr %i.ac, align 8, !tbaa !75
  store i32 0, ptr %i.ab, align 4, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn18, i64 104
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #26
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 72
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit
  %.sroa.013.1 = phi ptr [ %.sroa.013.019, %.lr.ph ], [ %i.af, %_ZN10ChatPrompt12HistoryEntryaSEOS0_.exit ] ; 2 uses
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.020, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !216

.loopexit:                                        ; preds = %bb.i, %bb.a
  %.sroa.013.2 = phi ptr [ %i.a, %bb.a ], [ %.sroa.013.1, %bb.i ]
  ret ptr %.sroa.013.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !78
  %i.f = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = icmp ult i64 %i.j, 4
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  %i.m = tail call ptr @wmemcpy(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i64 noundef %i.l) #26 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !74
  %i.n = load i64, ptr %i.g, align 8, !tbaa !47
  store i64 %i.n, ptr %i.e, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !75
  store ptr %i.g, ptr %1, align 8, !tbaa !74
  store i64 0, ptr %i.o, align 8, !tbaa !75
  store i32 0, ptr %i.g, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !105
  %i.v = load i8, ptr %i.t, align 8, !tbaa !105, !range !49, !noundef !92
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !78
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 4
  tail call void @llvm.assume(i1 %i.ad)
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_:bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !111
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit
  %i.am = phi ptr [ %.pre, %bb.f ], [ %i.al, %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -72
  ret ptr %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !103    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #29
  unreachable

_ZNKSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !78
  %i.s = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  %i.x = icmp ult i64 %i.w, 4
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = tail call ptr @wmemcpy(ptr noundef nonnull %i.r, ptr noundef nonnull %i.t, i64 noundef %i.y) #26 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !74
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !47
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !75
  store ptr %i.t, ptr %2, align 8, !tbaa !74
  store i64 0, ptr %i.ab, align 8, !tbaa !75
  store i32 0, ptr %i.t, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !105
  %i.ai = load i8, ptr %i.ag, align 8, !tbaa !105, !range !49, !noundef !92
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !78
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !74 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !75 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 4
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  %i.as = tail call ptr @wmemcpy(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am, i64 noundef %i.ar) #26 ; 0 uses
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !74
  %i.at = load i64, ptr %i.am, align 8, !tbaa !47
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !47
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !75
  store ptr %i.am, ptr %i.af, align 8, !tbaa !74
  store i64 0, ptr %i.au, align 8, !tbaa !75
  store i32 0, ptr %i.am, align 8, !tbaa !80
  store i8 1, ptr %i.ah, align 8, !tbaa !105
  br label %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit

_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.p, %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.c, %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN10ChatPrompt12HistoryEntryES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !217

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %i.az, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN10ChatPrompt12HistoryEntryES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i18, ptr noundef %.0911.i.i.i19, ptr noundef nonnull align 1 dereferenceable(1) %0) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !217

_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.az, %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN10ChatPrompt12HistoryEntryESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #27
  br label %_ZNSt12_Vector_baseIN10ChatPrompt12HistoryEntryESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN10ChatPrompt12HistoryEntryESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN10ChatPrompt12HistoryEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !103
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !102
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !117
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN10ChatPrompt12HistoryEntryES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !78
  %i.b = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = icmp ult i64 %i.f, 4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  %i.i = tail call ptr @wmemcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef %i.h) #26 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !74
  %i.j = load i64, ptr %i.c, align 8, !tbaa !47
  store i64 %i.j, ptr %i.a, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !75
  store ptr %i.c, ptr %1, align 8, !tbaa !74
  store i64 0, ptr %i.k, align 8, !tbaa !75
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i8 0, ptr %i.q, align 8, !tbaa !105
  %i.r = load i8, ptr %i.p, align 8, !tbaa !105, !range !49, !noundef !92
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !78
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, label %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit.a

_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit.a:      ; preds = %bb.c
  store ptr %i.u, ptr %i.n, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load <2 x i64>, ptr %i.x, align 8, !tbaa !47
  store <2 x i64> %4, ptr %3, align 8, !tbaa !47
  store ptr %i.v, ptr %i.o, align 8, !tbaa !74
  store i64 0, ptr %i.x, align 8, !tbaa !75
  store i32 0, ptr %i.v, align 8, !tbaa !80
  store i8 1, ptr %i.q, align 8, !tbaa !105
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %6 = load i64, ptr %5, align 8, !tbaa !75       ; 2 uses
  %7 = icmp ult i64 %6, 4
  tail call void @llvm.assume(i1 %7)
  %8 = add nuw nsw i64 %6, 1
  %9 = tail call ptr @wmemcpy(ptr noundef nonnull %i.t, ptr noundef nonnull %i.v, i64 noundef %8) #26 ; 0 uses
  %.pre.pre = load i8, ptr %i.p, align 8, !tbaa !105, !range !49
  %10 = trunc nuw i8 %.pre.pre to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %11 = load i64, ptr %i.y, align 8, !tbaa !75
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %11, ptr %12, align 8, !tbaa !75
  store ptr %i.v, ptr %i.o, align 8, !tbaa !74
  store i64 0, ptr %i.y, align 8, !tbaa !75
  store i32 0, ptr %i.v, align 8, !tbaa !80
  store i8 1, ptr %i.q, align 8, !tbaa !105
  br i1 %10, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i

bb.d:                                             ; preds = %_ZN10ChatPrompt12HistoryEntryC2EOS0_.exit.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.p, align 8, !tbaa !105
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !74   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.ad = shl i64 %i.ac, 2
  %i.ae = add i64 %i.ad, 4
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ae) #27
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZN10ChatPrompt12HistoryEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !47
  %i.ai = shl i64 %i.ah, 2
  %i.aj = add i64 %i.ai, 4
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZN10ChatPrompt12HistoryEntryD2Ev.exit

_ZN10ChatPrompt12HistoryEntryD2Ev.exit:           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !116    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !78
  %i.t = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !44
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !74
  %i.y = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  store i64 %i.y, ptr %i.s, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi i64 [ %i.y, %.noexc ], [ %i.v, %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !80
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !80
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = call ptr @wmemcpy(ptr noundef %i.aa, ptr noundef %i.t, i64 noundef %i.v) #26 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i = load ptr, ptr %i.r, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ad = phi ptr [ %i.aa, %._crit_edge.i.i ], [ %i.aa, %bb.c ], [ %.pre7.i.i, %bb.d ]
  %i.ae = phi i64 [ %i.z, %._crit_edge.i.i ], [ %i.z, %bb.c ], [ %.pre6.i.i, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  store i32 0, ptr %i.ag, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !78, !alias.scope !225
  %i.ai = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !74, !alias.scope !226 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !75, !alias.scope !226 ; 2 uses
  %i.an = icmp ult i64 %i.am, 4
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  %i.ap = call ptr @wmemcpy(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj, i64 noundef %i.ao) #26 ; 0 uses
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i, align 8, !tbaa !74, !alias.scope !225
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !47, !alias.scope !226
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !47, !alias.scope !225
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !75, !alias.scope !226
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !75, !alias.scope !225
  store ptr %i.aj, ptr %.0911.i.i.i, align 8, !tbaa !74, !alias.scope !226
  store i64 0, ptr %i.ar, align 8, !tbaa !75, !alias.scope !226
  store i32 0, ptr %i.aj, align 8, !tbaa !80, !alias.scope !226
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !221

_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31
  %.012.i.i.i28 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %i.aw, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i28, align 8, !tbaa !78, !alias.scope !227
  %i.ay = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !74, !alias.scope !228 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !75, !alias.scope !228 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 4
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  %i.bf = call ptr @wmemcpy(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.az, i64 noundef %i.be) #26 ; 0 uses
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ay, ptr %.012.i.i.i28, align 8, !tbaa !74, !alias.scope !227
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !47, !alias.scope !228
  store i64 %i.bg, ptr %i.ax, align 8, !tbaa !47, !alias.scope !227
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !75, !alias.scope !228
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !75, !alias.scope !227
  store ptr %i.az, ptr %.0911.i.i.i29, align 8, !tbaa !74, !alias.scope !228
  store i64 0, ptr %i.bh, align 8, !tbaa !75, !alias.scope !228
  store i32 0, ptr %i.az, align 8, !tbaa !80, !alias.scope !228
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.bk, %i.c
  br i1 %.not.i.i.i32, label %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34, label %.lr.ph.i.i.i27, !llvm.loop !221

_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aw, %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bl, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i31 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.d, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit34
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !115
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bp) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE13_M_deallocateEPS5_m.exit

end_hunk_2
