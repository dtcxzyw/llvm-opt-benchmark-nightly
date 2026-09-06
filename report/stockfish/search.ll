Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search8RootMove22extract_ponder_from_ttERKNS_18TranspositionTableERNS_8PositionE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.at = add nsw i64 %.047.i.i.i.i, -1
  %i.au = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.au, label %bb.e, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !492

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
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !197 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 %.sroa.01.0.copyload, ptr %i.bi, align 2, !tbaa !196
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !197
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !194 ; 4 uses
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
  %i.bv = select i1 %i.bt, i64 4611686018427387903, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 1
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #36 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  %i.bz = load i16, ptr %i.x, align 8, !tbaa !196
  store i16 %i.bz, ptr %i.by, align 2, !tbaa !196
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
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !195
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.ce) #38
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !194
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !197
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cf, ptr %i.bj, align 8, !tbaa !195
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.n, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit.thread, %_ZNK9Stockfish8MoveListILNS_7GenTypeE4EE8containsENS_4MoveE.exit, %_ZNK9Stockfish8Position3keyEv.exit
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !194
  %.sroa.0.0.copyload = load i16, ptr %i.cg, align 2, !tbaa !196
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.0.0.copyload) #33
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !197
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !194
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
  store i64 0, ptr %i.d, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !269
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !219
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 8 uses
  %i.l = zext i1 %i.j to i8
  store i8 %i.l, ptr %i.k, align 4, !tbaa !270
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.n = load i8, ptr %i.m, align 8, !tbaa !271
  %i.o = icmp ne i8 %i.n, 0                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 4 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !177   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !272
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.t = load i64, ptr %i.s, align 64, !tbaa !131
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.w = load ptr, ptr %i.v, align 32, !tbaa !134 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !274
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(120) %i.w, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !256
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !249 ; 2 uses
  %.not419 = icmp sgt i32 %i.ab, %i.ad
  br i1 %.not419, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.aa, align 16, !tbaa !256
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
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !275 ; 3 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !275
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !276
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 0, ptr %i.an, align 8, !tbaa !277
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !196 ; 3 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !218 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !265 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !266 ; 2 uses
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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(17) %i.be, i64 noundef %i.bc) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.bh = load i8, ptr %i.bf, align 4, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 46 ; 2 uses
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !278
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 11421080 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 11419784 ; 5 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !255
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !232
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !194
  %.sroa.0140.0.copyload = load i16, ptr %i.bp, align 2, !tbaa !196 ; 6 uses
  store i16 %.sroa.0140.0.copyload, ptr %i.bg, align 8, !tbaa !196
  %i.bq = trunc nuw i8 %i.bh to i1                ; 2 uses
  br i1 %i.bq, label %bb.k, label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit

bb.k:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !281 ; 12 uses
  %i.bt = load i32, ptr %i.ac, align 8, !tbaa !249 ; 2 uses
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !266 ; 4 uses
  %.not.i475 = icmp eq i32 %i.bs, 32002
  br i1 %.not.i475, label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = icmp sgt i32 %i.bs, 31506
  br i1 %i.bx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = icmp samesign ugt i32 %i.bs, 31753
  br i1 %i.by, label %bb.n, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.m
  %.pre.i = sub nsw i32 100, %i.bw
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = sub nsw i32 32000, %i.bs
  %i.ca = sub nsw i32 100, %i.bw                  ; 2 uses
  %i.cb = icmp sgt i32 %i.bz, %i.ca
  br i1 %i.cb, label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge21.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge21.i ], [ %i.ca, %bb.n ]
  %i.cc = sub nsw i32 31753, %i.bs
  %i.cd = icmp sgt i32 %i.cc, %.pre-phi.i
  %i.ce = sub nsw i32 %i.bs, %i.bt
  %spec.select.i476 = select i1 %i.cd, i32 31506, i32 %i.ce
  br label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit

bb.p:                                             ; preds = %bb.l
  %i.cf = icmp slt i32 %i.bs, -31506
  br i1 %i.cf, label %bb.q, label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp samesign ult i32 %i.bs, -31753
  br i1 %i.cg, label %bb.r, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q
  %.pre22.i = sub nsw i32 100, %i.bw
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = add nsw i32 %i.bs, 32000
  %i.ci = sub nsw i32 100, %i.bw                  ; 2 uses
  %i.cj = icmp sgt i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %.pre-phi23.i = phi i32 [ %.pre22.i, %._crit_edge.i ], [ %i.ci, %bb.r ]
  %i.ck = add nsw i32 %i.bs, 31753
  %i.cl = icmp sgt i32 %i.ck, %.pre-phi23.i
  %i.cm = add nsw i32 %i.bt, %i.bs
  %spec.select20.i = select i1 %i.cl, i32 -31506, i32 %i.cm
  br label %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit

