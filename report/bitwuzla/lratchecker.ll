Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lratchecker?download=true
inline.NumInlined: 994
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7CaDiCaL11LratChecker18add_derived_clauseEmbRKSt6vectorIiSaIiEERKS1_ImSaImEE:bb.a
  %i.ef = icmp eq i64 %.highbits.i.i43, 0
  br i1 %i.ef, label %.lr.ph.i.i40, label %_ZN7CaDiCaL11LratChecker6insertEv.exit, !llvm.loop !0

_ZN7CaDiCaL11LratChecker6insertEv.exit:           ; preds = %.lr.ph.i.i40, %bb.ab
  %.0.lcssa.i.i39 = phi i64 [ %i.dx, %bb.ab ], [ %i.ec, %.lr.ph.i.i40 ]
  %i.eg = add i64 %i.dr, -1
  %i.eh = and i64 %.0.lcssa.i.i39, %i.eg
  %i.ei = tail call noundef ptr @_ZN7CaDiCaL11LratChecker10new_clauseEv(ptr noundef nonnull align 8 dereferenceable(424) %0) ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !68
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eh ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !69
  store ptr %i.em, ptr %i.ei, align 8, !tbaa !29
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7CaDiCaL11LratChecker6insertEv.exit, %._crit_edge
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !23 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.eq, %i.eo
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ac
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.ac, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !76  ; 7 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 5760
  %i.et = load i32, ptr %i.es, align 8, !tbaa !220
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 3608
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !221
  %.not23 = icmp sgt i32 %i.et, %i.ev
  br i1 %.not23, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 5728
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 3620
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !222
  %.not.i44 = icmp eq i32 %i.ey, 0
  br i1 %.not.i44, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.er)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit45

bb.af:                                            ; preds = %bb.ad
  %i.fa = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.er)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit45

_ZN7CaDiCaL8Internal4timeEv.exit45:               ; preds = %bb.ae, %bb.af
  %i.fb = phi double [ %i.ez, %bb.ae ], [ %i.fa, %bb.af ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.er, ptr noundef nonnull align 8 dereferenceable(36) %i.ew, double noundef %i.fb)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZN7CaDiCaL8Internal4timeEv.exit45
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratChecker21add_assumption_clauseEmRKSt6vectorIiSaIiEERKS1_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(424) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not72 = icmp eq ptr %i.a, %i.c
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.g

