inline.NumInlined: 4529
inline.NumDeleted: 1763
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6duckdb21ConjunctionExpression13AddExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE:bb.a

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !151
  %.pre26 = load ptr, ptr %i.o, align 8, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.p = phi ptr [ %.pre26, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 5 uses
  %i.q = phi ptr [ %.pre, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %.sroa.019.024 = phi ptr [ %i.j, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.sroa.019.024, align 8, !tbaa !24
  store i64 %i.r, ptr %i.q, align 8, !tbaa !24
  store ptr null, ptr %.sroa.019.024, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.n, align 8, !tbaa !151
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !154  ; 10 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #27
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #29 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %i.ag = load i64, ptr %.sroa.019.024, align 8, !tbaa !24
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !24
  store ptr null, ptr %.sroa.019.024, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = sub i64 %i.u, %i.v
  %i.ai = add i64 %i.ah, -8                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check53 = icmp ult i64 %i.ai, 56
  br i1 %min.iters.check53, label %.lr.ph.i.i.i.i.i.i.i.preheader68, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep45 = getelementptr i8, ptr %i.ae, i64 8
  %i.al = add i64 %i.u, -8
  %i.am = sub i64 %i.al, %i.v
  %i.an = and i64 %i.am, -8                       ; 2 uses
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.an
  %scevgep47 = getelementptr i8, ptr %i.t, i64 8
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.an
  %bound049 = icmp ult ptr %i.ae, %scevgep48
  %bound150 = icmp ult ptr %i.t, %scevgep46
  %found.conflict51 = and i1 %bound049, %bound150
  br i1 %found.conflict51, label %.lr.ph.i.i.i.i.i.i.i.preheader68, label %vector.ph54

vector.ph54:                                      ; preds = %vector.memcheck44
  %n.vec56 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.ao = shl i64 %n.vec56, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ao
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph54
  %index58 = phi i64 [ 0, %vector.ph54 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %i.ar = shl i64 %index58, 3                     ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.t, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.as = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load61 = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !24, !alias.scope !160, !noalias !155
  %wide.load62 = load <2 x i64>, ptr %i.as, align 8, !tbaa !24, !alias.scope !160, !noalias !155
  %i.at = getelementptr i8, ptr %next.gep59, i64 16
  store <2 x i64> %wide.load61, ptr %next.gep59, align 8, !tbaa !24, !alias.scope !163, !noalias !160
  store <2 x i64> %wide.load62, ptr %i.at, align 8, !tbaa !24, !alias.scope !163, !noalias !160
  %i.au = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !tbaa !24, !alias.scope !160, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !24, !alias.scope !160, !noalias !155
  %index.next63 = add nuw i64 %index58, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.av, label %middle.block64, label %vector.body57, !llvm.loop !165

middle.block64:                                   ; preds = %vector.body57
  %cmp.n65 = icmp eq i64 %i.ak, %n.vec56
  br i1 %cmp.n65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader68

.lr.ph.i.i.i.i.i.i.i.preheader68:                 ; preds = %vector.memcheck44, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block64
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck44 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block64 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck44 ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block64 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader68, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader68 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader68 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !158, !noalias !155
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !155, !noalias !158
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !158, !noalias !155
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !168

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block64, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ap, %middle.block64 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !154
  store ptr %i.az, ptr %i.n, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !153
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.d, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.bb = phi ptr [ %i.p, %bb.d ], [ %i.ba, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.bc = phi ptr [ %i.s, %bb.d ], [ %i.az, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.l
  br i1 %.not, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit18, label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !151 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !153
  %.not.i.i5 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !24
  store ptr null, ptr %1, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !151
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit18

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !154 ; 10 uses
  %i.bm = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i6

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #27
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i6: ; preds = %bb.j
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i7, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i8 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i8)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #29 ; 10 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  %i.by = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !24
  store ptr null, ptr %1, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i9 = icmp eq ptr %i.bl, %i.bg
  br i1 %.not10.i.i.i.i.i.i.i9, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i10.preheader

.lr.ph.i.i.i.i.i.i.i10.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i6
  %i.bz = sub i64 %i.bm, %i.bn
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i10.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i10.preheader
  %i.cd = add i64 %i.bm, -8
  %i.ce = sub i64 %i.cd, %i.bn
  %i.cf = and i64 %i.ce, -8
  %i.cg = add i64 %i.cf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.cg
  %scevgep40 = getelementptr i8, ptr %i.bl, i64 %i.cg
  %bound0 = icmp ult ptr %i.bw, %scevgep40
  %bound1 = icmp ult ptr %i.bl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i10.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bw, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bl, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ck ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.bl, i64 %i.ck ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.cl = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !24, !alias.scope !174, !noalias !169
  %wide.load42 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !24, !alias.scope !174, !noalias !169
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !24, !alias.scope !177, !noalias !174
  store <2 x i64> %wide.load42, ptr %i.cm, align 8, !tbaa !24, !alias.scope !177, !noalias !174
  %i.cn = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !24, !alias.scope !174, !noalias !169
  store <2 x ptr> splat (ptr null), ptr %i.cn, align 8, !tbaa !24, !alias.scope !174, !noalias !169
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i10.preheader69

.lr.ph.i.i.i.i.i.i.i10.preheader69:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i10.preheader, %middle.block
  %.012.i.i.i.i.i.i.i11.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i10.preheader ], [ %i.ci, %middle.block ]
  %.0911.i.i.i.i.i.i.i12.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i10.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i.i10:                           ; preds = %.lr.ph.i.i.i.i.i.i.i10.preheader69, %.lr.ph.i.i.i.i.i.i.i10
  %.012.i.i.i.i.i.i.i11 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i10 ], [ %.012.i.i.i.i.i.i.i11.ph, %.lr.ph.i.i.i.i.i.i.i10.preheader69 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i12 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i10 ], [ %.0911.i.i.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i.i.i10.preheader69 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i12, align 8, !tbaa !24, !alias.scope !172, !noalias !169
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i11, align 8, !tbaa !24, !alias.scope !169, !noalias !172
  store ptr null, ptr %.0911.i.i.i.i.i.i.i12, align 8, !tbaa !24, !alias.scope !172, !noalias !169
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i12, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i11, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i13 = icmp eq ptr %i.cq, %i.bg
  br i1 %.not.i.i.i.i.i.i.i13, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i14, label %.lr.ph.i.i.i.i.i.i.i10, !llvm.loop !180

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i14: ; preds = %.lr.ph.i.i.i.i.i.i.i10, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i6
  %.0.lcssa.i.i.i.i.i.i.i15 = phi ptr [ %i.bw, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i6 ], [ %i.ci, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i10 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i15, i64 8
  %.not.i23.i.i.i16 = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i16, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i17, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i14
  tail call void @_ZdlPv(ptr noundef nonnull %i.bl) #28
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i17

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i17: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i14
  store ptr %i.bw, ptr %i.be, align 8, !tbaa !154
  store ptr %i.cs, ptr %i.bf, align 8, !tbaa !151
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ct, ptr %i.bh, align 8, !tbaa !153
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit18

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit18: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.b, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i17, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !154    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #26, !inline_history !181
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !182

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !154
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21ConjunctionExpressionC2ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(80) initializes((8, 10)) %0, i8 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 6, ptr %i.b, align 1, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !19
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %i.f, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6duckdb21ConjunctionExpressionE, i64 16), ptr %0, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = load i64, ptr %2, align 8, !tbaa !24
  store i64 %i.h, ptr %4, align 8, !tbaa !24
  store ptr null, ptr %2, align 8, !tbaa !24
  invoke void @_ZN6duckdb21ConjunctionExpression13AddExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !24     ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #26, !inline_history !53
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  %i.m = load i64, ptr %3, align 8, !tbaa !24
  store i64 %i.m, ptr %5, align 8, !tbaa !24
  store ptr null, ptr %3, align 8, !tbaa !24
  invoke void @_ZN6duckdb21ConjunctionExpression13AddExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.n = load ptr, ptr %5, align 8, !tbaa !24     ; 3 uses
  %.not.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26, !inline_history !53
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit7: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %.not.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.sink.split

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %.not.i11 = icmp eq ptr %i.u, null
end_hunk_0