_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.k, %_ZNK9Stockfish8Position3keyEv.exit
  %i.cn = phi i32 [ 32002, %_ZNK9Stockfish8Position3keyEv.exit ], [ 32002, %bb.k ], [ 31506, %bb.n ], [ %i.bs, %bb.p ], [ %spec.select20.i, %bb.s ], [ -31506, %bb.r ], [ %spec.select.i476, %bb.o ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 6 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !281
  %i.cp = icmp ne i16 %i.ap, 0                    ; 5 uses
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 45
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !282, !range !223, !noundef !72
  br label %bb.u

bb.u:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit, %bb.t
  %i.cs = phi i8 [ %i.cr, %bb.t ], [ 1, %_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 45 ; 9 uses
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !282
  %.not918 = icmp eq i16 %.sroa.0140.0.copyload, 0
  br i1 %.not918, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = and i16 %.sroa.0140.0.copyload, 63
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !283
  %i.cy = icmp ne i8 %i.cx, 0
  %.not.i.i = icmp ult i16 %.sroa.0140.0.copyload, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.cy
  %i.cz = icmp slt i16 %.sroa.0140.0.copyload, -16384
  %spec.select.i.i = or i1 %i.cz, %or.cond.not.i.i
  %i.da = and i16 %.sroa.0140.0.copyload, 12288
  %i.db = icmp eq i16 %i.da, 12288
  %i.dc = or i1 %i.db, %spec.select.i.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dd = phi i1 [ false, %bb.u ], [ %i.dc, %bb.v ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 11419656 ; 7 uses
  %i.df = load i8, ptr %i.p, align 4, !tbaa !177  ; 2 uses
  %i.dg = load i16, ptr %i.af, align 4, !tbaa !196 ; 2 uses
  %i.dh = zext i8 %i.df to i64                    ; 5 uses
  %i.di = icmp ult i8 %i.df, 2
  br i1 %i.di, label %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i, label %bb.x

end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  br label %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit

_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit: ; preds = %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i, %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i, %bb.y
  %i.fi = phi i32 [ %i.fh, %bb.y ], [ 62728, %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i ], [ 62728, %_ZNK9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit25.i ]
  %i.fj = sext i16 %i.eo to i32
  %i.fk = sext i16 %i.eh to i32
  %i.fl = sext i16 %i.ea to i32
  %i.fm = sext i16 %i.dt to i32
  %i.fn = mul nsw i32 %i.fm, 10347
  %i.fo = mul nsw i32 %i.fl, 8821
  %i.fp = add nsw i32 %i.fo, %i.fn
  %i.fq = add nsw i32 %i.fj, %i.fk
  %i.fr = mul nsw i32 %i.fq, 11665
  %i.fs = add nsw i32 %i.fp, %i.fr
  %i.ft = add nsw i32 %i.fs, %i.fi                ; 4 uses
  %i.fu = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  %i.fw = getelementptr inbounds i8, ptr %2, i64 -80
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !248 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !248
  br label %bb.ao

bb.aa:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !248 ; 3 uses
  br label %bb.ao

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.bq, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !288 ; 2 uses
  %.not919 = icmp eq i32 %i.gc, 32002
  br i1 %.not919, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.ge = load ptr, ptr %i.gd, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.gf, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, i64 noundef %.sroa.0.0.copyload.i)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !138
  %i.gi = getelementptr inbounds nuw [160 x i8], ptr %i.gh, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 152
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !140
  switch i8 %i.gk, label %bb.ah [
    i8 -1, label %bb.af
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  call void @abort() #37
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.ae, %bb.ag
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.gl, %bb.ag ], [ %i.gi, %bb.ae ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !142
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.gp = load i8, ptr %i.p, align 4, !tbaa !177
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !150
  %i.gt = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.gm, ptr noundef nonnull align 64 dereferenceable(327680) %i.gn, i32 noundef %i.gs) #33
  %.pre = load i32, ptr %i.co, align 4, !tbaa !281
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.ad
  %i.gu = phi i32 [ %i.cn, %bb.ad ], [ %.pre, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ] ; 3 uses
  %.0397 = phi i32 [ %i.gc, %bb.ad ], [ %i.gt, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ] ; 3 uses
  %i.gv = sdiv i32 %i.ft, 131072
  %i.gw = add nsw i32 %.0397, %i.gv
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 -31506)
  %.sroa.speculated.i = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 31506) ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i, ptr %i.gx, align 8, !tbaa !248
  %.not920 = icmp eq i32 %i.gu, 32002
  br i1 %.not920, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !289
  %i.ha = zext i8 %i.gz to i32
  %i.hb = icmp sgt i32 %i.gu, %.sroa.speculated.i
  %i.hc = select i1 %i.hb, i32 2, i32 1
  %i.hd = and i32 %i.hc, %i.ha
  %.not420 = icmp eq i32 %i.hd, 0
  %spec.select = select i1 %.not420, i32 %.sroa.speculated.i, i32 %i.gu
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i477 = load i64, ptr %i.hg, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hf, i64 noundef %.sroa.0.0.copyload.i477)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !138
  %i.hj = getelementptr inbounds nuw [160 x i8], ptr %i.hi, i64 %.sroa.0.0.copyload.i477 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !140
  switch i8 %i.hl, label %bb.an [
    i8 -1, label %bb.al
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480
    i8 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  call void @abort() #37
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480

bb.an:                                            ; preds = %bb.ak
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480: ; preds = %bb.ak, %bb.am
  %.0.i.i.i.in.i.i.i478 = phi ptr [ %i.hm, %bb.am ], [ %i.hj, %bb.ak ]
  %.0.i.i.i.i.i.i479 = load ptr, ptr %.0.i.i.i.in.i.i.i478, align 8, !tbaa !142
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.hq = load i8, ptr %i.p, align 4, !tbaa !177
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !150
  %i.hu = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i479, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.hn, ptr noundef nonnull align 64 dereferenceable(327680) %i.ho, i32 noundef %i.ht) #33 ; 3 uses
  %i.hv = sdiv i32 %i.ft, 131072
  %i.hw = add nsw i32 %i.hu, %i.hv
  %.sroa.speculate.load.false.sroa.speculated.i481 = call i32 @llvm.smax.i32(i32 %i.hw, i32 -31506)
  %.sroa.speculated.i482 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i481, i32 31506) ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %.sroa.speculated.i482, ptr %i.hx, align 8, !tbaa !248
  %i.hy = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ib = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ia) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.bc, i32 noundef 32002, i1 noundef zeroext %i.hz, i8 noundef zeroext 0, i32 noundef -2, i16 0, i32 noundef %i.hu, i8 noundef zeroext %i.ib) #33
  %.pre1061 = load i32, ptr %i.hx, align 8, !tbaa !248
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.ab, %bb.ai, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480, %bb.z
  %i.ic = phi i32 [ %i.fx, %bb.z ], [ %i.ga, %bb.ab ], [ %.pre1061, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %.sroa.speculated.i, %bb.aj ], [ %.sroa.speculated.i, %bb.ai ] ; 3 uses
  %.1398 = phi i32 [ 32002, %bb.z ], [ %i.ga, %bb.ab ], [ %i.hu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %.0397, %bb.aj ], [ %.0397, %bb.ai ] ; 2 uses
  %.0387 = phi i32 [ %i.fx, %bb.z ], [ %i.ga, %bb.ab ], [ %.sroa.speculated.i482, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %spec.select, %bb.aj ], [ %.sroa.speculated.i, %bb.ai ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.ie = getelementptr inbounds i8, ptr %2, i64 -80
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !248
  %i.ig = icmp sgt i32 %i.ic, %i.if               ; 4 uses
  %i.ih = zext i1 %i.ig to i8
  %i.ii = getelementptr inbounds i8, ptr %2, i64 -24 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !248 ; 2 uses
  %i.ik = sub nsw i32 0, %i.ij
  %i.il = icmp sle i32 %i.ic, %i.ik               ; 2 uses
  %i.im = icmp sgt i32 %i.al, 2
  %or.cond.not = select i1 %i.im, i1 %i.il, i1 false
  %i.in = zext i1 %or.cond.not to i32
  %spec.select892 = add nuw nsw i32 %.sroa.speculated672, %i.in ; 2 uses
  %i.io = icmp sgt i32 %i.al, 1
  %i.ip = icmp samesign ugt i32 %spec.select892, 1
  %or.cond6 = select i1 %i.io, i1 %i.ip, i1 false
  %i.iq = add nsw i32 %i.ij, %i.ic                ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 173
  %or.cond894 = select i1 %or.cond6, i1 %i.ir, i1 false
  %i.is = sext i1 %or.cond894 to i32
  %.1 = add nsw i32 %spec.select892, %i.is        ; 12 uses
  %i.it = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.bo, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iv = load i16, ptr %i.af, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.iv, label %bb.aq [
    i16 65, label %bb.au
    i16 0, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds i8, ptr %2, i64 -12
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !270, !range !223, !noundef !72
  %16 = trunc nuw i8 %i.ix to i1
  %or.cond8 = or i1 %i.o, %16
  br i1 %or.cond8, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iy = sub nsw i32 0, %i.iq
  %i.iz = icmp slt i32 %i.iq, -167
  %.sroa.speculate.load.false586.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.iy, i32 -209)
  %i.ja = add nsw i32 %.sroa.speculate.load.false586.sroa.speculated, 59
  %i.jb = select i1 %i.iz, i32 226, i32 %i.ja     ; 2 uses
  %i.jc = xor i8 %i.q, 1
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.jd
  %i.jf = zext i16 %i.iv to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = mul nsw i32 %i.jb, 9
  %.sroa.speculated.i486 = call i32 @llvm.smin.i32(i32 %i.jh, i32 7183) ; 2 uses
  %i.ji = load i16, ptr %i.jg, align 2, !tbaa !147
  %i.jj = sext i16 %i.ji to i32                   ; 2 uses
  %i.jk = add nsw i32 %.sroa.speculated.i486, %i.jj
  %i.jl = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i486, i1 true)
  %i.jm = mul nsw i32 %i.jl, %i.jj
  %.neg.i = sdiv i32 %i.jm, -7183
  %i.jn = add nsw i32 %i.jk, %.neg.i
  %i.jo = trunc i32 %i.jn to i16
  store i16 %i.jo, ptr %i.jg, align 2, !tbaa !147
  %i.jp = load i8, ptr %i.bf, align 4, !tbaa !267, !range !223, !noundef !72
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jr = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !283 ; 2 uses
  %i.ju = and i8 %i.jt, 7
  %.not421 = icmp eq i8 %i.ju, 1
  %i.jv = and i16 %i.iv, -16384
  %.not422 = icmp eq i16 %i.jv, 16384
  %or.cond895 = or i1 %.not422, %.not421
  br i1 %or.cond895, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jw = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.jx = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !286
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !290
  %i.kc = and i64 %i.kb, %i.jz
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !170
  %i.kf = getelementptr inbounds nuw [2048 x i8], ptr %i.ke, i64 %i.kc
  %i.kg = zext i8 %i.jt to i64
  %i.kh = getelementptr inbounds nuw [128 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %i.jr ; 2 uses
  %i.kj = mul nsw i32 %i.jb, 13
  %.sroa.speculated.i488 = call i32 @llvm.smin.i32(i32 %i.kj, i32 8192) ; 2 uses
  %i.kk = load atomic i16, ptr %i.ki monotonic, align 2
  %i.kl = sext i16 %i.kk to i32                   ; 2 uses
  %i.km = add nsw i32 %.sroa.speculated.i488, %i.kl
  %i.kn = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i488, i1 true)
  %i.ko = mul nsw i32 %i.kn, %i.kl
  %.neg.i489 = sdiv i32 %i.ko, -8192
  %i.kp = add nsw i32 %i.km, %.neg.i489
  %i.kq = trunc i32 %i.kp to i16
  store atomic i16 %i.kq, ptr %i.ki monotonic, align 2
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aq
  %i.kr = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = icmp samesign ugt i32 %.1, 13
  %or.cond10.not = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %or.cond10.not, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ku = load i8, ptr %i.bi, align 2, !tbaa !278, !range !223, !noundef !72
  %i.kv = xor i8 %i.ku, 1
  %narrow.neg.i = mul nuw nsw i8 %i.kv, -23
  %narrow3.i = add nsw i8 %narrow.neg.i, 76
  %i.kw = zext nneg i8 %narrow3.i to i32          ; 2 uses
  %i.kx = mul nuw nsw i32 %.1, %i.kw
  %i.ky = select i1 %i.ig, i32 2474, i32 0
  %i.kz = select i1 %i.il, i32 0, i32 331
  %i.la = add nuw nsw i32 %i.kz, %i.ky
  %i.lb = mul nuw nsw i32 %i.la, %i.kw
  %i.lc = lshr i32 %i.lb, 10
  %i.ld = call i32 @llvm.abs.i32(i32 %i.ft, i1 true)
  %i.le = udiv i32 %i.ld, 174665
  %i.lf = add nuw nsw i32 %i.le, %i.kx
  %.neg921 = sub i32 %.0387, %i.lf
  %i.lg = add i32 %.neg921, %i.lc
  %.not = icmp slt i32 %i.lg, %4
  %.not424 = icmp slt i32 %.0387, %4
  %or.cond467 = or i1 %.not424, %.not
  br i1 %or.cond467, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lh = load i16, ptr %i.bg, align 8, !tbaa !234
  %.not922 = icmp eq i16 %i.lh, 0
  %or.cond13 = or i1 %i.dd, %.not922
  %or.cond13.not = xor i1 %or.cond13, true
  %i.li = icmp slt i32 %4, -31506
  %or.cond896 = or i1 %i.li, %or.cond13.not
  %i.lj = icmp sgt i32 %.0387, 31506
  %or.cond897 = select i1 %or.cond896, i1 true, i1 %i.lj
  br i1 %or.cond897, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lk = shl nsw i32 %4, 1
  %i.ll = add nsw i32 %.0387, %i.lk
  %i.lm = sdiv i32 %i.ll, 3
  br label %.thread851

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.pre1063 = load i32, ptr %i.id, align 8, !tbaa !248 ; 5 uses
  br i1 %6, label %bb.az, label %.thread848