._crit_edge:                                      ; preds = %bb.x, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(424) %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.k = load ptr, ptr %0, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(424) %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !230  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !231
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %1, ptr %i.p, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !230
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !209  ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #26
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #23 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store i64 %1, ptr %i.af, align 8, !tbaa !30
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.t, i64 %i.w, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !209
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !231
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.b, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.045.073 = phi ptr [ %i.a, %.lr.ph ], [ %i.da, %bb.x ] ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !36  ; 4 uses
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !36  ; 3 uses
  %i.al = load i32, ptr %.sroa.045.073, align 4, !tbaa !37
  %i.am = sub nsw i32 0, %i.al                    ; 14 uses
  %i.an = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = ashr i64 %i.ap, 4                       ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.as = and i64 %i.ap, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.bf, %bb.l ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.be, %bb.l ] ; 9 uses
  %i.at = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !37
  %i.au = icmp eq i32 %i.at, %i.am
  br i1 %i.au, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !37
  %i.ax = icmp eq i32 %i.aw, %i.am
  br i1 %i.ax, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ba = icmp eq i32 %i.az, %i.am
  br i1 %i.ba, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit90, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !37
  %i.bd = icmp eq i32 %i.bc, %i.am
  br i1 %i.bd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit92, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bf = add nsw i64 %.052.i.i.i, -1
  %4 = icmp sgt i64 %.052.i.i.i, 1
  br i1 %4, label %bb.h, label %._crit_edge.loopexit.i.i.i, !llvm.loop !5

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.l
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.an, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.g
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ap, %bb.g ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bg = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.m
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !37
  %i.bi = icmp eq i32 %i.bh, %i.am
  br i1 %i.bi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.n
  %.sroa.032.1.i.i.i = phi ptr [ %i.bj, %bb.n ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bk = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !37
  %i.bl = icmp eq i32 %i.bk, %i.am
  br i1 %i.bl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.o
  %.sroa.032.2.i.i.i = phi ptr [ %i.bm, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !37
  %i.bo = icmp eq i32 %i.bn, %i.am
  %spec.select.i.i.i = select i1 %i.bo, ptr %.sroa.032.2.i.i.i, ptr %i.ak
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit90: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit92: ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit: ; preds = %bb.h, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit90, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit92, %bb.m, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.m ], [ %i.br, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit92 ], [ %i.bq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit90 ], [ %i.bp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.h ]
  %.not54 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ak
  br i1 %.not54, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread, label %bb.x

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !36  ; 4 uses
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !36  ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = ashr i64 %i.bw, 4                       ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i23, label %._crit_edge.i.i.i12

.lr.ph.i.i.i23:                                   ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread
  %i.bz = and i64 %i.bw, -16
  %scevgep.i.i.i24 = getelementptr i8, ptr %i.bs, i64 %i.bz ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i.i23
  %.052.i.i.i25 = phi i64 [ %i.bx, %.lr.ph.i.i.i23 ], [ %i.cm, %bb.t ] ; 2 uses
  %.sroa.032.051.i.i.i26 = phi ptr [ %i.bs, %.lr.ph.i.i.i23 ], [ %i.cl, %bb.t ] ; 9 uses
  %i.ca = load i32, ptr %.sroa.032.051.i.i.i26, align 4, !tbaa !37
  %i.cb = icmp eq i32 %i.ca, %i.am
  br i1 %i.cb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ce = icmp eq i32 %i.cd, %i.am
  br i1 %i.ce, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !37
  %i.ch = icmp eq i32 %i.cg, %i.am
  br i1 %i.ch, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit98, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !37
  %i.ck = icmp eq i32 %i.cj, %i.am
  br i1 %i.ck, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit100, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 16
  %i.cm = add nsw i64 %.052.i.i.i25, -1
  %5 = icmp sgt i64 %.052.i.i.i25, 1
  br i1 %5, label %bb.p, label %._crit_edge.loopexit.i.i.i27, !llvm.loop !5

._crit_edge.loopexit.i.i.i27:                     ; preds = %bb.t
  %.pre59.i.i.i28 = ptrtoint ptr %scevgep.i.i.i24 to i64
  %.pre60.i.i.i29 = sub i64 %i.bu, %.pre59.i.i.i28
  br label %._crit_edge.i.i.i12

._crit_edge.i.i.i12:                              ; preds = %._crit_edge.loopexit.i.i.i27, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread
  %.pre-phi61.i.i.i13 = phi i64 [ %.pre60.i.i.i29, %._crit_edge.loopexit.i.i.i27 ], [ %i.bw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ]
  %.sroa.032.0.lcssa.i.i.i14 = phi ptr [ %scevgep.i.i.i24, %._crit_edge.loopexit.i.i.i27 ], [ %i.bs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ] ; 5 uses
  %i.cn = ashr exact i64 %.pre-phi61.i.i.i13, 2
  switch i64 %i.cn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.thread [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i20
    i64 1, label %._crit_edge._crit_edge57.i.i.i15
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i12
  %i.co = load i32, ptr %.sroa.032.0.lcssa.i.i.i14, align 4, !tbaa !37
  %i.cp = icmp eq i32 %i.co, %i.am
  br i1 %i.cp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i14, i64 4
  br label %._crit_edge._crit_edge.i.i.i20

._crit_edge._crit_edge.i.i.i20:                   ; preds = %._crit_edge.i.i.i12, %bb.v
  %.sroa.032.1.i.i.i22 = phi ptr [ %i.cq, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i14, %._crit_edge.i.i.i12 ] ; 3 uses
  %i.cr = load i32, ptr %.sroa.032.1.i.i.i22, align 4, !tbaa !37
  %i.cs = icmp eq i32 %i.cr, %i.am
  br i1 %i.cs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33, label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i20
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i22, i64 4
  br label %._crit_edge._crit_edge57.i.i.i15

._crit_edge._crit_edge57.i.i.i15:                 ; preds = %._crit_edge.i.i.i12, %bb.w
  %.sroa.032.2.i.i.i17 = phi ptr [ %i.ct, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i14, %._crit_edge.i.i.i12 ] ; 2 uses
  %i.cu = load i32, ptr %.sroa.032.2.i.i.i17, align 4, !tbaa !37
  %i.cv = icmp eq i32 %i.cu, %i.am
  %spec.select.i.i.i18 = select i1 %i.cv, ptr %.sroa.032.2.i.i.i17, ptr %i.bt
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit: ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit98: ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit100: ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i26, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33: ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit98, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit100, %bb.u, %._crit_edge._crit_edge.i.i.i20, %._crit_edge._crit_edge57.i.i.i15
  %.sroa.08.0.in.sroa.speculated.i.i.i19 = phi ptr [ %.sroa.032.1.i.i.i22, %._crit_edge._crit_edge.i.i.i20 ], [ %spec.select.i.i.i18, %._crit_edge._crit_edge57.i.i.i15 ], [ %.sroa.032.0.lcssa.i.i.i14, %bb.u ], [ %i.cy, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit100 ], [ %i.cx, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit98 ], [ %i.cw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i26, %bb.p ]
  %.not55 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i19, %i.bt
  br i1 %.not55, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.thread, label %bb.x

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.thread: ; preds = %._crit_edge.i.i.i12, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 55, i64 1, ptr %i.cz) #27 ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit33.thread
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.045.073, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.da, %i.c
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratChecker14add_assumptionEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.s, align 4, !tbaa !37
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !23
  store ptr %i.u, ptr %i.b, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !212
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratChecker14add_constraintERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.b, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.f = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %.not22 = icmp eq ptr %i.f, %i.h
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.k = phi ptr [ %i.b, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 9 uses
  %.sroa.09.023 = phi ptr [ %i.f, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 8 uses
  %i.o = ashr i64 %i.n, 4                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = load i32, ptr %.sroa.09.023, align 4, !tbaa !37 ; 4 uses
  %i.r = and i64 %i.n, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.ad, %bb.g ] ; 9 uses
  %i.s = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !37
  %i.t = icmp eq i32 %i.s, %i.q
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  %i.w = icmp eq i32 %i.v, %i.q
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = icmp eq i32 %i.y, %i.q
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit39, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37
  %i.ac = icmp eq i32 %i.ab, %i.q
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ae = add nsw i64 %.052.i.i.i, -1
  %2 = icmp sgt i64 %.052.i.i.i, 1
  br i1 %2, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !5

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.l, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.n, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.k, %bb.b ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.09.023, align 4, !tbaa !37
  br label %bb.l

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.09.023, align 4, !tbaa !37
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.09.023, align 4, !tbaa !37 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge.i.i.i
  %i.ak = phi i32 [ %i.ah, %bb.i ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.al = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !37
  %i.am = icmp eq i32 %i.al, %i.ak
  br i1 %i.am, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge57.i.i.i
  %i.ao = phi i32 [ %i.ak, %bb.k ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.an, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ap = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !37
  %i.aq = icmp eq i32 %i.ap, %i.ao
  %spec.select.i.i.i = select i1 %i.aq, ptr %.sroa.032.2.i.i.i, ptr %i.j
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit39: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit41: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit39, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit41, %bb.h, %bb.j, %bb.l
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.j ], [ %spec.select.i.i.i, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i, %bb.h ], [ %i.at, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit41 ], [ %i.as, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit39 ], [ %i.ar, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.c ]
  %.not13 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.j
  br i1 %.not13, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.j, %i.au
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread
  %i.av = load i32, ptr %.sroa.09.023, align 4, !tbaa !37
  store i32 %i.av, ptr %i.j, align 4, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread
  %i.ax = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.ax, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #26
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ay = ashr exact i64 %i.n, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #23 ; 5 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.n ; 2 uses
  %i.bg = load i32, ptr %.sroa.09.023, align 4, !tbaa !37
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !37
  %i.bh = icmp sgt i64 %i.n, 0
  br i1 %i.bh, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %i.a, align 8, !tbaa !23
  store ptr %i.bi, ptr %i.c, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !212
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.m, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.bk = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aw, %bb.m ], [ %i.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ]
  %i.bl = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.k, %bb.m ], [ %i.k, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.09.023, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7CaDiCaL11LratChecker17reset_assumptionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) initializes((184, 185)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !230
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %.not.i.i1 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i1, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.i, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratChecker14conclude_unsatENS_14ConclusionTypeERKSt6vectorImSaImEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !232, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 18, i64 1, ptr %i.d) #27 ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !232
  switch i32 %1, label %bb.m [
    i32 1, label %bb.d
    i32 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !214
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !214
  %i.l = and i64 %i.h, 3
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL11LratChecker14conclude_unsatENS_14ConclusionTypeERKSt6vectorImSaImEE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.pr = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ap, %bb.g ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.aj = icmp eq i64 %i.ai, %i.p
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !215
  %i.am = icmp eq i64 %i.al, %i.h
  br i1 %i.am, label %_ZN7CaDiCaL11LratChecker4findEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !216
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !216
  %i.ap = load ptr, ptr %.pr, align 8, !tbaa !69  ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZN7CaDiCaL11LratChecker4findEm.exit.thread, label %bb.e, !llvm.loop !3

_ZN7CaDiCaL11LratChecker4findEm.exit:             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %.not32 = icmp eq i32 %i.ar, 0
  br i1 %.not32, label %.loopexit, label %_ZN7CaDiCaL11LratChecker4findEm.exit.thread

_ZN7CaDiCaL11LratChecker4findEm.exit.thread:      ; preds = %bb.g, %_ZN7CaDiCaL11LratChecker11reduce_hashEmm.exit.i, %_ZN7CaDiCaL11LratChecker4findEm.exit
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite33 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 26, i64 1, ptr %i.as) #27 ; 0 uses
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !230 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !209
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not26 = icmp eq i64 %i.ay, 8
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !230 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !209
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.not27 = icmp eq i64 %i.bf, 8
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite28 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 39, i64 1, ptr %i.bg) #27 ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !219
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.pre79 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !219
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = phi ptr [ %.pre79, %bb.j ], [ %i.bb, %bb.i ]
  %i.bi = phi ptr [ %.pre, %bb.j ], [ %i.au, %bb.i ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !30
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !30
  %.not29 = icmp eq i64 %i.bk, %i.bm
  br i1 %.not29, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite30 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 39, i64 1, ptr %i.bn) #27 ; 0 uses
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !23
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !230 ; 2 uses
  %i.by = load ptr, ptr %2, align 8, !tbaa !209   ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %.not = icmp eq i64 %i.bv, %i.cc
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite22 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 45, i64 1, ptr %i.cd) #27 ; 0 uses
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite23 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 38, i64 1, ptr %i.ce) #27 ; 0 uses
  %i.cf = load ptr, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 2 uses
  %.not5055 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not5055, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.n
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite24 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 14, i64 1, ptr %i.ch) #27 ; 0 uses
  %i.ci = load ptr, ptr %2, align 8, !tbaa !219   ; 2 uses
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !219 ; 2 uses
  %.not5157 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not5157, label %._crit_edge61, label %.lr.ph60

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.sroa.044.056 = phi ptr [ %i.cn, %.lr.ph ], [ %i.cf, %bb.n ] ; 2 uses
  %i.ck = load i32, ptr %.sroa.044.056, align 4, !tbaa !37
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !225
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.4, i32 noundef %i.ck) #28 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.044.056, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.cn, %i.cg
  br i1 %.not50, label %._crit_edge, label %.lr.ph

