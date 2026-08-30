Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search13SearchManager2pvERNS0_6WorkerERKNS_10ThreadPoolERKNS_18TranspositionTableEi:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.pre-phi = phi i64 [ %.pre145, %._crit_edge144 ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %.sroa.speculated127
  br i1 %exitcond.not, label %._crit_edge141, label %bb.c, !llvm.loop !310
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9Stockfish6Search8RootMove22extract_ponder_from_ttERKNS_18TranspositionTableERNS_8PositionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(1048) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %4 = alloca %"class.std::tuple.201", align 8    ; 5 uses
  %5 = alloca %"struct.Stockfish::MoveList", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.c = load i16, ptr %i.b, align 2, !tbaa !234  ; 3 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 632
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1016
  store i64 0, ptr %i.f, align 8, !tbaa !62
  %i.g = tail call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %i.c) #33
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 622
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %i.c, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %i.g, ptr noundef nonnull align 1 dereferenceable(7) %i.h, ptr noundef nonnull align 8 dereferenceable(416) %i.e, ptr noundef nonnull %1, ptr noundef null) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !213  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !311  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !312  ; 2 uses
  %i.o = icmp slt i32 %i.n, 14
  br i1 %i.o, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.n, -14
  %i.q = lshr i32 %i.p, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul i64 %i.r, 6364136223846793005
  %i.t = add i64 %i.s, 1442695040888963407
  %i.u = xor i64 %i.t, %i.l
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.u, %bb.c ], [ %i.l, %bb.b ]
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %4, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %i.v) #33
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.w, align 4, !tbaa !313, !range !221, !noundef !48
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.aa = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %5) #33 ; 2 uses
  %.sroa.01.0.copyload = load i16, ptr %i.x, align 8, !tbaa !191 ; 8 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = ashr i64 %i.ad, 3                       ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.ag = and i64 %i.ad, -8
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.at, %bb.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %5, %.lr.ph.i.i.i.i ], [ %i.as, %bb.i ] ; 9 uses
  %i.ah = load i16, ptr %.02946.i.i.i.i, align 2, !tbaa !234
  %i.ai = icmp eq i16 %i.ah, %.sroa.01.0.copyload
  br i1 %i.ai, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !234
  %i.al = icmp eq i16 %i.ak, %.sroa.01.0.copyload
  br i1 %i.al, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !234
  %i.ao = icmp eq i16 %i.an, %.sroa.01.0.copyload
  br i1 %i.ao, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !234
  %i.ar = icmp eq i16 %i.aq, %.sroa.01.0.copyload
  br i1 %i.ar, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.at = add nsw i64 %.047.i.i.i.i, -1
  %i.au = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.au, label %bb.e, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !314

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %.pre54.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre55.i.i.i.i = sub i64 %i.ab, %.pre54.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.d
  %.pre-phi56.i.i.i.i = phi i64 [ %.pre55.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ad, %bb.d ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %5, %bb.d ] ; 5 uses
  %i.av = ashr exact i64 %.pre-phi56.i.i.i.i, 1
  switch i64 %i.av, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = load i16, ptr %.029.lcssa.i.i.i.i, align 2, !tbaa !234
  %i.ax = icmp eq i16 %i.aw, %.sroa.01.0.copyload
  br i1 %i.ax, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.az = load i16, ptr %.1.i.i.i.i, align 2, !tbaa !234
  %i.ba = icmp eq i16 %i.az, %.sroa.01.0.copyload
  br i1 %i.ba, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bb, %bb.l ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = load i16, ptr %.2.i.i.i.i, align 2, !tbaa !234
  %i.bd = icmp eq i16 %i.bc, %.sroa.01.0.copyload
  br i1 %i.bd, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread: ; preds = %._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 6
  br label %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit

_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit: ; preds = %bb.e, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34, %bb.j, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.j ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.bg, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit34 ], [ %i.bf, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit32 ], [ %i.be, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.e ]
  %.not = icmp eq ptr %.028.i.i.i.i, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %.not, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !192 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !190
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %.sroa.01.0.copyload, ptr %i.bi, align 2, !tbaa !191
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !192
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !189 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775806
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add i64 %.sroa.speculated.i.i.i, %i.br  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 4611686018427387903)
  %i.bv = select i1 %i.bt, i64 4611686018427387903, i64 %i.bu ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 1
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #36 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  %i.bz = load i16, ptr %i.x, align 8, !tbaa !191
  store i16 %i.bz, ptr %i.by, align 2, !tbaa !191
  %i.ca = icmp sgt i64 %i.bp, 0
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bx, ptr align 2 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %.not.i17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !190
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.ce) #38
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !189
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !192
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cf, ptr %i.bj, align 8, !tbaa !190
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.n, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, %_ZNK9Stockfish8Position3keyEv.exit
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !189
  %.sroa.0.0.copyload = load i16, ptr %i.cg, align 2, !tbaa !191
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.0.0.copyload) #33
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !192
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ugt i64 %i.cm, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit
  %.0 = phi i1 [ %i.cn, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i1 %.0
}