bb.az:                                            ; preds = %bb.ay
  %.neg = mul nsw i32 %.1, -18
  %i.ln = add i32 %4, 350
  %i.lo = add i32 %i.ln, %.neg
  %.not425 = icmp slt i32 %.pre1063, %i.lo
  %brmerge = or i1 %i.cp, %.not425
  br i1 %brmerge, label %.thread848, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lp = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = zext i8 %i.q to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !150
  %.not426 = icmp eq i32 %i.lt, 0
  br i1 %.not426, label %.thread848, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lu = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !291
  %.not427 = icmp slt i32 %i.lu, %i.lw
  %i.lx = icmp slt i32 %4, -31506
  %or.cond898 = or i1 %i.lx, %.not427
  br i1 %or.cond898, label %.thread848, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.lhs.trunc = trunc nuw i32 %.1 to i8
  %i.ly = udiv i8 %.lhs.trunc, 3
  %narrow923 = add nuw nsw i8 %i.ly, 7
  %i.lz = zext nneg i8 %narrow923 to i32
  %i.ma = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(17) %i.ma) #33
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i16 65, ptr %i.mb, align 4, !tbaa !196
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !246
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !247
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.mh = sub nsw i32 0, %4
  %i.mi = sub nsw i32 1, %4
  %i.mj = sub nsw i32 %.1, %i.lz                  ; 3 uses
  %i.mk = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.mg, i32 noundef %i.mh, i32 noundef %i.mi, i32 noundef %i.mj, i1 noundef zeroext false) ; 2 uses
  %i.ml = sub nsw i32 0, %i.mk                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #33
  %.not428 = icmp sgt i32 %4, %i.ml
  %i.mm = icmp slt i32 %i.mk, -31506
  %or.cond899 = or i1 %.not428, %i.mm
  br i1 %or.cond899, label %..thread848_crit_edge, label %bb.bd

..thread848_crit_edge:                            ; preds = %bb.bc
  %.pre1062 = load i32, ptr %i.id, align 8, !tbaa !248
  br label %.thread848

bb.bd:                                            ; preds = %bb.bc
  %i.mn = load i32, ptr %i.lv, align 4, !tbaa !291
  %i.mo = icmp ne i32 %i.mn, 0
  %i.mp = icmp samesign ult i32 %.1, 16
  %or.cond15 = select i1 %i.mo, i1 true, i1 %i.mp
  br i1 %or.cond15, label %.thread851, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mq = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.mr = trunc nsw i32 %i.mj to i16
  %.lhs.trunc891 = mul nsw i16 %i.mr, 3
  %i.ms = sdiv i16 %.lhs.trunc891, 4
  %.sext = sext i16 %i.ms to i32
  %i.mt = add nsw i32 %i.mq, %.sext
  store i32 %i.mt, ptr %i.lv, align 4, !tbaa !291
  %i.mu = add nsw i32 %4, -1
  %i.mv = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %2, i32 noundef %i.mu, i32 noundef %4, i32 noundef %i.mj, i1 noundef zeroext false)
  store i32 0, ptr %i.lv, align 4, !tbaa !291
  %.not429 = icmp slt i32 %i.mv, %4
  br i1 %.not429, label %.thread854, label %.thread851

.thread854:                                       ; preds = %bb.be
  %i.mw = load i32, ptr %i.id, align 8, !tbaa !248 ; 2 uses
  %i.mx = icmp sge i32 %i.mw, %4
  %i.my = or i1 %i.ig, %i.mx
  %i.mz = zext i1 %i.my to i8
  br label %.thread859

end_hunk_1
begin_hunk_2_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii:bb.a
  %i.nf = and i64 %i.ne, %i.nc                    ; 2 uses
  %i.ng = shl i64 %i.nf, 8
  %i.nh = lshr i64 %i.nf, 8
  %i.ni = select i1 %i.mz, i64 %i.ng, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !55
  %i.nl = xor i64 %i.nk, -1
  %i.nm = and i64 %i.ni, %i.nl
  %.not160 = icmp eq i64 %i.nm, 0
  br i1 %.not160, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mr, i64 72
  store i64 255, ptr %i.nn, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.no = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(520) %9) #33
  %.not161 = icmp eq ptr %i.no, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %spec.select267 = select i1 %.not161, i32 0, i32 %.10
  %i.np = load ptr, ptr %i.m, align 8, !tbaa !218
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  store i64 0, ptr %i.nq, align 8, !tbaa !219
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bp, %bb.bo
  %.12 = phi i32 [ %.10, %bb.bo ], [ %spec.select267, %bb.bs ], [ %.10, %bb.br ], [ %.10, %bb.bq ], [ %.10, %bb.bp ] ; 5 uses
  %i.nr = load i32, ptr %i.v, align 8, !tbaa !249 ; 2 uses
  %i.ns = icmp sgt i32 %.12, 31506
  %i.nt = icmp slt i32 %.12, -31506
  %i.nu = select i1 %i.nt, i32 %i.nr, i32 0
  %i.nv = sub i32 0, %i.nu
  %.p.i184 = select i1 %i.ns, i32 %i.nr, i32 %i.nv
  %i.nw = add i32 %.p.i184, %.12
  %.not162 = icmp slt i32 %.12, %4
  %i.nx = select i1 %.not162, i8 1, i8 2
  %i.ny = load ptr, ptr %i.bh, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.nz = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ny) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.bg, i32 noundef %i.nw, i1 noundef zeroext %i.cq, i8 noundef zeroext %i.nx, i32 noundef 0, i16 %.sroa.059.2, i32 noundef %.2141, i8 noundef zeroext %i.nz) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bl
  %.1 = phi i32 [ %i.mj, %bb.bl ], [ %.12, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread259

.thread259:                                       ; preds = %bb.ap, %bb.ao, %bb.bu
  %.2 = phi i32 [ %.1, %bb.bu ], [ %i.hm, %bb.ao ], [ %i.hm, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %.thread, %bb.h, %.thread259
  %.3 = phi i32 [ %.2, %.thread259 ], [ %i.at, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ 0, %.thread ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bw

bb.bw:                                            ; preds = %bb.c, %bb.bv
  %.4 = phi i32 [ %.3, %bb.bv ], [ %i.j, %bb.c ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #22 {
bb.a:
  %.not = icmp eq i32 %0, 32002
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 31506
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = icmp samesign ugt i32 %0, 31753
  br i1 %i.b, label %bb.d, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.c
  %.pre = sub nsw i32 100, %2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = sub nsw i32 32000, %0
  %i.d = sub nsw i32 100, %2                      ; 2 uses
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %._crit_edge21, %bb.d
  %.pre-phi = phi i32 [ %.pre, %._crit_edge21 ], [ %i.d, %bb.d ]
  %i.f = sub nsw i32 31753, %0
  %i.g = icmp sgt i32 %i.f, %.pre-phi
  %i.h = sub nsw i32 %0, %1
  %spec.select = select i1 %i.g, i32 31506, i32 %i.h
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %0, -31506
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i32 %0, -31753
  br i1 %i.j, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre22 = sub nsw i32 100, %2
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = add nsw i32 %0, 32000
  %i.l = sub nsw i32 100, %2                      ; 2 uses
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi23 = phi i32 [ %.pre22, %._crit_edge ], [ %i.l, %bb.h ]
  %i.n = add nsw i32 %0, 31753
  %i.o = icmp sgt i32 %i.n, %.pre-phi23
  %i.p = add nsw i32 %1, %0
  %spec.select20 = select i1 %i.o, i32 -31506, i32 %i.p
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.f, %bb.h, %bb.d, %bb.a
  %.0 = phi i32 [ 32002, %bb.a ], [ 31506, %bb.d ], [ %0, %bb.f ], [ %spec.select20, %bb.i ], [ -31506, %bb.h ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

declare void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, i16, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 39 uses
  %7 = alloca %"struct.Stockfish::StateInfo", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.std::tuple.201", align 8   ; 18 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.422, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !409
  %i.g = xor i1 %6, true                          ; 3 uses
  %i.h = icmp slt i32 %5, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.gb

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated884 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !249
  %i.m = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.l) #33
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.o = load atomic i64, ptr %i.n seq_cst, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 2                          ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %.not564.not = icmp sgt i32 %i.q, %4
  br i1 %.not564.not, label %bb.gb, label %._crit_edge1289

._crit_edge1289:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !409
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1289, %bb.d, %bb.c
  %i.s = phi ptr [ %.pre, %._crit_edge1289 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 9 uses
  %.01030 = phi i32 [ %i.r, %._crit_edge1289 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  store i64 0, ptr %i.u, align 8, !tbaa !269
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 15 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !219
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 4, !tbaa !270
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !271
  %i.ae = icmp ne i8 %i.ad, 0                     ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !177 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 0, ptr %i.ah, align 8, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 64, !tbaa !131
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.am = load ptr, ptr %i.al, align 32, !tbaa !134 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !274
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.as = load atomic i8, ptr %i.ar monotonic, align 8, !range !223, !noundef !72
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !249
  %i.aw = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.av) #33
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !249 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 245
  br i1 %i.ay, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !249
  %i.bb = icmp sgt i32 %i.ba, 245
  br i1 %i.bb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.aa, align 4, !tbaa !270, !range !223, !noundef !72
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !55 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 noundef %.sroa.0.0.copyload.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.bi, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !140
  switch i8 %i.bl, label %bb.p [
    i8 -1, label %bb.n
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @abort() #37
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.p:                                             ; preds = %bb.m
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.m, %bb.o
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.bm, %bb.o ], [ %i.bj, %bb.m ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.bq = load i8, ptr %i.af, align 4, !tbaa !177
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !150
  %i.bu = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bn, ptr noundef nonnull align 64 dereferenceable(327680) %i.bo, i32 noundef %i.bt) #33
  br label %bb.ga

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.bw = load atomic i64, ptr %i.bv seq_cst, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %i.by, -1
  br label %bb.ga

bb.r:                                             ; preds = %bb.j
  %i.ca = add nsw i32 %i.ax, -32000
  %.sroa.speculated824 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.01030) ; 7 uses
  %i.cb = sub nsw i32 31999, %i.ax
  %.sroa.speculated819 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.cb) ; 35 uses
  %.not565 = icmp slt i32 %.sroa.speculated824, %.sroa.speculated819
  br i1 %.not565, label %bb.s, label %bb.ga

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds i8, ptr %i.s, i64 -28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.cd, label %bb.t [
    i16 65, label %bb.u
    i16 0, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = and i8 %i.ce, 63
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.s, %bb.t
  %i.cg = phi i8 [ %i.cf, %bb.t ], [ 64, %bb.s ], [ 64, %bb.s ] ; 9 uses
  %i.ch = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !275 ; 3 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !275
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 0, ptr %i.cj, align 4, !tbaa !276
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store i32 0, ptr %i.ck, align 8, !tbaa !277
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !196 ; 4 uses
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !265 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 52
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !266 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 14
  br i1 %i.cs, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = add nsw i32 %i.cr, -14
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, 1442695040888963407
  %i.cy = xor i64 %i.cx, %i.cp
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.u, %bb.v
  %i.cz = phi i64 [ %i.cy, %bb.v ], [ %i.cp, %bb.u ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 8 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %10, ptr noundef nonnull align 8 dereferenceable(17) %i.db, i64 noundef %i.cz) #33
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 15 uses
  %i.de = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !409 ; 15 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 46
  store i8 %i.de, ptr %i.dg, align 2, !tbaa !278
  %i.dh = trunc nuw i8 %i.de to i1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 13 uses
  br i1 %i.dh, label %bb.w, label %.thread1045

bb.w:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %.sroa.0188.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !281
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !249
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !266
  %i.dp = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.do)
  store i32 %i.dp, ptr %i.di, align 4, !tbaa !281
  %.not1169 = icmp eq i16 %i.cm, 0
  br i1 %.not1169, label %bb.y, label %bb.x

.thread1045:                                      ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  store i16 0, ptr %i.dd, align 8, !tbaa !196
  store i32 32002, ptr %i.di, align 4, !tbaa !281
  %.not1168 = icmp eq i16 %i.cm, 0
  br i1 %.not1168, label %.thread1052, label %bb.x

.thread1052:                                      ; preds = %.thread1045
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  store i8 0, ptr %i.dq, align 1, !tbaa !282
  br label %bb.ab

bb.x:                                             ; preds = %.thread1045, %bb.w
  %.sroa.0188.010431049 = phi i16 [ 0, %.thread1045 ], [ %.sroa.0188.0.copyload, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !282, !range !223, !noundef !72
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 25
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !407, !range !223, !noundef !72
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dv = phi i1 [ true, %bb.x ], [ false, %bb.y ] ; 2 uses
  %.sroa.0188.010431047 = phi i16 [ %.sroa.0188.010431049, %bb.x ], [ %.sroa.0188.0.copyload, %bb.y ] ; 5 uses
  %i.dw = phi i8 [ %i.ds, %bb.x ], [ %i.du, %bb.y ]
end_hunk_2
begin_hunk_3_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
bb.az:                                            ; preds = %bb.ay
  %i.kg = load i16, ptr %i.dd, align 8, !tbaa !234 ; 2 uses
  %.not1173 = icmp eq i16 %i.kg, 0
  br i1 %.not1173, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kh = call noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.kg) #33
  br i1 %i.kh, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %.sroa.0177.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.ki = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0177.0.copyload) #33
  br i1 %i.ki, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.kj = load i32, ptr %i.di, align 4, !tbaa !281
  %i.kk = add i32 %i.kj, -31507
  %spec.select.i674 = icmp ult i32 %i.kk, -63013
  br i1 %spec.select.i674, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.0176.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEPKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0176.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef null)
  %i.kl = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !265 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 52
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !266 ; 2 uses
  %i.kq = icmp slt i32 %i.kp, 14
  br i1 %i.kq, label %_ZNK9Stockfish8Position3keyEv.exit675, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kr = add nsw i32 %i.kp, -14
  %i.ks = lshr i32 %i.kr, 3
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = mul i64 %i.kt, 6364136223846793005
  %i.kv = add i64 %i.ku, 1442695040888963407
  %i.kw = xor i64 %i.kv, %i.kn
  br label %_ZNK9Stockfish8Position3keyEv.exit675

_ZNK9Stockfish8Position3keyEv.exit675:            ; preds = %bb.bd, %bb.be
  %i.kx = phi i64 [ %i.kw, %bb.be ], [ %i.kn, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.ky = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(17) %i.ky, i64 noundef %i.kx) #33
  %.sroa.0173.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0173.0.copyload) #33
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !281 ; 2 uses
  %.not1174 = icmp eq i32 %i.la, 32002
  %i.lb = load i32, ptr %i.di, align 4, !tbaa !281 ; 3 uses
  br i1 %.not1174, label %.thread1054, label %bb.bf