._crit_edge61:                                    ; preds = %.lr.ph60, %._crit_edge
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  %.pre80 = load ptr, ptr %2, align 8, !tbaa !219
  %.pre81 = load ptr, ptr %i.bw, align 8, !tbaa !219
  br label %bb.o

.lr.ph60:                                         ; preds = %._crit_edge, %.lr.ph60
  %.sroa.040.058 = phi ptr [ %i.cr, %.lr.ph60 ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.co = load i64, ptr %.sroa.040.058, align 8, !tbaa !30
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !225
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.13, i64 noundef %i.co) #28 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.040.058, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.cr, %i.cj
  br i1 %.not51, label %._crit_edge61, label %.lr.ph60

bb.o:                                             ; preds = %._crit_edge61, %bb.m
  %i.cs = phi ptr [ %.pre81, %._crit_edge61 ], [ %i.bx, %bb.m ] ; 2 uses
  %i.ct = phi ptr [ %.pre80, %._crit_edge61 ], [ %i.by, %bb.m ] ; 2 uses
  %.not5270 = icmp eq ptr %i.ct, %i.cs
  br i1 %.not5270, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph73, %bb.aa
  %.sroa.036.071 = phi ptr [ %i.ct, %.lr.ph73 ], [ %i.ei, %bb.aa ] ; 5 uses
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !219 ; 4 uses
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !219 ; 3 uses
  %i.cy = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = ashr i64 %i.da, 5                       ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.dd = load i64, ptr %.sroa.036.071, align 8, !tbaa !30 ; 4 uses
  %i.de = and i64 %i.da, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.cw, i64 %i.de ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i ], [ %i.dr, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %i.dq, %bb.u ] ; 9 uses
  %i.df = load i64, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !30
  %i.dg = icmp eq i64 %i.df, %i.dd
  br i1 %i.dg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = icmp eq i64 %i.di, %i.dd
  br i1 %i.dj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !30
  %i.dm = icmp eq i64 %i.dl, %i.dd
  br i1 %i.dm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit96, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !30
  %i.dp = icmp eq i64 %i.do, %i.dd
  br i1 %i.dp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit98, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.dr = add nsw i64 %.052.i.i.i, -1
  %3 = icmp sgt i64 %.052.i.i.i, 1
  br i1 %3, label %bb.q, label %._crit_edge.loopexit.i.i.i, !llvm.loop !257

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.u
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.cy, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.p
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.da, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cw, %bb.p ] ; 5 uses
  %i.ds = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.ds, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i64, ptr %.sroa.036.071, align 8, !tbaa !30
  br label %bb.z

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i64, ptr %.sroa.036.071, align 8, !tbaa !30
  br label %bb.x

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.dt = load i64, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !30
  %i.du = load i64, ptr %.sroa.036.071, align 8, !tbaa !30 ; 2 uses
  %i.dv = icmp eq i64 %i.dt, %i.du
  br i1 %i.dv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge._crit_edge.i.i.i
  %i.dx = phi i64 [ %i.du, %bb.w ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.dw, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.dy = load i64, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !30
  %i.dz = icmp eq i64 %i.dy, %i.dx
  br i1 %i.dz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge._crit_edge57.i.i.i
  %i.eb = phi i64 [ %i.dx, %bb.y ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.ea, %bb.y ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ec = load i64, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !30
  %i.ed = icmp eq i64 %i.ec, %i.eb
  %spec.select.i.i.i = select i1 %i.ed, ptr %.sroa.032.2.i.i.i, ptr %i.cx
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit96: ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit98: ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit96, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit98, %bb.v, %bb.x, %bb.z
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.x ], [ %spec.select.i.i.i, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i, %bb.v ], [ %i.eg, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit98 ], [ %i.ef, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit96 ], [ %i.ee, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.q ]
  %.not53 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.cx
  br i1 %.not53, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread, label %bb.aa

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite25 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 41, i64 1, ptr %i.eh) #27 ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.036.071, i64 8 ; 2 uses
  %.not52 = icmp eq ptr %i.ei, %i.cs
  br i1 %.not52, label %.loopexit, label %bb.p