declare void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %7 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 4 uses
  %8 = alloca %"struct.Stockfish::StateInfo", align 8 ; 5 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 15 uses
  %12 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.a = alloca [6 x ptr], align 16               ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %14 = alloca %"struct.Stockfish::Search::InfoIteration", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = icmp slt i32 %5, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.fi

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated672 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !315
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !214
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 8 uses
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 4, !tbaa !317
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.n = load i8, ptr %i.m, align 8, !tbaa !318
  %i.o = icmp ne i8 %i.n, 0                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 4 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !171   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !319
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.t = load i64, ptr %i.s, align 64, !tbaa !64
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.w = load ptr, ptr %i.v, align 32, !tbaa !114 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !320
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !273
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %.not419 = icmp sgt i32 %i.ab, %i.ad
  br i1 %.not419, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.aa, align 16, !tbaa !273
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = getelementptr inbounds i8, ptr %2, i64 -28 ; 4 uses
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.ag, label %bb.h [
    i16 65, label %bb.i
    i16 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = and i8 %i.ah, 63
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %i.aj = phi i8 [ %i.ai, %bb.h ], [ 64, %bb.g ], [ 64, %bb.g ] ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %2, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !322 ; 3 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !322
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !323
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 0, ptr %i.an, align 8, !tbaa !324
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !191 ; 3 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !213 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !311 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !312 ; 2 uses
  %i.av = icmp slt i32 %i.au, 14
  br i1 %i.av, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i32 %i.au, -14
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = mul i64 %i.ay, 6364136223846793005
  %i.ba = add i64 %i.az, 1442695040888963407
  %i.bb = xor i64 %i.ba, %i.as
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.i, %bb.j
  %i.bc = phi i64 [ %i.bb, %bb.j ], [ %i.as, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 7 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !174, !nonnull !48, !align !49
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(17) %i.be, i64 noundef %i.bc) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.bh = load i8, ptr %i.bf, align 4, !tbaa !313, !range !221, !noundef !48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 46 ; 2 uses
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !325
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 11421080 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 11419784 ; 5 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !270
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !233
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !189
  %.sroa.0140.0.copyload = load i16, ptr %i.bp, align 2, !tbaa !191 ; 6 uses
  store i16 %.sroa.0140.0.copyload, ptr %i.bg, align 8, !tbaa !191
  %i.bq = trunc nuw i8 %i.bh to i1                ; 2 uses
  br i1 %i.bq, label %bb.k, label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit

bb.k:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !326 ; 12 uses
  %i.bt = load i32, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !213
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.agp, %bb.cp ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.agl, %bb.cp ] ; 5 uses
  %i.ahn = sdiv exact i64 %.pre-phi61.i.i.i, 72
  switch i64 %i.ahn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit [
    i64 3, label %bb.cv
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 48
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !189
  %i.ahq = load i16, ptr %i.ahp, align 2, !tbaa !234
  %i.ahr = icmp eq i16 %i.ahq, %i.sz
  br i1 %i.ahr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ahs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 72
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.cw
  %.sroa.032.1.i.i.i = phi ptr [ %i.ahs, %bb.cw ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 48
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !189
  %i.ahv = load i16, ptr %i.ahu, align 2, !tbaa !234
  %i.ahw = icmp eq i16 %i.ahv, %i.sz
  br i1 %i.ahw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 72
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.cx
  %.sroa.032.2.i.i.i = phi ptr [ %i.ahx, %bb.cx ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i, i64 48
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !189
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !234
  %i.aib = icmp eq i16 %i.aia, %i.sz
  %spec.select.i.i.i508 = select i1 %i.aib, ptr %.sroa.032.2.i.i.i, ptr %i.agm
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit42.i.i.i:                ; preds = %bb.cr
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 72
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit44.i.i.i:                ; preds = %bb.cs
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 144
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit46.i.i.i:                ; preds = %bb.ct
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 216
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit: ; preds = %bb.cq, %._crit_edge.i.i.i, %bb.cv, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i, %.loopexit.split.loop.exit42.i.i.i, %.loopexit.split.loop.exit44.i.i.i, %.loopexit.split.loop.exit46.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i508, %._crit_edge._crit_edge57.i.i.i ], [ %i.agm, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.cv ], [ %i.aid, %.loopexit.split.loop.exit44.i.i.i ], [ %i.aic, %.loopexit.split.loop.exit42.i.i.i ], [ %i.aie, %.loopexit.split.loop.exit46.i.i.i ], [ %.sroa.032.051.i.i.i, %bb.cq ] ; 13 uses
  %i.aif = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.aig = sub i64 %i.aif, %i.ack
  %i.aih = load i64, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8, !tbaa !177
  %i.aii = add i64 %i.aig, %i.aih
  store i64 %i.aii, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8, !tbaa !177
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 16 ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !240 ; 2 uses
  %.not450 = icmp eq i32 %i.aik, -32001
  br i1 %.not450, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit
  %i.ail = add nsw i32 %i.aik, %.5386
  %i.aim = sdiv i32 %i.ail, 2
  br label %bb.cz

bb.cz:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, %bb.cy
  %i.ain = phi i32 [ %i.aim, %bb.cy ], [ %.5386, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit ]
  store i32 %i.ain, ptr %i.aij, align 8, !tbaa !240
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 20 ; 2 uses
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !274 ; 2 uses
  %.not451 = icmp eq i32 %i.aip, -1024064001
  %i.aiq = call i32 @llvm.abs.i32(i32 %.5386, i1 true)
  %i.air = mul nsw i32 %i.aiq, %.5386             ; 2 uses
  br i1 %.not451, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ais = add nsw i32 %i.aip, %i.air
  %i.ait = sdiv i32 %i.ais, 2
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.aiu = phi i32 [ %i.ait, %bb.da ], [ %i.air, %bb.cz ]
  store i32 %i.aiu, ptr %i.aio, align 4, !tbaa !274
  %i.aiv = icmp sgt i32 %.5386, %.0369.ph1010     ; 2 uses
  %or.cond472 = select i1 %i.agh, i1 true, i1 %i.aiv
  br i1 %or.cond472, label %bb.dc, label %bb.dt

bb.dc:                                            ; preds = %bb.db
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 24 ; 2 uses
  store i32 %.5386, ptr %i.aiw, align 8, !tbaa !184
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8
  store i32 %.5386, ptr %i.aix, align 8, !tbaa !238
  %i.aiy = load i32, ptr %i.aa, align 16, !tbaa !273
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 32
  store i32 %i.aiy, ptr %i.aiz, align 8, !tbaa !187
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 29 ; 2 uses
  store i8 0, ptr %i.aja, align 1, !tbaa !186
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 28 ; 2 uses
  store i8 0, ptr %i.ajb, align 4, !tbaa !185
  %.not452 = icmp slt i32 %.5386, %4
  br i1 %.not452, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 1, ptr %i.ajb, align 4, !tbaa !185
  br label %.sink.split

bb.de:                                            ; preds = %bb.dc
  br i1 %i.aiv, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i8 1, ptr %i.aja, align 1, !tbaa !186
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dd, %bb.df
  %.0369.ph1010.sink = phi i32 [ %.0369.ph1010, %bb.df ], [ %4, %bb.dd ]
  store i32 %.0369.ph1010.sink, ptr %i.aiw, align 8, !tbaa !184
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.de
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 48 ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 56 ; 5 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !192 ; 3 uses
  %i.ajf = load ptr, ptr %i.ajc, align 8, !tbaa !189 ; 3 uses
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = ptrtoint ptr %i.ajf to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = ashr exact i64 %i.aji, 1               ; 2 uses
  %i.ajk = icmp eq ptr %i.aje, %i.ajf
  br i1 %i.ajk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ajl = sub nuw nsw i64 1, %i.ajj
  call void @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ajc, i64 noundef %i.ajl)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.di:                                            ; preds = %bb.dg
  %i.ajm = icmp ugt i64 %i.ajj, 1
  br i1 %i.ajm, label %bb.dj, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.dj:                                            ; preds = %bb.di
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajf, i64 2 ; 2 uses
  %.not.i.i509 = icmp eq ptr %i.aje, %i.ajn
  br i1 %.not.i.i509, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.ajn, ptr %i.ajd, align 8, !tbaa !192
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit: ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dk
  %i.ajo = load ptr, ptr %i.sb, align 8, !tbaa !254 ; 2 uses
  %i.ajp = load i16, ptr %i.ajo, align 2, !tbaa !234 ; 2 uses
  %.not9391000 = icmp eq i16 %i.ajp, 0
  br i1 %.not9391000, label %._crit_edge1003, label %.lr.ph1002

.lr.ph1002:                                       ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 64 ; 3 uses
  %.pre1064.a = load ptr, ptr %i.ajd, align 8, !tbaa !192
  %.pre1065 = load ptr, ptr %i.ajq, align 8, !tbaa !190
  br label %bb.dl

._crit_edge1003:                                  ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  br i1 %i.aek, label %bb.dr, label %bb.du

bb.dl:                                            ; preds = %.lr.ph1002, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit
  %i.ajr = phi ptr [ %.pre1065, %.lr.ph1002 ], [ %i.akp, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.ajs = phi ptr [ %.pre1064.a, %.lr.ph1002 ], [ %i.akq, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.ajt = phi i16 [ %i.ajp, %.lr.ph1002 ], [ %i.aks, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ]
  %.03801001 = phi ptr [ %i.ajo, %.lr.ph1002 ], [ %i.akr, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.not.i510 = icmp eq ptr %i.ajs, %i.ajr
  br i1 %.not.i510, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i16 %i.ajt, ptr %i.ajs, align 2, !tbaa !191
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2 ; 2 uses
  store ptr %i.aju, ptr %i.ajd, align 8, !tbaa !192
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.dn:                                            ; preds = %bb.dl
  %i.ajv = load ptr, ptr %i.ajc, align 8, !tbaa !189 ; 4 uses
  %i.ajw = ptrtoint ptr %i.ajr to i64
  %i.ajx = ptrtoint ptr %i.ajv to i64             ; 2 uses
  %i.ajy = sub i64 %i.ajw, %i.ajx                 ; 5 uses
  %i.ajz = icmp eq i64 %i.ajy, 9223372036854775806
  br i1 %i.ajz, label %bb.do, label %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.do:                                            ; preds = %bb.dn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dn
  %i.aka = ashr exact i64 %i.ajy, 1               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aka, i64 1)
  %i.akb = add i64 %.sroa.speculated.i.i.i, %i.aka ; 2 uses
  %i.akc = icmp ult i64 %i.akb, %i.aka
  %i.akd = call i64 @llvm.umin.i64(i64 %i.akb, i64 4611686018427387903)
  %i.ake = select i1 %i.akc, i64 4611686018427387903, i64 %i.akd ; 2 uses
  %i.akf = shl nuw nsw i64 %i.ake, 1
  %i.akg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akf) #36 ; 4 uses
  %i.akh = getelementptr inbounds i8, ptr %i.akg, i64 %i.ajy ; 2 uses
  %i.aki = load i16, ptr %.03801001, align 2, !tbaa !191
  store i16 %i.aki, ptr %i.akh, align 2, !tbaa !191
  %i.akj = icmp sgt i64 %i.ajy, 0
  br i1 %i.akj, label %bb.dp, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.dp:                                            ; preds = %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.akg, ptr align 2 %i.ajv, i64 %i.ajy, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.dp, %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 2 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.akl = load ptr, ptr %i.ajq, align 8, !tbaa !190
  %i.akm = ptrtoint ptr %i.akl to i64
  %i.akn = sub i64 %i.akm, %i.ajx
  call void @_ZdlPvm(ptr noundef nonnull %i.ajv, i64 noundef %i.akn) #38
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.dq, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.akg, ptr %i.ajc, align 8, !tbaa !189
  store ptr %i.akk, ptr %i.ajd, align 8, !tbaa !192
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %i.akg, i64 %i.ake ; 2 uses
  store ptr %i.ako, ptr %i.ajq, align 8, !tbaa !190
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.dm, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.akp = phi ptr [ %i.ajr, %bb.dm ], [ %i.ako, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.akq = phi ptr [ %i.aju, %bb.dm ], [ %i.akk, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.akr = getelementptr inbounds nuw i8, ptr %.03801001, i64 2 ; 2 uses
  %i.aks = load i16, ptr %i.akr, align 2, !tbaa !234 ; 2 uses
  %.not939.a = icmp eq i16 %i.aks, 0
  br i1 %.not939.a, label %._crit_edge1003, label %bb.dl, !llvm.loop !354

bb.dr:                                            ; preds = %._crit_edge1003
  %i.akt = load i64, ptr %i.bk, align 8, !tbaa !270
  %.not454 = icmp eq i64 %i.akt, 0
  br i1 %.not454, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.aku = atomicrmw add ptr %i.sw, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.du

bb.dt:                                            ; preds = %bb.db
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8
  store i32 -32001, ptr %i.akv, align 8, !tbaa !238
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge1003, %bb.dr, %bb.ds, %bb.dt
  %i.akw = icmp eq i32 %.5386, %.0746.ph1005
  br i1 %i.akw, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.akx = load i32, ptr %i.ac, align 8, !tbaa !253
  %i.aky = add nsw i32 %i.akx, 2
  %i.akz = load i32, ptr %i.sx, align 16, !tbaa !264
  %.not455 = icmp slt i32 %i.aky, %i.akz
  br i1 %.not455, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ala = load atomic i64, ptr %i.rt seq_cst, align 8
  %i.alb = and i64 %i.ala, 14
  %i.alc = icmp eq i64 %i.alb, 0
  br i1 %i.alc, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ald = add i32 %.0746.ph1005, 31505
  %i.ale = icmp ult i32 %i.ald, 63011
  %i.alf = zext i1 %i.ale to i32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.du
  %i.alg = phi i32 [ 0, %bb.dw ], [ 0, %bb.dv ], [ 0, %bb.du ], [ %i.alf, %bb.dx ]
  %i.alh = add nsw i32 %i.alg, %.5386             ; 2 uses
  %i.ali = icmp sgt i32 %i.alh, %.0746.ph1005
  br i1 %i.ali, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.alj = icmp sgt i32 %i.alh, %.0369.ph1010
  br i1 %i.alj, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %.not456 = icmp slt i32 %.5386, %4
  br i1 %.not456, label %bb.eb, label %.thread881

.thread881:                                       ; preds = %bb.ea
  %i.alk = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.all = load i32, ptr %i.alk, align 8, !tbaa !324
  %i.alm = add nsw i32 %i.all, 1
  store i32 %i.alm, ptr %i.alk, align 8, !tbaa !324
  br label %.loopexit

bb.eb:                                            ; preds = %bb.ea
  %i.aln = add i32 %.4740.ph1007, -14
  %or.cond24 = icmp ult i32 %i.aln, -11
  %i.alo = add i32 %.5386, -31507
  %spec.select.i512.a = icmp ult i32 %i.alo, -63013
  %or.cond912.a = select i1 %or.cond24, i1 true, i1 %spec.select.i512.a
  %i.alp = add nsw i32 %.4740.ph1007, -2
  %spec.select917 = select i1 %or.cond912.a, i32 %.4740.ph1007, i32 %i.alp
  br label %.thread868

bb.ec:                                            ; preds = %bb.dz, %bb.dy
  %.1747 = phi i32 [ %.0746.ph1005, %bb.dy ], [ %.5386, %bb.dz ] ; 3 uses
  %i.alq = icmp ne i16 %i.sz, %.sroa.0623.0.ph1006
  %i.alr = icmp samesign ult i64 %indvars.iv, 32
  %or.cond26 = select i1 %i.alq, i1 %i.alr, i1 false
  br i1 %or.cond26, label %bb.ed, label %.thread868

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.aao, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.als = load i64, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.alt = add i64 %i.als, 1
  store i64 %i.alt, ptr %i.d, align 8, !tbaa !315
  %i.alu = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %i.als
  store i16 %i.sz, ptr %i.alu, align 2, !tbaa !191
  br label %.thread868

bb.ef:                                            ; preds = %bb.ed
  %i.alv = load i64, ptr %i.e, align 8, !tbaa !315 ; 2 uses
  %i.alw = add i64 %i.alv, 1
  store i64 %i.alw, ptr %i.e, align 8, !tbaa !315
  %i.alx = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.alv
  store i16 %i.sz, ptr %i.alx, align 2, !tbaa !191
  br label %.thread868

.thread868:                                       ; preds = %bb.eb, %bb.ee, %bb.ef, %bb.ec
  %.2748 = phi i32 [ %.1747, %bb.ec ], [ %.1747, %bb.ee ], [ %.1747, %bb.ef ], [ %.5386, %bb.eb ] ; 2 uses
  %.sroa.0623.2 = phi i16 [ %.sroa.0623.0.ph1006, %bb.ec ], [ %.sroa.0623.0.ph1006, %bb.ee ], [ %.sroa.0623.0.ph1006, %bb.ef ], [ %i.sz, %bb.eb ] ; 2 uses
  %.6742 = phi i32 [ %.4740.ph1007, %bb.ec ], [ %.4740.ph1007, %bb.ee ], [ %.4740.ph1007, %bb.ef ], [ %spec.select917, %bb.eb ] ; 2 uses
  %.3372 = phi i32 [ %.0369.ph1010, %bb.ec ], [ %.0369.ph1010, %bb.ee ], [ %.0369.ph1010, %bb.ef ], [ %.5386, %bb.eb ] ; 2 uses
  %i.aly = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not934989 = icmp eq i16 %i.aly, 0
  br i1 %.not934989, label %.loopexit, label %.lr.ph990

.loopexit.loopexit:                               ; preds = %.backedge
  %i.alz = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.thread868, %.loopexit.loopexit, %bb.br, %.thread881
  %.4740.ph978 = phi i32 [ %.4740.ph1007, %.thread881 ], [ %.4740.ph1007, %.loopexit.loopexit ], [ %.3739, %bb.br ], [ %.6742, %.thread868 ] ; 8 uses
  %.0369.ph969 = phi i32 [ %.0369.ph1010, %.thread881 ], [ %.0369.ph1010, %.loopexit.loopexit ], [ %3, %bb.br ], [ %.3372, %.thread868 ] ; 3 uses
  %.3749 = phi i32 [ %.5386, %.thread881 ], [ %.0746.ph1005, %.loopexit.loopexit ], [ -32001, %bb.br ], [ %.2748, %.thread868 ] ; 4 uses
  %.sroa.0623.3 = phi i16 [ %i.sz, %.thread881 ], [ %.sroa.0623.0.ph1006, %.loopexit.loopexit ], [ 0, %bb.br ], [ %.sroa.0623.2, %.thread868 ] ; 8 uses
  %.1396 = phi i32 [ %i.zj, %.thread881 ], [ %i.alz, %.loopexit.loopexit ], [ 0, %bb.br ], [ %i.zj, %.thread868 ] ; 2 uses
  %.not457 = icmp slt i32 %.3749, %4
  %i.ama = add i32 %.3749, -31507
  %spec.select.i513.a = icmp ult i32 %i.ama, -63013
  %or.cond913.a = or i1 %.not457, %spec.select.i513.a
  %i.amb = add i32 %.0369.ph969, -31507
  %spec.select.i514 = icmp ult i32 %i.amb, -63013
  %or.cond914.a = select i1 %or.cond913.a, i1 true, i1 %spec.select.i514
  br i1 %or.cond914.a, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.loopexit
  %i.amc = mul nsw i32 %.3749, %.4740.ph978
  %i.amd = add nsw i32 %i.amc, %4
  %i.ame = add nsw i32 %.4740.ph978, 1
  %i.amf = sdiv i32 %i.amd, %i.ame
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.loopexit
  %.4750 = phi i32 [ %.3749, %.loopexit ], [ %i.amf, %bb.eg ] ; 7 uses
  %.not458 = icmp eq i32 %.1396, 0                ; 2 uses
  br i1 %.not458, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  br i1 %i.cp, label %bb.ew, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.amg = load i8, ptr %i.k, align 4, !tbaa !317, !range !221, !noundef !48
  %i.amh = trunc nuw i8 %i.amg to i1
  br i1 %i.amh, label %bb.ek, label %.thread888

bb.ek:                                            ; preds = %bb.ej
  %i.ami = load i32, ptr %i.ac, align 8, !tbaa !253
  %i.amj = add nsw i32 %i.ami, -32000
  br label %bb.ew

bb.el:                                            ; preds = %bb.eh
  %.not940.a = icmp eq i16 %.sroa.0623.3, 0
  br i1 %.not940.a, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.sroa.039.0.copyload = load i16, ptr %i.bg, align 8, !tbaa !191
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_116update_all_statsERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveENS_6SquareERNS_9ValueListIS9_Lm32EEESD_iS9_i(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, ptr noundef nonnull align 64 dereferenceable(14279296) %0, i16 %.sroa.0623.3, i8 noundef zeroext %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %.4740.ph978, i16 %.sroa.039.0.copyload, i32 noundef %.1396)
  br label %bb.ew

bb.en:                                            ; preds = %bb.el
  %.not27 = xor i1 %i.o, true
  %i.amk = icmp ne i8 %i.aj, 64                   ; 2 uses
  %or.cond30 = and i1 %i.amk, %.not27
  br i1 %or.cond30, label %bb.eo, label %bb.eu
end_hunk_1
begin_hunk_2_@_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi:._crit_edge.i.i
  store ptr %i.bf, ptr %11, align 8, !tbaa !120
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.as, align 8, !tbaa !384
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.ar, align 8, !tbaa !215
  %i.bg = call { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %11) #33
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !215 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #33, !inline_history !386 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bj = load ptr, ptr %9, align 8, !tbaa !175   ; 5 uses
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !175 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = sdiv exact i64 %i.bn, 72
  %i.bp = ashr i64 %i.bo, 2                       ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.br = load i16, ptr %i.bd, align 2, !tbaa !234 ; 4 uses
  %i.bs = mul nuw nsw i64 %i.bp, 288
  %scevgep.i.i.i = getelementptr i8, ptr %i.bj, i64 %i.bs ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ %i.ck, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %i.cj, %bb.h ] ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !189
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !234
  %i.bw = icmp eq i16 %i.bv, %i.br
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !189
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !234
  %i.ca = icmp eq i16 %i.bz, %i.br
  br i1 %i.ca, label %.loopexit.split.loop.exit42.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 192
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !189
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !234
  %i.ce = icmp eq i16 %i.cd, %i.br
  br i1 %i.ce, label %.loopexit.split.loop.exit44.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 264
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !189
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !234
  %i.ci = icmp eq i16 %i.ch, %i.br
  br i1 %i.ci, label %.loopexit.split.loop.exit46.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 288
  %i.ck = add nsw i64 %.052.i.i.i, -1
  %i.cl = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cl, label %bb.d, label %._crit_edge.loopexit.i.i.i, !llvm.loop !290

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.h
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bl, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bn, %_ZNSt14_Function_baseD2Ev.exit ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bj, %_ZNSt14_Function_baseD2Ev.exit ] ; 5 uses
  %i.cm = sdiv exact i64 %.pre-phi61.i.i.i, 72
  switch i64 %i.cm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i16, ptr %i.bd, align 2, !tbaa !234
  br label %bb.m

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i16, ptr %i.bd, align 2, !tbaa !234
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !189
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !234
  %i.cq = load i16, ptr %i.bd, align 2, !tbaa !234 ; 2 uses
  %i.cr = icmp eq i16 %i.cp, %i.cq
  br i1 %i.cr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i.i
  %i.ct = phi i16 [ %i.cq, %bb.j ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cs, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !189
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !234
  %i.cx = icmp eq i16 %i.cw, %i.ct
  br i1 %i.cx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 72
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i.i
  %i.cz = phi i16 [ %i.ct, %bb.l ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.cy, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !189
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !234
  %i.dd = icmp eq i16 %i.dc, %i.cz
  %spec.select.i.i.i = select i1 %i.dd, ptr %.sroa.032.2.i.i.i, ptr %i.bk
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit42.i.i.i:                ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 72
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit44.i.i.i:                ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 144
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

.loopexit.split.loop.exit46.i.i.i:                ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 216
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit: ; preds = %bb.d, %._crit_edge.i.i.i, %bb.i, %bb.k, %bb.m, %.loopexit.split.loop.exit42.i.i.i, %.loopexit.split.loop.exit44.i.i.i, %.loopexit.split.loop.exit46.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.k ], [ %spec.select.i.i.i, %bb.m ], [ %i.bk, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.i ], [ %i.df, %.loopexit.split.loop.exit44.i.i.i ], [ %i.de, %.loopexit.split.loop.exit42.i.i.i ], [ %i.dg, %.loopexit.split.loop.exit46.i.i.i ], [ %.sroa.032.051.i.i.i, %bb.d ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !188
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 36
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !188
  %.not108 = icmp eq i32 %i.di, %i.dk
  br i1 %.not108, label %bb.r, label %bb.x

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit
  %i.dl = phi ptr [ %i.fl, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit ], [ %.pre, %.lr.ph.preheader ] ; 14 uses
  %.098209 = phi ptr [ %i.fm, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit ], [ %10, %.lr.ph.preheader ] ; 3 uses
  %i.dm = load ptr, ptr %i.aq, align 8, !tbaa !176
  %.not.i119 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i119, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i = load i16, ptr %.098209, align 2, !tbaa !191
  store i64 0, ptr %i.dl, align 8, !tbaa !177
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.dn, align 8, !tbaa !138
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 -32001, ptr %i.do, align 8, !tbaa !184
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.dp, align 4, !tbaa !185
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  store i8 0, ptr %i.dq, align 1, !tbaa !186
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i32 0, ptr %i.dr, align 8, !tbaa !187
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store i32 0, ptr %i.ds, align 4, !tbaa !188
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  %i.du = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !189
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.du, align 2, !tbaa !191
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !192
  %i.dy = load ptr, ptr %i.ap, align 8, !tbaa !193
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72 ; 2 uses
  store ptr %i.dz, ptr %i.ap, align 8, !tbaa !193
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ea = load ptr, ptr %9, align 8, !tbaa !233   ; 5 uses
  %i.eb = ptrtoint ptr %i.dl to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775800
  br i1 %i.ee, label %bb.p, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.ef = sdiv exact i64 %i.ed, 72                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eg, i64 128102389400760775)
  %i.ej = select i1 %i.eh, i64 128102389400760775, i64 %i.ei ; 2 uses
  %i.ek = mul nuw nsw i64 %i.ej, 72
  %i.el = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #36 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed ; 10 uses
  %.sroa.0.0.copyload.i.i151 = load i16, ptr %.098209, align 2, !tbaa !191
  store i64 0, ptr %i.em, align 8, !tbaa !177
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.en, align 8, !tbaa !138
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i32 -32001, ptr %i.eo, align 8, !tbaa !184
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  store i8 0, ptr %i.ep, align 4, !tbaa !185
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 29
  store i8 0, ptr %i.eq, align 1, !tbaa !186
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i32 0, ptr %i.er, align 8, !tbaa !187
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  store i32 0, ptr %i.es, align 4, !tbaa !188
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eu = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !189
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i151, ptr %i.eu, align 2, !tbaa !191
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.ea, %i.dl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i152

.lr.ph.i.i.i.i152:                                ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i152
  %.012.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i152 ], [ %i.el, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i152 ], [ %i.ea, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i, i64 44, i1 false), !alias.scope !392
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.fa = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !291, !alias.scope !390, !noalias !387
  store <2 x ptr> %i.fa, ptr %i.ey, align 8, !tbaa !291, !alias.scope !387, !noalias !390
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !190, !alias.scope !390, !noalias !387
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !190, !alias.scope !387, !noalias !390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false), !alias.scope !390, !noalias !387
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.fe, %i.dl
  br i1 %.not.i.i.i.i153, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i152, !llvm.loop !393

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i152, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.el, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.ff, %.lr.ph.i.i.i.i152 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 72 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ea, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  %i.fh = load ptr, ptr %i.aq, align 8, !tbaa !176
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.fj) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.q
  store ptr %i.el, ptr %9, align 8, !tbaa !233
  store ptr %i.fg, ptr %i.ap, align 8, !tbaa !193
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.fk, ptr %i.aq, align 8, !tbaa !176
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit: ; preds = %bb.n, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.fl = phi ptr [ %i.dz, %bb.n ], [ %i.fg, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.098209, i64 2 ; 2 uses
  %.not107 = icmp eq ptr %i.fm, %i.be
  br i1 %.not107, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit
  %.fca.0.extract37 = extractvalue { i64, i32 } %i.bg, 0
  %i.fn = add nsw i32 %.0, 1                      ; 4 uses
  %i.fo = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #36 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.fp, i8 0, i64 192, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  %i.fq = load i64, ptr %i.aa, align 8, !tbaa !373
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.aa, align 8, !tbaa !373
  %i.fs = load ptr, ptr %i.z, align 8, !tbaa !367
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.031.0.copyload = load i16, ptr %i.bd, align 2, !tbaa !191 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !62
  %i.fu = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.031.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.031.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %i.ft, i1 noundef zeroext %i.fu, ptr noundef nonnull align 1 dereferenceable(7) %i.am, ptr noundef nonnull align 8 dereferenceable(416) %i.aj, ptr noundef null, ptr noundef null) #33
  %i.fv = and i64 %.fca.0.extract37, 4294967296
  %.not109 = icmp eq i64 %i.fv, 0
  br i1 %.not109, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not106, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fw = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef %i.fn) #33
  br i1 %i.fw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fx = call noundef zeroext i1 @_ZNK9Stockfish8Position13is_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef %i.fn) #33
  br i1 %i.fx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.030.0.copyload = load i16, ptr %i.bd, align 2, !tbaa !191
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.030.0.copyload) #33
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.fz = load i64, ptr %i.at, align 8, !tbaa !25
  %.not.i.i = icmp ne i64 %i.fz, 0
  %i.ga = load i64, ptr %i.au, align 8
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = select i1 %.not.i.i, i1 true, i1 %i.gb
  br i1 %i.gc, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit", label %.critedge

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit": ; preds = %bb.w
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %5, align 8, !tbaa !25
  %i.gd = sub nsw i64 %i.fy, %.sroa.0.0.copyload.i2.i.i
  %i.ge = sitofp i64 %i.gd to double
  %i.gf = fdiv nnan double %i.ge, 1.000000e+06
  %i.gg = fmul nnan double %i.gf, 2.000000e+00
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !138
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = fcmp ogt double %i.gg, %i.gi
  br i1 %i.gj, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.r, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit"
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %.critedge, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit", %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit
  %i.gk = phi i1 [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit ], [ false, %bb.v ], [ true, %.critedge ], [ false, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit" ]
  %.2 = phi i32 [ %.0, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit ], [ %.0, %bb.v ], [ %i.fn, %.critedge ], [ %i.fn, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit" ] ; 2 uses
  %i.gl = load ptr, ptr %9, align 8, !tbaa !233   ; 3 uses
  %i.gm = load ptr, ptr %i.ap, align 8, !tbaa !193 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gl, %i.gm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i, label %.lr.ph.i.i.i120

.lr.ph.i.i.i120:                                  ; preds = %bb.x, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i ], [ %i.gl, %bb.x ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i120
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !190
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #38
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i120
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gu, %i.gm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i120, !llvm.loop !394

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !233
  br label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i, %bb.x
  %i.gv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i ], [ %i.gl, %bb.x ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i
  %i.gw = load ptr, ptr %i.aq, align 8, !tbaa !176
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.gk, label %bb.a, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit
  %.pre239.a = load ptr, ptr %i.an, align 8, !tbaa !192 ; 2 uses
  %.pre240.a = load ptr, ptr %i.ah, align 8, !tbaa !189 ; 2 uses
  %.pre243.a = sext i32 %.2 to i64
  %.pre244 = ptrtoint ptr %.pre239.a to i64
  %.pre246 = ptrtoint ptr %.pre240.a to i64
  %.pre248 = sub i64 %.pre244, %.pre246
  %.pre250 = ashr exact i64 %.pre248, 1
  br label %split

split:                                            ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge
  %.pre-phi251 = phi i64 [ %.pre250, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.bb, %bb.a ] ; 3 uses
  %.pre-phi = phi i64 [ %.pre243.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.av, %bb.a ] ; 4 uses
  %i.ha = phi ptr [ %.pre240.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.ax, %bb.a ]
  %i.hb = phi ptr [ %.pre239.a, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit._crit_edge ], [ %i.aw, %bb.a ]
  %i.hc = icmp ult i64 %.pre-phi251, %.pre-phi
  br i1 %i.hc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %split
  %i.hd = sub nuw nsw i64 %.pre-phi, %.pre-phi251
  call void @_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.hd)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.ab:                                            ; preds = %split
  %i.he = icmp ugt i64 %.pre-phi251, %.pre-phi
  br i1 %i.he, label %bb.ac, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %.pre-phi ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.hb, %i.hf
  br i1 %.not.i.i121, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.hf, ptr %i.an, align 8, !tbaa !192
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 512
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %invariant.op = sub i64 -2, %i.c
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit144, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  br i1 %.not106, label %.critedge113, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hm = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef 0) #33
  br i1 %i.hm, label %bb.bd, label %.critedge113

