Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_lookahead?download=true
inline.NumInlined: 873
inline.NumDeleted: 337
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7CaDiCaL8Internal20lookahead_next_probeEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL21non_tautological_cubeESt6vectorIiSaIiEE(ptr nofree noundef readonly align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL20clause_lit_less_thanEEvT_S9_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !187
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !186
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL20clause_lit_less_thanEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL20clause_lit_less_thanEEvT_S9_T0_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.a, %bb.a ], [ %.pre19, %bb.b ] ; 3 uses
  %i.l = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ]
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = icmp ult i64 %i.p, 2
  br i1 %i.q, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL20clause_lit_less_thanEEvT_S9_T0_.exit
  %i.r = add nsw i64 %i.p, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.01016 = phi i64 [ %i.ab, %bb.c ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.01115 = phi i64 [ %i.aa, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01115
  %i.t = load i32, ptr %i.s, align 4, !tbaa !178  ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01016
  %i.v = load i32, ptr %i.u, align 4, !tbaa !178  ; 2 uses
  %i.w = icmp ne i32 %i.t, %i.v
  %i.x = sub nsw i32 0, %i.v
  %i.y = icmp ne i32 %i.t, %i.x
  %or.cond.not24 = select i1 %i.w, i1 %i.y, i1 false
  %i.z = icmp ne i32 %i.t, 0
  %or.cond14.not = and i1 %i.z, %or.cond.not24    ; 3 uses
  br i1 %or.cond14.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.aa = add nuw i64 %.01115, 1
  %i.ab = add nuw i64 %.01016, 1
  %exitcond.not = icmp eq i64 %.01115, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL20clause_lit_less_thanEEvT_S9_T0_.exit
  %.lcssa = phi i1 [ true, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL20clause_lit_less_thanEEvT_S9_T0_.exit ], [ %or.cond14.not, %.lr.ph ], [ %or.cond14.not, %bb.c ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal17terminating_askedEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !221  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7272
  %i.j = load volatile i8, ptr %i.i, align 8, !tbaa !224, !range !195, !noundef !196
  %i.k = trunc nuw i8 %i.j to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL8Internal17lookahead_probingEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6848
  %i.b = load i64, ptr %i.a, align 8, !tbaa !225
  %i.c = and i64 %i.b, 4294967295
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 3 uses
  store volatile i8 0, ptr %i.d, align 8, !tbaa !224
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !194, !range !195, !noundef !196
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.i = load i32, ptr %i.h, align 4, !tbaa !251
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !221  ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal17terminating_askedEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #16, !inline_history !226
  br i1 %i.r, label %_ZN7CaDiCaL8Internal17terminating_askedEv.exit.thread, label %_ZN7CaDiCaL8Internal17terminating_askedEv.exit

_ZN7CaDiCaL8Internal17terminating_askedEv.exit:   ; preds = %bb.g, %bb.h
  %i.s = load volatile i8, ptr %i.d, align 8, !tbaa !224, !range !195, !noundef !196
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN7CaDiCaL8Internal17terminating_askedEv.exit.thread, label %bb.i

_ZN7CaDiCaL8Internal17terminating_askedEv.exit.thread: ; preds = %bb.h, %_ZN7CaDiCaL8Internal17terminating_askedEv.exit
  %i.u = tail call noundef i32 @_ZN7CaDiCaL8Internal22most_occurring_literalEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  br label %bb.ak

bb.i:                                             ; preds = %_ZN7CaDiCaL8Internal17terminating_askedEv.exit
  tail call void @_ZN7CaDiCaL8Internal9decomposeEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  %i.v = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal7ternaryEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN7CaDiCaL8Internal9decomposeEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN7CaDiCaL8Internal41mark_duplicated_binary_clauses_as_garbageEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3032
  store i64 -1, ptr %i.w, align 8, !tbaa !252
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !192
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL8Internal22lookahead_flush_probesEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !177
  %.not2647 = icmp slt i32 %i.ad, 1
  br i1 %.not2647, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !186 ; 2 uses
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !187
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !186
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !253
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !254
  %i.aq = tail call noundef i32 @_ZN7CaDiCaL8Internal22most_occurring_literalEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %i.ar = load i32, ptr %0, align 8, !tbaa !255
  %i.as = or i32 %i.ar, 512
  store i32 %i.as, ptr %0, align 8, !tbaa !255
  tail call void @_ZN7CaDiCaL8Internal18init_probehbr_lratEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  %i.at = load i8, ptr %i.e, align 4, !tbaa !194, !range !195, !noundef !196
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.critedge.thread, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6744
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 6536 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 7256
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %indvars67 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.ba = sub nsw i32 0, %indvars67
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %indvars67, i32 %i.ba, i32 1)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc
  store i32 -1, ptr %i.bd, align 4, !tbaa !178
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  store i32 -1, ptr %i.be, align 4, !tbaa !178
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !177
  %i.bg = sext i32 %i.bf to i64
  %.not26.not = icmp slt i64 %indvars.iv, %i.bg
  br i1 %.not26.not, label %bb.n, label %._crit_edge, !llvm.loop !249

.critedge.thread:                                 ; preds = %bb.af, %._crit_edge
  %1 = load i32, ptr %0, align 8, !tbaa !255
  %2 = and i32 %1, -513
  store i32 %2, ptr %0, align 8, !tbaa !255
  br label %bb.ak

bb.o:                                             ; preds = %.lr.ph52, %bb.af
  %.01950 = phi i32 [ -1, %.lr.ph52 ], [ %.120, %bb.af ] ; 4 uses
  %.02149 = phi i32 [ %i.aq, %.lr.ph52 ], [ %.122, %bb.af ] ; 5 uses
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !202
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 400
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !221 ; 3 uses
  %.not.i28 = icmp eq ptr %i.bj, null
  br i1 %.not.i28, label %_ZN7CaDiCaL8Internal17terminating_askedEv.exit30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !223
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #16, !inline_history !226
  br i1 %i.bn, label %.critedge, label %_ZN7CaDiCaL8Internal17terminating_askedEv.exit30

_ZN7CaDiCaL8Internal17terminating_askedEv.exit30: ; preds = %bb.o, %bb.p
  %i.bo = load volatile i8, ptr %i.d, align 8, !tbaa !224, !range !195, !noundef !196
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN7CaDiCaL8Internal17terminating_askedEv.exit30
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !192 ; 2 uses
  %.pre34.i = load ptr, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %i.bq = icmp eq ptr %.pre.i, %.pre34.i
  br label %.loopexit.i

.loopexit.i.backedge:                             ; preds = %.outer.i, %bb.x
  %.promoted2036.i.be = phi ptr [ %i.bx, %bb.x ], [ %.promoted2038.i, %.outer.i ]
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.q
  %.promoted2036.i = phi ptr [ %.pre34.i, %bb.q ], [ %.promoted2036.i.be, %.loopexit.i.backedge ]
  %i.br = phi ptr [ %.pre.i, %bb.q ], [ %i.bt, %.loopexit.i.backedge ]
  %i.bs = phi i1 [ %i.bq, %bb.q ], [ true, %.loopexit.i.backedge ]
  %.08.i = phi i32 [ 0, %bb.q ], [ %.1.i, %.loopexit.i.backedge ] ; 2 uses
  br i1 %i.bs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.loopexit.i
  %.not.i31 = icmp eq i32 %.08.i, 0
  br i1 %.not.i31, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN7CaDiCaL8Internal25lookahead_generate_probesEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %.pre35.i = load ptr, ptr %i.x, align 8, !tbaa !192
  %.promoted20.pre.i = load ptr, ptr %i.z, align 8, !tbaa !192
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit.i
  %.promoted20.i = phi ptr [ %.promoted20.pre.i, %bb.s ], [ %.promoted2036.i, %.loopexit.i ]
  %i.bt = phi ptr [ %.pre35.i, %bb.s ], [ %i.br, %.loopexit.i ] ; 3 uses
  %.1.i = phi i32 [ 1, %bb.s ], [ %.08.i, %.loopexit.i ]
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.t
  %.promoted2038.i = phi ptr [ %i.bx, %.split.i ], [ %.promoted20.i, %bb.t ] ; 3 uses
  %i.bu = icmp eq ptr %i.bt, %.promoted2038.i
  br i1 %i.bu, label %.loopexit.i.backedge, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.outer.i
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !190
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %i.bw = phi ptr [ %.promoted2038.i, %.lr.ph.i ], [ %i.bx, %bb.x ]
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 6 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !178 ; 8 uses
  store ptr %i.bx, ptr %i.z, align 8, !tbaa !187
  %i.bz = tail call i32 @llvm.abs.i32(i32 %i.by, i1 true) ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw [6 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 5
  %i.cd = load i8, ptr %i.cc, align 1             ; 2 uses
  %.mask.i.i.i = and i8 %i.cd, -32
  %i.ce = icmp eq i8 %.mask.i.i.i, 32
  br i1 %i.ce, label %bb.v, label %bb.x, !llvm.loop !1

bb.v:                                             ; preds = %bb.u
  %.lobit.i.i.i = lshr i32 %i.by, 31
  %i.cf = add nuw nsw i32 %.lobit.i.i.i, 1
  %i.cg = and i8 %i.cd, 3
  %i.ch = zext nneg i8 %i.cg to i32               ; 2 uses
  %i.ci = and i32 %i.cf, %i.ch
  %.not13.i = icmp eq i32 %i.ci, 0
  br i1 %.not13.i, label %bb.w, label %bb.x, !llvm.loop !1

bb.w:                                             ; preds = %bb.v
  %.inv.i = icmp slt i32 %i.by, 1
  %i.cj = select i1 %.inv.i, i32 1, i32 2
  %i.ck = and i32 %i.cj, %i.ch
  %.not14.i = icmp eq i32 %i.ck, 0
  br i1 %.not14.i, label %.split.i, label %bb.x, !llvm.loop !1

.split.i:                                         ; preds = %bb.w
  %i.cl = tail call noundef i32 @llvm.fshl.i32(i32 %i.bz, i32 %i.by, i32 1)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.aw, align 8, !tbaa !186
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !178
  %i.cq = sext i32 %i.cp to i64
  %i.cr = load i64, ptr %i.ax, align 8, !tbaa !201
  %.not11.not.i = icmp sgt i64 %i.cr, %i.cq
  br i1 %.not11.not.i, label %_ZN7CaDiCaL8Internal20lookahead_next_probeEv.exit, label %.outer.i

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = icmp eq ptr %i.bt, %i.bx
  br i1 %i.cs, label %.loopexit.i.backedge, label %bb.u, !llvm.loop !0

_ZN7CaDiCaL8Internal20lookahead_next_probeEv.exit: ; preds = %.split.i
  %.not27 = icmp eq i32 %i.by, 0
  br i1 %.not27, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZN7CaDiCaL8Internal20lookahead_next_probeEv.exit
  %i.ct = load i64, ptr %i.ay, align 8, !tbaa !256
  %i.cu = add nsw i64 %i.ct, 1
  store i64 %i.cu, ptr %i.ay, align 8, !tbaa !256
  tail call void @_ZN7CaDiCaL8Internal21probe_assign_decisionEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.by) #16
  %i.cv = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal15probe_propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cw = load ptr, ptr %i.ah, align 8, !tbaa !187
  %i.cx = load ptr, ptr %i.ag, align 8, !tbaa !186
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = trunc i64 %i.db to i32
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void @_ZN7CaDiCaL8Internal14failed_literalEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.by) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.018 = phi i32 [ %i.dc, %bb.z ], [ 0, %bb.aa ] ; 3 uses
  tail call void @_ZN7CaDiCaL8Internal19clean_probehbr_lratEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  %i.dd = icmp slt i32 %.01950, %.018
  br i1 %i.dd, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = icmp eq i32 %.01950, %.018
  br i1 %i.de, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.df = load ptr, ptr %i.az, align 8, !tbaa !257
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 784
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !197 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ca
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !198
  %i.dk = tail call noundef i32 @llvm.abs.i32(i32 %.02149, i1 true)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !198
  %i.do = icmp sgt i64 %i.dj, %i.dn
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.122 = phi i32 [ %i.by, %bb.ae ], [ %.02149, %bb.ad ], [ %.02149, %bb.ac ]
  %.120 = phi i32 [ %.018, %bb.ae ], [ %.01950, %bb.ad ], [ %.01950, %bb.ac ]
  %i.dp = load i8, ptr %i.e, align 4, !tbaa !194, !range !195, !noundef !196
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.critedge.thread, label %bb.o, !llvm.loop !250

.critedge:                                        ; preds = %bb.p, %_ZN7CaDiCaL8Internal17terminating_askedEv.exit30, %_ZN7CaDiCaL8Internal20lookahead_next_probeEv.exit, %bb.r
  %.pr = load i8, ptr %i.e, align 4, !tbaa !194
  %i.dr = load i32, ptr %0, align 8, !tbaa !255
  %i.ds = and i32 %i.dr, -513
  store i32 %i.ds, ptr %0, align 8, !tbaa !255
  %i.dt = trunc nuw i8 %.pr to i1
  br i1 %i.dt, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.du = load i64, ptr %i.ap, align 8, !tbaa !254
  %i.dv = load ptr, ptr %i.ah, align 8, !tbaa !187
  %i.dw = load ptr, ptr %i.ag, align 8, !tbaa !186
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 2
  %i.eb = icmp ult i64 %i.du, %i.ea
  br i1 %i.eb, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ec = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br i1 %i.ec, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_ZN7CaDiCaL8Internal12sort_watchesEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #16
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge.thread, %bb.f, %_ZN7CaDiCaL8Internal17terminating_askedEv.exit.thread, %bb.b, %.critedge, %bb.ag, %bb.aj, %bb.ai, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -2147483648, %bb.f ], [ %i.u, %_ZN7CaDiCaL8Internal17terminating_askedEv.exit.thread ], [ -2147483648, %bb.b ], [ %.02149, %bb.ag ], [ %.02149, %bb.aj ], [ -2147483648, %bb.ai ], [ -2147483648, %.critedge ], [ -2147483648, %.critedge.thread ]
  ret i32 %.1
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal9decomposeEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal7ternaryEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal41mark_duplicated_binary_clauses_as_garbageEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal18init_probehbr_lratEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal21probe_assign_decisionEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal15probe_propagateEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal14failed_literalEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal19clean_probehbr_lratEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal12sort_watchesEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal14generate_cubesEii(ptr dead_on_unwind noalias writable sret(%"struct.CaDiCaL::CubesWithStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(7296) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 6 uses
  %5 = alloca %"class.std::vector.144", align 8   ; 16 uses
  %6 = alloca %"class.std::vector", align 8       ; 7 uses
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %8 = alloca %"class.std::vector", align 16      ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6848
  %i.b = load i64, ptr %i.a, align 8, !tbaa !225
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp eq i32 %2, 0
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit, label %bb.c

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i32 0, ptr %0, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %.pr = load ptr, ptr %4, align 8, !tbaa !186    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.pr to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.k) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backEOS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 23 ; 3 uses
  store i8 1, ptr %i.l, align 1, !tbaa !265
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 7272 ; 3 uses
  store volatile i8 0, ptr %i.m, align 8, !tbaa !224
  %i.n = tail call noundef i32 @_ZN7CaDiCaL8Internal14already_solvedEv(ptr noundef nonnull align 8 dereferenceable(7296) %1) #16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread219

.thread219:                                       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(7296) %1) #16
  %i.r = icmp ne i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !194, !range !195, !noundef !196
  %i.u = trunc nuw i8 %i.t to i1
  %.not.not = or i1 %i.r, %i.u
  br i1 %.not.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %.thread219, %bb.d
  %i.v = phi ptr [ %i.p, %.thread219 ], [ %i.s, %bb.d ]
  %i.w = tail call noundef i32 @_ZN7CaDiCaL8Internal5solveEb(ptr noundef nonnull align 8 dereferenceable(7296) %1, i1 noundef zeroext true) #16 ; 2 uses
  %.not33 = icmp eq i32 %i.w, 0
  br i1 %.not33, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %i.w, ptr %0, align 8, !tbaa !264
  store i8 0, ptr %i.l, align 1, !tbaa !265
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit89

