inline.NumInlined: 29521
inline.NumDeleted: 7045
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr94, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val2.val.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !168
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi ptr [ %.tr8595, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %i.g, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.i = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.017.i, i64 %i.i ; 2 uses
  %.val.val.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !168
  %i.k = icmp ult i64 %.val.val.i.i.i.i, %.val2.val.i.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = xor i64 %i.i, -1
  %i.n = add nsw i64 %.01116.i, %i.m
  %.112.i = select i1 %i.k, i64 %i.n, i64 %i.i    ; 2 uses
  %.1.i = select i1 %i.k, ptr %i.l, ptr %.017.i   ; 3 uses
  %i.o = icmp sgt i64 %.112.i, 0
  br i1 %i.o, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11396

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8595, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.p = sub i64 %.pre-phi, %i.c
  %i.q = ashr exact i64 %i.p, 3
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.r = sdiv i64 %.tr8897, 2                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.tr8595, i64 %i.r ; 2 uses
  %i.t = ptrtoint ptr %.tr94 to i64               ; 3 uses
  %i.u = sub i64 %i.c, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.val.val.i.i.i.i63 = load i64, ptr %i.s, align 8, !tbaa !168
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.017.i65 = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i71, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %.01116.i66 = phi i64 [ %i.v, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.112.i70, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %i.x = lshr i64 %.01116.i66, 1                  ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.017.i65, i64 %i.x ; 2 uses
  %.val2.val.i.i.i.i69 = load i64, ptr %i.y, align 8, !tbaa !168
  %i.z = icmp ult i64 %.val.val.i.i.i.i63, %.val2.val.i.i.i.i69 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = xor i64 %i.x, -1
  %i.ac = add nsw i64 %.01116.i66, %i.ab
  %.112.i70 = select i1 %i.z, i64 %i.x, i64 %i.ac ; 2 uses
  %.1.i71 = select i1 %i.z, ptr %.017.i65, ptr %i.aa ; 3 uses
  %i.ad = icmp sgt i64 %.112.i70, 0
  br i1 %i.ad, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11397

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %.pre103 = ptrtoint ptr %.1.i71 to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi104 = phi i64 [ %.pre103, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.t, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %.1.i71, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ae = sub i64 %.pre-phi104, %i.t
  %i.af = ashr exact i64 %i.ae, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.082 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.081 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.s, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.q, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.r, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.af, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.ag = sub nsw i64 %.tr8796, %.0               ; 4 uses
  %i.ah = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.082, ptr noundef %.tr8595, ptr noundef %.081, i64 noundef %i.ag, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.082, ptr noundef %i.ah, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.ai = sub nsw i64 %.tr8897, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.ag, %6
  %.not56 = icmp sgt i64 %i.ai, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE1EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit, label %bb.c

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
  %min.iters.check176 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check176, label %.lr.ph.i.preheader192, label %vector.memcheck169

vector.memcheck169:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep170 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep171 = getelementptr i8, ptr %1, i64 %i.s
  %bound0172 = icmp ult ptr %0, %scevgep171
  %bound1173 = icmp ult ptr %1, %scevgep170
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %.lr.ph.i.preheader192, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck169
  %n.vec178 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec178, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next187, %vector.body179 ] ; 2 uses
  %i.w = shl i64 %index180, 3                     ; 2 uses
  %next.gep181 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep182 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep182, i64 16 ; 2 uses
  %wide.load183 = load <2 x i64>, ptr %next.gep182, align 8, !alias.scope !11398, !noalias !11401
  %wide.load184 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !11398, !noalias !11401
  %i.y = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load185 = load <2 x i64>, ptr %next.gep181, align 8, !alias.scope !11401
  %wide.load186 = load <2 x i64>, ptr %i.y, align 8, !alias.scope !11401
  store <2 x i64> %wide.load185, ptr %next.gep182, align 8, !alias.scope !11398, !noalias !11401
  store <2 x i64> %wide.load186, ptr %i.x, align 8, !alias.scope !11398, !noalias !11401
  store <2 x i64> %wide.load183, ptr %next.gep181, align 8, !alias.scope !11401
  store <2 x i64> %wide.load184, ptr %i.y, align 8, !alias.scope !11401
  %index.next187 = add nuw i64 %index180, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next187, %n.vec178
  br i1 %i.z, label %middle.block188, label %vector.body179, !llvm.loop !11403

middle.block188:                                  ; preds = %vector.body179
  %cmp.n189 = icmp eq i64 %i.o, %n.vec178
  br i1 %cmp.n189, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.preheader192

.lr.ph.i.preheader192:                            ; preds = %vector.memcheck169, %.lr.ph.i.preheader, %middle.block188
  %.010.i.ph = phi ptr [ %1, %vector.memcheck169 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block188 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck169 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block188 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader192, %.lr.ph.i
  %.010.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader192 ] ; 3 uses
  %.079.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader192 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.079.i, align 8
  %i.aa = load i64, ptr %.010.i, align 8
  store i64 %i.aa, ptr %.079.i, align 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.010.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11404

bb.d:                                             ; preds = %bb.c
  %i.ad = sub i64 %i.c, %i.g
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.088 = phi i64 [ %i.f, %bb.d ], [ %.088.be, %.backedge ] ; 11 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.059 = phi ptr [ %0, %bb.d ], [ %.059.be, %.backedge ] ; 22 uses
  %i.af = sub nsw i64 %.088, %.084                ; 10 uses
  %i.ag = icmp slt i64 %.084, %i.af
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq i64 %.084, 1
  br i1 %i.ah, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  %.sroa.010.0.copyload = load i64, ptr %.059, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %.idx99 = shl nsw i64 %.088, 3                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.059, i64 %.idx99
  %gepdiff = add nsw i64 %.idx99, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.059, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %.sroa.010.0.copyload, ptr %i.ak, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.af, 0
  br i1 %i.al, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.059, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.af, 6
  br i1 %min.iters.check, label %.lr.ph112.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph112.preheader
  %i.an = shl i64 %.088, 3
  %i.ao = sub i64 %.088, %.084
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.059, i64 %i.ap
  %scevgep139 = getelementptr i8, ptr %.059, i64 %i.an
  %bound0 = icmp ult ptr %.059, %scevgep139
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph112.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.059, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep140 = getelementptr i8, ptr %.059, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep140, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep140, align 8, !alias.scope !11405, !noalias !11408
  %wide.load141 = load <2 x i64>, ptr %i.au, align 8, !alias.scope !11405, !noalias !11408
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load142 = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !11408
  %wide.load143 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !11408
  store <2 x i64> %wide.load142, ptr %next.gep140, align 8, !alias.scope !11405, !noalias !11408
  store <2 x i64> %wide.load143, ptr %i.au, align 8, !alias.scope !11405, !noalias !11408
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !11408
  store <2 x i64> %wide.load141, ptr %i.av, align 8, !alias.scope !11408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !11410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge113, label %.lr.ph112.preheader193

.lr.ph112.preheader193:                           ; preds = %vector.memcheck, %.lr.ph112.preheader, %middle.block
  %.055110.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph112.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.056109.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph112.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.160108.ph = phi ptr [ %.059, %vector.memcheck ], [ %.059, %.lr.ph112.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.088, %.084
  %xtraiter201 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader193, %.lr.ph112.prol
  %.055110.prol = phi i64 [ %i.bb, %.lr.ph112.prol ], [ %.055110.ph, %.lr.ph112.preheader193 ]
  %.056109.prol = phi ptr [ %i.ba, %.lr.ph112.prol ], [ %.056109.ph, %.lr.ph112.preheader193 ] ; 3 uses
  %.160108.prol = phi ptr [ %i.az, %.lr.ph112.prol ], [ %.160108.ph, %.lr.ph112.preheader193 ] ; 3 uses
  %prol.iter203 = phi i64 [ %prol.iter203.next, %.lr.ph112.prol ], [ 0, %.lr.ph112.preheader193 ]
  %.sroa.0.0.copyload.i.i.prol = load i64, ptr %.160108.prol, align 8
  %i.ay = load i64, ptr %.056109.prol, align 8
  store i64 %i.ay, ptr %.160108.prol, align 8
  store i64 %.sroa.0.0.copyload.i.i.prol, ptr %.056109.prol, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.160108.prol, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.056109.prol, i64 8 ; 2 uses
  %i.bb = add nuw nsw i64 %.055110.prol, 1        ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol, !llvm.loop !11411

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol, %.lr.ph112.preheader193
  %.lcssa.unr = phi ptr [ poison, %.lr.ph112.preheader193 ], [ %i.az, %.lr.ph112.prol ]
  %.055110.unr = phi i64 [ %.055110.ph, %.lr.ph112.preheader193 ], [ %i.bb, %.lr.ph112.prol ]
  %.056109.unr = phi ptr [ %.056109.ph, %.lr.ph112.preheader193 ], [ %i.ba, %.lr.ph112.prol ]
  %.160108.unr = phi ptr [ %.160108.ph, %.lr.ph112.preheader193 ], [ %i.az, %.lr.ph112.prol ]
  %i.bc = sub i64 %.055110.ph, %.088
  %i.bd = add i64 %i.bc, %.084
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112, %middle.block, %bb.g
  %.160.lcssa = phi ptr [ %.059, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph112.prol.loopexit ], [ %i.bq, %.lr.ph112 ]
  %i.bf = srem i64 %.088, %.084                   ; 2 uses
  %.not68 = icmp eq i64 %i.bf, 0
  br i1 %.not68, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112
  %.055110 = phi i64 [ %i.bs, %.lr.ph112 ], [ %.055110.unr, %.lr.ph112.prol.loopexit ]
  %.056109 = phi ptr [ %i.br, %.lr.ph112 ], [ %.056109.unr, %.lr.ph112.prol.loopexit ] ; 6 uses
  %.160108 = phi ptr [ %i.bq, %.lr.ph112 ], [ %.160108.unr, %.lr.ph112.prol.loopexit ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.160108, align 8
  %i.bg = load i64, ptr %.056109, align 8
  store i64 %i.bg, ptr %.160108, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.056109, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.160108, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.056109, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.bh, align 8
  %i.bj = load i64, ptr %i.bi, align 8
  store i64 %i.bj, ptr %i.bh, align 8
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.160108, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.056109, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.2 = load i64, ptr %i.bk, align 8
  %i.bm = load i64, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bk, align 8
  store i64 %.sroa.0.0.copyload.i.i.2, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.160108, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.056109, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.3 = load i64, ptr %i.bn, align 8
  %i.bp = load i64, ptr %i.bo, align 8
  store i64 %i.bp, ptr %i.bn, align 8
  store i64 %.sroa.0.0.copyload.i.i.3, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.160108, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.056109, i64 32
  %i.bs = add nuw nsw i64 %.055110, 4             ; 2 uses
  %exitcond121.not.3 = icmp eq i64 %i.bs, %i.af
  br i1 %exitcond121.not.3, label %._crit_edge113, label %.lr.ph112, !llvm.loop !11412

bb.h:                                             ; preds = %._crit_edge113
  %i.bt = sub nsw i64 %.084, %i.bf
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.bu = icmp eq i64 %i.af, 1
  %i.bv = getelementptr [8 x i8], ptr %.059, i64 %.088 ; 8 uses
  br i1 %i.bu, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bw, align 8
  %.idx = shl nsw i64 %.088, 3
  %i.bx = add nsw i64 %.idx, -8                   ; 3 uses
  %i.by = ashr exact i64 %i.bx, 3                 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 1
  br i1 %i.bz, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.ca = sub nsw i64 0, %i.by
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ca
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %.059, i64 %i.bx, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.cc = icmp eq i64 %i.bx, 8
  br i1 %i.cc, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  %i.cd = load i64, ptr %.059, align 8
  store i64 %i.cd, ptr %i.bw, align 8
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %.sroa.0.0.copyload, ptr %.059, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE1EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ce = sub i64 0, %i.af
  %i.cf = getelementptr [8 x i8], ptr %i.bv, i64 %i.ce ; 6 uses
  %i.cg = icmp sgt i64 %.084, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check152 = icmp ult i64 %.084, 6
  br i1 %min.iters.check152, label %.lr.ph.preheader194, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.preheader
  %i.ch = sub i64 %.088, %.084
  %i.ci = shl i64 %i.ch, 3
  %scevgep147 = getelementptr i8, ptr %.059, i64 %i.ci
  %bound0148 = icmp ult ptr %.059, %i.bv
  %bound1149 = icmp ult ptr %scevgep147, %i.cf
  %found.conflict150 = and i1 %bound0148, %bound1149
  br i1 %found.conflict150, label %.lr.ph.preheader194, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck146
  %n.vec154 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cj = mul i64 %n.vec154, -8                   ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bv, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.cj
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body155 ] ; 2 uses
  %i.cm = mul i64 %index156, -8                   ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.bv, i64 %i.cm ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.cf, i64 %i.cm ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %next.gep158, i64 -16 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep158, i64 -32 ; 2 uses
  %wide.load159 = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !11413, !noalias !11416
end_hunk_0
begin_hunk_1_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  %.tr94 = phi ptr [ %0, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8696, %.tr8797
  %i.c = ptrtoint ptr %.tr8495 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8696, 2                     ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr94, i64 %i.d ; 3 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load i64, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val6.val.i.i.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.thread21.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.028.i = phi ptr [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.y, %.thread21.i ] ; 3 uses
  %.01127.i = phi i64 [ %i.g, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.x, %.thread21.i ] ; 3 uses
  %i.k = lshr i64 %.01127.i, 1                    ; 5 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.028.i, i64 %i.k ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.01127.i, %i.p
  br label %.thread21.i

bb.c:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.r = icmp eq i64 %i.m, %i.i
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, label %.thread21.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIPS6_KS6_EEbT_RT0_.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !168
  %i.t = icmp ult i64 %.val.val.i.i.i.i.i, %.val6.val.i.i.i.i.i
  %cond.fr.i = freeze i1 %i.t                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = xor i64 %i.k, -1
  %i.w = add nsw i64 %.01127.i, %i.v
  %spec.select.i = select i1 %cond.fr.i, i64 %i.w, i64 %i.k
  %spec.select26.i = select i1 %cond.fr.i, ptr %i.u, ptr %.028.i
  br label %.thread21.i

.thread21.i:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, %bb.c, %.thread.i
  %i.x = phi i64 [ %i.k, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.q, %.thread.i ] ; 2 uses
  %i.y = phi ptr [ %.028.i, %bb.c ], [ %spec.select26.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.o, %.thread.i ] ; 3 uses
  %i.z = icmp sgt i64 %i.x, 0
  br i1 %i.z, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11460

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread21.i
  %.pre = ptrtoint ptr %i.y to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.y, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.c
  %i.ab = ashr exact i64 %i.aa, 4
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ac = sdiv i64 %.tr8797, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.tr8495, i64 %i.ac ; 3 uses
  %i.ae = ptrtoint ptr %.tr94 to i64              ; 3 uses
  %i.af = sub i64 %i.c, %i.ae
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.val.i.i.i.i.i63 = load i64, ptr %i.aj, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %.thread.i68, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.027.i = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.ay, %.thread.i68 ] ; 3 uses
  %.01126.i = phi i64 [ %i.ag, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.ax, %.thread.i68 ] ; 3 uses
  %i.ak = lshr i64 %.01126.i, 1                   ; 5 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.027.i, i64 %i.ak ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !168 ; 2 uses
  %i.an = icmp ult i64 %i.ai, %i.am
  br i1 %i.an, label %.thread.i68, label %bb.d

bb.d:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.ao = icmp eq i64 %i.ai, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread21.i67

.thread21.i67:                                    ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = xor i64 %i.ak, -1
  %i.ar = add nsw i64 %.01126.i, %i.aq
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val6.val.i.i.i.i.i69 = load i64, ptr %i.as, align 8, !tbaa !168
  %i.at = icmp ult i64 %.val.val.i.i.i.i.i63, %.val6.val.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.at
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.au = xor i64 %i.ak, -1
  %i.av = add nsw i64 %.01126.i, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread21.i67, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.ax = phi i64 [ %i.ar, %.thread21.i67 ], [ %i.av, %bb.e ], [ %i.ak, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.ak, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.ay = phi ptr [ %i.ap, %.thread21.i67 ], [ %i.aw, %bb.e ], [ %.027.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.027.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE2EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.az = icmp sgt i64 %i.ax, 0
  br i1 %i.az, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11461

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.ay to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.ay, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ba = sub i64 %.pre-phi106, %i.ae
  %i.bb = ashr exact i64 %i.ba, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ab, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bb, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bc = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.bd = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.bc, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.bd, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.be = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.bc, %6
  %.not56 = icmp sgt i64 %i.be, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE2EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  %.sroa.0151.0.copyload = load <2 x i64>, ptr %.079.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.079.i, ptr noundef nonnull align 8 dereferenceable(16) %.010.i, i64 16, i1 false)
  store <2 x i64> %.sroa.0151.0.copyload, ptr %.010.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11462

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  %.sroa.0149.0.copyload = load <2 x i64>, ptr %.054, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %.idx96 = shl nsw i64 %.085, 4                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  store <2 x i64> %.sroa.0149.0.copyload, ptr %i.u, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [16 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %.sroa.0153.0.copyload155 = load <2 x i64>, ptr %.155105.epil.init, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %.052106.epil.init, i64 16, i1 false)
  store <2 x i64> %.sroa.0153.0.copyload155, ptr %.052106.epil.init, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 16
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  %.sroa.0153.0.copyload = load <2 x i64>, ptr %.155105, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.155105, ptr noundef nonnull align 8 dereferenceable(16) %.052106, i64 16, i1 false)
  store <2 x i64> %.sroa.0153.0.copyload, ptr %.052106, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 16 ; 2 uses
  %.sroa.0153.0.copyload157 = load <2 x i64>, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store <2 x i64> %.sroa.0153.0.copyload157, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11463

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.054, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.ah, align 8
  %.idx = shl nsw i64 %.085, 4
  %i.ai = add nsw i64 %.idx, -16                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 4                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 16
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.054, i64 16, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store <2 x i64> %.sroa.0.0.copyload, ptr %.054, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [16 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -16 ; 2 uses
  %.sroa.0159.0.copyload161 = load <2 x i64>, ptr %i.at, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  store <2 x i64> %.sroa.0159.0.copyload161, ptr %i.au, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11464

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -16 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -16 ; 2 uses
  %.sroa.0159.0.copyload = load <2 x i64>, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  store <2 x i64> %.sroa.0159.0.copyload, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds i8, ptr %.256102, i64 -32 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 4 uses
  %.sroa.0159.0.copyload163 = load <2 x i64>, ptr %i.ay, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  store <2 x i64> %.sroa.0159.0.copyload163, ptr %i.az, align 8
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11465

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 16
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 16
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 16
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 16
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.v, %i.q                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 16
  br i1 %i.x, label %bb.s, label %bb.t, !prof !337

bb.s:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE2EEES4_ET0_T_S6_S5_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.w, i1 false)
end_hunk_1
begin_hunk_2_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  %i.m = lshr i64 %.01128.i, 1                    ; 6 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.029.i, i64 %i.m ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.i
  br i1 %i.p, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.q = icmp eq i64 %i.o, %i.i
  br i1 %i.q, label %bb.d, label %.thread22.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !168  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.s, %i.k
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, label %.thread22.i

.thread.i:                                        ; preds = %bb.d, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.w = xor i64 %i.m, -1
  %i.x = add nsw i64 %.01128.i, %i.w
  br label %.thread22.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIPS6_KS6_EEbT_RT0_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !168
  %i.z = icmp ult i64 %.val.val.i.i.i.i.i.i, %.val6.val.i.i.i.i.i.i
  %cond.fr.i = freeze i1 %i.z                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ab = xor i64 %i.m, -1
  %i.ac = add nsw i64 %.01128.i, %i.ab
  %spec.select.i = select i1 %cond.fr.i, i64 %i.ac, i64 %i.m
  %spec.select27.i = select i1 %cond.fr.i, ptr %i.aa, ptr %.029.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, %.thread.i, %bb.e, %bb.c
  %i.ad = phi i64 [ %i.m, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.m, %bb.e ], [ %i.x, %.thread.i ] ; 2 uses
  %i.ae = phi ptr [ %.029.i, %bb.c ], [ %spec.select27.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %.029.i, %bb.e ], [ %i.v, %.thread.i ] ; 3 uses
  %i.af = icmp sgt i64 %i.ad, 0
  br i1 %i.af, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11504

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread22.i
  %.pre = ptrtoint ptr %i.ae to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.ae, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub i64 %.pre-phi, %i.c
  %i.ah = sdiv exact i64 %i.ag, 24
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ai = sdiv i64 %.tr8797, 2                    ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %.tr8495, i64 %i.ai ; 4 uses
  %i.ak = ptrtoint ptr %.tr94 to i64              ; 3 uses
  %i.al = sub i64 %i.c, %i.ak                     ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.an = udiv exact i64 %i.al, 24
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val.val.i.i.i.i.i.i63 = load i64, ptr %i.ar, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %.thread.i68, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.028.i = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bk, %.thread.i68 ] ; 4 uses
  %.01127.i = phi i64 [ %i.an, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bj, %.thread.i68 ] ; 3 uses
  %i.as = lshr i64 %.01127.i, 1                   ; 6 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.028.i, i64 %i.as ; 5 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !168 ; 2 uses
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %.thread.i68, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.aw = icmp eq i64 %i.ao, %i.au
  br i1 %i.aw, label %bb.g, label %.thread22.i67

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !168 ; 2 uses
  %i.az = icmp ult i64 %i.aq, %i.ay
  br i1 %i.az, label %.thread.i68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp eq i64 %i.aq, %i.ay
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread22.i67

.thread22.i67:                                    ; preds = %bb.h, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bc = xor i64 %i.as, -1
  %i.bd = add nsw i64 %.01127.i, %i.bc
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val6.val.i.i.i.i.i.i69 = load i64, ptr %i.be, align 8, !tbaa !168
  %i.bf = icmp ult i64 %.val.val.i.i.i.i.i.i63, %.val6.val.i.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.bf
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.bg = xor i64 %i.as, -1
  %i.bh = add nsw i64 %.01127.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread22.i67, %bb.g, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.bj = phi i64 [ %i.bd, %.thread22.i67 ], [ %i.bh, %bb.i ], [ %i.as, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.as, %bb.g ], [ %i.as, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bb, %.thread22.i67 ], [ %i.bi, %bb.i ], [ %.028.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.028.i, %bb.g ], [ %.028.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11505

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.bk to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.bk, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.bm = sub i64 %.pre-phi106, %i.ak
  %i.bn = sdiv exact i64 %i.bm, 24
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ah, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bn, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bo = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.bp = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.bo, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.bp, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.bq = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.bo, %6
  %.not56 = icmp sgt i64 %i.bq, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE3EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  %.sroa.0150.0.copyload = load <3 x i64>, ptr %.079.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.079.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i, i64 24, i1 false)
  store <3 x i64> %.sroa.0150.0.copyload, ptr %.010.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11506

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 9 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 16 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  %.sroa.0148.0.copyload = load <3 x i64>, ptr %.054, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 24
  %.idx96 = mul nsw i64 %.085, 24                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  store <3 x i64> %.sroa.0148.0.copyload, ptr %i.u, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [24 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter141 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter145 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod144 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %.sroa.0152.0.copyload154 = load <3 x i64>, ptr %.155105.epil.init, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, i64 24, i1 false)
  store <3 x i64> %.sroa.0152.0.copyload154, ptr %.052106.epil.init, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 24
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter146 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter146.next.1, %.lr.ph109 ]
  %.sroa.0152.0.copyload = load <3 x i64>, ptr %.155105, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105, ptr noundef nonnull align 8 dereferenceable(24) %.052106, i64 24, i1 false)
  store <3 x i64> %.sroa.0152.0.copyload, ptr %.052106, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 24 ; 2 uses
  %.sroa.0152.0.copyload156 = load <3 x i64>, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  store <3 x i64> %.sroa.0152.0.copyload156, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 48 ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11507

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.054, i64 %.085
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.ah, align 8
  %.idx = mul nsw i64 %.085, 24
  %i.ai = add nsw i64 %.idx, -24                  ; 2 uses
  %i.aj = icmp sgt i64 %.085, 2
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.ai, 24
  br i1 %i.al, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store <3 x i64> %.sroa.0.0.copyload, ptr %.054, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds [24 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.an = sub i64 0, %i.p
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.am, i64 %i.an ; 3 uses
  %i.ap = icmp sgt i64 %.081, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.aq = icmp eq i64 %.081, 1
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.ar = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -24 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -24 ; 2 uses
  %.sroa.0158.0.copyload160 = load <3 x i64>, ptr %i.ar, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store <3 x i64> %.sroa.0158.0.copyload160, ptr %i.as, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.ao, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.at = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.at, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11508

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.au = getelementptr inbounds i8, ptr %.256102, i64 -24 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.050103, i64 -24 ; 2 uses
  %.sroa.0158.0.copyload = load <3 x i64>, ptr %i.au, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  store <3 x i64> %.sroa.0158.0.copyload, ptr %i.av, align 8
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -48 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -48 ; 4 uses
  %.sroa.0158.0.copyload162 = load <3 x i64>, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  store <3 x i64> %.sroa.0158.0.copyload162, ptr %i.ax, align 8
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11509

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 24                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 24
  br i1 %i.i, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  %.neg51 = udiv exact i64 %i.h, 24
  %.neg51.neg = sub nsw i64 0, %.neg51
  %i.j = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg51.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  %i.k = icmp eq i64 %i.h, 24
  br i1 %i.k, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.d, 24
  br i1 %i.m, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp sgt i64 %i.q, 24                    ; 2 uses
  br i1 %i.r, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.q, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.s = icmp eq i64 %i.q, 24
  br i1 %i.s, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.t, %i.o                       ; 3 uses
  %i.v = icmp sgt i64 %i.u, 24
  br i1 %i.v, label %bb.s, label %bb.t, !prof !337

bb.s:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.u, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit38

end_hunk_2
begin_hunk_3_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168  ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.m
  br i1 %i.z, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %i.y, %i.m
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, label %.thread22.i

.thread.i:                                        ; preds = %bb.f, %bb.d, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ac = xor i64 %i.o, -1
  %i.ad = add nsw i64 %.01128.i, %i.ac
  br label %.thread22.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIPS6_KS6_EEbT_RT0_.exit.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val.val.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !168
  %i.af = icmp ult i64 %.val.val.i.i.i.i.i.i.i, %.val6.val.i.i.i.i.i.i.i
  %cond.fr.i = freeze i1 %i.af                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ah = xor i64 %i.o, -1
  %i.ai = add nsw i64 %.01128.i, %i.ah
  %spec.select.i = select i1 %cond.fr.i, i64 %i.ai, i64 %i.o
  %spec.select27.i = select i1 %cond.fr.i, ptr %i.ag, ptr %.029.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, %.thread.i, %bb.g, %bb.e, %bb.c
  %i.aj = phi i64 [ %i.o, %bb.g ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.o, %bb.c ], [ %i.o, %bb.e ], [ %i.ad, %.thread.i ] ; 2 uses
  %i.ak = phi ptr [ %.029.i, %bb.g ], [ %spec.select27.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %.029.i, %bb.c ], [ %.029.i, %bb.e ], [ %i.ab, %.thread.i ] ; 3 uses
  %i.al = icmp sgt i64 %i.aj, 0
  br i1 %i.al, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11548

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread22.i
  %.pre = ptrtoint ptr %i.ak to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.ak, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.am = sub i64 %.pre-phi, %i.c
  %i.an = ashr exact i64 %i.am, 5
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ao = sdiv i64 %.tr8797, 2                    ; 2 uses
  %i.ap = getelementptr inbounds [32 x i8], ptr %.tr8495, i64 %i.ao ; 5 uses
  %i.aq = ptrtoint ptr %.tr94 to i64              ; 3 uses
  %i.ar = sub i64 %i.c, %i.aq
  %i.as = ashr exact i64 %i.ar, 5                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.au = load i64, ptr %i.ap, align 8, !tbaa !168 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val.val.i.i.i.i.i.i.i63 = load i64, ptr %i.az, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %.thread.i68, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.028.i = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bw, %.thread.i68 ] ; 5 uses
  %.01127.i = phi i64 [ %i.as, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bv, %.thread.i68 ] ; 3 uses
  %i.ba = lshr i64 %.01127.i, 1                   ; 7 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.028.i, i64 %i.ba ; 6 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !168 ; 2 uses
  %i.bd = icmp ult i64 %i.au, %i.bc
  br i1 %i.bd, label %.thread.i68, label %bb.h