.critedge113:                                     ; preds = %bb.ae, %bb.af
  %i.hn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.ho = load i64, ptr %i.at, align 8, !tbaa !25
  %.not.i.i122 = icmp ne i64 %i.ho, 0
  %i.hp = load i64, ptr %i.au, align 8
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = select i1 %.not.i.i122, i1 true, i1 %i.hq
  br i1 %i.hr, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124", label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124": ; preds = %.critedge113
  %.sroa.0.0.copyload.i2.i.i123 = load i64, ptr %5, align 8, !tbaa !25
  %i.hs = sub nsw i64 %i.hn, %.sroa.0.0.copyload.i2.i.i123
  %i.ht = sitofp i64 %i.hs to double
  %i.hu = fdiv nnan double %i.ht, 1.000000e+06
  %i.hv = fmul nnan double %i.hu, 2.000000e+00
  %i.hw = load i32, ptr %i.b, align 4, !tbaa !138
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fcmp ogt double %i.hv, %i.hx
  br i1 %i.hy, label %bb.bd, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread": ; preds = %.critedge113, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.hz = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %13) #33 ; 3 uses
  store ptr %i.hz, ptr %i.hg, align 8, !tbaa !376
  %.not110215 = icmp eq ptr %13, %i.hz
  br i1 %.not110215, label %._crit_edge218, label %.lr.ph217

._crit_edge218:                                   ; preds = %bb.ak, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ia = load ptr, ptr %i.hh, align 8, !tbaa !193 ; 6 uses
  %i.ib = load ptr, ptr %12, align 8, !tbaa !233  ; 13 uses
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = icmp eq ptr %i.ia, %i.ib
  br i1 %i.id, label %bb.ba, label %bb.al