.loopexit.sink.split:                             ; preds = %bb.l, %_ZN7CaDiCaL11LratChecker4findEm.exit.thread
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %.loopexit.sink.split, %bb.o, %_ZN7CaDiCaL11LratChecker4findEm.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratChecker13delete_clauseEmbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(424) %0, i64 noundef %1, i1 zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5760
  %i.d = load i32, ptr %i.c, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !221
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5728
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !222
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !259
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !259
  %i.p = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %.not8.i = icmp eq ptr %i.p, %i.r
  br i1 %.not8.i, label %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !37
  tail call void @_ZN7CaDiCaL11LratChecker14import_literalEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i34 = icmp eq ptr %i.t, %i.r
  br i1 %.not.i34, label %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %1, ptr %i.u, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !214
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !214
  %i.y = and i64 %1, 3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ac = mul i64 %i.ab, %1                       ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !213
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 4294967296
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZN7CaDiCaL11LratChecker11reduce_hashEmm.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit, %.lr.ph.i.i
  %i.ah = phi i64 [ %i.al, %.lr.ph.i.i ], [ 32, %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit ]
  %.014.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %i.ac, %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit ] ; 2 uses
  %.01013.i.i = phi i32 [ %i.ak, %.lr.ph.i.i ], [ 32, %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit ]
  %i.ai = lshr i64 %.014.i.i, %i.ah
  %i.aj = xor i64 %i.ai, %.014.i.i                ; 2 uses
  %i.ak = lshr i32 %.01013.i.i, 1                 ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %.highbits.i.i = lshr i64 %i.af, %i.al
  %i.am = icmp eq i64 %.highbits.i.i, 0
  br i1 %i.am, label %.lr.ph.i.i, label %_ZN7CaDiCaL11LratChecker11reduce_hashEmm.exit.i, !llvm.loop !0