bb.h:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.be = icmp eq i64 %i.au, %i.bc
  br i1 %i.be, label %bb.i, label %.thread22.i67

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !168 ; 2 uses
  %i.bh = icmp ult i64 %i.aw, %i.bg
  br i1 %i.bh, label %.thread.i68, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp eq i64 %i.aw, %i.bg
  br i1 %i.bi, label %bb.k, label %.thread22.i67

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !168 ; 2 uses
  %i.bl = icmp ult i64 %i.ay, %i.bk
  br i1 %i.bl, label %.thread.i68, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp eq i64 %i.ay, %i.bk
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread22.i67

.thread22.i67:                                    ; preds = %bb.l, %bb.j, %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bo = xor i64 %i.ba, -1
  %i.bp = add nsw i64 %.01127.i, %i.bo
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.val6.val.i.i.i.i.i.i.i69 = load i64, ptr %i.bq, align 8, !tbaa !168
  %i.br = icmp ult i64 %.val.val.i.i.i.i.i.i.i63, %.val6.val.i.i.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.br
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.bs = xor i64 %i.ba, -1
  %i.bt = add nsw i64 %.01127.i, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.m, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread22.i67, %bb.k, %bb.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.bv = phi i64 [ %i.bp, %.thread22.i67 ], [ %i.bt, %bb.m ], [ %i.ba, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.ba, %bb.k ], [ %i.ba, %bb.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bn, %.thread22.i67 ], [ %i.bu, %bb.m ], [ %.028.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.028.i, %bb.k ], [ %.028.i, %bb.i ], [ %.028.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE4EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.bx = icmp sgt i64 %i.bv, 0
  br i1 %i.bx, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11549

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.bw to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.aq, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.bw, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.by = sub i64 %.pre-phi106, %i.aq
  %i.bz = ashr exact i64 %i.by, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ap, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.an, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ao, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bz, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.ca = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.cb = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.ca, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.cb, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.cc = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.ca, %6
  %.not56 = icmp sgt i64 %i.cc, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE4EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  %.sroa.0151.0.copyload = load <4 x i64>, ptr %.079.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.079.i, ptr noundef nonnull align 8 dereferenceable(32) %.010.i, i64 32, i1 false)
  store <4 x i64> %.sroa.0151.0.copyload, ptr %.010.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11550

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  %.sroa.0149.0.copyload = load <4 x i64>, ptr %.054, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %.idx96 = shl nsw i64 %.085, 5                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  store <4 x i64> %.sroa.0149.0.copyload, ptr %i.u, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [32 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %.sroa.0153.0.copyload155 = load <4 x i64>, ptr %.155105.epil.init, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, i64 32, i1 false)
  store <4 x i64> %.sroa.0153.0.copyload155, ptr %.052106.epil.init, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  %.sroa.0153.0.copyload = load <4 x i64>, ptr %.155105, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105, ptr noundef nonnull align 8 dereferenceable(32) %.052106, i64 32, i1 false)
  store <4 x i64> %.sroa.0153.0.copyload, ptr %.052106, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  %.sroa.0153.0.copyload157 = load <4 x i64>, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  store <4 x i64> %.sroa.0153.0.copyload157, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 64 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11551

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.054, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  %.sroa.0.0.copyload = load <4 x i64>, ptr %i.ah, align 8
  %.idx = shl nsw i64 %.085, 5
  %i.ai = add nsw i64 %.idx, -32                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store <4 x i64> %.sroa.0.0.copyload, ptr %.054, align 8
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [32 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -32 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -32 ; 2 uses
  %.sroa.0159.0.copyload161 = load <4 x i64>, ptr %i.at, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  store <4 x i64> %.sroa.0159.0.copyload161, ptr %i.au, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11552

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -32 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 2 uses
  %.sroa.0159.0.copyload = load <4 x i64>, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  store <4 x i64> %.sroa.0159.0.copyload, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds i8, ptr %.256102, i64 -64 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -64 ; 4 uses
  %.sroa.0159.0.copyload163 = load <4 x i64>, ptr %i.ay, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  store <4 x i64> %.sroa.0159.0.copyload163, ptr %i.az, align 8
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11553

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 32
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [32 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 32
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 32
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 32
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 32
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.v, %i.q                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 32
  br i1 %i.x, label %bb.s, label %bb.t, !prof !337

bb.s:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE4EEES4_ET0_T_S6_S5_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.w, i1 false)
end_hunk_3
begin_hunk_4_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_T0_SC_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !337

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i64 0, %i.e
  %i.h = getelementptr inbounds [32 x i8], ptr %4, i64 %i.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.d, 32
  br i1 %i.i, label %bb.e, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %4, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %2, %3
  br i1 %i.k, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %3, i64 -32
  br label %.outer

.outer:                                           ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread, %bb.g
  %.026.ph.pn = phi ptr [ %1, %bb.g ], [ %.026.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread ] ; 4 uses
  %.024.ph = phi ptr [ %i.l, %bb.g ], [ %.024, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread ]
  %.0.ph = phi ptr [ %4, %bb.g ], [ %i.al, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread ]
  %.026.ph = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -32 ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -24
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -16
  %i.n = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -8
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.p
  %.024 = phi ptr [ %i.az, %bb.p ], [ %.024.ph, %.outer ] ; 9 uses
  %.0 = phi ptr [ %i.ax, %bb.p ], [ %.0.ph, %.outer ] ; 3 uses
  %i.o = load i64, ptr %.024, align 8, !tbaa !168
  %i.p = load i64, ptr %.026.ph, align 8, !tbaa !168
  %i.q = tail call noundef i32 @llvm.ucmp.i32.i64(i64 %i.o, i64 %i.p)
  %i.r = shl nsw i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !168
  %i.u = load i64, ptr %i.m, align 8, !tbaa !168
  %i.v = tail call noundef i32 @llvm.ucmp.i32.i64(i64 %i.t, i64 %i.u)
  %i.w = add nsw i32 %i.v, %i.r                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %bb.i, label %.split

.split:                                           ; preds = %bb.h
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1318 ; 4 uses
  %i.aa = icmp ult i64 %i.z, 17
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !1318 ; 4 uses
  %i.ab = icmp ult i64 %.pre.i.i.i, 17
  %or.cond.i.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !525
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !525
  %i.af = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %.pre.i.i.i)
  %i.ag = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef %i.af) #33 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %.split34