.lr.ph217:                                        ; preds = %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread", %bb.ak
  %.0104216 = phi ptr [ %i.xw, %bb.ak ], [ %13, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread" ] ; 5 uses
  %i.ie = load ptr, ptr %i.hh, align 8, !tbaa !193 ; 14 uses
  %i.if = load ptr, ptr %i.hi, align 8, !tbaa !176
  %.not.i125 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i125, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph217
  %.sroa.0.0.copyload.i.i126 = load i16, ptr %.0104216, align 2, !tbaa !191
  store i64 0, ptr %i.ie, align 8, !tbaa !177
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.ig, align 8, !tbaa !138
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i32 -32001, ptr %i.ih, align 8, !tbaa !184
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  store i8 0, ptr %i.ii, align 4, !tbaa !185
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 29
  store i8 0, ptr %i.ij, align 1, !tbaa !186
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store i32 0, ptr %i.ik, align 8, !tbaa !187
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 36
  store i32 0, ptr %i.il, align 4, !tbaa !188
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  %i.in = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.in, ptr %i.im, align 8, !tbaa !189
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i126, ptr %i.in, align 2, !tbaa !191
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !192
  %i.ir = load ptr, ptr %i.hh, align 8, !tbaa !193 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 72
  store ptr %i.is, ptr %i.hh, align 8, !tbaa !193
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128

bb.ah:                                            ; preds = %.lr.ph217
  %i.it = load ptr, ptr %12, align 8, !tbaa !233  ; 5 uses
  %i.iu = ptrtoint ptr %i.ie to i64
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = sub i64 %i.iu, %i.iv                    ; 3 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775800
  br i1 %i.ix, label %bb.ai, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154: ; preds = %bb.ah
  %i.iy = sdiv exact i64 %i.iw, 72                ; 3 uses
  %.sroa.speculated.i.i155 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i155, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iz, i64 128102389400760775)
  %i.jc = select i1 %i.ja, i64 128102389400760775, i64 %i.jb ; 2 uses
  %i.jd = mul nuw nsw i64 %i.jc, 72
  %i.je = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #36 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iw ; 10 uses
  %.sroa.0.0.copyload.i.i157 = load i16, ptr %.0104216, align 2, !tbaa !191
  store i64 0, ptr %i.jf, align 8, !tbaa !177
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.jg, align 8, !tbaa !138
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store i32 -32001, ptr %i.jh, align 8, !tbaa !184
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 28
  store i8 0, ptr %i.ji, align 4, !tbaa !185
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 29
  store i8 0, ptr %i.jj, align 1, !tbaa !186
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store i32 0, ptr %i.jk, align 8, !tbaa !187
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 36
  store i32 0, ptr %i.jl, align 4, !tbaa !188
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jn = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !189
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i157, ptr %i.jn, align 2, !tbaa !191
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  store ptr %i.jo, ptr %i.jq, align 8, !tbaa !192
  %.not10.i.i.i.i158 = icmp eq ptr %i.it, %i.ie
  br i1 %.not10.i.i.i.i158, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154, %.lr.ph.i.i.i.i159
  %.012.i.i.i.i160 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i159 ], [ %i.je, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ] ; 4 uses
  %.0911.i.i.i.i161 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i159 ], [ %i.it, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i160, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i161, i64 44, i1 false), !alias.scope !400
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 48 ; 2 uses
  %i.jt = load <2 x ptr>, ptr %i.js, align 8, !tbaa !291, !alias.scope !398, !noalias !395
  store <2 x ptr> %i.jt, ptr %i.jr, align 8, !tbaa !291, !alias.scope !395, !noalias !398
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !190, !alias.scope !398, !noalias !395
  store ptr %i.jw, ptr %i.ju, align 8, !tbaa !190, !alias.scope !395, !noalias !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false), !alias.scope !398, !noalias !395
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 72 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 72 ; 2 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.jx, %i.ie
  br i1 %.not.i.i.i.i162, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, label %.lr.ph.i.i.i.i159, !llvm.loop !393

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170: ; preds = %.lr.ph.i.i.i.i159, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154
  %.0.lcssa.i.i.i.i164 = phi ptr [ %i.je, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ], [ %i.jy, %.lr.ph.i.i.i.i159 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i164, i64 72
  %.not.i23.i172 = icmp eq ptr %i.it, null
  br i1 %.not.i23.i172, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170
  %i.ka = load ptr, ptr %i.hi, align 8, !tbaa !176
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.kc) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, %bb.aj
  store ptr %i.je, ptr %12, align 8, !tbaa !233
  store ptr %i.jz, ptr %i.hh, align 8, !tbaa !193
  %i.kd = getelementptr inbounds nuw [72 x i8], ptr %i.je, i64 %i.jc
  store ptr %i.kd, ptr %i.hi, align 8, !tbaa !176
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128: ; preds = %bb.ag, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173
  %i.ke = phi ptr [ %.0.lcssa.i.i.i.i164, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173 ], [ %i.ir, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.019.0.copyload = load i16, ptr %.0104216, align 2, !tbaa !191 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !62
  %i.kf = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %14, i1 noundef zeroext %i.kf, ptr noundef nonnull align 1 dereferenceable(7) %i.am, ptr noundef nonnull align 8 dereferenceable(416) %i.aj, ptr noundef null, ptr noundef null) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.kg = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %15) #33 ; 3 uses
  %.not210 = icmp eq ptr %15, %i.kg
  br i1 %.not210, label %bb.ak, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128
  %i.kh = ptrtoaddr ptr %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 36 ; 2 uses
  %.promoted = load i32, ptr %i.ki, align 4, !tbaa !188 ; 3 uses
  %.reass = add i64 %i.kh, %invariant.op          ; 3 uses
  %i.kj = lshr i64 %.reass, 1
  %i.kk = add nuw i64 %i.kj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass, 14
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check364 = icmp ult i64 %.reass, 126
  br i1 %min.iters.check364, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kl = and i64 %i.kk, 56
  %n.vec = and i64 %i.kk, -64                     ; 4 uses
  %i.km = shl i64 %n.vec, 1
  %i.kn = getelementptr i8, ptr %15, i64 %i.km
  %i.ko = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ko, %vector.ph ], [ %i.vv, %vector.body ]
  %vec.phi365 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vw, %vector.body ]
  %vec.phi366 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vx, %vector.body ]
  %vec.phi367 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vy, %vector.body ]
  %i.kp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %i.kp ; 4 uses
  %i.kq = getelementptr i8, ptr %next.gep, i64 32
  %i.kr = getelementptr i8, ptr %next.gep, i64 64
  %i.ks = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 8, !tbaa !191 ; 3 uses
  %wide.load368 = load <16 x i16>, ptr %i.kq, align 8, !tbaa !191 ; 3 uses
  %wide.load369 = load <16 x i16>, ptr %i.kr, align 8, !tbaa !191 ; 3 uses
  %wide.load370 = load <16 x i16>, ptr %i.ks, align 8, !tbaa !191 ; 3 uses
  %i.kt = and <16 x i16> %wide.load, splat (i16 63)
  %i.ku = and <16 x i16> %wide.load368, splat (i16 63)
  %i.kv = and <16 x i16> %wide.load369, splat (i16 63)
  %i.kw = and <16 x i16> %wide.load370, splat (i16 63)
  %i.kx = zext nneg <16 x i16> %i.kt to <16 x i64> ; 16 uses
  %i.ky = zext nneg <16 x i16> %i.ku to <16 x i64> ; 16 uses
  %i.kz = zext nneg <16 x i16> %i.kv to <16 x i64> ; 16 uses
  %i.la = zext nneg <16 x i16> %i.kw to <16 x i64> ; 16 uses
  %i.lb = extractelement <16 x i64> %i.kx, i64 0
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 %i.lb
  %i.ld = extractelement <16 x i64> %i.kx, i64 1
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 %i.ld
  %i.lf = extractelement <16 x i64> %i.kx, i64 2
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %i.lf
  %i.lh = extractelement <16 x i64> %i.kx, i64 3
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.lh
  %i.lj = extractelement <16 x i64> %i.kx, i64 4
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 %i.lj
  %i.ll = extractelement <16 x i64> %i.kx, i64 5
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ll
  %i.ln = extractelement <16 x i64> %i.kx, i64 6
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ln
  %i.lp = extractelement <16 x i64> %i.kx, i64 7
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %i.lp
  %i.lr = extractelement <16 x i64> %i.kx, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 %i.lr
  %i.lt = extractelement <16 x i64> %i.kx, i64 9
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 %i.lt
  %i.lv = extractelement <16 x i64> %i.kx, i64 10
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 %i.lv
  %i.lx = extractelement <16 x i64> %i.kx, i64 11
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 %i.lx
  %i.lz = extractelement <16 x i64> %i.kx, i64 12
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 %i.lz
  %i.mb = extractelement <16 x i64> %i.kx, i64 13
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 %i.mb
  %i.md = extractelement <16 x i64> %i.kx, i64 14
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 %i.md
  %i.mf = extractelement <16 x i64> %i.kx, i64 15
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 %i.mf
  %i.mh = extractelement <16 x i64> %i.ky, i64 0
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 %i.mh
  %i.mj = extractelement <16 x i64> %i.ky, i64 1
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  %i.ml = extractelement <16 x i64> %i.ky, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ml
  %i.mn = extractelement <16 x i64> %i.ky, i64 3
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 %i.mn
  %i.mp = extractelement <16 x i64> %i.ky, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 %i.mp
  %i.mr = extractelement <16 x i64> %i.ky, i64 5
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 %i.mr
  %i.mt = extractelement <16 x i64> %i.ky, i64 6
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 %i.mt
  %i.mv = extractelement <16 x i64> %i.ky, i64 7
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 %i.mv
  %i.mx = extractelement <16 x i64> %i.ky, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %i.mx
  %i.mz = extractelement <16 x i64> %i.ky, i64 9
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 %i.mz
  %i.nb = extractelement <16 x i64> %i.ky, i64 10
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 %i.nb
  %i.nd = extractelement <16 x i64> %i.ky, i64 11
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd
  %i.nf = extractelement <16 x i64> %i.ky, i64 12
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 %i.nf
  %i.nh = extractelement <16 x i64> %i.ky, i64 13
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 %i.nh
  %i.nj = extractelement <16 x i64> %i.ky, i64 14
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %i.nj
  %i.nl = extractelement <16 x i64> %i.ky, i64 15
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 %i.nl
  %i.nn = extractelement <16 x i64> %i.kz, i64 0
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %i.nn
  %i.np = extractelement <16 x i64> %i.kz, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 %i.np
  %i.nr = extractelement <16 x i64> %i.kz, i64 2
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %i.nr
  %i.nt = extractelement <16 x i64> %i.kz, i64 3
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 %i.nt
  %i.nv = extractelement <16 x i64> %i.kz, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
end_hunk_2
begin_hunk_3_@_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi:._crit_edge.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 408
  %i.abe = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 336 ; 2 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !189
  store ptr %i.abf, ptr %i.abd, align 8, !tbaa !189
  %i.abg = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 416
  %i.abh = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 344
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !192
  store ptr %i.abi, ptr %i.abg, align 8, !tbaa !192
  %i.abj = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 424
  %i.abk = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 352
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !190
  store ptr %i.abl, ptr %i.abj, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abe, i8 0, i64 24, i1 false)
  %i.abm = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 360
  %.013.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.4, ptr noundef nonnull align 8 dereferenceable(72) %i.abm, i64 44, i1 false)
  %i.abn = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 480
  %i.abo = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 408 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !189
  store ptr %i.abp, ptr %i.abn, align 8, !tbaa !189
  %i.abq = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 488
  %i.abr = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 416
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !192
  store ptr %i.abs, ptr %i.abq, align 8, !tbaa !192
  %i.abt = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 496
  %i.abu = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 424
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !190
  store ptr %i.abv, ptr %i.abt, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abo, i8 0, i64 24, i1 false)
  %i.abw = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 432
  %.013.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.5, ptr noundef nonnull align 8 dereferenceable(72) %i.abw, i64 44, i1 false)
  %i.abx = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 552
  %i.aby = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 480 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !189
  store ptr %i.abz, ptr %i.abx, align 8, !tbaa !189
  %i.aca = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 560
  %i.acb = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 488
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !192
  store ptr %i.acc, ptr %i.aca, align 8, !tbaa !192
  %i.acd = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 568
  %i.ace = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 496
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !190
  store ptr %i.acf, ptr %i.acd, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aby, i8 0, i64 24, i1 false)
  %i.acg = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 504
  %.013.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.6, ptr noundef nonnull align 8 dereferenceable(72) %i.acg, i64 44, i1 false)
  %i.ach = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 624
  %i.aci = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 552 ; 2 uses
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !189 ; 2 uses
  store ptr %i.acj, ptr %i.ach, align 8, !tbaa !189
  %i.ack = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 632
  %i.acl = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 560
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !192 ; 2 uses
  store ptr %i.acm, ptr %i.ack, align 8, !tbaa !192
  %i.acn = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 640
  %i.aco = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 568
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !190 ; 2 uses
  store ptr %i.acp, ptr %i.acn, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aci, i8 0, i64 24, i1 false)
  %i.acq = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 576 ; 2 uses
  %.013.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 576 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq ptr %.013.i.i.i.i.i.7, %i.yr
  br i1 %.not.i.i.i.i.i.7, label %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !407

_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.am
  %i.acr = phi ptr [ %i.za, %bb.am ], [ %.lcssa394.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.acp, %.lr.ph.i.i.i.i.i ]
  %i.acs = phi ptr [ %i.yx, %bb.am ], [ %.lcssa395.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.acm, %.lr.ph.i.i.i.i.i ]
  %i.act = phi ptr [ %i.yu, %bb.am ], [ %.lcssa396.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.acj, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.yn, %bb.am ], [ %.lcssa393.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.acq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ib, ptr noundef nonnull align 8 dereferenceable(72) %.0.lcssa.i.i.i.i.i, i64 44, i1 false)
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48
  store ptr %i.act, ptr %i.yt, align 8, !tbaa !189
  store ptr %i.acs, ptr %i.yw, align 8, !tbaa !192
  store ptr %i.acr, ptr %i.yz, align 8, !tbaa !190
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acu, i8 0, i64 24, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i, %bb.al
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.al ], [ %.010.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %.sroa.11.0.i.i = phi ptr [ null, %bb.al ], [ %i.yn, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 8 uses
  %i.acv = icmp eq i64 %i.yk, %.sroa.4.0.i.i
  br i1 %i.acv, label %bb.an, label %bb.ao, !prof !358

bb.an:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.acw = getelementptr inbounds [72 x i8], ptr %i.ib, i64 %i.yk ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_T0_T1_"(ptr %i.ib, ptr %i.acw, ptr noundef %.sroa.11.0.i.i)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_T0_T1_"(ptr %i.acw, ptr %i.ia, ptr noundef %.sroa.11.0.i.i)
  %i.acx = ptrtoint ptr %i.acw to i64
  %i.acy = sub i64 %i.ic, %i.acx
  %i.acz = sdiv exact i64 %i.acy, 72
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_SO_T0_SP_T1_T2_"(ptr %i.ib, ptr %i.acw, ptr %i.ia, i64 noundef %i.yk, i64 noundef %i.acz, ptr noundef %.sroa.11.0.i.i)
  br label %bb.ar

bb.ao:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.ada = icmp eq ptr %.sroa.11.0.i.i, null
  br i1 %i.ada, label %bb.ap, label %bb.aq, !prof !357

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_T0_"(ptr %i.ib, ptr %i.ia)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_T0_T1_T2_"(ptr %i.ib, ptr %i.ia, ptr noundef nonnull %.sroa.11.0.i.i, i64 noundef %.sroa.4.0.i.i)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %.idx.i.i.i = mul i64 %.sroa.4.0.i.i, 72        ; 2 uses
  %i.adb = getelementptr inbounds i8, ptr %.sroa.11.0.i.i, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i, label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %bb.ar, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.adj, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i ], [ %.sroa.11.0.i.i, %bb.ar ] ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i14.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !190
  %i.adg = ptrtoint ptr %i.adf to i64
  %i.adh = ptrtoint ptr %i.add to i64
  %i.adi = sub i64 %i.adg, %i.adh
  call void @_ZdlPvm(ptr noundef nonnull %i.add, i64 noundef %i.adi) #38
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i: ; preds = %bb.as, %.lr.ph.i.i.i14.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i15.i.i = icmp eq ptr %i.adj, %i.adb
  br i1 %.not.i.i.i15.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i, label %.lr.ph.i.i.i14.i.i, !llvm.loop !394

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i, %bb.ar
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i, i64 noundef %.idx.i.i.i) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %i.adk = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 4 uses
  store ptr %5, ptr %i.adk, align 16, !tbaa !378
  %.sroa.8.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store ptr %i.b, ptr %.sroa.8.0..sroa_idx181, align 8, !tbaa !380
  %.sroa.12.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store ptr %1, ptr %.sroa.12.0..sroa_idx185, align 16, !tbaa !382
  store ptr %i.adk, ptr %16, align 8, !tbaa !120
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.hk, align 8, !tbaa !384
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.hj, align 8, !tbaa !215
  %i.adl = call { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(24) %12, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %16) #33
  %.fca.0.extract = extractvalue { i64, i32 } %i.adl, 0 ; 2 uses
  %i.adm = load ptr, ptr %i.hj, align 8, !tbaa !215 ; 2 uses
  %.not.i130 = icmp eq ptr %i.adm, null
  br i1 %.not.i130, label %_ZNSt14_Function_baseD2Ev.exit131, label %bb.at