.thread1054:                                      ; preds = %_ZNK9Stockfish8Position3keyEv.exit675
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.thread1079

bb.bf:                                            ; preds = %_ZNK9Stockfish8Position3keyEv.exit675
  %i.lc = icmp sge i32 %i.lb, %.sroa.speculated819
  %i.ld = sub nsw i32 0, %i.la
  %i.le = icmp sle i32 %.sroa.speculated819, %i.ld
  %not. = xor i1 %i.le, %i.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br i1 %not., label %bb.bh, label %.thread1079

bb.bg:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %i.lf = load i32, ptr %i.di, align 4, !tbaa !281
  br label %.thread1079

bb.bh:                                            ; preds = %bb.ax, %bb.bf, %bb.aq, %bb.ap, %bb.ao
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 11422184
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !410 ; 3 uses
  %.not571 = icmp eq i32 %i.lh, 0
  br i1 %.not571, label %.thread1063, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !150
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !150
  %i.lm = add nsw i32 %i.ll, %i.lj                ; 2 uses
  %.not572 = icmp sgt i32 %i.lm, %i.lh
  br i1 %.not572, label %.thread1063, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ln = icmp slt i32 %i.lm, %i.lh
  br i1 %i.ln, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 11422192
  %i.lp = load i32, ptr %i.lo, align 16, !tbaa !411
  %.not573 = icmp slt i32 %.11035, %i.lp
  br i1 %.not573, label %.thread1063, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lq = load ptr, ptr %i.v, align 8, !tbaa !218 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 52
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !266
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bm, label %.thread1063

bb.bm:                                            ; preds = %bb.bl
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !412
  %i.lw = and i32 %i.lv, 15
  %.not1175 = icmp eq i32 %i.lw, 0
  br i1 %.not1175, label %bb.bn, label %.thread1063

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.lx = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.e) #33 ; 3 uses
  %i.ly = load i64, ptr %i.ai, align 64, !tbaa !131
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.mb = load ptr, ptr %i.ma, align 32, !tbaa !134
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  store i32 0, ptr %i.mc, align 8, !tbaa !300
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.md = load i32, ptr %i.e, align 4, !tbaa !414
  %.not574 = icmp eq i32 %i.md, 0
  br i1 %.not574, label %.thread1067, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 11419808 ; 2 uses
  %i.mf = load atomic i64, ptr %i.me monotonic, align 32
  %i.mg = add i64 %i.mf, 1
  store atomic i64 %i.mg, ptr %i.me monotonic, align 32
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 11422189
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !415, !range !223, !noundef !72
  %i.mj = zext nneg i8 %i.mi to i32               ; 3 uses
  %i.mk = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !249 ; 4 uses
  %i.mn = sub nsw i32 0, %i.mj
  %.not1176 = icmp slt i32 %i.lx, %i.mn
  br i1 %.not1176, label %.thread1061, label %bb.br

.thread1061:                                      ; preds = %bb.bq
  %.neg575 = add nsw i32 %i.mm, -31753            ; 2 uses
  %.not576 = icmp sgt i32 %.neg575, %.sroa.speculated824
  br i1 %.not576, label %.thread1067, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.mo = icmp sgt i32 %i.lx, %i.mj
  %i.mp = shl nsw i32 %i.lx, 1
  %i.mq = mul nuw nsw i32 %i.mp, %i.mj
  br i1 %i.mo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mr = sub nsw i32 31753, %i.mm                ; 2 uses
  %.not577 = icmp slt i32 %i.mr, %.sroa.speculated819
  br i1 %.not577, label %.thread1067, label %bb.bt

.thread1067:                                      ; preds = %bb.bp, %.thread1061, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread1063

bb.bt:                                            ; preds = %bb.br, %bb.bs, %.thread1061
  %i.ms = phi i8 [ 1, %.thread1061 ], [ 2, %bb.bs ], [ 3, %bb.br ]
  %i.mt = phi i32 [ %.neg575, %.thread1061 ], [ %i.mr, %bb.bs ], [ %i.mq, %bb.br ] ; 4 uses
  %i.mu = icmp sgt i32 %i.mt, 31506
  %i.mv = icmp slt i32 %i.mt, -31506
  %i.mw = select i1 %i.mv, i32 %i.mm, i32 0
  %i.mx = sub i32 0, %i.mw
  %.p.i = select i1 %i.mu, i32 %i.mm, i32 %i.mx
  %i.my = add i32 %.p.i, %i.mt
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mk, i64 45
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !282, !range !223, !noundef !72
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = call i32 @llvm.umin.i32(i32 %.11035, i32 239)
  %.sroa.speculated805 = add nuw nsw i32 %i.nc, 6
  %i.nd = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ne = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.nd) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.cz, i32 noundef %i.my, i1 noundef zeroext %i.nb, i8 noundef zeroext %i.ms, i32 noundef %.sroa.speculated805, i16 0, i32 noundef 32002, i8 noundef zeroext %i.ne) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread1079

.thread1063:                                      ; preds = %bb.bi, %bb.bk, %bb.bl, %bb.bm, %.thread1067, %bb.an, %bb.bh
  %i.nf = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 44
  %i.nh = load i8, ptr %i.ng, align 4, !tbaa !270, !range !223, !noundef !72
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.cw, label %bb.bu

