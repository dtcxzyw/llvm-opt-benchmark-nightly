Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context?download=true
inline.NumInlined: 9919
inline.NumDeleted: 2463
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZSt22__merge_without_bufferIPPN3smt6clauseElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_9clause_ltEEEEvT_S9_S9_T0_SA_T1_:bb.a
  %i.av = icmp ugt i32 %i.au, %i.ak               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = xor i64 %i.al, -1
  %i.ay = add nsw i64 %.017.i, %i.ax
  %.112.i = select i1 %i.av, ptr %i.aw, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.av, i64 %i.ay, i64 %i.al   ; 2 uses
  %i.az = icmp sgt i64 %.1.i, 0
  br i1 %i.az, label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !1810

_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.x, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr6573, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ba = sub i64 %.pre-phi, %i.x
  %i.bb = ashr exact i64 %i.ba, 3
  br label %tailrecurse

_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.e
  %i.bc = sdiv i64 %.tr6876, 2                    ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.tr6573, i64 %i.bc ; 2 uses
  %i.be = ptrtoint ptr %.tr72 to i64              ; 3 uses
  %i.bf = sub i64 %i.x, %i.be
  %i.bg = ashr exact i64 %i.bf, 3                 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !875 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 16777215
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !593
  br label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.017.i46 = phi i64 [ %i.bg, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.1.i51, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %.01116.i47 = phi ptr [ %.tr72, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.112.i50, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %i.bq = lshr i64 %.017.i46, 1                   ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.01116.i47, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !875 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, 16777215
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !593
  %i.ca = icmp ugt i32 %i.bp, %i.bz               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cc = xor i64 %i.bq, -1
  %i.cd = add nsw i64 %.017.i46, %i.cc
  %.112.i50 = select i1 %i.ca, ptr %.01116.i47, ptr %i.cb ; 3 uses
  %.1.i51 = select i1 %i.ca, i64 %i.bq, i64 %i.cd ; 2 uses
  %i.ce = icmp sgt i64 %.1.i51, 0
  br i1 %i.ce, label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !1811

_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %.pre79 = ptrtoint ptr %.112.i50 to i64
  br label %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi80 = phi i64 [ %.pre79, %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.be, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.011.lcssa.i43 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr72, %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.cf = sub i64 %.pre-phi80, %i.be
  %i.cg = ashr exact i64 %i.cf, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit
  %.062 = phi ptr [ %i.z, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %.011.lcssa.i43, %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.bd, %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.bb, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.bc, %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.y, %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.cg, %_ZSt13__upper_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.ch = tail call noundef ptr @_ZNSt3_V28__rotateIPPN3smt6clauseEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6573, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPPN3smt6clauseElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_9clause_ltEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr72, ptr noundef %.062, ptr noundef %i.ch, i64 noundef %.0, i64 noundef %.036)
  %i.ci = sub nsw i64 %.tr6775, %.0               ; 2 uses
  %i.cj = sub nsw i64 %.tr6876, %.036             ; 2 uses
  %i.ck = icmp eq i64 %i.ci, 0
  %i.cl = icmp eq i64 %i.cj, 0
  %or.cond = or i1 %i.ck, %i.cl
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPPN3smt6clauseEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check174, label %.lr.ph.i.preheader190, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep169 = getelementptr i8, ptr %1, i64 %i.s
  %bound0170 = icmp ult ptr %0, %scevgep169
  %bound1171 = icmp ult ptr %1, %scevgep168
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader190, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck167
  %n.vec176 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec176, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.w = shl i64 %index178, 3                     ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep180 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load181 = load <2 x ptr>, ptr %next.gep180, align 8, !tbaa !875, !alias.scope !1812, !noalias !1815
  %wide.load182 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !875, !alias.scope !1812, !noalias !1815
  %i.y = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load183 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !875, !alias.scope !1815
  %wide.load184 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !875, !alias.scope !1815
  store <2 x ptr> %wide.load183, ptr %next.gep180, align 8, !tbaa !875, !alias.scope !1812, !noalias !1815
  store <2 x ptr> %wide.load184, ptr %i.x, align 8, !tbaa !875, !alias.scope !1812, !noalias !1815
  store <2 x ptr> %wide.load181, ptr %next.gep179, align 8, !tbaa !875, !alias.scope !1815
  store <2 x ptr> %wide.load182, ptr %i.y, align 8, !tbaa !875, !alias.scope !1815
  %index.next185 = add nuw i64 %index178, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.z, label %middle.block186, label %vector.body177, !llvm.loop !1817

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.o, %n.vec176
  br i1 %cmp.n187, label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.preheader190

.lr.ph.i.preheader190:                            ; preds = %vector.memcheck167, %.lr.ph.i.preheader, %middle.block186
  %.010.i.ph = phi ptr [ %1, %vector.memcheck167 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block186 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck167 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block186 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader190, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %i.aa = load ptr, ptr %.079.i, align 8, !tbaa !875
  %i.ab = load ptr, ptr %.010.i, align 8, !tbaa !875
  store ptr %i.ab, ptr %.079.i, align 8, !tbaa !875
  store ptr %i.aa, ptr %.010.i, align 8, !tbaa !875
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %.lr.ph.i, !llvm.loop !1818

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ag = sub nsw i64 %.086, %.082                ; 10 uses
  %i.ah = icmp slt i64 %.082, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.082, 1
  br i1 %i.ai, label %_ZSt4moveIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %bb.g

_ZSt4moveIPPN3smt6clauseES3_ET0_T_S5_S4_.exit:    ; preds = %bb.f
  %i.aj = load ptr, ptr %.058, align 8, !tbaa !875
  %i.ak = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nsw i64 %.086, 3                  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !875
  br label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.ap = shl i64 %.086, 3
  %i.aq = sub i64 %.086, %.082
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.ap
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.058, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !tbaa !875, !alias.scope !1819, !noalias !1822
  %wide.load139 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !875, !alias.scope !1819, !noalias !1822
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !875, !alias.scope !1822
  %wide.load141 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !875, !alias.scope !1822
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !tbaa !875, !alias.scope !1819, !noalias !1822
  store <2 x ptr> %wide.load141, ptr %i.aw, align 8, !tbaa !875, !alias.scope !1819, !noalias !1822
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !875, !alias.scope !1822
  store <2 x ptr> %wide.load139, ptr %i.ax, align 8, !tbaa !875, !alias.scope !1822
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1824

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader191

.lr.ph110.preheader191:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph110.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.086, %.082
  %xtraiter199 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader191, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.be, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader191 ]
  %.055107.prol = phi ptr [ %i.bd, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bc, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader191 ]
  %i.ba = load ptr, ptr %.159106.prol, align 8, !tbaa !875
  %i.bb = load ptr, ptr %.055107.prol, align 8, !tbaa !875
  store ptr %i.bb, ptr %.159106.prol, align 8, !tbaa !875
  store ptr %i.ba, ptr %.055107.prol, align 8, !tbaa !875
  %i.bc = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1825

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader191
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader191 ], [ %i.be, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader191 ], [ %i.bd, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %i.bf = sub i64 %.054108.ph, %.086
  %i.bg = add i64 %i.bf, %.082
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bx, %.lr.ph110 ]
  %i.bi = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bi, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bz, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.by, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bx, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.159106, align 8, !tbaa !875
  %i.bk = load ptr, ptr %.055107, align 8, !tbaa !875
  store ptr %i.bk, ptr %.159106, align 8, !tbaa !875
  store ptr %i.bj, ptr %.055107, align 8, !tbaa !875
  %i.bl = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !875
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !875
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !875
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !875
  %i.bp = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.055107, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !875
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !875
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !875
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !875
  %i.bt = getelementptr inbounds nuw i8, ptr %.159106, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.055107, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !875
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !875
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !875
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !875
  %i.bx = getelementptr inbounds nuw i8, ptr %.159106, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055107, i64 32
  %i.bz = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1826

bb.h:                                             ; preds = %._crit_edge111
  %i.ca = sub nsw i64 %.082, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.058, i64 %.086 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !875
  %.idx = shl nsw i64 %.086, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !1648

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.058, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIPPN3smt6clauseES3_ET0_T_S5_S4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIPPN3smt6clauseES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.058, align 8, !tbaa !875
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !875
  br label %_ZSt13move_backwardIPPN3smt6clauseES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN3smt6clauseES3_ET0_T_S5_S4_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.058, align 8, !tbaa !875
  br label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.082, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check150 = icmp ult i64 %.082, 6
  br i1 %min.iters.check150, label %.lr.ph.preheader192, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.086, %.082
  %i.cq = shl i64 %i.cp, 3
  %scevgep145 = getelementptr i8, ptr %.058, i64 %i.cq
  %bound0146 = icmp ult ptr %.058, %i.cc
  %bound1147 = icmp ult ptr %scevgep145, %i.cn
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.preheader192, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec152 = and i64 %.082, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec152, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next161, %vector.body153 ] ; 2 uses
  %i.cu = mul i64 %index154, -8                   ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep156, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep156, i64 -32 ; 2 uses
  %wide.load157 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !875, !alias.scope !1827, !noalias !1830
  %wide.load158 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !875, !alias.scope !1827, !noalias !1830
  %i.cx = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep155, i64 -32 ; 2 uses
  %wide.load159 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !875, !alias.scope !1830
  %wide.load160 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !875, !alias.scope !1830
  store <2 x ptr> %wide.load159, ptr %i.cv, align 8, !tbaa !875, !alias.scope !1827, !noalias !1830
  store <2 x ptr> %wide.load160, ptr %i.cw, align 8, !tbaa !875, !alias.scope !1827, !noalias !1830
  store <2 x ptr> %wide.load157, ptr %i.cx, align 8, !tbaa !875, !alias.scope !1830
  store <2 x ptr> %wide.load158, ptr %i.cy, align 8, !tbaa !875, !alias.scope !1830
  %index.next161 = add nuw i64 %index154, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.cz, label %middle.block162, label %vector.body153, !llvm.loop !1832

middle.block162:                                  ; preds = %vector.body153
  %cmp.n163 = icmp eq i64 %.082, %n.vec152
  br i1 %cmp.n163, label %._crit_edge, label %.lr.ph.preheader192

.lr.ph.preheader192:                              ; preds = %vector.memcheck144, %.lr.ph.preheader, %middle.block162
  %.0105.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.preheader ], [ %n.vec152, %middle.block162 ] ; 3 uses
  %.052104.ph = phi ptr [ %i.cc, %vector.memcheck144 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block162 ] ; 2 uses
  %.260103.ph = phi ptr [ %i.cn, %vector.memcheck144 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block162 ] ; 2 uses
  %xtraiter = and i64 %.082, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader192, %.lr.ph.prol
  %.0105.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.0105.ph, %.lr.ph.preheader192 ]
  %.052104.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.052104.ph, %.lr.ph.preheader192 ]
  %.260103.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.260103.ph, %.lr.ph.preheader192 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader192 ]
  %i.da = getelementptr inbounds i8, ptr %.260103.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.052104.prol, i64 -8 ; 4 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !875
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !875
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !875
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !875
  %i.de = add nuw nsw i64 %.0105.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1833

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader192
  %.0105.unr = phi i64 [ %.0105.ph, %.lr.ph.preheader192 ], [ %i.de, %.lr.ph.prol ]
  %.052104.unr = phi ptr [ %.052104.ph, %.lr.ph.preheader192 ], [ %i.db, %.lr.ph.prol ]
  %.260103.unr = phi ptr [ %.260103.ph, %.lr.ph.preheader192 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.0105.ph, %.082
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block162, %bb.n
  %.260.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.058, %middle.block162 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.086, %i.ag                   ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ag, %._crit_edge ]
  %.082.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1834

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.dy, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.dv, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.du, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.260103, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.052104, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !875
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !875
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !875
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !875
  %i.dm = getelementptr inbounds i8, ptr %.260103, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.052104, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !875
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !875
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !875
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !875
  %i.dq = getelementptr inbounds i8, ptr %.260103, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.052104, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !875
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !875
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !875
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !875
  %i.du = getelementptr inbounds i8, ptr %.260103, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.052104, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !875
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !875
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !875
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !875
  %i.dy = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1835

_ZSt11swap_rangesIPPN3smt6clauseES3_ET0_T_S5_S4_.exit: ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block186, %_ZSt13move_backwardIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, %_ZSt4moveIPPN3smt6clauseES3_ET0_T_S5_S4_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt13move_backwardIPPN3smt6clauseES3_ET0_T_S5_S4_.exit ], [ %i.af, %_ZSt4moveIPPN3smt6clauseES3_ET0_T_S5_S4_.exit ], [ %1, %middle.block186 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge111 ], [ %i.af, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIPPN3smt6clauseElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_9clause_ltEEEEvT_S9_S9_T0_SA_T1_SA_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %.not89 = icmp sgt i64 %3, %6
  %.not5690 = icmp sgt i64 %4, %6
  %or.cond91 = and i1 %.not89, %.not5690
  br i1 %or.cond91, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bn, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.079, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.bm, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.bo, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPPN3smt6clauseElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_9clause_ltEEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr83.lcssa, ptr noundef %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.bo, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.bm, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.079, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.bn, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr92, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPPN3smt6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_9clause_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPPN3smt6clauseElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !875  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 16777215
  %i.n = zext nneg i32 %i.m to i64
end_hunk_0
