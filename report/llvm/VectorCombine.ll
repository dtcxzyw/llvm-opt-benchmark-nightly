Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorCombine?download=true
inline.NumInlined: 11786
inline.NumDeleted: 5111
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZSt22__merge_without_bufferIPSt4pairIiiElN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEEvT_SD_SD_T0_SE_T1_":bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.tr7585, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !164
  %i.l = load i32, ptr %i.j, align 4, !tbaa !164
  store i32 %i.l, ptr %i.i, align 4, !tbaa !164
  store i32 %i.k, ptr %i.j, align 4, !tbaa !164
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr7787, %.tr7888
  %.sroa.05.0.copyload = load ptr, ptr %5, align 8, !tbaa !170 ; 2 uses
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !298 ; 2 uses
  %i.n = ptrtoint ptr %.tr7585 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48

_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr7787, 2                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.tr83, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.020.i = phi i64 [ %.1.i, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.r, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01119.i = phi ptr [ %.112.i, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7585, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.t = lshr i64 %.020.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01119.i, i64 %i.t ; 2 uses
  %.val14.i = load i64, ptr %i.u, align 4
  %.val15.i = load i64, ptr %i.p, align 4
  %.val13.val.i = load ptr, ptr %.sroa.26.0.copyload, align 8, !tbaa !99
  %i.v = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbENK4$_13clEPS2_St4pairIiiES7_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %.sroa.05.0.copyload, ptr noundef readonly %.val13.val.i, i64 %.val14.i, i64 %.val15.i) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = xor i64 %i.t, -1
  %i.y = add nsw i64 %.020.i, %i.x
  %.112.i = select i1 %i.v, ptr %i.w, ptr %.01119.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.t      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !20

"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.n, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr7585, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.n
  %i.ab = ashr exact i64 %i.aa, 3
  br label %tailrecurse

_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48: ; preds = %bb.e
  %i.ac = sdiv i64 %.tr7888, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.tr7585, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %.tr83 to i64              ; 3 uses
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %.020.i53 = phi i64 [ %.1.i61, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52 ], [ %i.ag, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48 ] ; 2 uses
  %.01119.i54 = phi ptr [ %.112.i60, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52 ], [ %.tr83, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48 ] ; 2 uses
  %i.ai = lshr i64 %.020.i53, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.01119.i54, i64 %i.ai ; 2 uses
  %.val14.i57 = load i64, ptr %i.ad, align 4
  %.val15.i58 = load i64, ptr %i.aj, align 4
  %.val13.val.i59 = load ptr, ptr %.sroa.26.0.copyload, align 8, !tbaa !99
  %i.ak = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbENK4$_13clEPS2_St4pairIiiES7_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %.sroa.05.0.copyload, ptr noundef readonly %.val13.val.i59, i64 %.val14.i57, i64 %.val15.i58) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = xor i64 %i.ai, -1
  %i.an = add nsw i64 %.020.i53, %i.am
  %.112.i60 = select i1 %i.ak, ptr %.01119.i54, ptr %i.al ; 3 uses
  %.1.i61 = select i1 %i.ak, i64 %i.ai, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i61, 0
  br i1 %i.ao, label %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !21