_ZN7CaDiCaL11LratChecker11reduce_hashEmm.exit.i:  ; preds = %.lr.ph.i.i, %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit
  %.0.lcssa.i.i = phi i64 [ %i.ac, %_ZN7CaDiCaL11LratChecker13import_clauseERKSt6vectorIiSaIiEE.exit ], [ %i.aj, %.lr.ph.i.i ]
  %i.an = add i64 %i.af, -1
  %i.ao = and i64 %.0.lcssa.i.i, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %.not11.i = icmp eq ptr %i.as, null
  br i1 %.not11.i, label %_ZN7CaDiCaL11LratChecker4findEm.exit.thread, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %_ZN7CaDiCaL11LratChecker11reduce_hashEmm.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i35
  %.pr = phi ptr [ %i.as, %.lr.ph.i35 ], [ %i.bc, %bb.h ] ; 11 uses
  %.012.i = phi ptr [ %i.ar, %.lr.ph.i35 ], [ %.pr, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !70
  %i.aw = icmp eq i64 %i.av, %i.ac
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !215
  %i.az = icmp eq i64 %i.ay, %1
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL11LratChecker15finalize_clauseEmRKSt6vectorIiSaIiEE:bb.a

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.loopexit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !76  ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 5760
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !220
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 3608
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !221
  %.not26 = icmp sgt i32 %i.ds, %i.du
  br i1 %.not26, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 5728
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 3620
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !222
  %.not.i38 = icmp eq i32 %i.dx, 0
  br i1 %.not.i38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.dq)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit39

bb.p:                                             ; preds = %bb.n
  %i.dz = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.dq)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit39

_ZN7CaDiCaL8Internal4timeEv.exit39:               ; preds = %bb.o, %bb.p
  %i.ea = phi double [ %i.dy, %bb.o ], [ %i.dz, %bb.p ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.dq, ptr noundef nonnull align 8 dereferenceable(36) %i.dv, double noundef %i.ea)
  br label %bb.q

bb.q:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit39, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11LratChecker13report_statusEim(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(424) %0, i32 %1, i64 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5760
  %i.d = load i32, ptr %i.c, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !221
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5728
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !222
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !237
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !237
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL19fatal_message_startEv()
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.20, i64 22, i64 1, ptr %i.r) #27 ; 0 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !225
  %i.t = load i64, ptr %i.o, align 8, !tbaa !64
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.21, i64 noundef %i.t) #28 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !225
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 18, i64 1, ptr %i.v) #27 ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv()
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !76   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5760
  %i.y = load i32, ptr %i.x, align 8, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 3608
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !221
  %.not2 = icmp sgt i32 %i.y, %i.aa
  br i1 %.not2, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 5728
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 3620
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !222
  %.not.i3 = icmp eq i32 %i.ad, 0
  br i1 %.not.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.w)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit4

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.w)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit4

_ZN7CaDiCaL8Internal4timeEv.exit4:                ; preds = %bb.j, %bb.k
  %i.ag = phi double [ %i.ae, %bb.j ], [ %i.af, %bb.k ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.w, ptr noundef nonnull align 8 dereferenceable(36) %i.ab, double noundef %i.ag)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal4timeEv.exit4
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL11LratChecker4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not57 = icmp eq i64 %i.b, 0
  br i1 %.not57, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  br label %bb.b

