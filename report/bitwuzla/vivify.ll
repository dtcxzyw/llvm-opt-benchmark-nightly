Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/vivify?download=true
inline.NumInlined: 1487
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal17vivify_strengthenEPNS_6ClauseE:bb.a
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.n = load i32, ptr %i.m, align 4, !tbaa !171
  tail call void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5112 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !216
  %i.q = add nsw i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !216
  %i.r = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.r, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_T1_(ptr %i.g, ptr %i.f, i64 noundef %i.u, ptr nonnull %0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_(ptr %i.g, ptr %i.f, ptr nonnull %0)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !170
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit: ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %i.g, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.x = load i32, ptr %i.w, align 4, !tbaa !168  ; 2 uses
  %i.y = load i32, ptr %i.v, align 4, !tbaa !171  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179 ; 2 uses
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !180 ; 2 uses
  %i.ae = icmp slt i8 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ag = tail call noundef i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !174
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !176
  %i.al = add nsw i32 %i.ak, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit
  %.0 = phi i32 [ %i.al, %bb.f ], [ %i.x, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !171 ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.aa, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !180
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.as = icmp sgt i8 %i.ad, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  br i1 %i.as, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre20 = load ptr, ptr %i.at, align 8, !tbaa !174
  %.pre21 = tail call noundef i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %.pre22 = zext nneg i32 %.pre21 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = tail call noundef i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !174 ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !176
  %i.az = tail call noundef i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !176
  %.not = icmp sgt i32 %i.ay, %i.bc
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre-phi23 = phi i64 [ %.pre22, %._crit_edge ], [ %i.ba, %bb.i ]
  %i.bd = phi ptr [ %.pre20, %._crit_edge ], [ %i.aw, %bb.i ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.pre-phi23
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !176
  %i.bg = add nsw i32 %i.bf, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.1 = phi i32 [ %.0, %bb.i ], [ %i.bg, %bb.j ], [ %.0, %bb.g ] ; 2 uses
  %i.bh = icmp slt i32 %.1, %i.x
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = tail call noundef ptr @_ZN7CaDiCaL8Internal13new_clause_asEPKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.c, %bb.m
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !170 ; 2 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !169
  %.not.i.i18 = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i18, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.bj, ptr %i.e, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !188
  %.not.i.i19 = icmp eq ptr %i.bo, %i.bm
  br i1 %.not.i.i19, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !188
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare noundef ptr @_ZN7CaDiCaL8Internal13new_clause_asEPKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal13vivify_clauseERNS_8VivifierEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !223, !range !198, !noundef !199
  %i.d = trunc nuw i8 %i.c to i1                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = and i32 %i.f, -196609
  %i.h = or disjoint i32 %i.g, 65536
  store i32 %i.h, ptr %i.e, align 8
  %i.i = and i32 %i.f, 16
  %.not167 = icmp eq i32 %i.i, 0
  br i1 %.not167, label %bb.b, label %bb.bv

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !170  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.l, ptr %i.m, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %i.n, %bb.b ], [ %i.l, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !171  ; 2 uses
  %i.s = sext i32 %i.r to i64
  %.idx = shl nsw i64 %i.s, 2
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %.not168268 = icmp eq i32 %i.r, 0
  br i1 %.not168268, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread220, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.x = phi ptr [ %i.l, %.lr.ph ], [ %i.bb, %bb.l ] ; 6 uses
  %i.y = phi ptr [ %i.o, %.lr.ph ], [ %i.bc, %bb.l ] ; 6 uses
  %.0157269 = phi ptr [ %i.p, %.lr.ph ], [ %i.bd, %bb.l ] ; 3 uses
  %i.z = load i32, ptr %.0157269, align 4, !tbaa !171 ; 4 uses
  %i.aa = tail call noundef i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !179
  %i.ac = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !180 ; 2 uses
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sext i8 %i.ae to i32
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !174
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ac
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !176
  %.not9.i = icmp eq i32 %i.ai, 0
  %spec.select.i.a = select i1 %.not9.i, i32 %i.af, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.c ], [ %spec.select.i.a, %bb.d ] ; 2 uses
  %3 = icmp slt i32 %i.z, 0
  %4 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %3, i32 %4, i32 %.0.i ; 2 uses
  %5 = icmp slt i32 %spec.select10.i, 1
  br i1 %5, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.not169 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not169, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !181
  %.not.i191 = icmp eq ptr %i.y, %i.aj
  br i1 %.not.i191, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.z, ptr %i.y, align 4, !tbaa !171
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !169
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.al = ptrtoint ptr %i.y to i64
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #20 ; 5 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  %i.ax = load i32, ptr %.0157269, align 4, !tbaa !171
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !171
  %i.ay = icmp sgt i64 %i.an, 0
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.x, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.av, ptr %i.k, align 8, !tbaa !170
  store ptr %i.az, ptr %i.m, align 8, !tbaa !169
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !181
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.bb = phi ptr [ %i.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.x, %bb.g ], [ %i.x, %bb.e ]
  %i.bc = phi ptr [ %i.az, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ak, %bb.g ], [ %i.y, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0157269, i64 4 ; 2 uses
  %.not168 = icmp eq ptr %i.bd, %i.t
  br i1 %.not168, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread220, label %bb.c

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.not170 = icmp eq i32 %i.z, 0
  br i1 %.not170, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread220, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2)
  br label %bb.bv

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread220: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.be = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.o, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.bc, %bb.l ] ; 4 uses
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !295 ; 4 uses
  %.not.i.i192 = icmp eq ptr %i.bf, %i.be
  br i1 %.not.i.i192, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL17vivify_more_noccsEEvT_S9_T0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread220
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = xor i64 %i.bl, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL17vivify_more_noccsEEEEvT_SC_T0_T1_(ptr %i.bf, ptr %i.be, i64 noundef %i.bm, ptr nonnull %0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL17vivify_more_noccsEEEEvT_SC_T0_(ptr %i.bf, ptr %i.be, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL17vivify_more_noccsEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL17vivify_more_noccsEEvT_S9_T0_.exit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread220, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5032 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !224
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !224
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 6 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !168 ; 4 uses
  %.not171 = icmp eq i32 %i.br, 0
  br i1 %.not171, label %.thread225, label %bb.o

bb.o:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL17vivify_more_noccsEEvT_S9_T0_.exit
  %i.bs = load i32, ptr %i.q, align 8, !tbaa !171 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %.idx289 = shl nsw i64 %i.bt, 2
  %i.bu = getelementptr inbounds i8, ptr %i.p, i64 %.idx289
  %.not172270 = icmp eq i32 %i.bs, 0
  br i1 %.not172270, label %.thread.thread.thread, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !179
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph272
  %.0144271 = phi ptr [ %i.p, %.lr.ph272 ], [ %i.ck, %bb.r ] ; 2 uses
  %i.bx = load i32, ptr %.0144271, align 4, !tbaa !171 ; 4 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !180 ; 2 uses
  %or.cond188 = icmp slt i8 %i.ca, 1
  br i1 %or.cond188, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cc = tail call noundef i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !174
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !178
  %i.ci = icmp ne ptr %i.ch, %2
  %.not174 = icmp eq i32 %i.bx, 0
  %or.cond366 = or i1 %i.ci, %.not174
  br i1 %or.cond366, label %.thread.thread, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cj = icmp eq i8 %i.ca, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.0144271, i64 4 ; 2 uses
  %.not172 = icmp eq ptr %i.ck, %i.bu
  %or.cond365 = select i1 %i.cj, i1 true, i1 %.not172
  br i1 %or.cond365, label %.thread.thread, label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cm = tail call noundef i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !174
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !176
  %i.cr = add nsw i32 %i.cq, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.cr)
  %.pre = load i32, ptr %i.bq, align 4, !tbaa !168
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.r, %bb.q, %bb.s
  %i.cs = phi i32 [ %.pre, %bb.s ], [ %i.br, %bb.q ], [ %i.br, %bb.r ] ; 2 uses
  %.not175 = icmp eq i32 %i.cs, 0
  br i1 %.not175, label %.thread225, label %.thread.thread.thread

.thread.thread.thread:                            ; preds = %bb.o, %.thread.thread
  %i.ct = phi i32 [ %i.cs, %.thread.thread ], [ %i.br, %bb.o ]
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !295 ; 2 uses
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !295 ; 2 uses
  %.not247274 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not247274, label %.thread225, label %.lr.ph277

.lr.ph277:                                        ; preds = %.thread.thread.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !179
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 5048 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph277, %select.unfold
  %.0141276 = phi i32 [ 1, %.lr.ph277 ], [ %.2143, %select.unfold ] ; 5 uses
  %.sroa.0214.0275 = phi ptr [ %i.cu, %.lr.ph277 ], [ %i.dt, %select.unfold ] ; 2 uses
  %i.db = load i32, ptr %.sroa.0214.0275, align 4, !tbaa !171 ; 3 uses
  %i.dc = tail call noundef i32 @llvm.abs.i32(i32 %i.db, i1 true)
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !180 ; 2 uses
  %.not.i193 = icmp eq i8 %i.df, 0
  br i1 %.not.i193, label %_ZN7CaDiCaL8Internal5fixedEi.exit198, label %bb.u

bb.u:                                             ; preds = %bb.t
  %6 = sext i8 %i.df to i32
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !174
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dd
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !176
  %.not9.i194 = icmp eq i32 %i.di, 0
  %spec.select.i195 = select i1 %.not9.i194, i32 %6, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit198

_ZN7CaDiCaL8Internal5fixedEi.exit198:             ; preds = %bb.t, %bb.u
  %.0.i196 = phi i32 [ 0, %bb.t ], [ %spec.select.i195, %bb.u ] ; 2 uses
  %7 = icmp slt i32 %i.db, 0
  %8 = sub nsw i32 0, %.0.i196
  %spec.select10.i197 = select i1 %7, i32 %8, i32 %.0.i196
  %.not176 = icmp eq i32 %spec.select10.i197, 0
  br i1 %.not176, label %bb.v, label %select.unfold

bb.v:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit198
  %i.dj = sext i32 %.0141276 to i64
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !172
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !298
  %i.dn = sub nsw i32 0, %i.db
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = load i64, ptr %i.da, align 8, !tbaa !299
  %i.dq = add nsw i64 %i.dp, 1
  store i64 %i.dq, ptr %i.da, align 8, !tbaa !299
  %i.dr = add nsw i32 %.0141276, 1
  %.not177 = icmp slt i32 %.0141276, %i.ct
  br i1 %.not177, label %select.unfold, label %.thread225

bb.x:                                             ; preds = %bb.v
  %i.ds = add nsw i32 %.0141276, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.ds)
  br label %.thread225

select.unfold:                                    ; preds = %bb.w, %_ZN7CaDiCaL8Internal5fixedEi.exit198
  %.2143 = phi i32 [ %.0141276, %_ZN7CaDiCaL8Internal5fixedEi.exit198 ], [ %i.dr, %bb.w ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0214.0275, i64 4 ; 2 uses
  %.not247 = icmp eq ptr %i.dt, %i.cv
  br i1 %.not247, label %.thread225, label %bb.t

.thread225:                                       ; preds = %select.unfold, %bb.w, %.thread.thread.thread, %bb.x, %.thread.thread, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL17vivify_more_noccsEEvT_S9_T0_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  store ptr %2, ptr %i.du, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !213
  %i.dv = load ptr, ptr %i.k, align 8, !tbaa !295 ; 2 uses
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !295 ; 2 uses
  %.not248280 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not248280, label %.loopexit, label %.lr.ph284

.lr.ph284:                                        ; preds = %.thread225
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph284, %bb.aw
  %.0134283 = phi i32 [ 0, %.lr.ph284 ], [ %.4.ph, %bb.aw ] ; 5 uses
  %.0135282 = phi i32 [ 0, %.lr.ph284 ], [ %.4139.ph, %bb.aw ]
  %.sroa.0210.0281 = phi ptr [ %i.dv, %.lr.ph284 ], [ %i.hh, %bb.aw ] ; 4 uses
  %.not178 = icmp eq i32 %.0135282, 0
  br i1 %.not178, label %bb.z, label %.thread240

bb.z:                                             ; preds = %bb.y
  %i.ea = load i32, ptr %.sroa.0210.0281, align 4, !tbaa !171 ; 7 uses
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !179
  %i.ec = sext i32 %i.ea to i64
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !180 ; 2 uses
  %.not179 = icmp eq i8 %i.ee, 0
  br i1 %.not179, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = tail call noundef i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %i.eg = zext nneg i32 %i.ef to i64              ; 2 uses
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !174
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.eg ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !176
  %.not180 = icmp eq i32 %i.ej, 0
  br i1 %.not180, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !178
  %.not181 = icmp eq ptr %i.el, null
  br i1 %.not181, label %bb.aw, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = icmp sgt i8 %i.ee, 0                    ; 3 uses
  %brmerge.not = and i1 %i.em, %i.d
  %.mux = select i1 %i.em, i32 %i.ea, i32 0
  %.mux245 = select i1 %i.em, i32 %.0134283, i32 %i.ea
  br i1 %brmerge.not, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !214
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eg ; 2 uses
  %i.er = load i32, ptr %i.eq, align 1
  %i.es = or i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.eu = load i32, ptr %.sroa.0210.0281, align 4, !tbaa !171
  %i.ev = sub nsw i32 0, %i.eu                    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !169 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !181
  %.not.i.i199 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i.i199, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !171
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.fa, ptr %i.ew, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.af:                                            ; preds = %bb.ad
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !170 ; 4 uses
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 5 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.ff, label %bb.ag, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.fg = ashr exact i64 %i.fe, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 2305843009213693951)
  %i.fk = select i1 %i.fi, i64 2305843009213693951, i64 %i.fj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #20 ; 4 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fe ; 2 uses
  store i32 %i.ev, ptr %i.fn, align 4, !tbaa !171
  %i.fo = icmp sgt i64 %i.fe, 0
  br i1 %i.fo, label %bb.ah, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr align 4 %i.fb, i64 %i.fe, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.fb) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fm, ptr %i.et, align 8, !tbaa !170
  store ptr %i.fp, ptr %i.ew, align 8, !tbaa !169
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.fq, ptr %i.ey, align 8, !tbaa !181
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.fr = load ptr, ptr %i.en, align 8, !tbaa !178
  call void @_ZN7CaDiCaL8Internal24vivify_analyze_redundantERNS_8VivifierEPNS_6ClauseERb(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.fr, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.fs = load i8, ptr %i.a, align 1, !tbaa !213, !range !198, !noundef !199 ; 2 uses
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  tail call void @_ZN7CaDiCaL8Internal28vivify_post_process_analysisEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2, i32 noundef %i.ea)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !295
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !295
  %i.fy = icmp eq ptr %i.fv, %i.fx
  br i1 %i.fy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 5096 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !300
  %i.gb = add nsw i64 %i.ga, 1
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !300
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !197, !range !198, !noundef !199
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gf = load i32, ptr %.sroa.0210.0281, align 4, !tbaa !171
  %i.gg = load ptr, ptr %i.en, align 8, !tbaa !178
  tail call void @_ZN7CaDiCaL8Internal17vivify_build_lratEiPNS_6ClauseERSt6vectorISt5tupleIJiS2_bEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.gf, ptr noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  tail call void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gh = load i32, ptr %i.bq, align 4, !tbaa !168
  %i.gi = add nsw i32 %i.gh, -1
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.gi)
  br label %.loopexit

bb.ao:                                            ; preds = %bb.z
  %i.gj = load i64, ptr %i.dz, align 8, !tbaa !301
  %i.gk = add nsw i64 %i.gj, 1
  store i64 %i.gk, ptr %i.dz, align 8, !tbaa !301
  %i.gl = sub nsw i32 0, %i.ea
  tail call void @_ZN7CaDiCaL8Internal13vivify_assumeEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.gl)
  %i.gm = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal16vivify_propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.gm, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.d, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !186
  call void @_ZN7CaDiCaL8Internal24vivify_analyze_redundantERNS_8VivifierEPNS_6ClauseERb(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %i.go, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.gp = load i8, ptr %i.a, align 1, !tbaa !213, !range !198, !noundef !199 ; 3 uses
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZN7CaDiCaL8Internal28vivify_post_process_analysisEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2, i32 noundef -2147483648)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !295
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !295
  %i.gv = icmp eq ptr %i.gs, %i.gu
end_hunk_0