.thread:                                          ; preds = %bb.d, %bb.e
  %i.y = phi ptr [ %i.s, %bb.d ], [ %i.v, %bb.e ] ; 5 uses
  tail call void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(7296) %1) #16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1144 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !187 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !186 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ag = icmp ugt i64 %i.af, 9223372036854775804
  br i1 %i.ag, label %bb.h, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !199

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #14
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !192 ; 3 uses
  %.pre143 = load ptr, ptr %i.aa, align 8, !tbaa !192 ; 2 uses
  %.pre148 = ptrtoint ptr %.pre143 to i64
  %.pre149 = ptrtoint ptr %.pre to i64
  %i.ai = icmp eq ptr %.pre143, %.pre
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.thread
  %.pre-phi150 = phi i64 [ %.pre149, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ae, %.thread ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre148, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ad, %.thread ] ; 2 uses
  %.not.i.i.i.i37 = phi i1 [ %i.ai, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ true, %.thread ]
  %i.aj = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.ac, %.thread ] ; 3 uses
  %i.ak = phi ptr [ %i.ah, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %.thread ] ; 8 uses
  %i.al = sub i64 %.pre-phi, %.pre-phi150         ; 7 uses
  %i.am = icmp sgt i64 %i.al, 4
  br i1 %i.am, label %bb.i, label %bb.j, !prof !200

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %i.aj, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  %i.an = icmp eq i64 %i.al, 4
  br i1 %i.an, label %.thread116, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.j
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.al ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  br i1 %.not.i.i.i.i37, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i39, label %bb.k