bb.at:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i
  %i.adn = call noundef zeroext i1 %i.adm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3) #33, !inline_history !386 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit131

_ZNSt14_Function_baseD2Ev.exit131:                ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %i.ado = and i64 %.fca.0.extract, 4294967296
  %.not111 = icmp eq i64 %i.ado, 0
  %.sroa.07.0.extract.trunc = trunc i64 %.fca.0.extract to i32
  %i.adp = icmp sgt i32 %.sroa.07.0.extract.trunc, 0
  %or.cond = or i1 %.not111, %i.adp
  %.pre242 = load ptr, ptr %12, align 8, !tbaa !233 ; 2 uses
  br i1 %or.cond, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit131
  %i.adq = getelementptr inbounds nuw i8, ptr %.pre242, i64 48
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !189 ; 3 uses
  %i.ads = load ptr, ptr %i.an, align 8, !tbaa !192 ; 4 uses
  %i.adt = load ptr, ptr %i.hl, align 8, !tbaa !190
  %.not.i132 = icmp eq ptr %i.ads, %i.adt
  br i1 %.not.i132, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.adu = load i16, ptr %i.adr, align 2, !tbaa !191
  store i16 %i.adu, ptr %i.ads, align 2, !tbaa !191
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 2
  store ptr %i.adv, ptr %i.an, align 8, !tbaa !192
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.aw:                                            ; preds = %bb.au
  %i.adw = load ptr, ptr %i.ah, align 8, !tbaa !189 ; 4 uses
  %i.adx = ptrtoint ptr %i.ads to i64
  %i.ady = ptrtoint ptr %i.adw to i64             ; 2 uses
  %i.adz = sub i64 %i.adx, %i.ady                 ; 5 uses
  %i.aea = icmp eq i64 %i.adz, 9223372036854775806
  br i1 %i.aea, label %bb.ax, label %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aw
  %i.aeb = ashr exact i64 %i.adz, 1               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aeb, i64 1)
  %i.aec = add i64 %.sroa.speculated.i.i.i, %i.aeb ; 2 uses
  %i.aed = icmp ult i64 %i.aec, %i.aeb
  %i.aee = call i64 @llvm.umin.i64(i64 %i.aec, i64 4611686018427387903)
  %i.aef = select i1 %i.aed, i64 4611686018427387903, i64 %i.aee ; 2 uses
  %i.aeg = shl nuw nsw i64 %i.aef, 1
  %i.aeh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeg) #36 ; 4 uses
  %i.aei = getelementptr inbounds i8, ptr %i.aeh, i64 %i.adz ; 2 uses
  %i.aej = load i16, ptr %i.adr, align 2, !tbaa !191
  store i16 %i.aej, ptr %i.aei, align 2, !tbaa !191
  %i.aek = icmp sgt i64 %i.adz, 0
  br i1 %i.aek, label %bb.ay, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ay:                                            ; preds = %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aeh, ptr align 2 %i.adw, i64 %i.adz, i1 false)
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ay, %_ZNKSt6vectorIN9Stockfish4MoveESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 2
  %.not.i17.i.i = icmp eq ptr %i.adw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.aem = load ptr, ptr %i.hl, align 8, !tbaa !190
  %i.aen = ptrtoint ptr %i.aem to i64
  %i.aeo = sub i64 %i.aen, %i.ady
  call void @_ZdlPvm(ptr noundef nonnull %i.adw, i64 noundef %i.aeo) #38
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.az, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aeh, ptr %i.ah, align 8, !tbaa !189
  store ptr %i.ael, ptr %i.an, align 8, !tbaa !192
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.aeh, i64 %i.aef
  store ptr %i.aep, ptr %i.hl, align 8, !tbaa !190
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.av, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.aeq = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #36 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.aer, i8 0, i64 192, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aeq, ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  %i.aes = load i64, ptr %i.aa, align 8, !tbaa !373
  %i.aet = add i64 %i.aes, 1
  store i64 %i.aet, ptr %i.aa, align 8, !tbaa !373
  %i.aeu = load ptr, ptr %i.z, align 8, !tbaa !367
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %.sroa.03.0.copyload = load i16, ptr %i.adr, align 2, !tbaa !191 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !62
  %i.aew = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.03.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %i.aev, i1 noundef zeroext %i.aew, ptr noundef nonnull align 1 dereferenceable(7) %i.am, ptr noundef nonnull align 8 dereferenceable(416) %i.aj, ptr noundef null, ptr noundef null) #33
  %.pre241 = load ptr, ptr %12, align 8, !tbaa !233
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit, %_ZNSt14_Function_baseD2Ev.exit131, %._crit_edge218
  %i.aex = phi ptr [ %i.ib, %._crit_edge218 ], [ %.pre241, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ], [ %.pre242, %_ZNSt14_Function_baseD2Ev.exit131 ] ; 3 uses
  %i.aey = phi i1 [ false, %._crit_edge218 ], [ true, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit ], [ false, %_ZNSt14_Function_baseD2Ev.exit131 ]
  %i.aez = load ptr, ptr %i.hh, align 8, !tbaa !193 ; 2 uses
  %.not4.i.i.i134 = icmp eq ptr %i.aex, %i.aez
  br i1 %.not4.i.i.i134, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i142, label %.lr.ph.i.i.i135

.lr.ph.i.i.i135:                                  ; preds = %bb.ba, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i138
  %.05.i.i.i136 = phi ptr [ %i.afh, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i138 ], [ %i.aex, %bb.ba ] ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.05.i.i.i136, i64 48
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i.i.i137 = icmp eq ptr %i.afb, null
  br i1 %.not.i.i.i.i.i.i.i.i137, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i138, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i135
  %i.afc = getelementptr inbounds nuw i8, ptr %.05.i.i.i136, i64 64
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !190
  %i.afe = ptrtoint ptr %i.afd to i64
  %i.aff = ptrtoint ptr %i.afb to i64
  %i.afg = sub i64 %i.afe, %i.aff
  call void @_ZdlPvm(ptr noundef nonnull %i.afb, i64 noundef %i.afg) #38
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i138

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i138: ; preds = %bb.bb, %.lr.ph.i.i.i135
  %i.afh = getelementptr inbounds nuw i8, ptr %.05.i.i.i136, i64 72 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.afh, %i.aez
  br i1 %.not.i.i.i139, label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i140, label %.lr.ph.i.i.i135, !llvm.loop !394

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i140: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i138
  %.pr.i141 = load ptr, ptr %12, align 8, !tbaa !233
  br label %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i142

_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i142: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i140, %bb.ba
  %i.afi = phi ptr [ %.pr.i141, %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exitthread-pre-split.i140 ], [ %i.aex, %bb.ba ] ; 3 uses
  %.not.i.i1.i143 = icmp eq ptr %i.afi, null
  br i1 %.not.i.i1.i143, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit144, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i142
  %i.afj = load ptr, ptr %i.hi, align 8, !tbaa !176
  %i.afk = ptrtoint ptr %i.afj to i64
  %i.afl = ptrtoint ptr %i.afi to i64
  %i.afm = sub i64 %i.afk, %i.afl
  call void @_ZdlPvm(ptr noundef nonnull %i.afi, i64 noundef %i.afm) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit144

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit144: ; preds = %_ZSt8_DestroyIPN9Stockfish6Search8RootMoveEEvT_S4_.exit.i142, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.aey, label %bb.ae, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit144, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124", %bb.af
  %i.afn = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef 0) #33
  br i1 %i.afn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %4, align 4, !tbaa !138
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.afo = load ptr, ptr %i.an, align 8, !tbaa !291, !noalias !408 ; 2 uses
  %i.afp = load ptr, ptr %i.ah, align 8, !tbaa !291, !noalias !411
  %.not191219 = icmp eq ptr %i.afo, %i.afp
  br i1 %.not191219, label %._crit_edge223, label %.lr.ph222

._crit_edge223:                                   ; preds = %.lr.ph222, %bb.bf
  %i.afq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.afr = load i64, ptr %i.at, align 8, !tbaa !25
  %.not.i.i146 = icmp ne i64 %i.afr, 0
  %i.afs = load i64, ptr %i.au, align 8
  %i.aft = icmp ne i64 %i.afs, 0
  %i.afu = select i1 %.not.i.i146, i1 true, i1 %i.aft
  br i1 %i.afu, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148", label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148": ; preds = %._crit_edge223
  %.sroa.0.0.copyload.i2.i.i147 = load i64, ptr %5, align 8, !tbaa !25
  %i.afv = sub nsw i64 %i.afq, %.sroa.0.0.copyload.i2.i.i147
  %i.afw = sitofp i64 %i.afv to double
  %i.afx = fdiv nnan double %i.afw, 1.000000e+06
  %i.afy = fmul nnan double %i.afx, 2.000000e+00
  %i.afz = load i32, ptr %i.b, align 4, !tbaa !138
  %i.aga = sitofp i32 %i.afz to double
  %i.agb = fcmp ogt double %i.afy, %i.aga
  br i1 %i.agb, label %bb.bg, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread"

.lr.ph222:                                        ; preds = %bb.bf, %.lr.ph222
  %.sroa.0175.0220 = phi ptr [ %i.agc, %.lr.ph222 ], [ %i.afo, %bb.bf ]
  %i.agc = getelementptr inbounds i8, ptr %.sroa.0175.0220, i64 -2 ; 3 uses
  %.sroa.0.0.copyload = load i16, ptr %i.agc, align 2, !tbaa !191
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.0.0.copyload) #33
  %i.agd = load ptr, ptr %i.ah, align 8, !tbaa !291, !noalias !411
  %.not191 = icmp eq ptr %i.agc, %i.agd
  br i1 %.not191, label %._crit_edge223, label %.lr.ph222, !llvm.loop !414

bb.bg:                                            ; preds = %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148"
  %i.age = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0) #33 ; 4 uses
  %i.agf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.age, ptr noundef nonnull @.str.7, i64 noundef 91) #33 ; 0 uses
  %i.agg = load ptr, ptr %i.age, align 8, !tbaa !320
  %i.agh = getelementptr i8, ptr %i.agg, i64 -24
  %i.agi = load i64, ptr %i.agh, align 8
  %i.agj = getelementptr inbounds i8, ptr %i.age, i64 %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 240
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !415 ; 6 uses
  %.not.i.i.i174 = icmp eq ptr %i.agl, null
  br i1 %.not.i.i.i174, label %bb.bh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.bg
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 56
  %i.agn = load i8, ptr %i.agm, align 8, !tbaa !430
  %.not.i1.i.i = icmp eq i8 %i.agn, 0
  br i1 %.not.i1.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 67
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !130
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agl) #33
  %i.agq = load ptr, ptr %i.agl, align 8, !tbaa !320
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 48
  %i.ags = load ptr, ptr %i.agr, align 8
  %i.agt = call noundef signext i8 %i.ags(ptr noundef nonnull align 8 dereferenceable(570) %i.agl, i8 noundef signext 10) #33, !inline_history !435
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.bi, %bb.bj
  %.0.i.i.i = phi i8 [ %i.agp, %bb.bi ], [ %i.agt, %bb.bj ]
  %i.agu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.age, i8 noundef signext %.0.i.i.i) #33
  %i.agv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agu) #33
  %i.agw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) %i.agv, i32 noundef 1) #33 ; 0 uses
  br label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread": ; preds = %._crit_edge223, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148"
  %i.agx = load ptr, ptr %8, align 8, !tbaa !370  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.agx, %8
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN9Stockfish9StateInfoESaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread", %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.agy, %.lr.ph.i.i ], [ %i.agx, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread" ] ; 2 uses
  %i.agy = load ptr, ptr %.09.i.i, align 8, !tbaa !370 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 208) #38
  %.not.i.i149 = icmp eq ptr %i.agy, %8
  br i1 %.not.i.i149, label %_ZNSt7__cxx1110_List_baseIN9Stockfish9StateInfoESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !436

_ZNSt7__cxx1110_List_baseIN9Stockfish9StateInfoESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit148.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void
}
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !442
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !443 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !607

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

declare void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.336") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.347", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.347", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !228  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.g = load ptr, ptr %1, align 8, !tbaa !230
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.347") align 8 %2, i64 %i.e, ptr %i.g, i64 1, ptr nonnull @.str.23)
  %i.h = load ptr, ptr %2, align 8, !tbaa !608    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608  ; 2 uses
  %.not5054 = icmp eq ptr %i.h, %i.j
  br i1 %.not5054, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %2, align 8, !tbaa !610
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !612
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.ai