._crit_edge44:                                    ; preds = %._crit_edge, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.029.lcssa, i64 noundef %i.f) ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not59 = icmp eq i64 %i.h, 0
  br i1 %.not59, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %._crit_edge44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph43, %._crit_edge
  %.02841 = phi i64 [ 0, %.lr.ph43 ], [ %i.v, %._crit_edge ] ; 2 uses
  %.02940 = phi i32 [ 0, %.lr.ph43 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02841
  %.02735 = load ptr, ptr %i.j, align 8, !tbaa !69 ; 2 uses
  %.not3136 = icmp eq ptr %.02735, null
  br i1 %.not3136, label %._crit_edge, label %.preheader32

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.preheader32
  %.2.lcssa = phi i32 [ %.137, %.preheader32 ], [ %i.u, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.027 = load ptr, ptr %.02738, align 8, !tbaa !69 ; 2 uses
  %.not31 = icmp eq ptr %.027, null
  br i1 %.not31, label %._crit_edge, label %.preheader32, !llvm.loop !267

.preheader32:                                     ; preds = %bb.b, %.loopexit
  %.02738 = phi ptr [ %.027, %.loopexit ], [ %.02735, %bb.b ] ; 3 uses
  %.137 = phi i32 [ %.2.lcssa, %.loopexit ], [ %.02940, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02738, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 3 uses
  %.not58 = icmp eq i32 %i.l, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader32
  %i.m = getelementptr inbounds nuw i8, ptr %.02738, i64 36 ; 2 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.137, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !37
  %wide.load72 = load <4 x i32>, ptr %i.o, align 4, !tbaa !37
  %i.p = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.q = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load72, i1 true)
  %i.r = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %vec.phi) ; 2 uses
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.q, <4 x i32> %vec.phi71) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.s)
  %i.u = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.233.ph = phi i32 [ %.137, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.02940, %bb.b ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %i.v = add nuw i64 %.02841, 1                   ; 2 uses
  %exitcond62.not = icmp eq i64 %i.v, %i.b
  br i1 %exitcond62.not, label %._crit_edge44, label %bb.b, !llvm.loop !269

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.233 = phi i32 [ %spec.select, %scalar.ph ], [ %.233.ph, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %.233) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !270

._crit_edge56:                                    ; preds = %._crit_edge52, %._crit_edge44
  ret void

bb.c:                                             ; preds = %.lr.ph55, %._crit_edge52
  %i.z = phi i64 [ %i.h, %.lr.ph55 ], [ %i.af, %._crit_edge52 ]
  %.02553 = phi i64 [ 0, %.lr.ph55 ], [ %i.ag, %._crit_edge52 ] ; 2 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.02553
  %.02449 = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %.not50 = icmp eq ptr %.02449, null
  br i1 %.not50, label %._crit_edge52, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge48
  %.02451 = phi ptr [ %.024, %._crit_edge48 ], [ %.02449, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02451, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31
  %.not60 = icmp eq i32 %i.ad, 0
  br i1 %.not60, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %.02451, i64 36
  br label %bb.d

._crit_edge52.loopexit:                           ; preds = %._crit_edge48
  %.pre = load i64, ptr %i.a, align 8, !tbaa !67
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %bb.c
  %i.af = phi i64 [ %.pre, %._crit_edge52.loopexit ], [ %i.z, %bb.c ] ; 2 uses
  %i.ag = add nuw i64 %.02553, 1                  ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.c, label %._crit_edge56, !llvm.loop !271

._crit_edge48:                                    ; preds = %bb.d, %.preheader
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.024 = load ptr, ptr %.02451, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %.024, null
  br i1 %.not, label %._crit_edge52.loopexit, label %.preheader, !llvm.loop !272

bb.d:                                             ; preds = %.lr.ph47, %bb.d
  %indvars.iv63 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next64, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv63
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.aj) ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !31
  %i.am = zext i32 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next64, %i.am
  br i1 %i.an, label %bb.d, label %._crit_edge48, !llvm.loop !273
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7CaDiCaL11LratChecker11begin_proofEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(424) initializes((336, 344)) %0, i64 noundef %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %1, ptr %i.a, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer10strengthenEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer11solve_queryEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer12conclude_satERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN7CaDiCaL11LratChecker11print_statsEv(ptr noundef nonnull align 8 dereferenceable(424)) unnamed_addr #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #12

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !276

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37   ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !37
  store i32 %i.k, ptr %i.i, align 4, !tbaa !37
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !37
  %i.x = load i32, ptr %i.v, align 4, !tbaa !37
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph, !llvm.loop !288

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !211 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !288

_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !79   ; 2 uses
  %i.p = urem i64 %i.e, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.p
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !227
  br label %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit

bb.d:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !79   ; 4 uses
  %i.t = urem i64 %i.q, %i.s                      ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !78     ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !227  ; 7 uses
  %.not.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30
  %i.aa = icmp eq i64 %i.q, %i.z
  br i1 %i.aa, label %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !211 ; 2 uses
  %.not18.i2656 = icmp eq ptr %i.ac, null
  br i1 %.not18.i2656, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.ad = icmp eq i64 %i.q, %i.ag
  br i1 %i.ad, label %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %.020.i, align 8, !tbaa !211 ; 4 uses
  %.not18.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.s
  %.not19.i = icmp eq i64 %i.ah, %i.t
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !4

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !4

_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit
  %i.ai = phi i64 [ %i.o, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %.pre40, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.u, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.p, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.t, %bb.f ] ; 3 uses
  %i.al = icmp eq ptr %.020, %i.aj
  %i.am = load ptr, ptr %.119, align 8, !tbaa !211 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.am, null           ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.h
  %i.ao = phi i64 [ %i.s, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ai, %bb.h ]
  %i.ap = phi ptr [ %i.w, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.aj, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ak, %bb.h ]
  %.0205870 = phi ptr [ %i.w, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1196068 = phi ptr [ %i.x, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176167 = phi i64 [ %i.t, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.017, %bb.h ]
  %i.ar = phi ptr [ %i.ab, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.an, %bb.h ]
  %i.as = phi ptr [ %i.ac, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30
  %i.av = urem i64 %i.au, %i.ao                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.av, %.0176167
  br i1 %.not9.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.av
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !227
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.j, %bb.h
  %i.ax = phi ptr [ %i.w, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ap, %bb.j ], [ %i.aj, %bb.h ]
  %.0205871 = phi ptr [ %i.w, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.0205870, %bb.j ], [ %.020, %bb.h ]
  %.1196069 = phi ptr [ %i.x, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.1196068, %bb.j ], [ %.119, %bb.h ]
  %i.ay = phi ptr [ %i.ab, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ar, %bb.j ], [ %i.an, %bb.h ]
  %i.az = phi ptr [ null, %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.as, %bb.j ], [ null, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !210
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !227
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i

bb.m:                                             ; preds = %_ZNKSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.be = urem i64 %i.bd, %i.ai                   ; 2 uses
  %.not17.i = icmp eq i64 %i.be, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.be
  store ptr %.020, ptr %i.bf, align 8, !tbaa !227
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i

_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i
  %.11959 = phi ptr [ %.119, %bb.o ], [ %.119, %bb.n ], [ %.119, %bb.m ], [ %.1196069, %bb.l ], [ %.1196068, %bb.i ] ; 3 uses
  %.02057 = phi ptr [ %.020, %bb.o ], [ %.020, %bb.n ], [ %.020, %bb.m ], [ %.0205871, %bb.l ], [ %.0205870, %bb.i ]
  %i.bg = load ptr, ptr %.11959, align 8, !tbaa !211
  store ptr %i.bg, ptr %.02057, align 8, !tbaa !211
  %i.bh = getelementptr inbounds nuw i8, ptr %.11959, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS5_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bi) #24
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS5_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS5_Lb0EEE.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEEm.exit.i, %bb.p
  tail call void @_ZdlPv(ptr noundef nonnull %.11959) #24
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !226
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !226
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS5_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS7_15_Hash_node_baseEPNS7_10_Hash_nodeIS5_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { cold }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !71}
!1 = distinct !{!1, !71}
!2 = distinct !{!2, !71}
!3 = distinct !{!3, !71}
!4 = distinct !{!4, !71}
!5 = distinct !{!5, !71}
!6 = distinct !{!6, !71}
!7 = distinct !{!7, !71}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!"p1 int", !16, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !20, i64 0}
!24 = !{!"p1 _ZTSN7CaDiCaL17LratCheckerClauseE", !16, i64 0}
!25 = !{!"long", !12, i64 0}
!26 = !{!"bool", !12, i64 0}
!27 = !{!"_ZTSN7CaDiCaL17LratCheckerClauseE", !24, i64 0, !25, i64 8, !25, i64 16, !26, i64 24, !13, i64 28, !26, i64 32, !26, i64 33, !12, i64 36}
!28 = !{!27, !26, i64 24}
!29 = !{!27, !24, i64 0}
!30 = !{!25, !25, i64 0}
!31 = !{!27, !13, i64 28}
!32 = !{!27, !26, i64 32}
!33 = !{!27, !26, i64 33}
!34 = !{!17, !17, i64 0}
!35 = !{!12, !12, i64 0}
!36 = !{!20, !20, i64 0}
!37 = !{!13, !13, i64 0}
!38 = !{!"_ZTSN7CaDiCaL6TracerE"}
!39 = !{!"_ZTSN7CaDiCaL14InternalTracerE", !38, i64 0}
!40 = !{!"_ZTSN7CaDiCaL10StatTracerE", !39, i64 0}
!41 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !16, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !18, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIaSaIaEE", !43, i64 0}
!45 = !{!"any p2 pointer", !16, i64 0}
!46 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !45, i64 0}
!47 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!48 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !47, i64 0}
!49 = !{!"float", !12, i64 0}
!50 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !49, i64 0, !25, i64 8}
!51 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !46, i64 0, !25, i64 8, !48, i64 16, !25, i64 24, !50, i64 32, !47, i64 48}
!52 = !{!"_ZTSSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !51, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIiSaIiEE", !54, i64 0}
!56 = !{!"p2 _ZTSN7CaDiCaL17LratCheckerClauseE", !45, i64 0}
!57 = !{!"p1 long", !16, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseImSaImEE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorImSaImEE", !60, i64 0}
!62 = !{!"_ZTSN7CaDiCaL11LratCheckerUt_E", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72}
!63 = !{!"_ZTSN7CaDiCaL11LratCheckerE", !40, i64 0, !41, i64 8, !25, i64 16, !26, i64 24, !44, i64 32, !44, i64 56, !52, i64 80, !55, i64 136, !55, i64 160, !26, i64 184, !25, i64 192, !25, i64 200, !25, i64 208, !25, i64 216, !56, i64 224, !24, i64 232, !55, i64 240, !61, i64 264, !12, i64 288, !25, i64 320, !25, i64 328, !25, i64 336, !62, i64 344}
!64 = !{!63, !25, i64 192}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!63, !25, i64 216}
!68 = !{!63, !56, i64 224}
!69 = !{!24, !24, i64 0}
!70 = !{!27, !25, i64 8}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!63, !25, i64 416}
!73 = !{!63, !24, i64 232}
!74 = !{!"vtable pointer", !11, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!63, !41, i64 8}
!77 = !{!63, !25, i64 16}
!78 = !{!51, !46, i64 0}
!79 = !{!51, !25, i64 8}
!80 = !{!"_ZTSN7CaDiCaL9ReluctantE", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !26, i64 40, !26, i64 41}
!81 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !45, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !84, i64 0}
!86 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !16, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !87, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !88, i64 0}
!90 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !89, i64 0}
!91 = !{!"_ZTSN7CaDiCaL6PhasesE", !44, i64 0, !44, i64 24, !44, i64 48, !44, i64 72, !44, i64 96, !44, i64 120}
!92 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIjSaIjEE", !94, i64 0}
!96 = !{!"_ZTSN7CaDiCaL5QueueE", !13, i64 0, !13, i64 4, !13, i64 8, !25, i64 16}
!97 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !16, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !98, i64 0}
!100 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !99, i64 0}
!101 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !100, i64 0}
!102 = !{!"double", !12, i64 0}
!103 = !{!"_ZTSN7CaDiCaL13score_smallerE", !41, i64 0}
!104 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !95, i64 0, !95, i64 24, !103, i64 48}
!105 = !{!"p1 double", !16, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !105, i64 0, !105, i64 8, !105, i64 16}
!107 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !106, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !107, i64 0}
!109 = !{!"_ZTSSt6vectorIdSaIdEE", !108, i64 0}
!110 = !{!"p1 _ZTSN7CaDiCaL3VarE", !16, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !111, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !113, i64 0}
!115 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !16, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !118, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIlSaIlEE", !122, i64 0}
!124 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !16, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !125, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !126, i64 0}
!128 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !127, i64 0}
!129 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !16, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !130, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !131, i64 0}
!133 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !132, i64 0}
!134 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !16, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !137, i64 0}
!139 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !16, i64 0}
!140 = !{!"_ZTS4Reap", !25, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !12, i64 24}
!141 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !16, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !142, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !143, i64 0}
!145 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !144, i64 0}
!146 = !{!"_ZTSN7CaDiCaL3EMAE", !102, i64 0, !102, i64 8, !102, i64 16, !102, i64 24, !102, i64 32}
!147 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !146, i64 0, !146, i64 40}
!148 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !146, i64 0, !146, i64 40}
!149 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !147, i64 0, !148, i64 80, !146, i64 160, !146, i64 200, !146, i64 240}
!150 = !{!"_ZTSN7CaDiCaL8AveragesE", !25, i64 0, !149, i64 8, !149, i64 288}
!151 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !13, i64 0, !13, i64 4}
!152 = !{!"_ZTSN7CaDiCaL5LimitE", !26, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !25, i64 104, !25, i64 112, !25, i64 120, !13, i64 128, !13, i64 132, !12, i64 136, !25, i64 152, !151, i64 160}
!153 = !{!"_ZTSN7CaDiCaL4LastUt_E", !25, i64 0}
!154 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !25, i64 0, !25, i64 8, !25, i64 16}
!155 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !25, i64 0, !25, i64 8}
!156 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !25, i64 0}
!157 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !25, i64 0}
!158 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !25, i64 0}
!159 = !{!"_ZTSN7CaDiCaL4LastE", !153, i64 0, !153, i64 8, !154, i64 16, !155, i64 40, !156, i64 56, !156, i64 64, !157, i64 72, !158, i64 80}
!160 = !{!"_ZTSN7CaDiCaL3IncE", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!161 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !16, i64 0}
!162 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !16, i64 0}
!163 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !45, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
end_hunk_3