bb.bu:                                            ; preds = %.thread1063
  %i.nj = getelementptr inbounds i8, ptr %i.nf, i64 -28
  %i.nk = load i16, ptr %i.nj, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.nk, label %bb.bv [
    i16 65, label %bb.bz
    i16 0, label %bb.bz
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.nl = getelementptr inbounds i8, ptr %i.nf, i64 -12
  %i.nm = load i8, ptr %i.nl, align 4, !tbaa !270, !range !223, !noundef !72
  %15 = trunc nuw i8 %i.nm to i1
  %or.cond21 = or i1 %i.ae, %15
  br i1 %or.cond21, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nn = getelementptr inbounds i8, ptr %i.nf, i64 -24
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !248
  %i.np = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !248
  %i.nr = add nsw i32 %i.nq, %i.no                ; 2 uses
  %i.ns = sub nsw i32 0, %i.nr
  %i.nt = icmp slt i32 %i.nr, -167
  %.sroa.speculate.load.false.sroa.speculated798 = call i32 @llvm.smax.i32(i32 %i.ns, i32 -209)
  %i.nu = add nsw i32 %.sroa.speculate.load.false.sroa.speculated798, 59
  %i.nv = select i1 %i.nt, i32 226, i32 %i.nu     ; 2 uses
  %i.nw = xor i8 %i.ag, 1
  %i.nx = zext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.nx
  %i.nz = zext i16 %i.nk to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.nz ; 2 uses
  %i.ob = mul nsw i32 %i.nv, 9
  %.sroa.speculated.i680 = call i32 @llvm.smin.i32(i32 %i.ob, i32 7183) ; 2 uses
  %i.oc = load i16, ptr %i.oa, align 2, !tbaa !147
  %i.od = sext i16 %i.oc to i32                   ; 2 uses
  %i.oe = add nsw i32 %.sroa.speculated.i680, %i.od
  %i.of = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i680, i1 true)
  %i.og = mul nsw i32 %i.of, %i.od
  %.neg.i = sdiv i32 %i.og, -7183
  %i.oh = add nsw i32 %i.oe, %.neg.i
  %i.oi = trunc i32 %i.oh to i16
  store i16 %i.oi, ptr %i.oa, align 2, !tbaa !147
  %i.oj = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ol = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !283 ; 2 uses
  %i.oo = and i8 %i.on, 7
  %.not578 = icmp eq i8 %i.oo, 1
  %i.op = and i16 %i.nk, -16384
  %.not579 = icmp eq i16 %i.op, 16384
  %or.cond1147 = or i1 %.not579, %.not578
  br i1 %or.cond1147, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oq = load ptr, ptr %i.ej, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.or = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !286
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !290
  %i.ow = and i64 %i.ov, %i.ot
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !170
  %i.oz = getelementptr inbounds nuw [2048 x i8], ptr %i.oy, i64 %i.ow
  %i.pa = zext i8 %i.on to i64
  %i.pb = getelementptr inbounds nuw [128 x i8], ptr %i.oz, i64 %i.pa
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %i.ol ; 2 uses
  %i.pd = mul nsw i32 %i.nv, 13
  %.sroa.speculated.i682 = call i32 @llvm.smin.i32(i32 %i.pd, i32 8192) ; 2 uses
  %i.pe = load atomic i16, ptr %i.pc monotonic, align 2
  %i.pf = sext i16 %i.pe to i32                   ; 2 uses
  %i.pg = add nsw i32 %.sroa.speculated.i682, %i.pf
  %i.ph = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i682, i1 true)
  %i.pi = mul nsw i32 %i.ph, %i.pf
  %.neg.i683 = sdiv i32 %i.pi, -8192
  %i.pj = add nsw i32 %i.pg, %.neg.i683
  %i.pk = trunc i32 %i.pj to i16
  store atomic i16 %i.pk, ptr %i.pc monotonic, align 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.bv
  %i.pl = add nsw i32 %.sroa.speculated824, -485
  %.neg580 = mul nsw i32 %.11035, -281
  %.neg581 = mul nsw i32 %.neg580, %.11035
  %i.pm = add i32 %i.pl, %.neg581
  %i.pn = icmp slt i32 %.0524, %i.pm
  br i1 %i.pn, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.po = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.pp = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.po, i32 noundef %.sroa.speculated824, i32 noundef %.sroa.speculated819)
  br label %.thread1079

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %i.a, ptr %12, align 8, !tbaa !417
  %i.pq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.pq, align 8, !tbaa !384
  %i.pr = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.pr, align 8, !tbaa !384
  %i.ps = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.d, ptr %i.ps, align 8, !tbaa !304
  %i.pt = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 45
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !282, !range !223, !noundef !72
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = icmp samesign ugt i32 %.11035, 13
  %or.cond23.not = select i1 %i.pw, i1 true, i1 %i.px
  br i1 %or.cond23.not, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.py = call noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %.11035)
  %i.pz = sub nsw i32 %.0524, %i.py
  %.not = icmp slt i32 %i.pz, %.sroa.speculated819
  %.not583 = icmp slt i32 %.0524, %.sroa.speculated819
  %or.cond654 = or i1 %.not583, %.not
  br i1 %or.cond654, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qa = load i16, ptr %i.dd, align 8, !tbaa !234
  %.not1178 = icmp eq i16 %i.qa, 0
  %or.cond26 = or i1 %i.ei, %.not1178
  %or.cond26.not = xor i1 %or.cond26, true
  %i.qb = icmp slt i32 %.sroa.speculated819, -31506
  %or.cond1148 = or i1 %i.qb, %or.cond26.not
  %i.qc = icmp sgt i32 %.0524, 31506
  %or.cond1149 = select i1 %or.cond1148, i1 true, i1 %i.qc
  br i1 %or.cond1149, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qd = shl nsw i32 %.sroa.speculated819, 1
  %i.qe = add nsw i32 %.0524, %i.qd
  %i.qf = sdiv i32 %i.qe, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.thread1079

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %6, label %bb.cg, label %.thread1076

bb.cg:                                            ; preds = %bb.cf
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !248
  %.neg584 = mul nsw i32 %.11035, -18
  %i.qj = add i32 %.sroa.speculated819, 350
  %i.qk = add i32 %i.qj, %.neg584
  %.not585 = icmp slt i32 %i.qi, %i.qk
  %brmerge = or i1 %i.eh, %.not585
  br i1 %brmerge, label %.thread1076, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ql = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 40
  %i.qn = zext i8 %i.ag to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !150
  %.not586 = icmp eq i32 %i.qp, 0
  br i1 %.not586, label %.thread1076, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !249
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !291
  %.not587 = icmp slt i32 %i.qr, %i.qt
  %i.qu = icmp slt i32 %.sroa.speculated819, -31506
  %or.cond1150 = or i1 %i.qu, %.not587
  br i1 %or.cond1150, label %.thread1076, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.lhs.trunc1139 = trunc nuw i32 %.11035 to i8
  %i.qv = udiv i8 %.lhs.trunc1139, 3
  %narrow1179 = add nuw nsw i8 %i.qv, 7
  %i.qw = zext nneg i8 %narrow1179 to i32
  %i.qx = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %7, ptr noundef nonnull align 8 dereferenceable(17) %i.qx) #33
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qg, i64 28
  store i16 65, ptr %i.qy, align 4, !tbaa !196
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store ptr %i.qz, ptr %i.ra, align 8, !tbaa !246
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store ptr %i.rb, ptr %i.rc, align 8, !tbaa !247
  %i.rd = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56
  %i.rf = sub nsw i32 0, %.sroa.speculated819
  %i.rg = sub nsw i32 1, %.sroa.speculated819
  %i.rh = sub nsw i32 %.11035, %i.qw              ; 3 uses
  %i.ri = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.re, i32 noundef %i.rf, i32 noundef %i.rg, i32 noundef %i.rh, i1 noundef zeroext false) ; 2 uses
  %i.rj = sub nsw i32 0, %i.ri                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #33
  %.not588 = icmp sgt i32 %.sroa.speculated819, %i.rj
  %i.rk = icmp slt i32 %i.ri, -31506
  %or.cond1151 = or i1 %.not588, %i.rk
  br i1 %or.cond1151, label %.thread1076, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rl = load i32, ptr %i.qs, align 4, !tbaa !291
  %i.rm = icmp ne i32 %i.rl, 0
  %i.rn = icmp samesign ult i32 %.11035, 16
  %or.cond28 = select i1 %i.rm, i1 true, i1 %i.rn
  br i1 %or.cond28, label %.thread1079, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ro = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !249
  %i.rr = trunc nsw i32 %i.rh to i16
end_hunk_3
begin_hunk_4_@_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi:bb.a
  %i.bh = sdiv i32 %i.bg, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.3 = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 -30000)
  %.sroa.speculated.i.us.3 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.3, i32 30000) ; 2 uses
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !175
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = add nsw i32 %.sroa.speculated.i.us.3, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.3, i1 true)
  %i.bm = mul nsw i32 %i.bl, %i.bj
  %.neg.i.us.3 = sdiv i32 %i.bm, -30000
  %i.bn = add nsw i32 %i.bk, %.neg.i.us.3
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %i.bf, align 2, !tbaa !175
  br label %.split.us.4

.split.us.4:                                      ; preds = %bb.e, %.split.us.3, %.split.us.3
  %i.bp = getelementptr inbounds i8, ptr %0, i64 -252
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !234
  switch i16 %i.bq, label %bb.f [
    i16 65, label %.split.us.5
    i16 0, label %.split.us.5
  ]

bb.f:                                             ; preds = %.split.us.4
  %i.br = getelementptr inbounds i8, ptr %0, i64 -272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !246
  %i.bt = getelementptr inbounds nuw [128 x i8], ptr %i.bs, i64 %i.d
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.e ; 2 uses
  %i.bv = mul nsw i32 %3, 149
  %i.bw = sdiv i32 %i.bv, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.4 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 -30000)
  %.sroa.speculated.i.us.4 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.4, i32 30000) ; 2 uses
  %i.bx = load i16, ptr %i.bu, align 2, !tbaa !175
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = add nsw i32 %.sroa.speculated.i.us.4, %i.by
  %i.ca = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.4, i1 true)
  %i.cb = mul nsw i32 %i.ca, %i.by
  %.neg.i.us.4 = sdiv i32 %i.cb, -30000
  %i.cc = add nsw i32 %i.bz, %.neg.i.us.4
  %i.cd = trunc i32 %i.cc to i16
  store i16 %i.cd, ptr %i.bu, align 2, !tbaa !175
  br label %.split.us.5