"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %.pre92 = ptrtoint ptr %.112.i60 to i64
  br label %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48
  %.pre-phi93 = phi i64 [ %.pre92, %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.ae, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48 ]
  %.011.lcssa.i51 = phi ptr [ %.112.i60, %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr83, %_ZSt9__advanceIPSt4pairIiiElEvRT_T0_St26random_access_iterator_tag.exit48 ]
  %i.ap = sub i64 %.pre-phi93, %i.ae
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit", %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit"
  %.072 = phi ptr [ %i.p, %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ], [ %.011.lcssa.i51, %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.071 = phi ptr [ %.011.lcssa.i, %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ], [ %i.ad, %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.039 = phi i64 [ %i.ab, %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ], [ %i.ac, %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.o, %"_ZSt13__lower_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ], [ %i.aq, %"_ZSt13__upper_boundIPSt4pairIiiES1_N9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEET_SD_SD_RKT0_T1_.exit" ] ; 2 uses
  %i.ar = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIiiEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.072, ptr noundef %.tr7585, ptr noundef %.071) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIPSt4pairIiiElN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEEvT_SD_SD_T0_SE_T1_"(ptr noundef %.tr83, ptr noundef %.072, ptr noundef %i.ar, i64 noundef %.0, i64 noundef %.039, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.as = sub nsw i64 %.tr7787, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr7888, %.039             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPSt4pairIiiEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.m, 56
  br i1 %min.iters.check161, label %.lr.ph.i.preheader185, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0163 = icmp ult ptr %0, %i.s
  %bound1164 = icmp ult ptr %1, %i.r
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph.i.preheader185, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck162
  %n.vec167 = and i64 %i.o, 4611686018427387902   ; 3 uses
  %i.t = shl i64 %n.vec167, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next180, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 3                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %wide.vec172 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !164, !alias.scope !1375, !noalias !1376
  %wide.vec175 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !164, !alias.scope !1376
  store <4 x i32> %wide.vec175, ptr %next.gep171, align 4, !tbaa !164, !alias.scope !1375, !noalias !1376
  store <4 x i32> %wide.vec172, ptr %next.gep170, align 4, !tbaa !164, !alias.scope !1376
  %index.next180 = add nuw i64 %index169, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next180, %n.vec167
  br i1 %i.x, label %middle.block181, label %vector.body168, !llvm.loop !1369

middle.block181:                                  ; preds = %vector.body168
  %cmp.n182 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n182, label %_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader185

.lr.ph.i.preheader185:                            ; preds = %vector.memcheck162, %.lr.ph.i.preheader, %middle.block181
  %.010.i.ph = phi ptr [ %1, %vector.memcheck162 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block181 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck162 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block181 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader185, %.lr.ph.i
  %.010.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader185 ] ; 4 uses
  %.079.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader185 ] ; 4 uses
  %i.y = load i32, ptr %.079.i, align 4, !tbaa !164
  %i.z = load i32, ptr %.010.i, align 4, !tbaa !164
  store i32 %i.z, ptr %.079.i, align 4, !tbaa !164
  store i32 %i.y, ptr %.010.i, align 4, !tbaa !164
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !164
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !164
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !164
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !164
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !1370

bb.d:                                             ; preds = %bb.c
  %i.ag = sub i64 %i.c, %i.g
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.070 = phi i64 [ %i.f, %bb.d ], [ %.070.be, %.backedge ] ; 7 uses
  %.066 = phi i64 [ %i.i, %bb.d ], [ %.066.be, %.backedge ] ; 14 uses
  %.041 = phi ptr [ %0, %bb.d ], [ %.041.be, %.backedge ] ; 18 uses
  %i.ai = sub nsw i64 %.070, %.066                ; 9 uses
  %i.aj = icmp slt i64 %.066, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %.041, i64 %.066 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 14
  br i1 %min.iters.check, label %.lr.ph89.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89.preheader
  %i.am = shl i64 %.070, 3                        ; 3 uses
  %i.an = shl i64 %.066, 3                        ; 3 uses
  %i.ao = add i64 %i.am, -4                       ; 2 uses
  %i.ap = sub i64 %i.ao, %i.an
  %3 = getelementptr i8, ptr %.041, i64 %i.ap     ; 3 uses
  %i.aq = getelementptr i8, ptr %.041, i64 %i.ao  ; 3 uses
  %i.ar = getelementptr i8, ptr %.041, i64 4      ; 3 uses
  %4 = sub i64 %i.am, %i.an
  %i.as = getelementptr i8, ptr %.041, i64 %4     ; 3 uses
  %i.at = getelementptr i8, ptr %.041, i64 %i.an
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 3 uses
  %i.av = getelementptr i8, ptr %.041, i64 %i.am  ; 3 uses
  %bound0 = icmp ult ptr %.041, %i.aq
  %bound1 = icmp ult ptr %i.al, %3
  %found.conflict = and i1 %bound0, %bound1
  %bound0128 = icmp ult ptr %.041, %i.as
  %bound1129 = icmp ult ptr %i.ar, %3
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict, %found.conflict130
  %bound0131 = icmp ult ptr %.041, %i.av
  %bound1132 = icmp ult ptr %i.au, %3
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx, %found.conflict133
  %bound0135 = icmp ult ptr %i.al, %i.as
  %bound1136 = icmp ult ptr %i.ar, %i.aq
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %i.al, %i.av
  %bound1140 = icmp ult ptr %i.au, %i.aq
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %i.ar, %i.av
  %bound1144 = icmp ult ptr %i.au, %i.as
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  br i1 %conflict.rdx146, label %.lr.ph89.preheader186, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775806     ; 4 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.041, i64 %i.aw  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.az ; 2 uses
  %next.gep147 = getelementptr i8, ptr %.041, i64 %i.az ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !164
  %wide.vec149 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !164
  store <4 x i32> %wide.vec149, ptr %next.gep147, align 4, !tbaa !164
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !164
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge90, label %.lr.ph89.preheader186

.lr.ph89.preheader186:                            ; preds = %vector.memcheck, %.lr.ph89.preheader, %middle.block
  %.03987.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.04086.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph89.preheader ], [ %i.ax, %middle.block ] ; 5 uses
  %.185.ph = phi ptr [ %.041, %vector.memcheck ], [ %.041, %.lr.ph89.preheader ], [ %i.ay, %middle.block ] ; 5 uses
  %i.bb = sub i64 %.070, %.066
  %i.bc = xor i64 %.03987.ph, -1
  %i.bd = add i64 %.070, %i.bc
  %xtraiter189 = and i64 %i.bb, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph89.prol.loopexit, label %.lr.ph89.prol

