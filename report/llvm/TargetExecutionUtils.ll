Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetExecutionUtils?download=true
inline.NumInlined: 248
inline.NumDeleted: 155
begin_hunk_0_@_ZN4llvm3orc9runAsMainEPFiiPPcENS_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt8optionalINS_9StringRefEE:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ac = load ptr, ptr %.sroa.090.3, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.q
  store i8 0, ptr %i.ad, align 1, !tbaa !35
  %i.ae = load ptr, ptr %.sroa.090.3, align 8, !tbaa !32
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit:      ; preds = %bb.k, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit
  %.sroa.090.0 = phi ptr [ %.sroa.090.2163, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %.sroa.090.3, %bb.k ] ; 2 uses
  %.sroa.12.0 = phi ptr [ %.sroa.090.2163, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %.sroa.12.3, %bb.k ] ; 2 uses
  %.sroa.30.0 = phi ptr [ %.sroa.30.2164, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %.sroa.30.3, %bb.k ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %i.n, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %i.af, %bb.k ] ; 2 uses
  %.idx = shl nuw nsw i64 %2, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit
  %.sroa.090.1.lcssa = phi ptr [ %.sroa.090.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ], [ %.sroa.090.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ] ; 5 uses
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.12.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ], [ %.sroa.12.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ] ; 2 uses
  %.sroa.30.1.lcssa = phi ptr [ %.sroa.30.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ], [ %.sroa.30.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ]
  %.sroa.071.1.lcssa = phi ptr [ %i.n, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ], [ %.sroa.071.5, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ] ; 4 uses
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ], [ %.sroa.14.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ] ; 3 uses
  %.sroa.26.1.lcssa = phi ptr [ %i.o, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ], [ %.sroa.26.5, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ] ; 2 uses
  %.not.i.i13 = icmp eq ptr %.sroa.14.1.lcssa, %.sroa.26.1.lcssa
  br i1 %.not.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  store ptr null, ptr %.sroa.14.1.lcssa, align 8, !tbaa !32
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

bb.m:                                             ; preds = %._crit_edge
  %i.ah = ptrtoint ptr %.sroa.14.1.lcssa to i64
  %i.ai = ptrtoint ptr %.sroa.071.1.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.n, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i14

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i14: ; preds = %bb.m
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i15, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i16 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i16)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #10 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj
  store ptr null, ptr %i.as, align 8, !tbaa !32
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.o, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i19

bb.o:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %.sroa.071.1.lcssa, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i19

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i19: ; preds = %bb.o, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i14
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.1.lcssa, i64 noundef %i.aj) #11
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.l, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i19
  %.sroa.071.4 = phi ptr [ %i.ar, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i19 ], [ %.sroa.071.1.lcssa, %bb.l ] ; 3 uses
  %.sroa.26.4 = phi ptr [ %i.au, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i19 ], [ %.sroa.26.1.lcssa, %bb.l ]
  %i.av = load i8, ptr %i.a, align 8, !tbaa !23, !range !24, !noundef !25
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = add i64 %2, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = tail call noundef i32 %0(i32 noundef %i.ay, ptr noundef %.sroa.071.4) #12
  %i.ba = ptrtoint ptr %.sroa.26.4 to i64
  %i.bb = ptrtoint ptr %.sroa.071.4 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.4, i64 noundef %i.bc) #11
  %.not4.i.i.i = icmp eq ptr %.sroa.090.1.lcssa, %.sroa.12.1.lcssa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %.sroa.090.1.lcssa, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit ] ; 2 uses
  %i.bd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #11
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.be, %.sroa.12.1.lcssa
  br i1 %.not.i.i.i21, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.sroa.090.1.lcssa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.bf = ptrtoint ptr %.sroa.30.1.lcssa to i64
  %i.bg = ptrtoint ptr %.sroa.090.1.lcssa to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.1.lcssa, i64 noundef %i.bh) #11
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.p
  ret i32 %i.az