.split.us.5:                                      ; preds = %bb.f, %.split.us.4, %.split.us.4
  %i.ce = getelementptr inbounds i8, ptr %0, i64 -308
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !234
  switch i16 %i.cf, label %bb.g [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

bb.g:                                             ; preds = %.split.us.5
  %i.cg = getelementptr inbounds i8, ptr %0, i64 -328
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !246
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %i.ch, i64 %i.d
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.e ; 2 uses
  %i.ck = mul nsw i32 %3, 237
  %i.cl = sdiv i32 %i.ck, 512
  %.sroa.speculate.load.false.sroa.speculated.i.us.5 = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 -30000)
  %.sroa.speculated.i.us.5 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.5, i32 30000) ; 2 uses
  %i.cm = load i16, ptr %i.cj, align 2, !tbaa !175
  %i.cn = sext i16 %i.cm to i32                   ; 2 uses
  %i.co = add nsw i32 %.sroa.speculated.i.us.5, %i.cn
  %i.cp = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.5, i1 true)
  %i.cq = mul nsw i32 %i.cp, %i.cn
  %.neg.i.us.5 = sdiv i32 %i.cq, -30000
  %i.cr = add nsw i32 %i.co, %.neg.i.us.5
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %i.cj, align 2, !tbaa !175
  br label %.critedge

.split.preheader:                                 ; preds = %bb.a
  switch i16 %i.g, label %bb.h [
    i16 65, label %.split.1
    i16 0, label %.split.1
  ]

bb.h:                                             ; preds = %.split.preheader
  %i.ct = getelementptr inbounds i8, ptr %0, i64 -48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !246
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %i.cu, i64 %i.d
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.e ; 2 uses
  %i.cx = mul nsw i32 %3, 1133
  %i.cy = sdiv i32 %i.cx, 1024
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 -30088)
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 29912)
  %.sroa.speculated.i = add nsw i32 %i.da, 88     ; 2 uses
  %i.db = load i16, ptr %i.cw, align 2, !tbaa !175
  %i.dc = sext i16 %i.db to i32                   ; 2 uses
  %i.dd = add nsw i32 %.sroa.speculated.i, %i.dc
  %i.de = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.df = mul nsw i32 %i.de, %i.dc
  %.neg.i = sdiv i32 %i.df, -30000
  %i.dg = add nsw i32 %i.dd, %.neg.i
  %i.dh = trunc i32 %i.dg to i16
  store i16 %i.dh, ptr %i.cw, align 2, !tbaa !175
  br label %.split.1

.split.1:                                         ; preds = %bb.h, %.split.preheader, %.split.preheader
  %i.di = getelementptr inbounds i8, ptr %0, i64 -84
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !234
  switch i16 %i.dj, label %bb.i [
    i16 65, label %.critedge
    i16 0, label %.critedge
  ]

bb.i:                                             ; preds = %.split.1
  %i.dk = getelementptr inbounds i8, ptr %0, i64 -104
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !246
  %i.dm = getelementptr inbounds nuw [128 x i8], ptr %i.dl, i64 %i.d
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.e ; 2 uses
  %i.do = mul nsw i32 %3, 683
  %i.dp = sdiv i32 %i.do, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 -30000)
  %.sroa.speculated.i.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.1, i32 30000) ; 2 uses
  %i.dq = load i16, ptr %i.dn, align 2, !tbaa !175
  %i.dr = sext i16 %i.dq to i32                   ; 2 uses
  %i.ds = add nsw i32 %.sroa.speculated.i.1, %i.dr
  %i.dt = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.1, i1 true)
  %i.du = mul nsw i32 %i.dt, %i.dr
  %.neg.i.1 = sdiv i32 %i.du, -30000
  %i.dv = add nsw i32 %i.ds, %.neg.i.1
  %i.dw = trunc i32 %i.dv to i16
  store i16 %i.dw, ptr %i.dn, align 2, !tbaa !175
  br label %.critedge

.critedge:                                        ; preds = %.split.1, %.split.1, %bb.i, %.split.us.5, %.split.us.5, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 37 uses
  %7 = alloca [247 x %"class.Stockfish::Move"], align 16 ; 4 uses
  %8 = alloca %"struct.Stockfish::StateInfo", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 16 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.425, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !409
  %i.g = icmp slt i32 %5, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.fm

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated841 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.i = icmp slt i32 %3, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !249
  %i.l = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.k) #33
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 2                          ; 2 uses
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %.not475.not = icmp sgt i32 %i.p, %4
  br i1 %.not475.not, label %bb.fm, label %._crit_edge1258

._crit_edge1258:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !409
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1258, %bb.d, %bb.c
  %i.r = phi ptr [ %.pre, %._crit_edge1258 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 8 uses
  %.0977 = phi i32 [ %i.q, %._crit_edge1258 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  store i64 0, ptr %i.s, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i64 0, ptr %i.t, align 8, !tbaa !269
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 13 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !219
  %i.y = icmp ne i64 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 44 ; 2 uses
  %i.aa = zext i1 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 4, !tbaa !270
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !271
  %i.ad = icmp ne i8 %i.ac, 0                     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !177 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 64, !tbaa !131
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.al = load ptr, ptr %i.ak, align 32, !tbaa !134 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !274
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 64 dereferenceable(14279296) %0) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 11419824 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !256
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !249 ; 4 uses
  %.not476 = icmp sgt i32 %i.aq, %i.as
  br i1 %.not476, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ap, align 16, !tbaa !256
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.aw = load atomic i8, ptr %i.av monotonic, align 8, !range !223, !noundef !72
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.as) #33
  %.pre1270 = load i32, ptr %i.ar, align 8, !tbaa !249 ; 4 uses
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp sgt i32 %.pre1270, 245
  br i1 %i.az, label %.thread, label %bb.s

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ba = phi i32 [ %i.as, %bb.j ], [ %.pre1270, %bb.k ]
  %i.bb = icmp sgt i32 %i.ba, 245
  br i1 %i.bb, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bc = load i8, ptr %i.z, align 4, !tbaa !270, !range !223, !noundef !72
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i = load i64, ptr %i.bg, align 8, !tbaa !55 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, i64 noundef %.sroa.0.0.copyload.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw [160 x i8], ptr %i.bi, i64 %.sroa.0.0.copyload.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !140
  switch i8 %i.bl, label %bb.q [
    i8 -1, label %bb.o
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @abort() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit

bb.q:                                             ; preds = %bb.n
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit: ; preds = %bb.n, %bb.p
  %.0.i.i.i.in.i.i.i = phi ptr [ %i.bm, %bb.p ], [ %i.bj, %bb.n ]
  %.0.i.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i.i, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.bq = load i8, ptr %i.ae, align 4, !tbaa !177
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !150
  %i.bu = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bn, ptr noundef nonnull align 64 dereferenceable(327680) %i.bo, i32 noundef %i.bt) #33
  br label %bb.fl

bb.r:                                             ; preds = %.thread, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.bw = load atomic i64, ptr %i.bv seq_cst, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = and i32 %i.bx, 2
  %i.bz = add nsw i32 %i.by, -1
  br label %bb.fl