.lr.ph89.prol:                                    ; preds = %.lr.ph89.preheader186
  %i.be = load i32, ptr %.185.ph, align 4, !tbaa !164
  %i.bf = load i32, ptr %.04086.ph, align 4, !tbaa !164
  store i32 %i.bf, ptr %.185.ph, align 4, !tbaa !164
  store i32 %i.be, ptr %.04086.ph, align 4, !tbaa !164
  %i.bg = getelementptr inbounds nuw i8, ptr %.185.ph, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !164
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !164
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !164
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !164
  %i.bk = getelementptr inbounds nuw i8, ptr %.185.ph, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 8
  %i.bm = or disjoint i64 %.03987.ph, 1
  br label %.lr.ph89.prol.loopexit

.lr.ph89.prol.loopexit:                           ; preds = %.lr.ph89.prol, %.lr.ph89.preheader186
  %.lcssa.unr = phi ptr [ poison, %.lr.ph89.preheader186 ], [ %i.bk, %.lr.ph89.prol ]
  %.03987.unr = phi i64 [ %.03987.ph, %.lr.ph89.preheader186 ], [ %i.bm, %.lr.ph89.prol ]
  %.04086.unr = phi ptr [ %.04086.ph, %.lr.ph89.preheader186 ], [ %i.bl, %.lr.ph89.prol ]
  %.185.unr = phi ptr [ %.185.ph, %.lr.ph89.preheader186 ], [ %i.bk, %.lr.ph89.prol ]
  %i.bn = icmp eq i64 %i.bd, %.066
  br i1 %i.bn, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89, %middle.block, %bb.f
  %.1.lcssa = phi ptr [ %.041, %bb.f ], [ %i.ay, %middle.block ], [ %.lcssa.unr, %.lr.ph89.prol.loopexit ], [ %i.cd, %.lr.ph89 ]
  %i.bo = srem i64 %.070, %.066                   ; 2 uses
  %.not53 = icmp eq i64 %i.bo, 0
  br i1 %.not53, label %_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %bb.g