bb.d:                                             ; preds = %.lr.ph56, %bb.ah
  %i.aa = phi ptr [ null, %.lr.ph56 ], [ %i.eh, %bb.ah ] ; 8 uses
  %i.ab = phi ptr [ null, %.lr.ph56 ], [ %i.ei, %bb.ah ] ; 4 uses
  %i.ac = phi ptr [ null, %.lr.ph56 ], [ %i.ej, %bb.ah ] ; 7 uses
  %i.ad = phi ptr [ null, %.lr.ph56 ], [ %.promoted61, %bb.ah ] ; 9 uses
  %.sroa.045.055 = phi ptr [ %i.h, %.lr.ph56 ], [ %i.ek, %bb.ah ] ; 4 uses
  %i.ae = load i64, ptr %.sroa.045.055, align 8, !tbaa !613
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.0.0.copyload = load i64, ptr %.sroa.045.055, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !301
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.347") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, i64 1, ptr nonnull @.str.24)
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !614
  %i.ah = load ptr, ptr %3, align 8, !tbaa !610   ; 6 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  switch i64 %i.al, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit [
    i64 1, label %bb.f
    i64 2, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !301 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !225
  %i.am = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.an = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #37
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !25
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ao, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #33 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !230
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !130
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !130
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !228
  %i.au = load ptr, ptr %4, align 8, !tbaa !230
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.aw = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #33 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !230   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.az = load i64, ptr %i.r, align 8, !tbaa !130
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.not.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !615
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = ptrtoint ptr %i.aa to i64
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #36 ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i64 %i.aw, ptr %i.bn, align 8, !tbaa !25
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.ad, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.be) #38
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !573
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !615
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !301 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !225
  %i.br = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.bs = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.bs, %i.br
  br i1 %or.cond.i.i.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #37
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %.sroa.0.0.copyload.i11, ptr %i.b, align 8, !tbaa !25
  %i.bt = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bt, label %bb.t, label %._crit_edge.i.i.i.i15

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #33 ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !230
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.bv, ptr %i.l, align 8, !tbaa !130
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %bb.t, %bb.s
  %i.bw = phi ptr [ %i.bu, %bb.t ], [ %i.l, %bb.s ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bx = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !130
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

bb.v:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16: ; preds = %._crit_edge.i.i.i.i15, %bb.u, %bb.v
  %i.by = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  store i64 %i.by, ptr %i.m, align 8, !tbaa !228
  %i.bz = load ptr, ptr %5, align 8, !tbaa !230
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cb = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #33 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !230   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !130
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.cg = load ptr, ptr %3, align 8, !tbaa !610   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.ch, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.2.0.copyload.i22 = load ptr, ptr %.sroa.2.0..sroa_idx.i21, align 8, !tbaa !301 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !225
  %i.ci = icmp eq ptr %.sroa.2.0.copyload.i22, null
  %i.cj = icmp ne i64 %.sroa.0.0.copyload.i20, 0
  %or.cond.i.i.i23 = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i23, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #37
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %.sroa.0.0.copyload.i20, ptr %i.a, align 8, !tbaa !25
  %i.ck = icmp ugt i64 %.sroa.0.0.copyload.i20, 15
  br i1 %i.ck, label %bb.y, label %._crit_edge.i.i.i.i24

bb.y:                                             ; preds = %bb.x
  %i.cl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #33 ; 2 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !230
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !130
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %bb.y, %bb.x
  %i.cn = phi ptr [ %i.cl, %bb.y ], [ %i.n, %bb.x ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i20, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.co = load i8, ptr %.sroa.2.0.copyload.i22, align 1, !tbaa !130
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %.sroa.2.0.copyload.i22, i64 %.sroa.0.0.copyload.i20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.z, %bb.aa
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.cp, ptr %i.o, align 8, !tbaa !228
  %i.cq = load ptr, ptr %6, align 8, !tbaa !230
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.cs = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #33 ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !130
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %.not52 = icmp ugt i64 %i.cb, %i.cs
  br i1 %.not52, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.cx = phi ptr [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cy = phi ptr [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.cz = phi ptr [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %storemerge53 = phi i64 [ %i.dv, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.da = phi ptr [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 6 uses
  %.not.i29 = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.i29, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  store i64 %storemerge53, ptr %i.cz, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.p, align 8, !tbaa !615
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.ac:                                            ; preds = %.lr.ph
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.da, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.ac
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i31, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 2 uses
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #36 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store i64 %storemerge53, ptr %i.dn, align 8, !tbaa !25
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

bb.ae:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33: ; preds = %bb.ae, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not.i17.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #38
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  store ptr %i.dp, ptr %i.p, align 8, !tbaa !615
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 3 uses
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !575
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.dr = phi ptr [ %i.cx, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cy, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %i.db, %bb.ab ], [ %i.dp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.du = phi ptr [ %i.da, %bb.ab ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dv = add i64 %storemerge53, 1                ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.cs
  br i1 %.not, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph, !llvm.loop !616

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dw = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dx = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dy = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split: ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit
  %.ph = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dw, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph87 = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dx, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph88 = phi ptr [ %i.bb, %bb.l ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dy, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.promoted62.ph = phi ptr [ %i.ad, %bb.l ], [ %i.bm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.lcssa, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !610
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split, %bb.e
  %i.dz = phi ptr [ %.pr, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ea = phi ptr [ %.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.aa, %bb.e ]
  %i.eb = phi ptr [ %.ph87, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ab, %bb.e ]
  %i.ec = phi ptr [ %.ph88, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ac, %bb.e ]
  %.promoted62 = phi ptr [ %.promoted62.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ad, %bb.e ]
  %.not.i.i.i35 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !612
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eg) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36
  %i.eh = phi ptr [ %i.aa, %bb.d ], [ %i.ea, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ei = phi ptr [ %i.ab, %bb.d ], [ %i.eb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ej = phi ptr [ %i.ac, %bb.d ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %.promoted61 = phi ptr [ %i.ad, %bb.d ], [ %.promoted62, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ek, %i.j
  br i1 %.not50, label %._crit_edge.loopexit, label %bb.d

bb.ai:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.371", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.374", align 1    ; 3 uses
  %5 = alloca %"class.std::map.362", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !36
  %i.f = load ptr, ptr %1, align 8, !tbaa !587    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !587  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !617
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !617
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !33, !alias.scope !617
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !34, !alias.scope !617
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !35, !alias.scope !617
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !617
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.080.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.080.0101, align 8, !tbaa !25 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !620

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !25
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %.sroa.080.0101, ptr %3, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !583 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !586
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.080.0101, align 8, !tbaa !578
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !578
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
end_hunk_4
begin_hunk_5_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140.a, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139.a, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.dc, i64 %.0103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.dj = udiv exact i64 %i.dh, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !578
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !578
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !27
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !27
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !37
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !547
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !36
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !36
  store ptr null, ptr %i.ds, align 8, !tbaa !33
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !34
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !35
  store i64 0, ptr %i.ea, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !623

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !583
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !583
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141.a = load ptr, ptr %i.bd, align 8, !tbaa !583
  %.pre142.a = load ptr, ptr %i.bc, align 8, !tbaa !588
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !624

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.076.0121) #35 ; 2 uses
  %.not86.a = icmp eq ptr %i.es, %i.a
  br i1 %.not86.a, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.068.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 56 ; 2 uses
  %.not87.a = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87.a, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.064.0110 = phi ptr [ %i.jk, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !25 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !481

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !25
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !465 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !468   ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.preheader.i ] ; 5 uses
  %i.fo = phi ptr [ %i.hk, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.preheader.i ] ; 9 uses
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !496
  %.not.i.i38 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 0, ptr %i.ft, align 8, !tbaa !36
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !465
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !465
  %.pre143 = load ptr, ptr %0, align 8, !tbaa !468
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775776
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ga = sdiv exact i64 %i.fy, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 192153584101141162)
  %i.ge = select i1 %i.gc, i64 192153584101141162, i64 %i.gd ; 2 uses
  %i.gf = mul nuw nsw i64 %i.ge, 48
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #36 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i64 0, ptr %i.gl, align 8, !tbaa !36
  %.not10.i.i.i.i60 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i60, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i62 = phi ptr [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !33, !alias.scope !628, !noalias !625 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i61
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !27, !alias.scope !628, !noalias !625
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !34, !alias.scope !628, !noalias !625
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !35, !alias.scope !628, !noalias !625
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gm, ptr %i.gv, align 8, !tbaa !547, !noalias !630
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36, !alias.scope !628, !noalias !625
  store ptr null, ptr %i.gn, align 8, !tbaa !33, !alias.scope !628, !noalias !625
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !34, !alias.scope !628, !noalias !625
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !35, !alias.scope !628, !noalias !625
  store i64 0, ptr %i.gw, align 8, !tbaa !36, !alias.scope !628, !noalias !625
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i61
  %.sink6.i.i.i.i.i = phi ptr [ %i.gs, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i61 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gu, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gx, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 16
  store ptr %i.go, ptr %i.gy, align 8, !tbaa !33, !alias.scope !625, !noalias !628
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !34, !alias.scope !625, !noalias !628
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !35, !alias.scope !625, !noalias !628
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.hb, align 8, !tbaa !36, !alias.scope !625, !noalias !628
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gm, align 8, !tbaa !27, !alias.scope !625, !noalias !628
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 48 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.hc, %i.fo
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61, !llvm.loop !631

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !496
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.hh) #38
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gg, ptr %0, align 8, !tbaa !468
  store ptr %i.he, ptr %i.o, align 8, !tbaa !465
  %i.hi = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.hi, ptr %i.p, align 8, !tbaa !496
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hj = phi ptr [ %.pre143, %bb.s ], [ %i.gg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hk = phi ptr [ %i.fv, %bb.s ], [ %i.he, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 48
  %.not.i39 = icmp ugt i64 %i.ho, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !632

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.fi, %.preheader.i ], [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.136116 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hq, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i40
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !25 ; 2 uses
  %i.hu = icmp ult i64 %i.ez, %i.ht               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.hu, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i41, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !38

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i40
  br i1 %i.hu, label %._crit_edge.thread.i.i.i.i, label %bb.y

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hr, %._crit_edge.i ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !34
  %i.hx = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.hw
  br i1 %i.hx, label %select.unfold.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.hy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #35
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %i.hz = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.ht, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.x ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ia = icmp ult i64 %i.hz, %i.ez
  br i1 %i.ia, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.y, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.y ] ; 3 uses
  %i.ib = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.hr
  br i1 %i.ib, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !25
  %i.ie = icmp ult i64 %i.ez, %i.id
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.z, %select.unfold.i.i.i
  %i.if = phi i1 [ %i.ie, %bb.z ], [ true, %select.unfold.i.i.i ]
  %i.ig = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store i64 %i.ez, ptr %i.ih, align 8, !tbaa !25
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.if, ptr noundef nonnull %i.ig, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hr) #33
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 40 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !36
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.y
  %i.il = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.il, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i57, label %.lr.ph.i.i.i.i49

.lr.ph.i.i.i.i49:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i49
  %.012.i.i.i.i50 = phi ptr [ %.1.i.i.i.i55, %.lr.ph.i.i.i.i49 ], [ %i.il, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i51 = phi ptr [ %.19.i.i.i.i52, %.lr.ph.i.i.i.i49 ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 32
  %i.in = load i64, ptr %i.im, align 8, !tbaa !25
  %i.io = icmp ult i64 %i.in, %i.ez               ; 2 uses
  %.19.i.i.i.i52 = select i1 %i.io, ptr %.0811.i.i.i.i51, ptr %.012.i.i.i.i50 ; 6 uses
  %.1.in.v.i.i.i.i53 = select i1 %i.io, i64 24, i64 16
  %.1.in.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 %.1.in.v.i.i.i.i53
  %.1.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i54, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i55, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i49, !llvm.loop !577

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i49
  %i.ip = icmp eq ptr %.19.i.i.i.i52, %i.j
  br i1 %i.ip, label %.critedge.i57, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !25
  %i.is = icmp ult i64 %i.ez, %i.ir
  br i1 %i.is, label %.critedge.i57, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i57:                                    ; preds = %bb.aa, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %.19.i.i.i.i52, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.it = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 3 uses
  store i64 %i.ez, ptr %i.iu, align 8, !tbaa !633
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  store i64 0, ptr %i.iv, align 8, !tbaa !635
  %i.iw = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.iu) ; 2 uses
  %i.ix = extractvalue { ptr, ptr } %i.iw, 0      ; 2 uses
  %i.iy = extractvalue { ptr, ptr } %i.iw, 1      ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i58, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i57
  %.not.i.i.i4.i = icmp ne ptr %i.ix, null
  %i.iz = icmp eq ptr %i.iy, %i.j
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.iz
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jb = load i64, ptr %i.iu, align 8, !tbaa !25
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !25
  %i.jd = icmp ult i64 %i.jb, %i.jc
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.je = phi i1 [ %i.jd, %bb.ac ], [ true, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.je, ptr noundef nonnull %i.it, ptr noundef nonnull %i.iy, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #33
  %i.jf = load i64, ptr %i.n, align 8, !tbaa !36
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.n, align 8, !tbaa !36
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.ad:                                            ; preds = %.critedge.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 48) #38
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.aa, %.thread.i.i, %bb.ad
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %i.it, %.thread.i.i ], [ %i.ix, %bb.ad ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.136116, ptr %i.jh, align 8, !tbaa !25
  %i.ji = load i64, ptr %i.r, align 8, !tbaa !469
  %i.jj = icmp ugt i64 %i.ez, %i.ji
  br i1 %i.jj, label %bb.ae, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

bb.ae:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.ez, ptr %i.r, align 8, !tbaa !469
  br label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.ae
  %i.jk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.064.0110) #35 ; 2 uses
  %.not88 = icmp eq ptr %i.jk, %i.ew
  br i1 %.not88, label %._crit_edge113, label %.lr.ph112
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.347") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.au, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.av, %bb.o ], [ 0, %.preheader ] ; 14 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27.i.i = icmp ugt i64 %.09, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %.09, %1
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = sub nuw i64 %1, %.09                     ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.k, %3
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.09
  %i.m = load i8, ptr %4, align 1, !tbaa !130
  %i.n = sext i8 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.v, %bb.h ]
  %.02032.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.o = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f
  %i.p = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.n, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #33 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.p, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %4, i64 %3)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %i.e
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.v, %3
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !636

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.g
  %.1.i.i = phi i64 [ %.09, %bb.c ], [ %i.s, %bb.g ] ; 3 uses
  %i.w = icmp eq i64 %.1.i.i, -1
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %0, align 8
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i64 noundef %.09, i64 noundef %1) #37
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.y = sub i64 %.1.i.i, %.09
  %i.z = sub nuw i64 %1, %.09
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !25
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !301
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !614
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #36 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.an, align 8, !tbaa !25
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !301
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !637, !alias.scope !638
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !642

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !614
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !612
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ab, %bb.k ]
  %i.au = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %i.av = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.j, ptr %0, align 8
  %i.aw = icmp ugt i64 %.09, %1
  br i1 %i.aw, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i64 noundef %.09, i64 noundef %1) #37
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.ax = sub nuw i64 %1, %.09                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.ax, ptr %i.i, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !301
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.az, ptr %i.f, align 8, !tbaa !614
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.ba = ptrtoint ptr %i.h to i64
  %i.bb = ptrtoint ptr %i.j to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775792
  br i1 %i.bd, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.be = ashr exact i64 %i.bc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i16, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #36 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i64 %i.ax, ptr %i.bl, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !301
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i19 ], [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !637, !alias.scope !643
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bm, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !642

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bn, %.lr.ph.i.i.i.i.i19 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bc) #38
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bk, ptr %0, align 8, !tbaa !610
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !614
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !612
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

declare noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !583  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !588    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !578
  store i64 %i.r, ptr %i.q, align 8, !tbaa !578
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.u, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !547
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  store ptr null, ptr %i.t, align 8, !tbaa !33
  store ptr %i.v, ptr %i.y, align 8, !tbaa !34
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !35
  store i64 0, ptr %i.ad, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !33
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

_ZN9Stockfish8L3DomainC2EOS0_.exit:               ; preds = %bb.c, %bb.d
  %.sink36 = phi ptr [ %i.s, %bb.d ], [ %i.z, %bb.c ]
  %.sink35 = phi ptr [ %i.s, %bb.d ], [ %i.ab, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sink36, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sink35, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sink, ptr %i.ai, align 8, !tbaa !36
  store i32 %.sink.i.i.i.i.i, ptr %i.s, align 8, !tbaa !27
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !578, !alias.scope !650, !noalias !647
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !578, !alias.scope !647, !noalias !650
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33, !alias.scope !650, !noalias !647 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27, !alias.scope !650, !noalias !647
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34, !alias.scope !650, !noalias !647
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35, !alias.scope !650, !noalias !647
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !547, !noalias !652
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36, !alias.scope !650, !noalias !647
  store ptr null, ptr %i.al, align 8, !tbaa !33, !alias.scope !650, !noalias !647
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !34, !alias.scope !650, !noalias !647
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !35, !alias.scope !650, !noalias !647
  store i64 0, ptr %i.au, align 8, !tbaa !36, !alias.scope !650, !noalias !647
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.as, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %i.am, ptr %i.aw, align 8, !tbaa !33, !alias.scope !647, !noalias !650
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink6.i.i.i.i, ptr %i.ax, align 8, !tbaa !34, !alias.scope !647, !noalias !650
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store ptr %.sink5.i.i.i.i, ptr %i.ay, align 8, !tbaa !35, !alias.scope !647, !noalias !650
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %.sink.i.i.i.i, ptr %i.az, align 8, !tbaa !36, !alias.scope !647, !noalias !650
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !27, !alias.scope !647, !noalias !650
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !653

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish8L3DomainC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !578, !alias.scope !657, !noalias !654
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !578, !alias.scope !654, !noalias !657
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33, !alias.scope !657, !noalias !654 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !27, !alias.scope !657, !noalias !654
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34, !alias.scope !657, !noalias !654
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35, !alias.scope !657, !noalias !654
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !547, !noalias !659
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36, !alias.scope !657, !noalias !654
  store ptr null, ptr %i.bf, align 8, !tbaa !33, !alias.scope !657, !noalias !654
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !34, !alias.scope !657, !noalias !654
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !35, !alias.scope !657, !noalias !654
  store i64 0, ptr %i.bo, align 8, !tbaa !36, !alias.scope !657, !noalias !654
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.f, %.lr.ph.i.i.i17
  %.sink6.i.i.i.i22 = phi ptr [ %i.bk, %bb.f ], [ %i.be, %.lr.ph.i.i.i17 ]
  %.sink5.i.i.i.i23 = phi ptr [ %i.bm, %bb.f ], [ %i.be, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i24 = phi i64 [ %i.bp, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i.i.i.i.i.i25 = phi i32 [ %i.bi, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store ptr %i.bg, ptr %i.bq, align 8, !tbaa !33, !alias.scope !654, !noalias !657
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store ptr %.sink6.i.i.i.i22, ptr %i.br, align 8, !tbaa !34, !alias.scope !654, !noalias !657
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store ptr %.sink5.i.i.i.i23, ptr %i.bs, align 8, !tbaa !35, !alias.scope !654, !noalias !657
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  store i64 %.sink.i.i.i.i24, ptr %i.bt, align 8, !tbaa !36, !alias.scope !654, !noalias !657
  store i32 %.sink.i.i.i.i.i.i.i.i.i25, ptr %i.be, align 8, !tbaa !27, !alias.scope !654, !noalias !657
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !653

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !586
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #38
  br label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !588
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8, !tbaa !583
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !586
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp ult i64 %i.f, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !481

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #35 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #35 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !442
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !37 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !665

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !577

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !25
  store i64 %i.n, ptr %i.m, align 8, !tbaa !633
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !635
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !25
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #38
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !465  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !468    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !36
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33, !alias.scope !669, !noalias !666 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27, !alias.scope !669, !noalias !666
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34, !alias.scope !669, !noalias !666
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35, !alias.scope !669, !noalias !666
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.ae, align 8, !tbaa !547, !noalias !671
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36, !alias.scope !669, !noalias !666
  store ptr null, ptr %i.w, align 8, !tbaa !33, !alias.scope !669, !noalias !666
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !34, !alias.scope !669, !noalias !666
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !35, !alias.scope !669, !noalias !666
  store i64 0, ptr %i.af, align 8, !tbaa !36, !alias.scope !669, !noalias !666
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.v, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.v, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.ag, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !33, !alias.scope !666, !noalias !669
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ai, align 8, !tbaa !34, !alias.scope !666, !noalias !669
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.aj, align 8, !tbaa !35, !alias.scope !666, !noalias !669
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i, ptr %i.ak, align 8, !tbaa !36, !alias.scope !666, !noalias !669
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !27, !alias.scope !666, !noalias !669
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !631

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.am, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20
  %.012.i.i.i17 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33, !alias.scope !675, !noalias !672 ; 3 uses
  %.not.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i19, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !27, !alias.scope !675, !noalias !672
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34, !alias.scope !675, !noalias !672
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35, !alias.scope !675, !noalias !672
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ao, ptr %i.ax, align 8, !tbaa !547, !noalias !677
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36, !alias.scope !675, !noalias !672
  store ptr null, ptr %i.ap, align 8, !tbaa !33, !alias.scope !675, !noalias !672
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !34, !alias.scope !675, !noalias !672
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !35, !alias.scope !675, !noalias !672
  store i64 0, ptr %i.ay, align 8, !tbaa !36, !alias.scope !675, !noalias !672
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %bb.d, %.lr.ph.i.i.i16
  %.sink6.i.i.i.i21 = phi ptr [ %i.au, %bb.d ], [ %i.ao, %.lr.ph.i.i.i16 ]
  %.sink5.i.i.i.i22 = phi ptr [ %i.aw, %bb.d ], [ %i.ao, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i23 = phi i64 [ %i.az, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i.i.i.i.i24 = phi i32 [ %i.as, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !33, !alias.scope !672, !noalias !675
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  store ptr %.sink6.i.i.i.i21, ptr %i.bb, align 8, !tbaa !34, !alias.scope !672, !noalias !675
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  store ptr %.sink5.i.i.i.i22, ptr %i.bc, align 8, !tbaa !35, !alias.scope !672, !noalias !675
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  store i64 %.sink.i.i.i.i23, ptr %i.bd, align 8, !tbaa !36, !alias.scope !672, !noalias !675
  store i32 %.sink.i.i.i.i.i.i.i.i24, ptr %i.ao, align 8, !tbaa !27, !alias.scope !672, !noalias !675
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16, !llvm.loop !631

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.an, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bf, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !496
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #38
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !468
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !465
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !496
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = load i64, ptr %2, align 8, !tbaa !25
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !678

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #35 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !25
  %.pre82 = load i64, ptr %2, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
end_hunk_6
begin_hunk_7_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !588
  br label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !586
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #38
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #38
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !679

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !443  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #38
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !680

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.Stockfish::NumaConfig", align 8 ; 15 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !681, !nonnull !48
  store i8 1, ptr %i.a, align 1, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %1, i8 0, i64 24, i1 false), !alias.scope !683
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !683
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !33, !alias.scope !683
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34, !alias.scope !683
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !35, !alias.scope !683
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !alias.scope !683
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !686, !nonnull !48, !align !49 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !468  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !465  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !496
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !495

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #38
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store ptr null, ptr %i.w, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !36
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !37  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN9Stockfish10NumaConfigaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !27
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !27
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !33
  %i.ae = load <2 x ptr>, ptr %i.d, align 8, !tbaa !37
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.y, ptr %i.af, align 8, !tbaa !547
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !36
  store ptr null, ptr %i.c, align 8, !tbaa !33
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34
  store ptr %i.b, ptr %i.e, align 8, !tbaa !35
  store i64 0, ptr %i.f, align 8, !tbaa !36
  br label %_ZN9Stockfish10NumaConfigaSEOS0_.exit

_ZN9Stockfish10NumaConfigaSEOS0_.exit:            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef null)
  %i.ak = load ptr, ptr %1, align 8, !tbaa !468   ; 3 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !465 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZN9Stockfish10NumaConfigaSEOS0_.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.i.i.i1, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !495

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !468
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZN9Stockfish10NumaConfigaSEOS0_.exit
  %i.ap = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.ak, %_ZN9Stockfish10NumaConfigaSEOS0_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !496
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #38
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

declare void @_ZN9Stockfish17remove_whitespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !465  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !468    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %3 = mul nuw nsw i64 %i.l, 48
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #36 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 6 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !33       ; 3 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %8, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.v, align 8, !tbaa !547
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  store ptr null, ptr %7, align 8, !tbaa !33
  store ptr %i.o, ptr %i.r, align 8, !tbaa !34
  store ptr %i.o, ptr %i.t, align 8, !tbaa !35
  store i64 0, ptr %i.w, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !33
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit:          ; preds = %bb.c, %bb.d
  %.sink37 = phi ptr [ %6, %bb.d ], [ %i.s, %bb.c ]
  %.sink36 = phi ptr [ %6, %bb.d ], [ %i.u, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.x, %bb.c ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.p, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sink37, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sink36, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sink, ptr %i.ab, align 8, !tbaa !36
  store i32 %.sink.i.i.i.i, ptr %6, align 8, !tbaa !27
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33, !alias.scope !690, !noalias !687 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27, !alias.scope !690, !noalias !687
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34, !alias.scope !690, !noalias !687
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35, !alias.scope !690, !noalias !687
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ac, ptr %i.al, align 8, !tbaa !547, !noalias !692
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36, !alias.scope !690, !noalias !687
  store ptr null, ptr %i.ad, align 8, !tbaa !33, !alias.scope !690, !noalias !687
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !34, !alias.scope !690, !noalias !687
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !35, !alias.scope !690, !noalias !687
  store i64 0, ptr %i.am, align 8, !tbaa !36, !alias.scope !690, !noalias !687
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ac, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i16 = phi i64 [ %i.an, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !33, !alias.scope !687, !noalias !690
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ap, align 8, !tbaa !34, !alias.scope !687, !noalias !690
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.aq, align 8, !tbaa !35, !alias.scope !687, !noalias !690
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i16, ptr %i.ar, align 8, !tbaa !36, !alias.scope !687, !noalias !690
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !27, !alias.scope !687, !noalias !690
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !631

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ], [ %i.at, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.au, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33, !alias.scope !696, !noalias !693 ; 3 uses
  %.not.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i18
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !27, !alias.scope !696, !noalias !693
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34, !alias.scope !696, !noalias !693
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35, !alias.scope !696, !noalias !693
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.av, ptr %i.be, align 8, !tbaa !547, !noalias !698
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36, !alias.scope !696, !noalias !693
  store ptr null, ptr %i.aw, align 8, !tbaa !33, !alias.scope !696, !noalias !693
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !34, !alias.scope !696, !noalias !693
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !35, !alias.scope !696, !noalias !693
  store i64 0, ptr %i.bf, align 8, !tbaa !36, !alias.scope !696, !noalias !693
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %bb.f, %.lr.ph.i.i.i18
  %.sink6.i.i.i.i23 = phi ptr [ %i.bb, %bb.f ], [ %i.av, %.lr.ph.i.i.i18 ]
  %.sink5.i.i.i.i24 = phi ptr [ %i.bd, %bb.f ], [ %i.av, %.lr.ph.i.i.i18 ]
  %.sink.i.i.i.i25 = phi i64 [ %i.bg, %bb.f ], [ 0, %.lr.ph.i.i.i18 ]
  %.sink.i.i.i.i.i.i.i.i26 = phi i32 [ %i.az, %bb.f ], [ 0, %.lr.ph.i.i.i18 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16
  store ptr %i.ax, ptr %i.bh, align 8, !tbaa !33, !alias.scope !693, !noalias !696
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  store ptr %.sink6.i.i.i.i23, ptr %i.bi, align 8, !tbaa !34, !alias.scope !693, !noalias !696
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  store ptr %.sink5.i.i.i.i24, ptr %i.bj, align 8, !tbaa !35, !alias.scope !693, !noalias !696
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  store i64 %.sink.i.i.i.i25, ptr %i.bk, align 8, !tbaa !36, !alias.scope !693, !noalias !696
  store i32 %.sink.i.i.i.i.i.i.i.i26, ptr %i.av, align 8, !tbaa !27, !alias.scope !693, !noalias !696
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i18, !llvm.loop !631

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i28 = phi ptr [ %i.au, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bm, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !496
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #38
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, %bb.g
  store ptr %4, ptr %0, align 8, !tbaa !468
  store ptr %.0.lcssa.i.i.i28, ptr %i.a, align 8, !tbaa !465
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !496
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(131331893)) local_unnamed_addr #6

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm13create_sharedINS_4Eval4NNUE8NetworksEEESt8optionalINS0_12SharedMemoryIT_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 64 dereferenceable(137849344) %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"class.Stockfish::shm::SharedMemory", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #33
  %i.a = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 64 dereferenceable(137849344) %2) #33
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(144) %3) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.sink, ptr %i.b, align 8, !tbaa !511
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %3, align 8, !tbaa !320
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(144) %3), !inline_history !527
  %i.c = load ptr, ptr %3, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(144) %3, i1 noundef zeroext false) #33, !inline_history !527
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !130
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #38, !inline_history !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !130
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38, !inline_history !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !130
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38, !inline_history !527
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !225
  %i.f = load ptr, ptr %1, align 8, !tbaa !230    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !228  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i64 %i.h, ptr %i.c, align 8, !tbaa !25
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #33 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !230
  %i.k = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.k, ptr %i.e, align 8, !tbaa !130
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !130
  store i8 %i.m, ptr %i.l, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !228
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.r, align 8, !tbaa !513
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i64 137849400, ptr %i.t, align 8, !tbaa !699
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !700
  %i.v = load ptr, ptr %1, align 8, !tbaa !230, !noalias !700 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !228, !noalias !700 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !130, !noalias !700
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !130, !noalias !700
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !130, !noalias !700
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !130, !noalias !700
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !130, !noalias !700
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !130, !noalias !700
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !130, !noalias !700
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
end_hunk_7
begin_hunk_8_@_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE27create_sentinel_file_lockedEv:bb.a

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !228 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !130
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !228 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !228
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !130
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.y, ptr %i.u, align 8, !tbaa !230
  %i.ai = load <2 x i64>, ptr %i.r, align 8, !tbaa !130
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !130
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !130
  store ptr %i.y, ptr %i.u, align 8, !tbaa !230
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load <2 x i64>, ptr %i.r, align 8, !tbaa !130
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %1, align 8, !tbaa !230
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %1, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.am = phi ptr [ %i.v, %bb.i ], [ %i.j, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.r, align 8, !tbaa !228
  store i8 0, ptr %i.am, align 1, !tbaa !130
  %i.an = load ptr, ptr %1, align 8, !tbaa !230   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.j
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !130
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !230
  %i.as = call i32 (ptr, i32, ...) @open(ptr noundef %i.ar, i32 noundef 524481, i32 noundef 384) #33 ; 2 uses
  %.not13 = icmp eq i32 %i.as, -1
  br i1 %.not13, label %bb.k, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = tail call ptr @__errno_location() #40   ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !138
  %i.av = icmp eq i32 %i.au, 17
  br i1 %i.av, label %bb.l, label %.loopexit.1

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !230
  %i.ax = call i32 @unlink(ptr noundef %i.aw) #33 ; 0 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !517 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ay, null
  br i1 %.not.i14, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %.old1.not.i = icmp eq i32 %i.ba, 0
  br i1 %.old1.not.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.i
  %.0.i = phi i32 [ %i.bg, %.preheader.i ], [ %i.ba, %bb.m ] ; 2 uses
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !517
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = add i32 %.0.i, -1
  %i.be = cmpxchg weak ptr %i.bc, i32 %.0.i, i32 %i.bd acq_rel monotonic, align 4 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  %i.bg = extractvalue { i32, i1 } %i.be, 0       ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  %or.cond.i = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %.loopexit, label %.preheader.i, !llvm.loop !715

.loopexit:                                        ; preds = %.preheader.i, %bb.l, %bb.m
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !230
  %i.bj = call i32 (ptr, i32, ...) @open(ptr noundef %i.bi, i32 noundef 524481, i32 noundef 384) #33 ; 2 uses
  %.not13.1 = icmp eq i32 %i.bj, -1
  br i1 %.not13.1, label %bb.n, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit

bb.n:                                             ; preds = %.loopexit
  %i.bk = load i32, ptr %i.at, align 4, !tbaa !138
  %i.bl = icmp eq i32 %i.bk, 17
  br i1 %i.bl, label %bb.o, label %.loopexit.1

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !230
  %i.bn = call i32 @unlink(ptr noundef %i.bm) #33 ; 0 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !517 ; 2 uses
  %.not.i14.1 = icmp eq ptr %i.bo, null
  br i1 %.not.i14.1, label %.loopexit.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load atomic i32, ptr %i.bp monotonic, align 4 ; 2 uses
  %.old1.not.i.1 = icmp eq i32 %i.bq, 0
  br i1 %.old1.not.i.1, label %.loopexit.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.p, %.preheader.i.1
  %.0.i.1 = phi i32 [ %i.bw, %.preheader.i.1 ], [ %i.bq, %bb.p ] ; 2 uses
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !517
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = add i32 %.0.i.1, -1
  %i.bu = cmpxchg weak ptr %i.bs, i32 %.0.i.1, i32 %i.bt acq_rel monotonic, align 4 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1
  %i.bw = extractvalue { i32, i1 } %i.bu, 0       ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  %or.cond.i.1 = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %or.cond.i.1, label %.loopexit.1, label %.preheader.i.1, !llvm.loop !715

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit: ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.lcssa = phi i32 [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %.loopexit ]
  %i.by = call i32 @close(i32 noundef %.lcssa) #33 ; 0 uses
  br label %bb.q

.loopexit.1:                                      ; preds = %.preheader.i.1, %bb.o, %bb.p, %bb.n, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.bz, align 8, !tbaa !228
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !230
  store i8 0, ptr %i.ca, align 1, !tbaa !130
  br label %bb.q

bb.q:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, %.loopexit.1, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit ], [ false, %.loopexit.1 ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #37
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732 ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !441
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.b, align 8, !tbaa !733
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.e = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !437 ; 4 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.q, align 8, !tbaa !733
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !441
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.v) #38
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.p, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !437
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !441
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #33 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv() #4 comdat align 2 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 17 uses
  %i.a = tail call i32 @atexit(ptr noundef nonnull @_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENUlvE_8__invokeEv) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  store ptr @_ZN9Stockfish3shm6detail12CleanupHooks13handle_signalEi, ptr %0, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %i.b) #33 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !735
  %i.e = call i32 @sigaction(i32 noundef 1, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.f = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.g = call i32 @sigaction(i32 noundef 3, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.h = call i32 @sigaction(i32 noundef 4, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.i = call i32 @sigaction(i32 noundef 6, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.j = call i32 @sigaction(i32 noundef 8, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.k = call i32 @sigaction(i32 noundef 11, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.l = call i32 @sigaction(i32 noundef 15, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.m = call i32 @sigaction(i32 noundef 7, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.n = call i32 @sigaction(i32 noundef 31, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.o = call i32 @sigaction(i32 noundef 24, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  %i.p = call i32 @sigaction(i32 noundef 25, ptr noundef nonnull %0, ptr noundef null) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  ret void
}

declare void @__once_proxy() #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv() #3 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !738, !nonnull !48
  tail call void %i.c() #33, !inline_history !740
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail12CleanupHooks13handle_signalEi(i32 noundef %0) #4 comdat align 2 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #37
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i:     ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !741 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !741 ; 2 uses
  %.not6.i = icmp eq ptr %i.b, %i.c
  br i1 %.not6.i, label %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !437 ; 2 uses
  %.pre8.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732
  %i.d = icmp eq ptr %.pre8.i, %.pre.i
  br i1 %i.d, label %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732
  br label %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit

.lr.ph.i:                                         ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, %.lr.ph.i
  %.sroa.02.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.b, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.02.07.i, align 8, !tbaa !733 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !320
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) #33, !inline_history !742
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit: ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, %._crit_edge.i, %bb.c
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr null, ptr %1, align 8, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = call i32 @sigemptyset(ptr noundef nonnull %i.k) #33 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 0, ptr %i.m, align 8, !tbaa !735
  %i.n = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #33
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit
  %i.p = add nsw i32 %0, 128
  call void @_Exit(i32 noundef %i.p) #37
  unreachable

bb.e:                                             ; preds = %_ZN9Stockfish3shm6detail20SharedMemoryRegistry11cleanup_allEb.exit
  %i.q = call i32 @raise(i32 noundef %0) #33      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENUlvE_8__invokeEv() #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #33 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #37
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i:   ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !741 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !741 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not6.i.i, label %_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !437 ; 2 uses
  %.pre8.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732
  %i.d = icmp eq ptr %.pre8.i.i, %.pre.i.i
  br i1 %i.d, label %_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  store ptr %.pre.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !732
  br label %_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, %.lr.ph.i.i
  %.sroa.02.07.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.b, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.02.07.i.i, align 8, !tbaa !733 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !320
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) #33, !inline_history !743
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEvENKUlvE_clEv.exit: ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i.i, %._crit_edge.i.i, %bb.c
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #33 ; 0 uses
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @_Exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
end_hunk_8
begin_hunk_9_@_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !130
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38, !inline_history !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !230  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !130
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #38, !inline_history !527
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !230  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !130
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #38, !inline_history !527
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.d:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !127   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit, label %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.aa) #33, !inline_history !526
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS4_SA_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i.i.i.i.i.i, %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS5_4Eval4NNUE8NetworksEEENS5_27SharedMemoryBackendFallbackIS9_EEEEaSEOSD_EUlOT_T0_E_JRSt7variantIJS4_SA_SC_EEEEDcOSH_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %class.anon.398, align 1            ; 3 uses
  %3 = alloca %class.anon.398, align 1            ; 3 uses
  %4 = alloca %class.anon.398, align 1            ; 3 uses
  %5 = alloca %class.anon.398, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load i8, ptr %i.a, align 8, !tbaa !125
  %i.c = load ptr, ptr %0, align 8, !tbaa !462    ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !125   ; 4 uses
  switch i8 %i.b, label %bb.m [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.h
    i8 -1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !518

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !125
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.f [
    i8 1, label %bb.e
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i
  ], !prof !518

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt22_Optional_payload_baseIN9Stockfish3shm12SharedMemoryINS0_4Eval4NNUE8NetworksEEEE14_M_move_assignEOS7_(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef nonnull align 8 dereferenceable(153) %1) #33
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  store i8 -1, ptr %i.d, align 8, !tbaa !125
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i: ; preds = %bb.f, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !511
  %i.h = load i8, ptr %i.f, align 8, !tbaa !511, !range !221, !noundef !48
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(153) %i.c, ptr noundef nonnull align 8 dereferenceable(153) %1) #33
  store i8 1, ptr %i.g, align 8, !tbaa !511
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEE8_M_resetEv.exit.i.i.i.i.i
  store i8 1, ptr %i.d, align 8, !tbaa !125
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.h:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.j [
    i8 2, label %bb.i
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !518

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !127
  store ptr null, ptr %1, align 8, !tbaa !127
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !127
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit, label %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i.i.i

_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.k) #33, !inline_history !526
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.j, %bb.h
  %i.l = load i64, ptr %1, align 8, !tbaa !127
  store i64 %i.l, ptr %i.c, align 8, !tbaa !127
  store ptr null, ptr %1, align 8, !tbaa !127
  store i8 2, ptr %i.d, align 8, !tbaa !125
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.k:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit, label %bb.l, !prof !357

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(153) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  store i8 -1, ptr %i.d, align 8, !tbaa !125
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit

bb.m:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS6_4Eval4NNUE8NetworksEEENS6_27SharedMemoryBackendFallbackISA_EEEEaSEOSE_EUlOT_T0_E_RSt7variantIJS5_SB_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit: ; preds = %bb.l, %bb.k, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNK9Stockfish16LargePageDeleterINS_4Eval4NNUE8NetworksEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %bb.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.e, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS3_4Eval4NNUE8NetworksEEENS3_27SharedMemoryBackendFallbackIS7_EEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !233    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 10 uses
  %.sroa.0.0.copyload.i = load i16, ptr %2, align 2, !tbaa !191
  store i64 0, ptr %i.q, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.r, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 -32001, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i8 0, ptr %i.t, align 4, !tbaa !185
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 29
  store i8 0, ptr %i.u, align 1, !tbaa !186
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 0, ptr %i.v, align 8, !tbaa !187
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 0, ptr %i.w, align 4, !tbaa !188
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.y = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !189
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i, ptr %i.y, align 2, !tbaa !191
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !192
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 44, i1 false), !alias.scope !753
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !291, !alias.scope !751, !noalias !748
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !291, !alias.scope !748, !noalias !751
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190, !alias.scope !751, !noalias !748
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !190, !alias.scope !748, !noalias !751
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !751, !noalias !748
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !393

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aj, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.as, %.lr.ph.i.i.i17 ], [ %i.ak, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.ar, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i19, i64 44, i1 false), !alias.scope !759
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !291, !alias.scope !757, !noalias !754
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !291, !alias.scope !754, !noalias !757
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !190, !alias.scope !757, !noalias !754
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !190, !alias.scope !754, !noalias !757
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !757, !noalias !754
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !393

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ak, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.as, %.lr.ph.i.i.i17 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !176
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #38
  br label %_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !233
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !193
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !176
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %5 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 3 uses
  %6 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %7 = alloca %"class.std::tuple.201", align 8    ; 12 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %9 = alloca %"struct.Stockfish::MoveList", align 8 ; 4 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !253
  %i.e = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.d) #33
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 2                          ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %.not.not = icmp sgt i32 %i.i, %4
  br i1 %.not.not, label %bb.bw, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0246 = phi i32 [ %i.j, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %5, ptr %i.k, align 8, !tbaa !254
  %i.l = load ptr, ptr %2, align 8, !tbaa !254
  store i16 0, ptr %i.l, align 2, !tbaa !191
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !213
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !214
  %i.q = icmp ne i64 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 4, !tbaa !317
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 2 uses
  %i.u = load i32, ptr %i.t, align 16, !tbaa !273
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !253  ; 3 uses
  %.not153 = icmp sgt i32 %i.u, %i.w
  br i1 %.not153, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.t, align 16, !tbaa !273
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.w) #33
  %.pr = load i32, ptr %i.v, align 8, !tbaa !253
  %i.z = icmp sgt i32 %.pr, 245                   ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.z, label %.thread, label %bb.m

bb.h:                                             ; preds = %bb.f
  br i1 %i.z, label %.thread, label %bb.bv

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = load i8, ptr %i.r, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.bv, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 noundef %.sroa.0.0.copyload.i)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw [160 x i8], ptr %i.ag, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !125
  switch i8 %i.aj, label %bb.l [
    i8 -1, label %bb.j
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @abort() #37
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.i, %bb.k
end_hunk_9