.lr.ph:                                           ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34
  %.0139 = phi ptr [ %i.dr, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %1, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %.sroa.26.1138 = phi ptr [ %.sroa.26.5, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %i.o, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %.sroa.14.1137 = phi ptr [ %.sroa.14.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %.sroa.14.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %.sroa.071.1136 = phi ptr [ %.sroa.071.5, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %i.n, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %.sroa.30.1135 = phi ptr [ %.sroa.30.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %.sroa.30.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 5 uses
  %.sroa.12.1134 = phi ptr [ %.sroa.12.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %.sroa.12.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %.sroa.090.1133 = phi ptr [ %.sroa.090.4, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34 ], [ %.sroa.090.0, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ] ; 11 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0139, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #10, !noalias !40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !40
  %.not.i.i22 = icmp eq ptr %.sroa.12.1134, %.sroa.30.1135
  br i1 %.not.i.i22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.bm = ptrtoint ptr %i.bl to i64
  store i64 %i.bm, ptr %.sroa.12.1134, align 8, !tbaa !32
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit26

bb.r:                                             ; preds = %.lr.ph
  %i.bn = ptrtoint ptr %.sroa.30.1135 to i64      ; 3 uses
  %i.bo = ptrtoint ptr %.sroa.090.1133 to i64     ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i43

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
  unreachable

_ZNKSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i43: ; preds = %bb.r
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i44 = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i44, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i45 = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i45)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #10 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  %i.bz = ptrtoint ptr %i.bl to i64
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !32
  %.not10.i.i.i.i46 = icmp eq ptr %.sroa.090.1133, %.sroa.30.1135
  br i1 %.not10.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i58, label %.lr.ph.i.i.i.i47.preheader

.lr.ph.i.i.i.i47.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i43
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i47.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i47.preheader
  %scevgep = getelementptr i8, ptr %i.bx, i64 8
  %i.ce = add i64 %i.bn, -8
  %i.cf = sub i64 %i.ce, %i.bo
  %i.cg = and i64 %i.cf, -8                       ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep, i64 %i.cg
  %scevgep172 = getelementptr i8, ptr %.sroa.090.1133, i64 8
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.cg
  %bound0 = icmp ult ptr %i.bx, %scevgep173
  %bound1 = icmp ult ptr %.sroa.090.1133, %scevgep171
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i47.preheader177, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cd, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bx, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.090.1133, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.ck ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.sroa.090.1133, i64 %i.ck ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cl = getelementptr i8, ptr %next.gep174, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep174, align 8, !tbaa !32, !alias.scope !43, !noalias !41
  %wide.load175 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !32, !alias.scope !43, !noalias !41
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !32, !alias.scope !44, !noalias !43
  store <2 x i64> %wide.load175, ptr %i.cm, align 8, !tbaa !32, !alias.scope !44, !noalias !43
  %i.cn = getelementptr i8, ptr %next.gep174, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep174, align 8, !tbaa !32, !alias.scope !43, !noalias !41
  store <2 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !32, !alias.scope !43, !noalias !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i58, label %.lr.ph.i.i.i.i47.preheader177

.lr.ph.i.i.i.i47.preheader177:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i47.preheader, %middle.block
  %.012.i.i.i.i48.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.i.i.i.i47.preheader ], [ %i.ci, %middle.block ]
  %.0911.i.i.i.i49.ph = phi ptr [ %.sroa.090.1133, %vector.memcheck ], [ %.sroa.090.1133, %.lr.ph.i.i.i.i47.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %.lr.ph.i.i.i.i47.preheader177, %.lr.ph.i.i.i.i47
  %.012.i.i.i.i48 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i47 ], [ %.012.i.i.i.i48.ph, %.lr.ph.i.i.i.i47.preheader177 ] ; 2 uses
  %.0911.i.i.i.i49 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i47 ], [ %.0911.i.i.i.i49.ph, %.lr.ph.i.i.i.i47.preheader177 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.cp = load i64, ptr %.0911.i.i.i.i49, align 8, !tbaa !32, !alias.scope !42, !noalias !41
  store i64 %i.cp, ptr %.012.i.i.i.i48, align 8, !tbaa !32, !alias.scope !41, !noalias !42
  store ptr null, ptr %.0911.i.i.i.i49, align 8, !tbaa !32, !alias.scope !42, !noalias !41
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i49, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i48, i64 8 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.cq, %.sroa.30.1135
  br i1 %.not.i.i.i.i50, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i58, label %.lr.ph.i.i.i.i47, !llvm.loop !20

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i58: ; preds = %.lr.ph.i.i.i.i47, %middle.block, %_ZNKSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i43
  %.0.lcssa.i.i.i.i52 = phi ptr [ %i.bx, %_ZNKSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i43 ], [ %i.ci, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i47 ] ; 2 uses
  %.not.i23.i60 = icmp eq ptr %.sroa.090.1133, null
  br i1 %.not.i23.i60, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i58
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.090.1133, i64 noundef %i.bp) #11
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i58, %bb.t
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  %.pre148 = load ptr, ptr %.0.lcssa.i.i.i.i52, align 8, !tbaa !32
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit26

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit26: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62, %bb.q
  %i.ct = phi ptr [ %.pre148, %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62 ], [ %i.bl, %bb.q ] ; 2 uses
  %.sroa.090.4 = phi ptr [ %i.bx, %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62 ], [ %.sroa.090.1133, %bb.q ] ; 2 uses
  %.0.lcssa.i.i.i.i52.pn = phi ptr [ %.0.lcssa.i.i.i.i52, %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62 ], [ %.sroa.12.1134, %bb.q ] ; 3 uses
  %.sroa.30.4 = phi ptr [ %i.cs, %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit62 ], [ %.sroa.30.1135, %bb.q ] ; 2 uses
  %.sroa.12.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i52.pn, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %.0139, align 8, !tbaa !47 ; 2 uses
  %i.cv = load i64, ptr %i.bi, align 8, !tbaa !39 ; 3 uses
  %i.cw = icmp sgt i64 %i.cv, 1
  br i1 %i.cw, label %bb.u, label %bb.v, !prof !34

bb.u:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZN4llvm4copyIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEET0_OT_SA_.exit

bb.v:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit26
  %i.cx = icmp eq i64 %i.cv, 1
  br i1 %i.cx, label %bb.w, label %_ZN4llvm4copyIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEET0_OT_SA_.exit

bb.w:                                             ; preds = %bb.v
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !35
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !35
  br label %_ZN4llvm4copyIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEET0_OT_SA_.exit

_ZN4llvm4copyIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEET0_OT_SA_.exit: ; preds = %bb.u, %bb.v, %bb.w
  %i.cz = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.da = load ptr, ptr %.0.lcssa.i.i.i.i52.pn, align 8, !tbaa !32
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 0, ptr %i.db, align 1, !tbaa !35
  %i.dc = load ptr, ptr %.0.lcssa.i.i.i.i52.pn, align 8, !tbaa !32 ; 2 uses
  %.not.i.i27 = icmp eq ptr %.sroa.14.1137, %.sroa.26.1138
  br i1 %.not.i.i27, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm4copyIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEET0_OT_SA_.exit
  store ptr %i.dc, ptr %.sroa.14.1137, align 8, !tbaa !32
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34

bb.y:                                             ; preds = %_ZN4llvm4copyIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEET0_OT_SA_.exit
  %i.dd = ptrtoint ptr %.sroa.26.1138 to i64
  %i.de = ptrtoint ptr %.sroa.071.1136 to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 6 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.z, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.y
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #10 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  store ptr %i.dc, ptr %i.do, align 8, !tbaa !32
  %i.dp = icmp sgt i64 %i.df, 0
  br i1 %i.dp, label %bb.aa, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33

bb.aa:                                            ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %.sroa.071.1136, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33: ; preds = %bb.aa, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.1136, i64 noundef %i.df) #11
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit34:    ; preds = %bb.x, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33
  %.sroa.071.5 = phi ptr [ %i.dn, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33 ], [ %.sroa.071.1136, %bb.x ] ; 2 uses
  %.pn = phi ptr [ %i.do, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33 ], [ %.sroa.14.1137, %bb.x ]
  %.sroa.26.5 = phi ptr [ %i.dq, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i33 ], [ %.sroa.26.1138, %bb.x ] ; 2 uses
  %.sroa.14.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0139, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.dr, %i.ag
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm3orc17runAsVoidFunctionEPFivE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 %0() #12
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm3orc16runAsIntFunctionEPFiiEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 %0(i32 noundef %1) #12
  ret i32 %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!9 = distinct !{!9, !8, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!10 = distinct !{!10, !36}
!11 = distinct !{!11, i1 false, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!12 = distinct !{!12, !11, !"_ZSt11make_uniqueIA_cENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!13 = distinct !{!13, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIA_cSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!14 = distinct !{!14, !13, !"_ZSt19__relocate_object_aISt10unique_ptrIA_cSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !13, !"_ZSt19__relocate_object_aISt10unique_ptrIA_cSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !36, !45, !46}
!20 = distinct !{!20, !36, !45}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm9StringRefEE", !4, i64 0, !21, i64 16}
!23 = !{!22, !21, i64 16}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"any pointer", !4, i64 0}
!27 = !{!"p1 omnipotent char", !26, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSN4llvm9StringRefE", !27, i64 0, !28, i64 8}
!30 = !{!29, !28, i64 8}
!31 = !{!9}
!32 = !{!27, !27, i64 0}
!33 = !{!29, !27, i64 0}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!4, !4, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !28, i64 8, !4, i64 16}
!39 = !{!38, !28, i64 8}
!40 = !{!12}
!41 = !{!14}
!42 = !{!15}
!43 = !{!15, !17}
!44 = !{!14, !18}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!38, !27, i64 0}
end_hunk_0