bb.s:                                             ; preds = %bb.l
  %i.ca = add nsw i32 %.pre1270, -32000
  %.sroa.speculated726 = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 %.0977) ; 12 uses
  %i.cb = sub nsw i32 31999, %.pre1270
  %.sroa.speculated720 = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.cb) ; 30 uses
  %.not477 = icmp slt i32 %.sroa.speculated726, %.sroa.speculated720
  br i1 %.not477, label %bb.t, label %bb.fl

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds i8, ptr %i.r, i64 -28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.cd, label %bb.u [
    i16 65, label %bb.v
    i16 0, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = and i8 %i.ce, 63
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.u
  %i.cg = phi i8 [ %i.cf, %bb.u ], [ 64, %bb.t ], [ 64, %bb.t ] ; 6 uses
  %i.ch = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !275 ; 3 uses
  store i32 0, ptr %i.ch, align 4, !tbaa !275
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i32 0, ptr %i.cj, align 4, !tbaa !276
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store i32 0, ptr %i.ck, align 8, !tbaa !277
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 30
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !196 ; 3 uses
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !218 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !265 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 52
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !266 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 14
  br i1 %i.cs, label %_ZNK9Stockfish8Position3keyEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = add nsw i32 %i.cr, -14
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = mul i64 %i.cv, 6364136223846793005
  %i.cx = add i64 %i.cw, 1442695040888963407
  %i.cy = xor i64 %i.cx, %i.cp
  br label %_ZNK9Stockfish8Position3keyEv.exit

_ZNK9Stockfish8Position3keyEv.exit:               ; preds = %bb.v, %bb.w
  %i.cz = phi i64 [ %i.cy, %bb.w ], [ %i.cp, %bb.v ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 7 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZNK9Stockfish18TranspositionTable5probeEm(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.201") align 8 %11, ptr noundef nonnull align 8 dereferenceable(17) %i.db, i64 noundef %i.cz) #33
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 28 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  %i.de = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72 ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !409 ; 14 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 46
  store i8 %i.de, ptr %i.dg, align 2, !tbaa !278
  %i.dh = trunc nuw i8 %i.de to i1                ; 2 uses
  br i1 %i.dh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  store i16 0, ptr %i.dd, align 8, !tbaa !196
  br label %bb.z

bb.y:                                             ; preds = %_ZNK9Stockfish8Position3keyEv.exit
  %.sroa.0175.0.copyload = load i16, ptr %i.dd, align 8, !tbaa !196
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !281
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !249
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !266
  %i.dp = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.do)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.0175.01014 = phi i16 [ %.sroa.0175.0.copyload, %bb.y ], [ 0, %bb.x ] ; 5 uses
  %i.dq = phi i32 [ %i.dp, %bb.y ], [ 32002, %bb.x ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 8 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !281
  %i.ds = icmp ne i16 %i.cm, 0                    ; 7 uses
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !282, !range !223, !noundef !72
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
end_hunk_4
begin_hunk_5_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.hs = icmp sgt i32 %i.hj, %.sroa.speculated.i
  %i.ht = select i1 %i.hs, i32 2, i32 1
  %i.hu = and i32 %i.ht, %i.hr
  %.not478 = icmp eq i32 %i.hu, 0
  %spec.select = select i1 %.not478, i32 %.sroa.speculated.i, i32 %i.hj
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.hv = call noundef i32 @_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1) ; 3 uses
  %i.hw = load i32, ptr %i.d, align 4, !tbaa !150
  %i.hx = sdiv i32 %i.hw, 131072
  %i.hy = add nsw i32 %i.hx, %i.hv
  %.sroa.speculate.load.false.sroa.speculated.i572 = call i32 @llvm.smax.i32(i32 %i.hy, i32 -31506)
  %.sroa.speculated.i573 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i572, i32 31506) ; 2 uses
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store i32 %.sroa.speculated.i573, ptr %i.ia, align 8, !tbaa !248
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 45
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !282, !range !223, !noundef !72
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.if = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ie) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef 32002, i1 noundef zeroext %i.id, i8 noundef zeroext 0, i32 noundef -2, i16 0, i32 noundef %i.hv, i8 noundef zeroext %i.if) #33
  %.pre1262 = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1262, i64 32
  %.pre1263 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !248
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ai, %bb.am, %bb.ao, %bb.ag
  %i.ig = phi i32 [ %i.hc, %bb.ag ], [ %i.hf, %bb.ai ], [ %.pre1263, %bb.ao ], [ %.sroa.speculated.i, %bb.an ], [ %.sroa.speculated.i, %bb.am ] ; 3 uses
  %i.ih = phi ptr [ %i.df, %bb.ag ], [ %i.df, %bb.ai ], [ %.pre1262, %bb.ao ], [ %i.hk, %bb.an ], [ %i.hk, %bb.am ] ; 8 uses
  %.1445 = phi i32 [ 32002, %bb.ag ], [ %i.hf, %bb.ai ], [ %i.hv, %bb.ao ], [ %.0444, %bb.an ], [ %.0444, %bb.am ] ; 2 uses
  %.0434 = phi i32 [ %i.hc, %bb.ag ], [ %i.hf, %bb.ai ], [ %.sroa.speculated.i573, %bb.ao ], [ %spec.select, %bb.an ], [ %.sroa.speculated.i, %bb.am ] ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -80
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !248
  %i.ik = icmp sgt i32 %i.ig, %i.ij
  %i.il = zext i1 %i.ik to i8
  store i8 %i.il, ptr %i.b, align 1, !tbaa !267
  %i.im = getelementptr inbounds i8, ptr %i.ih, i64 -24
  %i.in = load i32, ptr %i.im, align 8, !tbaa !248 ; 2 uses
  %i.io = sub nsw i32 0, %i.in
  %i.ip = icmp sgt i32 %i.ig, %i.io               ; 2 uses
  %i.iq = zext i1 %i.ip to i8
  store i8 %i.iq, ptr %i.c, align 1, !tbaa !267
  %i.ir = icmp slt i32 %i.ci, 3
  %or.cond = select i1 %i.ir, i1 true, i1 %i.ip
  %not.or.cond = xor i1 %or.cond, true
  %i.is = zext i1 %not.or.cond to i32
  %spec.select1101 = add nuw nsw i32 %.sroa.speculated841, %i.is ; 2 uses
  %i.it = icmp sgt i32 %i.ci, 1
  %i.iu = icmp samesign ugt i32 %spec.select1101, 1
  %or.cond14 = select i1 %i.it, i1 %i.iu, i1 false
  %i.iv = add nsw i32 %i.in, %i.ig
  %i.iw = icmp sgt i32 %i.iv, 173
  %or.cond1103 = select i1 %or.cond14, i1 %i.iw, i1 false
  %i.ix = sext i1 %or.cond1103 to i32
  %.1983 = add nsw i32 %spec.select1101, %i.ix    ; 14 uses
  br i1 %i.ds, label %.thread1019, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 11422184
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !410 ; 3 uses
  %.not479 = icmp eq i32 %i.iz, 0
  br i1 %.not479, label %.thread1019, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !150
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !150
  %i.je = add nsw i32 %i.jd, %i.jb                ; 2 uses
  %.not480 = icmp sgt i32 %i.je, %i.iz
  br i1 %.not480, label %.thread1019, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jf = icmp slt i32 %i.je, %i.iz
  br i1 %i.jf, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 11422192
  %i.jh = load i32, ptr %i.jg, align 16, !tbaa !411
  %.not481 = icmp slt i32 %.1983, %i.jh
  br i1 %.not481, label %.thread1019, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ji = load ptr, ptr %i.u, align 8, !tbaa !218 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 52
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !266
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.av, label %.thread1019

bb.av:                                            ; preds = %bb.au
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !412
  %i.jo = and i32 %i.jn, 15
  %.not1137 = icmp eq i32 %i.jo, 0
  br i1 %.not1137, label %bb.aw, label %.thread1019

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.jp = call noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.e) #33 ; 3 uses
  %i.jq = load i64, ptr %i.ah, align 64, !tbaa !131
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.jt = load ptr, ptr %i.js, align 32, !tbaa !134
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  store i32 0, ptr %i.ju, align 8, !tbaa !300
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jv = load i32, ptr %i.e, align 4, !tbaa !414
  %.not482 = icmp eq i32 %i.jv, 0
  %.pre1264.pre = load ptr, ptr %i.a, align 8, !tbaa !409 ; 3 uses
  br i1 %.not482, label %.thread1026, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 11419808 ; 2 uses
  %i.jx = load atomic i64, ptr %i.jw monotonic, align 32
  %i.jy = add i64 %i.jx, 1
  store atomic i64 %i.jy, ptr %i.jw monotonic, align 32
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 11422189
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !415, !range !223, !noundef !72
  %i.kb = zext nneg i8 %i.ka to i32               ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre1264.pre, i64 24
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !249 ; 4 uses
  %i.ke = sub nsw i32 0, %i.kb
  %.not1138 = icmp slt i32 %i.jp, %i.ke
  br i1 %.not1138, label %.thread1017, label %bb.ba

.thread1017:                                      ; preds = %bb.az
  %.neg = add nsw i32 %i.kd, -31753               ; 3 uses
  %.not483 = icmp sgt i32 %.neg, %.sroa.speculated726
  br i1 %.not483, label %.thread1026, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.kf = sub nsw i32 31753, %i.kd                ; 4 uses
  %i.kg = icmp sgt i32 %i.jp, %i.kb
  %i.kh = shl nsw i32 %i.jp, 1
  %i.ki = mul nuw nsw i32 %i.kh, %i.kb
  br i1 %i.kg, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.not484 = icmp slt i32 %i.kf, %.sroa.speculated720
  br i1 %.not484, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %.sroa.speculated754 = call i32 @llvm.smax.i32(i32 %.sroa.speculated726, i32 %i.kf)
  br label %.thread1026

.thread1026:                                      ; preds = %bb.ay, %bb.bc, %.thread1017
  %.11010.ph = phi i32 [ %.neg, %.thread1017 ], [ 32001, %bb.bc ], [ 32001, %bb.ay ]
  %.1996.ph = phi i32 [ -32001, %.thread1017 ], [ %i.kf, %bb.bc ], [ -32001, %bb.ay ]
  %.2978.ph = phi i32 [ %.sroa.speculated726, %.thread1017 ], [ %.sroa.speculated754, %bb.bc ], [ %.sroa.speculated726, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread1019

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %.thread1017
  %i.kj = phi i8 [ 1, %.thread1017 ], [ 2, %bb.bb ], [ 3, %bb.ba ]
  %i.kk = phi i32 [ %.neg, %.thread1017 ], [ %i.kf, %bb.bb ], [ %i.ki, %bb.ba ] ; 4 uses
  %i.kl = icmp sgt i32 %i.kk, 31506
  %i.km = icmp slt i32 %i.kk, -31506
  %i.kn = select i1 %i.km, i32 %i.kd, i32 0
  %i.ko = sub i32 0, %i.kn
  %.p.i = select i1 %i.kl, i32 %i.kd, i32 %i.ko
  %i.kp = add i32 %.p.i, %i.kk
  %i.kq = getelementptr inbounds nuw i8, ptr %.pre1264.pre, i64 45
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !282, !range !223, !noundef !72
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = call i32 @llvm.umin.i32(i32 %.1983, i32 239)
  %.sroa.speculated712 = add nuw nsw i32 %i.kt, 6
  %i.ku = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.kv = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ku) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.cz, i32 noundef %i.kp, i1 noundef zeroext %i.ks, i8 noundef zeroext %i.kj, i32 noundef %.sroa.speculated712, i16 0, i32 noundef 32002, i8 noundef zeroext %i.kv) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.thread1041