.split34:                                         ; preds = %bb.j
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = icmp ult i64 %i.z, %.pre.i.i.i
  %spec.select.i.i.i = and i1 %i.aj, %i.ai
  br i1 %spec.select.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit: ; preds = %bb.i
  %i.ak = icmp ult i64 %i.z, %.pre.i.i.i
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread: ; preds = %bb.j, %.split34, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit
  %i.al = getelementptr inbounds i8, ptr %.0, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %.026.ph, i64 32, i1 false)
  %i.am = icmp eq ptr %0, %.026.ph
  br i1 %i.am, label %bb.k, label %.outer, !llvm.loop !11593

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %.024, i64 32
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.l, label %bb.m, !prof !337

bb.l:                                             ; preds = %bb.k
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.at
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %2, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.av = icmp eq i64 %i.aq, 32
  br i1 %i.av, label %bb.n, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds i8, ptr %.0, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.o:                                             ; preds = %.split34, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE5EEEEEclIPS6_SA_EEbT_T0_.exit
  %i.ax = getelementptr inbounds i8, ptr %.0, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %.024, i64 32, i1 false)
  %i.ay = icmp eq ptr %2, %.024
  br i1 %i.ay, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds i8, ptr %.024, i64 -32
  br label %bb.h, !llvm.loop !11593

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.e, %bb.d, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE5EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1258", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.079.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.079.i, ptr noundef nonnull align 8 dereferenceable(32) %.010.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.010.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11594

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %.idx96 = shl nsw i64 %.085, 5                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [32 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.155105, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105, ptr noundef nonnull align 8 dereferenceable(32) %.052106, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.052106, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 64 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11595

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.054, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %.idx = shl nsw i64 %.085, 5
  %i.ai = add nsw i64 %.idx, -32                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.054, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [32 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -32 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11596

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -32 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds i8, ptr %.256102, i64 -64 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11597

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 32
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [32 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 32
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 32
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 32
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 32
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE5EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
end_hunk_4
begin_hunk_5_@_ZSt22__merge_without_bufferIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_:bb.a
  %.064 = phi ptr [ %i.j, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i43, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.063 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.x, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.v, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.w, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.al = tail call noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE6EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %.064, ptr noundef %.tr6775, ptr noundef %.063) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_(ptr noundef %.tr74, ptr noundef %.064, ptr noundef %i.al, i64 noundef %.0, i64 noundef %.036)
  %i.am = sub nsw i64 %.tr6977, %.0               ; 2 uses
  %i.an = sub nsw i64 %.tr7078, %.036             ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = icmp eq i64 %i.an, 0
  %or.cond = or i1 %i.ao, %i.ap
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %.not91 = icmp sgt i64 %3, %6
  %.not5692 = icmp sgt i64 %4, %6
  %or.cond93 = and i1 %.not91, %.not5692
  br i1 %or.cond93, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ah, %tailrecurse ]
  %.tr85.lcssa = phi ptr [ %1, %bb.a ], [ %.081, %tailrecurse ]
  %.tr87.lcssa = phi i64 [ %3, %bb.a ], [ %i.ag, %tailrecurse ]
  %.tr88.lcssa = phi i64 [ %4, %bb.a ], [ %i.ai, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr85.lcssa, ptr noundef %2, i64 noundef %.tr87.lcssa, i64 noundef %.tr88.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8897 = phi i64 [ %4, %.lr.ph ], [ %i.ai, %tailrecurse ] ; 3 uses
  %.tr8796 = phi i64 [ %3, %.lr.ph ], [ %i.ag, %tailrecurse ] ; 3 uses
  %.tr8595 = phi ptr [ %1, %.lr.ph ], [ %.081, %tailrecurse ] ; 5 uses
  %.tr94 = phi ptr [ %0, %.lr.ph ], [ %i.ah, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8796, %.tr8897
  %i.c = ptrtoint ptr %.tr8595 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8796, 2                     ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr94, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val2.val.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !168
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi ptr [ %.tr8595, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %i.g, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.i = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.017.i, i64 %i.i ; 2 uses
  %.val.val.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !168
  %i.k = icmp ult i64 %.val.val.i.i.i.i, %.val2.val.i.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = xor i64 %i.i, -1
  %i.n = add nsw i64 %.01116.i, %i.m
  %.112.i = select i1 %i.k, i64 %i.n, i64 %i.i    ; 2 uses
  %.1.i = select i1 %i.k, ptr %i.l, ptr %.017.i   ; 3 uses
  %i.o = icmp sgt i64 %.112.i, 0
  br i1 %i.o, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11636

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8595, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.p = sub i64 %.pre-phi, %i.c
  %i.q = ashr exact i64 %i.p, 4
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.r = sdiv i64 %.tr8897, 2                     ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.tr8595, i64 %i.r ; 2 uses
  %i.t = ptrtoint ptr %.tr94 to i64               ; 3 uses
  %i.u = sub i64 %i.c, %i.t
  %i.v = ashr exact i64 %i.u, 4                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.val.val.i.i.i.i63 = load i64, ptr %i.s, align 8, !tbaa !168
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.017.i65 = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i71, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %.01116.i66 = phi i64 [ %i.v, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.112.i70, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %i.x = lshr i64 %.01116.i66, 1                  ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.017.i65, i64 %i.x ; 2 uses
  %.val2.val.i.i.i.i69 = load i64, ptr %i.y, align 8, !tbaa !168
  %i.z = icmp ult i64 %.val.val.i.i.i.i63, %.val2.val.i.i.i.i69 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = xor i64 %i.x, -1
  %i.ac = add nsw i64 %.01116.i66, %i.ab
  %.112.i70 = select i1 %i.z, i64 %i.x, i64 %i.ac ; 2 uses
  %.1.i71 = select i1 %i.z, ptr %.017.i65, ptr %i.aa ; 3 uses
  %i.ad = icmp sgt i64 %.112.i70, 0
  br i1 %i.ad, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11637

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %.pre103 = ptrtoint ptr %.1.i71 to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi104 = phi i64 [ %.pre103, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.t, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %.1.i71, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ae = sub i64 %.pre-phi104, %i.t
  %i.af = ashr exact i64 %i.ae, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.082 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.081 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.s, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.q, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.r, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.af, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.ag = sub nsw i64 %.tr8796, %.0               ; 4 uses
  %i.ah = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.082, ptr noundef %.tr8595, ptr noundef %.081, i64 noundef %i.ag, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.082, ptr noundef %i.ah, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.ai = sub nsw i64 %.tr8897, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.ag, %6
  %.not56 = icmp sgt i64 %i.ai, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE6EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey", align 8  ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey", align 8  ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey", align 8  ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey", align 8  ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey", align 8  ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.079.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.079.i, ptr noundef nonnull align 8 dereferenceable(16) %.010.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.010.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11638

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.054, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %.idx96 = shl nsw i64 %.085, 4                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [16 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.155105.epil.init, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %.052106.epil.init, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 16
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.155105, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.155105, ptr noundef nonnull align 8 dereferenceable(16) %.052106, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.052106, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11639

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.054, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %.idx = shl nsw i64 %.085, 4
  %i.ai = add nsw i64 %.idx, -16                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 4                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 16
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.054, i64 16, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.054, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [16 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11640

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -16 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds i8, ptr %.256102, i64 -32 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11641

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 16
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 16
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 16
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 16
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 16
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE6EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
end_hunk_5
begin_hunk_6_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  %i.f = sub i64 %i.a, %i.c                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.h = udiv exact i64 %i.f, 24
  %i.i = load i64, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val6.val.i.i.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.thread21.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.028.i = phi ptr [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.y, %.thread21.i ] ; 3 uses
  %.01127.i = phi i64 [ %i.h, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %i.x, %.thread21.i ] ; 3 uses
  %i.k = lshr i64 %.01127.i, 1                    ; 5 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.028.i, i64 %i.k ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.01127.i, %i.p
  br label %.thread21.i

bb.c:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.r = icmp eq i64 %i.m, %i.i
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, label %.thread21.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIPS6_KS6_EEbT_RT0_.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !168
  %i.t = icmp ult i64 %.val.val.i.i.i.i.i, %.val6.val.i.i.i.i.i
  %cond.fr.i = freeze i1 %i.t                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.v = xor i64 %i.k, -1
  %i.w = add nsw i64 %.01127.i, %i.v
  %spec.select.i = select i1 %cond.fr.i, i64 %i.w, i64 %i.k
  %spec.select26.i = select i1 %cond.fr.i, ptr %i.u, ptr %.028.i
  br label %.thread21.i

.thread21.i:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, %bb.c, %.thread.i
  %i.x = phi i64 [ %i.k, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.q, %.thread.i ] ; 2 uses
  %i.y = phi ptr [ %.028.i, %bb.c ], [ %spec.select26.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.o, %.thread.i ] ; 3 uses
  %i.z = icmp sgt i64 %i.x, 0
  br i1 %i.z, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11680

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread21.i
  %.pre = ptrtoint ptr %i.y to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.y, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.c
  %i.ab = sdiv exact i64 %i.aa, 24
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ac = sdiv i64 %.tr8797, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [24 x i8], ptr %.tr8495, i64 %i.ac ; 3 uses
  %i.ae = ptrtoint ptr %.tr94 to i64              ; 3 uses
  %i.af = sub i64 %i.c, %i.ae                     ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ah = udiv exact i64 %i.af, 24
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val.val.i.i.i.i.i63 = load i64, ptr %i.aj, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %.thread.i68, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.027.i = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.ay, %.thread.i68 ] ; 3 uses
  %.01126.i = phi i64 [ %i.ah, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.ax, %.thread.i68 ] ; 3 uses
  %i.ak = lshr i64 %.01126.i, 1                   ; 5 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %.027.i, i64 %i.ak ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !168 ; 2 uses
  %i.an = icmp ult i64 %i.ai, %i.am
  br i1 %i.an, label %.thread.i68, label %bb.d

bb.d:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.ao = icmp eq i64 %i.ai, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread21.i67

.thread21.i67:                                    ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = xor i64 %i.ak, -1
  %i.ar = add nsw i64 %.01126.i, %i.aq
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val6.val.i.i.i.i.i69 = load i64, ptr %i.as, align 8, !tbaa !168
  %i.at = icmp ult i64 %.val.val.i.i.i.i.i63, %.val6.val.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.at
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.au = xor i64 %i.ak, -1
  %i.av = add nsw i64 %.01126.i, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread21.i67, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.ax = phi i64 [ %i.ar, %.thread21.i67 ], [ %i.av, %bb.e ], [ %i.ak, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.ak, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.ay = phi ptr [ %i.ap, %.thread21.i67 ], [ %i.aw, %bb.e ], [ %.027.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.027.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.az = icmp sgt i64 %i.ax, 0
  br i1 %i.az, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11681

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.ay to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.ay, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ba = sub i64 %.pre-phi106, %i.ae
  %i.bb = sdiv exact i64 %i.ba, 24
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ab, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bb, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bc = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.bd = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.bc, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.bd, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.be = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.bc, %6
  %.not56 = icmp sgt i64 %i.be, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE7EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.079.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.079.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11682

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 9 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 16 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 24
  %.idx96 = mul nsw i64 %.085, 24                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [24 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter141 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter145 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod144 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 24
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter146 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter146.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.155105, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105, ptr noundef nonnull align 8 dereferenceable(24) %.052106, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.052106, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 48 ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11683

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.054, i64 %.085
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.idx = mul nsw i64 %.085, 24
  %i.ai = add nsw i64 %.idx, -24                  ; 2 uses
  %i.aj = icmp sgt i64 %.085, 2
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.ai, 24
  br i1 %i.al, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.054, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds [24 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.an = sub i64 0, %i.p
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.am, i64 %i.an ; 3 uses
  %i.ap = icmp sgt i64 %.081, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.aq = icmp eq i64 %.081, 1
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.ar = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -24 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.ao, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.at = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.at, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11684

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.au = getelementptr inbounds i8, ptr %.256102, i64 -24 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.050103, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -48 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11685

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 24                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 24
  br i1 %i.i, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  %.neg51 = udiv exact i64 %i.h, 24
  %.neg51.neg = sub nsw i64 0, %.neg51
  %i.j = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg51.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  %i.k = icmp eq i64 %i.h, 24
  br i1 %i.k, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.d, 24
  br i1 %i.m, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp sgt i64 %i.q, 24                    ; 2 uses
  br i1 %i.r, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.q, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.s = icmp eq i64 %i.q, 24
  br i1 %i.s, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.t, %i.o                       ; 3 uses
end_hunk_6
begin_hunk_7_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  br i1 %i.q, label %bb.d, label %.thread22.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !168  ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.s, %i.k
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, label %.thread22.i

.thread.i:                                        ; preds = %bb.d, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.w = xor i64 %i.m, -1
  %i.x = add nsw i64 %.01128.i, %i.w
  br label %.thread22.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIPS6_KS6_EEbT_RT0_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !168
  %i.z = icmp ult i64 %.val.val.i.i.i.i.i.i, %.val6.val.i.i.i.i.i.i
  %cond.fr.i = freeze i1 %i.z                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ab = xor i64 %i.m, -1
  %i.ac = add nsw i64 %.01128.i, %i.ab
  %spec.select.i = select i1 %cond.fr.i, i64 %i.ac, i64 %i.m
  %spec.select27.i = select i1 %cond.fr.i, ptr %i.aa, ptr %.029.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIPS6_KS6_EEbT_RT0_.exit.i, %.thread.i, %bb.e, %bb.c
  %i.ad = phi i64 [ %i.m, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %i.m, %bb.e ], [ %i.x, %.thread.i ] ; 2 uses
  %i.ae = phi ptr [ %.029.i, %bb.c ], [ %spec.select27.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIPS6_KS6_EEbT_RT0_.exit.i ], [ %.029.i, %bb.e ], [ %i.v, %.thread.i ] ; 3 uses
  %i.af = icmp sgt i64 %i.ad, 0
  br i1 %i.af, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11724

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread22.i
  %.pre = ptrtoint ptr %i.ae to i64
  br label %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %i.ae, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8495, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub i64 %.pre-phi, %i.c
  %i.ah = ashr exact i64 %i.ag, 5
  br label %tailrecurse

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.ai = sdiv i64 %.tr8797, 2                    ; 2 uses
  %i.aj = getelementptr inbounds [32 x i8], ptr %.tr8495, i64 %i.ai ; 4 uses
  %i.ak = ptrtoint ptr %.tr94 to i64              ; 3 uses
  %i.al = sub i64 %i.c, %i.ak
  %i.am = ashr exact i64 %i.al, 5                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val.val.i.i.i.i.i.i63 = load i64, ptr %i.ar, align 8
  br label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %.thread.i68, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.028.i = phi ptr [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bk, %.thread.i68 ] ; 4 uses
  %.01127.i = phi i64 [ %i.am, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %i.bj, %.thread.i68 ] ; 3 uses
  %i.as = lshr i64 %.01127.i, 1                   ; 6 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.028.i, i64 %i.as ; 5 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !168 ; 2 uses
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %.thread.i68, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.aw = icmp eq i64 %i.ao, %i.au
  br i1 %i.aw, label %bb.g, label %.thread22.i67

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !168 ; 2 uses
  %i.az = icmp ult i64 %i.aq, %i.ay
  br i1 %i.az, label %.thread.i68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp eq i64 %i.aq, %i.ay
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread22.i67

.thread22.i67:                                    ; preds = %bb.h, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bc = xor i64 %i.as, -1
  %i.bd = add nsw i64 %.01127.i, %i.bc
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val6.val.i.i.i.i.i.i69 = load i64, ptr %i.be, align 8, !tbaa !168
  %i.bf = icmp ult i64 %.val.val.i.i.i.i.i.i63, %.val6.val.i.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.bf
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.bg = xor i64 %i.as, -1
  %i.bh = add nsw i64 %.01127.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread22.i67, %bb.g, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.bj = phi i64 [ %i.bd, %.thread22.i67 ], [ %i.bh, %bb.i ], [ %i.as, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.as, %bb.g ], [ %i.as, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bb, %.thread22.i67 ], [ %i.bi, %bb.i ], [ %.028.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.028.i, %bb.g ], [ %.028.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE8EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11725

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.bk to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.bk, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.bm = sub i64 %.pre-phi106, %i.ak
  %i.bn = ashr exact i64 %i.bm, 5
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ah, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bn, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bo = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.bp = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.bo, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.bp, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.bq = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.bo, %6
  %.not56 = icmp sgt i64 %i.bq, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE8EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1047", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.079.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.079.i, ptr noundef nonnull align 8 dereferenceable(32) %.010.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.010.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11726

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %.idx96 = shl nsw i64 %.085, 5                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [32 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.155105, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105, ptr noundef nonnull align 8 dereferenceable(32) %.052106, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.052106, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 64 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11727

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.054, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %.idx = shl nsw i64 %.085, 5
  %i.ai = add nsw i64 %.idx, -32                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.054, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [32 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -32 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11728

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -32 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds i8, ptr %.256102, i64 -64 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11729

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 32
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [32 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 32
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 32
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 32
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 32
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE8EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
end_hunk_7
begin_hunk_8_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr101, ptr noundef %.089, ptr noundef %i.bu, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.bv = sub nsw i64 %.tr95104, %.052            ; 3 uses
  %.not = icmp sgt i64 %i.bt, %6
  %.not56 = icmp sgt i64 %i.bv, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_T0_SC_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !337

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i64 0, %i.e
  %i.h = getelementptr inbounds [32 x i8], ptr %4, i64 %i.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.d, 32
  br i1 %i.i, label %bb.e, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %4, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %2, %3
  br i1 %i.k, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %3, i64 -32
  br label %.outer

.outer:                                           ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread, %bb.g
  %.026.ph.pn = phi ptr [ %1, %bb.g ], [ %.026.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread ] ; 3 uses
  %.024.ph = phi ptr [ %i.l, %bb.g ], [ %.024, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread ]
  %.0.ph = phi ptr [ %4, %bb.g ], [ %i.ad, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread ]
  %.026.ph = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -32 ; 4 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -24
  %i.m = getelementptr inbounds i8, ptr %.026.ph.pn, i64 -16
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.p
  %.024 = phi ptr [ %i.ar, %bb.p ], [ %.024.ph, %.outer ] ; 8 uses
  %.0 = phi ptr [ %i.ap, %bb.p ], [ %.0.ph, %.outer ] ; 3 uses
  %i.n = load i64, ptr %.024, align 8, !tbaa !168 ; 2 uses
  %i.o = load i64, ptr %.026.ph, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.n, %i.o
  br i1 %.not.i.i.i, label %bb.i, label %.split

.split:                                           ; preds = %bb.h
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1393 ; 4 uses
  %i.s = icmp ult i64 %i.r, 9
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !1393 ; 4 uses
  %i.t = icmp ult i64 %.pre.i.i.i, 9
  %or.cond.i.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !525
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !525
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %.pre.i.i.i)
  %i.y = tail call i32 @memcmp(ptr noundef %i.v, ptr noundef %i.w, i64 noundef %i.x) #33 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %.split34

.split34:                                         ; preds = %bb.j
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = icmp ult i64 %i.r, %.pre.i.i.i
  %spec.select.i.i.i = and i1 %i.ab, %i.aa
  br i1 %spec.select.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit: ; preds = %bb.i
  %i.ac = icmp ult i64 %i.r, %.pre.i.i.i
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread: ; preds = %bb.j, %.split34, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit
  %i.ad = getelementptr inbounds i8, ptr %.0, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %.026.ph, i64 32, i1 false)
  %i.ae = icmp eq ptr %0, %.026.ph
  br i1 %i.ae, label %bb.k, label %.outer, !llvm.loop !11769

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %.024, i64 32
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !337

bb.l:                                             ; preds = %bb.k
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ad, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %2, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.an = icmp eq i64 %i.ai, 32
  br i1 %i.an, label %bb.n, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds i8, ptr %.0, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.o:                                             ; preds = %.split34, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE9EEEEEclIPS6_SA_EEbT_T0_.exit
  %i.ap = getelementptr inbounds i8, ptr %.0, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %.024, i64 32, i1 false)
  %i.aq = icmp eq ptr %2, %.024
  br i1 %i.aq, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds i8, ptr %.024, i64 -32
  br label %bb.h, !llvm.loop !11769

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.e, %bb.d, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE9EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1050", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 5                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 5                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %.079.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.079.i, ptr noundef nonnull align 8 dereferenceable(32) %.010.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.010.i, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11770

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 8 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 15 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %.idx96 = shl nsw i64 %.085, 5                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [32 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter142 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter146 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 32
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter147 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter147.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.155105, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.155105, ptr noundef nonnull align 8 dereferenceable(32) %.052106, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.052106, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 64 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11771

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.054, i64 %.085 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %.idx = shl nsw i64 %.085, 5
  %i.ai = add nsw i64 %.idx, -32                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.054, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.054, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.054, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [32 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.081, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.081, 1
  %i.as = icmp eq i64 %.081, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.at = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -32 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.256.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11772

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.256102, i64 -32 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.050103, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds i8, ptr %.256102, i64 -64 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.050103, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11773

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 32
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [32 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 32
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 32
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 32
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 32
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
end_hunk_8