.thread116:                                       ; preds = %bb.j
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !178
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ar = icmp ugt i64 %i.al, 9223372036854775804
  br i1 %i.ar, label %bb.l, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38, !prof !266

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38: ; preds = %.thread116, %bb.k
  %i.as = phi ptr [ %i.aq, %.thread116 ], [ %i.ao, %bb.k ]
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #14
  %.pre144 = load ptr, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %.pre145 = load ptr, ptr %i.aa, align 8, !tbaa !192
  %.pre151 = ptrtoint ptr %.pre145 to i64
  %.pre153 = ptrtoint ptr %.pre144 to i64
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i39

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i39:    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.pre-phi154 = phi i64 [ %.pre153, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38 ], [ %.pre-phi150, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %.pre-phi152 = phi i64 [ %.pre151, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38 ], [ %.pre-phi, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.au = phi ptr [ %.pre144, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38 ], [ %i.aj, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.av = phi ptr [ %i.as, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38 ], [ %i.ao, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.aw = phi ptr [ %i.at, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i38 ], [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 6 uses
  %i.ax = sub i64 %.pre-phi152, %.pre-phi154      ; 10 uses
  %i.ay = icmp sgt i64 %i.ax, 4
  br i1 %i.ay, label %bb.m, label %bb.n, !prof !200

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i39
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aw, ptr align 4 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit40

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i39
  %i.az = icmp eq i64 %i.ax, 4
  br i1 %i.az, label %bb.o, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit40

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %i.au, align 4, !tbaa !178
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !178
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit40

end_hunk_0