.thread1019:                                      ; preds = %bb.ar, %bb.at, %bb.au, %bb.av, %.thread1026, %bb.aq, %bb.ap
  %i.kw = phi ptr [ %i.ih, %bb.ap ], [ %i.ih, %bb.aq ], [ %.pre1264.pre, %.thread1026 ], [ %i.ih, %bb.av ], [ %i.ih, %bb.au ], [ %i.ih, %bb.at ], [ %i.ih, %bb.ar ] ; 10 uses
  %.31012 = phi i32 [ 32001, %bb.ap ], [ 32001, %bb.aq ], [ %.11010.ph, %.thread1026 ], [ 32001, %bb.av ], [ 32001, %bb.au ], [ 32001, %bb.at ], [ 32001, %bb.ar ]
  %.3998 = phi i32 [ -32001, %bb.ap ], [ -32001, %bb.aq ], [ %.1996.ph, %.thread1026 ], [ -32001, %bb.av ], [ -32001, %bb.au ], [ -32001, %bb.at ], [ -32001, %bb.ar ] ; 2 uses
  %.4979 = phi i32 [ %.sroa.speculated726, %bb.ap ], [ %.sroa.speculated726, %bb.aq ], [ %.2978.ph, %.thread1026 ], [ %.sroa.speculated726, %bb.av ], [ %.sroa.speculated726, %bb.au ], [ %.sroa.speculated726, %bb.at ], [ %.sroa.speculated726, %bb.ar ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 44
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !270, !range !223, !noundef !72
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.ce, label %bb.be

bb.be:                                            ; preds = %.thread1019
  %i.la = getelementptr inbounds i8, ptr %i.kw, i64 -28
  %i.lb = load i16, ptr %i.la, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.lb, label %bb.bf [
    i16 65, label %bb.bj
    i16 0, label %bb.bj
  ]

bb.bf:                                            ; preds = %bb.be
  %i.lc = getelementptr inbounds i8, ptr %i.kw, i64 -12
  %i.ld = load i8, ptr %i.lc, align 4, !tbaa !270, !range !223, !noundef !72
  %15 = trunc nuw i8 %i.ld to i1
  %or.cond16 = or i1 %i.ad, %15
  br i1 %or.cond16, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.le = getelementptr inbounds i8, ptr %i.kw, i64 -24
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !248
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !248
  %i.li = add nsw i32 %i.lh, %i.lf                ; 2 uses
  %i.lj = sub nsw i32 0, %i.li
  %i.lk = icmp slt i32 %i.li, -167
  %.sroa.speculate.load.false700.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.lj, i32 -209)
  %i.ll = add nsw i32 %.sroa.speculate.load.false700.sroa.speculated, 59
  %i.lm = select i1 %i.lk, i32 226, i32 %i.ll     ; 2 uses
  %i.ln = xor i8 %i.af, 1
  %i.lo = zext i8 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.lo
  %i.lq = zext i16 %i.lb to i64
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %i.lq ; 2 uses
  %i.ls = mul nsw i32 %i.lm, 9
  %.sroa.speculated.i579 = call i32 @llvm.smin.i32(i32 %i.ls, i32 7183) ; 2 uses
  %i.lt = load i16, ptr %i.lr, align 2, !tbaa !147
  %i.lu = sext i16 %i.lt to i32                   ; 2 uses
  %i.lv = add nsw i32 %.sroa.speculated.i579, %i.lu
  %i.lw = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i579, i1 true)
  %i.lx = mul nsw i32 %i.lw, %i.lu
  %.neg.i = sdiv i32 %i.lx, -7183
  %i.ly = add nsw i32 %i.lv, %.neg.i
  %i.lz = trunc i32 %i.ly to i16
  store i16 %i.lz, ptr %i.lr, align 2, !tbaa !147
  %i.ma = load i8, ptr %i.dc, align 4, !tbaa !267, !range !223, !noundef !72
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mc = zext nneg i8 %i.cg to i64               ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !283 ; 2 uses
  %i.mf = and i8 %i.me, 7
  %.not485 = icmp eq i8 %i.mf, 1
  %i.mg = and i16 %i.lb, -16384
  %.not486 = icmp eq i16 %i.mg, 16384
  %or.cond1104 = or i1 %.not486, %.not485
  br i1 %or.cond1104, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = load ptr, ptr %i.eh, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.mi = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !286
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !290
  %i.mn = and i64 %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !170
  %i.mq = getelementptr inbounds nuw [2048 x i8], ptr %i.mp, i64 %i.mn
  %i.mr = zext i8 %i.me to i64
  %i.ms = getelementptr inbounds nuw [128 x i8], ptr %i.mq, i64 %i.mr
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %i.mc ; 2 uses
  %i.mu = mul nsw i32 %i.lm, 13
  %.sroa.speculated.i581 = call i32 @llvm.smin.i32(i32 %i.mu, i32 8192) ; 2 uses
  %i.mv = load atomic i16, ptr %i.mt monotonic, align 2
  %i.mw = sext i16 %i.mv to i32                   ; 2 uses
  %i.mx = add nsw i32 %.sroa.speculated.i581, %i.mw
  %i.my = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i581, i1 true)
  %i.mz = mul nsw i32 %i.my, %i.mw
  %.neg.i582 = sdiv i32 %i.mz, -8192
  %i.na = add nsw i32 %i.mx, %.neg.i582
  %i.nb = trunc i32 %i.na to i16
  store atomic i16 %i.nb, ptr %i.mt monotonic, align 2
  %.pre1265 = load ptr, ptr %i.a, align 8, !tbaa !409
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.be, %bb.bg, %bb.bh, %bb.bi, %bb.bf
  %i.nc = phi ptr [ %i.kw, %bb.be ], [ %i.kw, %bb.be ], [ %i.kw, %bb.bg ], [ %i.kw, %bb.bh ], [ %.pre1265, %bb.bi ], [ %i.kw, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  store ptr %i.a, ptr %12, align 8, !tbaa !417
  %i.nd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.nd, align 8, !tbaa !384
  %i.ne = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.c, ptr %i.ne, align 8, !tbaa !384
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.d, ptr %i.nf, align 8, !tbaa !304
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 45
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !282, !range !223, !noundef !72
  %i.ni = trunc nuw i8 %i.nh to i1
  %i.nj = icmp samesign ugt i32 %.1983, 13
  %or.cond18.not = select i1 %i.ni, i1 true, i1 %i.nj
  br i1 %or.cond18.not, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nk = call noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %.1983)
  %i.nl = sub nsw i32 %.0434, %i.nk
  %.not = icmp slt i32 %i.nl, %.sroa.speculated720
  %.not488 = icmp slt i32 %.0434, %.sroa.speculated720
  %or.cond556 = or i1 %.not488, %.not
  br i1 %or.cond556, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nm = load i16, ptr %i.dd, align 8, !tbaa !234
  %.not1139 = icmp eq i16 %i.nm, 0
  %or.cond21 = or i1 %i.eg, %.not1139
  %or.cond21.not = xor i1 %or.cond21, true
  %i.nn = icmp slt i32 %.sroa.speculated720, -31506
  %or.cond1105 = or i1 %i.nn, %or.cond21.not
  %i.no = icmp sgt i32 %.0434, 31506
  %or.cond1106 = select i1 %or.cond1105, i1 true, i1 %i.no
  br i1 %or.cond1106, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.np = shl nsw i32 %.sroa.speculated720, 1
  %i.nq = add nsw i32 %.0434, %i.np
  %i.nr = sdiv i32 %i.nq, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.thread1041

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %6, label %bb.bo, label %.thread1038

bb.bo:                                            ; preds = %bb.bn
  %i.ns = load ptr, ptr %i.a, align 8, !tbaa !409 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !248
  %.neg489 = mul nsw i32 %.1983, -18
  %i.nv = add i32 %.sroa.speculated720, 350
  %i.nw = add i32 %i.nv, %.neg489
  %.not490 = icmp slt i32 %i.nu, %i.nw
  %brmerge = or i1 %i.ds, %.not490
  br i1 %brmerge, label %.thread1038, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nx = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.nz = zext i8 %i.af to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !150
  %.not491 = icmp eq i32 %i.ob, 0
  br i1 %.not491, label %.thread1038, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !249
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !291
  %.not492 = icmp slt i32 %i.od, %i.of
  %i.og = icmp slt i32 %.sroa.speculated720, -31506
  %or.cond1107 = or i1 %i.og, %.not492
  br i1 %or.cond1107, label %.thread1038, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.lhs.trunc1098 = trunc nuw i32 %.1983 to i8
  %i.oh = udiv i8 %.lhs.trunc1098, 3
  %narrow1140 = add nuw nsw i8 %i.oh, 7
  %i.oi = zext nneg i8 %narrow1140 to i32
  %i.oj = load ptr, ptr %i.da, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(17) %i.oj) #33
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ns, i64 28
  store i16 65, ptr %i.ok, align 4, !tbaa !196
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.om = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !246
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !247
  %i.op = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %i.or = sub nsw i32 0, %.sroa.speculated720
  %i.os = sub nsw i32 1, %.sroa.speculated720
  %i.ot = sub nsw i32 %.1983, %i.oi               ; 3 uses
  %i.ou = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.oq, i32 noundef %i.or, i32 noundef %i.os, i32 noundef %i.ot, i1 noundef zeroext false) ; 2 uses
  %i.ov = sub nsw i32 0, %i.ou                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #33
  %.not493 = icmp sgt i32 %.sroa.speculated720, %i.ov
  %i.ow = icmp slt i32 %i.ou, -31506
  %or.cond1108 = or i1 %.not493, %i.ow
  br i1 %or.cond1108, label %.thread1038, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ox = load i32, ptr %i.oe, align 4, !tbaa !291
  %i.oy = icmp ne i32 %i.ox, 0
  %i.oz = icmp samesign ult i32 %.1983, 16
  %or.cond23 = select i1 %i.oy, i1 true, i1 %i.oz
  br i1 %or.cond23, label %.thread1041, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pa = load ptr, ptr %i.a, align 8, !tbaa !409 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !249
  %i.pd = trunc nsw i32 %i.ot to i16
  %.lhs.trunc1099 = mul nsw i16 %i.pd, 3
  %i.pe = sdiv i16 %.lhs.trunc1099, 4
  %.sext1100 = sext i16 %i.pe to i32
  %i.pf = add nsw i32 %i.pc, %.sext1100
  store i32 %i.pf, ptr %i.oe, align 4, !tbaa !291
  %i.pg = add nsw i32 %.sroa.speculated720, -1
  %i.ph = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.pa, i32 noundef %i.pg, i32 noundef %.sroa.speculated720, i32 noundef %i.ot, i1 noundef zeroext false)
  store i32 0, ptr %i.oe, align 4, !tbaa !291
  %.not494 = icmp slt i32 %i.ph, %.sroa.speculated720
  br i1 %.not494, label %.thread1038, label %.thread1041

.thread1038:                                      ; preds = %bb.bo, %bb.br, %bb.bt, %bb.bq, %bb.bp, %bb.bn
end_hunk_5