.lr.ph89:                                         ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89
  %.03987 = phi i64 [ %i.cf, %.lr.ph89 ], [ %.03987.unr, %.lr.ph89.prol.loopexit ]
  %.04086 = phi ptr [ %i.ce, %.lr.ph89 ], [ %.04086.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %.185 = phi ptr [ %i.cd, %.lr.ph89 ], [ %.185.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %i.bp = load i32, ptr %.185, align 4, !tbaa !164
  %i.bq = load i32, ptr %.04086, align 4, !tbaa !164
  store i32 %i.bq, ptr %.185, align 4, !tbaa !164
  store i32 %i.bp, ptr %.04086, align 4, !tbaa !164
  %i.br = getelementptr inbounds nuw i8, ptr %.185, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04086, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !164
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !164
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !164
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !164
  %i.bv = getelementptr inbounds nuw i8, ptr %.185, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.04086, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !164
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !164
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !164
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !164
  %i.bz = getelementptr inbounds nuw i8, ptr %.185, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04086, i64 12 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !164
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !164
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !164
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !164
  %i.cd = getelementptr inbounds nuw i8, ptr %.185, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04086, i64 16
  %i.cf = add nuw nsw i64 %.03987, 2              ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %i.cf, %i.ai
  br i1 %exitcond94.not.1, label %._crit_edge90, label %.lr.ph89, !llvm.loop !1372

bb.g:                                             ; preds = %._crit_edge90
  %i.cg = sub nsw i64 %.066, %i.bo
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds [8 x i8], ptr %.041, i64 %.070 ; 3 uses
  %i.ci = sub i64 0, %i.ai
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci ; 3 uses
  %i.ck = icmp sgt i64 %.066, 0
  br i1 %i.ck, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.066, 1
  %i.cl = icmp eq i64 %.066, 1
  br i1 %i.cl, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.066, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03883.epil.init = phi ptr [ %i.ch, %.lr.ph.preheader ], [ %i.de, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.282.epil.init = phi ptr [ %i.cj, %.lr.ph.preheader ], [ %i.dd, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod188 = trunc i64 %.066 to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.cm = getelementptr inbounds i8, ptr %.282.epil.init, i64 -8 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -8 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !164
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !164
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !164
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !164
  %i.cq = getelementptr inbounds i8, ptr %.282.epil.init, i64 -4 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.03883.epil.init, i64 -4 ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !164
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !164
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !164
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !164
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.2.lcssa = phi ptr [ %i.cj, %bb.h ], [ %.041, %._crit_edge.loopexit.unr-lcssa ], [ %.041, %.lr.ph.epil.preheader ]
  %i.cu = srem i64 %.070, %i.ai                   ; 2 uses
  %.not = icmp eq i64 %i.cu, 0
  br i1 %.not, label %_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.070.be = phi i64 [ %.066, %bb.g ], [ %i.ai, %._crit_edge ]
  %.066.be = phi i64 [ %i.cg, %bb.g ], [ %i.cu, %._crit_edge ]
  %.041.be = phi ptr [ %.1.lcssa, %bb.g ], [ %.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1373

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03883 = phi ptr [ %i.ch, %.lr.ph.preheader.new ], [ %i.de, %.lr.ph ] ; 4 uses
  %.282 = phi ptr [ %i.cj, %.lr.ph.preheader.new ], [ %i.dd, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cv = getelementptr inbounds i8, ptr %.282, i64 -8 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.03883, i64 -8 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !164
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !164
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !164
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !164
  %i.cz = getelementptr inbounds i8, ptr %.282, i64 -4 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.03883, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !164
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !164
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !164
  store i32 %i.db, ptr %i.da, align 4, !tbaa !164
  %i.dd = getelementptr inbounds i8, ptr %.282, i64 -16 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %.03883, i64 -16 ; 4 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !164
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !164
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !164
  store i32 %i.df, ptr %i.de, align 4, !tbaa !164
  %i.dh = getelementptr inbounds i8, ptr %.282, i64 -12 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.03883, i64 -12 ; 2 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !164
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !164
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !164
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !164
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1374

_ZSt11swap_rangesIPSt4pairIiiES2_ET0_T_S4_S3_.exit: ; preds = %._crit_edge, %._crit_edge90, %.lr.ph.i, %middle.block181, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block181 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge90 ], [ %i.ah, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIPSt4pairIiiElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113VectorCombine17foldSelectShuffleERN4llvm11InstructionEbE3$_4EEEvT_SD_SD_T0_SE_T1_SE_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 576460752303423488) %6, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %7) unnamed_addr #3 {
bb.a:
  %.not91 = icmp sgt i64 %3, %6
  %.not5392 = icmp sgt i64 %4, %6
  %or.cond93 = and i1 %.not91, %.not5392
  br i1 %or.cond93, label %.lr.ph, label %tailrecurse._crit_edge
end_hunk_0
