Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_:bb.a
  br label %common.ret31
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !133

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %bb.e, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %0, align 1, !tbaa !87
  store i8 %i.g, ptr %5, align 1, !tbaa !87
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %i.i = icmp ne ptr %1, %0                       ; 2 uses
  %i.j = icmp ne ptr %1, %2
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, %.lr.ph.i
  %.024.i = phi ptr [ %i.o, %.lr.ph.i ], [ %0, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %5, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ] ; 3 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %1, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ] ; 3 uses
  %i.l = load i8, ptr %.01922.i, align 1, !tbaa !87
  %i.m = load i8, ptr %.01823.i, align 1, !tbaa !87
  %i.n = tail call noundef zeroext i1 %i.a(i8 noundef zeroext %i.l, i8 noundef zeroext %i.m) #26, !inline_history !526 ; 3 uses
  %.sink.in.i = select i1 %i.n, ptr %.01922.i, ptr %.01823.i
  %.120.idx.i = zext i1 %i.n to i64
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 2 uses
  %not..i = xor i1 %i.n, true
  %.1.idx.i = zext i1 %not..i to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 3 uses
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !87
  store i8 %.sink.i, ptr %.024.i, align 1, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %i.p = icmp ne ptr %.1.i, %i.h                  ; 2 uses
  %i.q = icmp ne ptr %.120.i, %2
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !527

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit
  %.018.lcssa.i = phi ptr [ %5, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ], [ %.1.i, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.i, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ], [ %i.p, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.f, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = ptrtoint ptr %.018.lcssa.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %bb.h, !prof !133

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %.018.lcssa.i, i64 %i.u, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.i, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %.018.lcssa.i, align 1, !tbaa !87
  store i8 %i.x, ptr %.0.lcssa.i, align 1, !tbaa !87
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.j:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19.thread, label %bb.k, !prof !133

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %1, align 1, !tbaa !87
  store i8 %i.ad, ptr %5, align 1, !tbaa !87
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19: ; preds = %bb.k, %bb.l
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %bb.m, label %bb.o

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19.thread: ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr align 1 %1, i64 %i.aa, i1 false)
  %i.af = icmp eq ptr %0, %1
  br i1 %i.af, label %.thread, label %bb.o

.thread:                                          ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19.thread
  %i.ag = sub nsw i64 0, %i.aa
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %5, i64 %i.aa, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.m:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19
  %i.ai = icmp eq i64 %i.aa, 1
  br i1 %i.ai, label %bb.n, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ak = load i8, ptr %5, align 1, !tbaa !87
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !87
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.o:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19.thread, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19
  %i.al = icmp eq ptr %2, %1
  br i1 %i.al, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds i8, ptr %5, i64 %i.aa
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  br label %.outer

.outer:                                           ; preds = %bb.r, %bb.p
  %.026.i.ph.pn = phi ptr [ %1, %bb.p ], [ %.026.i.ph, %bb.r ]
  %.024.i20.ph = phi ptr [ %i.an, %bb.p ], [ %.024.i20, %bb.r ]
  %.0.i.ph = phi ptr [ %2, %bb.p ], [ %i.ar, %bb.r ]
  %.026.i.ph = getelementptr inbounds i8, ptr %.026.i.ph.pn, i64 -1 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %.outer, %bb.x
  %.024.i20 = phi ptr [ %i.bg, %bb.x ], [ %.024.i20.ph, %.outer ] ; 6 uses
  %.0.i = phi ptr [ %i.ar, %bb.x ], [ %.0.i.ph, %.outer ] ; 2 uses
  %i.ao = load i8, ptr %.024.i20, align 1, !tbaa !87
  %i.ap = load i8, ptr %.026.i.ph, align 1, !tbaa !87
  %i.aq = tail call noundef zeroext i1 %i.a(i8 noundef zeroext %i.ao, i8 noundef zeroext %i.ap) #26, !inline_history !528
  %i.ar = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  br i1 %i.aq, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.as = load i8, ptr %.026.i.ph, align 1, !tbaa !87
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !87
  %i.at = icmp eq ptr %0, %.026.i.ph
  br i1 %i.at, label %bb.s, label %.outer, !llvm.loop !529

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i20, i64 1
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %5 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp sgt i64 %i.ax, 1
  br i1 %i.ay, label %bb.t, label %bb.u, !prof !133

bb.t:                                             ; preds = %bb.s
  %i.az = sub nsw i64 0, %i.ax
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 %i.az
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %5, i64 %i.ax, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bb = icmp eq i64 %i.ax, 1
  br i1 %i.bb, label %bb.v, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.bd = load i8, ptr %5, align 1, !tbaa !87
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !87
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.w:                                             ; preds = %bb.q
  %i.be = load i8, ptr %.024.i20, align 1, !tbaa !87
  store i8 %i.be, ptr %i.ar, align 1, !tbaa !87
  %i.bf = icmp eq ptr %5, %.024.i20
  br i1 %i.bf, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds i8, ptr %.024.i20, i64 -1
  br label %bb.q, !llvm.loop !529

_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.o, %bb.n, %bb.m, %.thread, %bb.i, %bb.h, %bb.g, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.c = sub i64 %i.a, %i.b
  %.not27 = icmp slt i64 %i.c, %2
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  switch i64 %2, label %.preheader.i [
    i64 0, label %._crit_edge
    i64 1, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph
  %i.d = xor i64 %i.b, -1
  %i.e = add i64 %i.d, %i.a
  %smin = tail call i64 @llvm.smin.i64(i64 %i.e, i64 0)
  %4 = add i64 %smin, %i.b
  %i.f = sub i64 %i.a, %4                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.f, 16
  br i1 %min.iters.check, label %.preheader.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i64 %i.f, 256
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.f, 240
  %n.vec = and i64 %i.f, -256                     ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 %n.vec     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  %i.j = getelementptr i8, ptr %pointer.phi, i64 256
  %i.k = ptrtoint ptr %i.j to i64
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.us.preheader, label %vec.epilog.ph, !prof !187

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.h, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.f, -16                    ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 %n.vec65   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ]
  %pointer.phi67 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind70, %vec.epilog.vector.body ] ; 2 uses
  %index.next69 = add nuw i64 %index66, 16        ; 2 uses
  %ptr.ind70 = getelementptr i8, ptr %pointer.phi67, i64 16
  %i.m = icmp eq i64 %index.next69, %n.vec65
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !531

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.n = getelementptr i8, ptr %pointer.phi67, i64 16
  %i.o = ptrtoint ptr %i.n to i64
  %cmp.n72 = icmp eq i64 %i.f, %n.vec65
  br i1 %cmp.n72, label %._crit_edge, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.us31.ph = phi ptr [ %0, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.028.us31 = phi ptr [ %i.p, %.preheader.i.us ], [ %.028.us31.ph, %.preheader.i.us.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.028.us31, i64 1 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = sub i64 %i.a, %i.q
  %.not.us33 = icmp slt i64 %i.r, 1
  br i1 %.not.us33, label %._crit_edge, label %.preheader.i.us, !llvm.loop !532

.preheader.i:                                     ; preds = %.lr.ph, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit
  %i.s = phi i64 [ %i.aj, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.028 = phi ptr [ %i.t, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 9 uses
  %i.t = getelementptr inbounds i8, ptr %.028, i64 %2 ; 4 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.017.i, %.preheader.i ] ; 7 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.028, %.preheader.i ] ; 3 uses
  %i.u = load i8, ptr %.020.i, align 1, !tbaa !87
  %i.v = load i8, ptr %.028, align 1, !tbaa !87
  %i.w = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.u, i8 noundef zeroext %i.v) #26, !inline_history !10
  %i.x = load i8, ptr %.020.i, align 1, !tbaa !87 ; 3 uses
  br i1 %i.w, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = ptrtoint ptr %.020.i to i64
  %i.z = sub i64 %i.y, %i.s                       ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !133

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i, ptr noundef nonnull align 1 dereferenceable(1) %.028, i64 %i.z, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.e, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 1
  %i.ad = load i8, ptr %.028, align 1, !tbaa !87
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !87
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ae = load i8, ptr %.pn19.i, align 1, !tbaa !87
  %i.af = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.x, i8 noundef zeroext %i.ae) #26, !inline_history !11
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i, %bb.f ]
  %i.ag = load i8, ptr %.013.i.i, align 1, !tbaa !87
  store i8 %i.ag, ptr %.0912.i.i, align 1, !tbaa !87
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.ah = load i8, ptr %.0.i.i, align 1, !tbaa !87
  %i.ai = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.x, i8 noundef zeroext %i.ah) #26, !inline_history !11
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, !llvm.loop !12

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi ptr [ %.028, %bb.e ], [ %.028, %bb.c ], [ %.028, %bb.d ], [ %.020.i, %bb.f ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.x, ptr %.sink.i, align 1, !tbaa !87
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.t
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !13

_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit: ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.aj = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.ak = sub i64 %i.a, %i.aj
  %.not = icmp slt i64 %i.ak, %2
  br i1 %.not, label %._crit_edge, label %.preheader.i, !llvm.loop !533

._crit_edge:                                      ; preds = %.preheader.i.us, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit, %middle.block, %vec.epilog.middle.block, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %0, %.lr.ph ], [ %i.t, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.l, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %i.p, %.preheader.i.us ] ; 9 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.b, %.lr.ph ], [ %i.aj, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.o, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.q, %.preheader.i.us ]
  %i.al = icmp eq ptr %.0.lcssa, %1
  br i1 %i.al, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.preheader.i12

.preheader.i12:                                   ; preds = %._crit_edge
  %.017.i13 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 3 uses
  %.not18.i14 = icmp eq ptr %.017.i13, %1
  br i1 %.not18.i14, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18
  %.020.i16 = phi ptr [ %.0.i20, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18 ], [ %.017.i13, %.preheader.i12 ] ; 7 uses
  %.pn19.i17 = phi ptr [ %.020.i16, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18 ], [ %.0.lcssa, %.preheader.i12 ] ; 3 uses
  %i.am = load i8, ptr %.020.i16, align 1, !tbaa !87
  %i.an = load i8, ptr %.0.lcssa, align 1, !tbaa !87
  %i.ao = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.am, i8 noundef zeroext %i.an) #26, !inline_history !10
  %i.ap = load i8, ptr %.020.i16, align 1, !tbaa !87 ; 3 uses
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i15
  %i.aq = ptrtoint ptr %.020.i16 to i64
  %i.ar = sub i64 %i.aq, %.lcssa                  ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !133

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i13, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.i:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.j, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 1
  %i.av = load i8, ptr %.0.lcssa, align 1, !tbaa !87
  store i8 %i.av, ptr %i.au, align 1, !tbaa !87
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.k:                                             ; preds = %.lr.ph.i15
  %i.aw = load i8, ptr %.pn19.i17, align 1, !tbaa !87
  %i.ax = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.ap, i8 noundef zeroext %i.aw) #26, !inline_history !11
  br i1 %i.ax, label %.lr.ph.i.i22, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.k, %.lr.ph.i.i22
  %.013.i.i23 = phi ptr [ %.0.i.i25, %.lr.ph.i.i22 ], [ %.pn19.i17, %bb.k ] ; 4 uses
  %.0912.i.i24 = phi ptr [ %.013.i.i23, %.lr.ph.i.i22 ], [ %.020.i16, %bb.k ]
  %i.ay = load i8, ptr %.013.i.i23, align 1, !tbaa !87
  store i8 %i.ay, ptr %.0912.i.i24, align 1, !tbaa !87
  %.0.i.i25 = getelementptr inbounds i8, ptr %.013.i.i23, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.0.i.i25, align 1, !tbaa !87
  %i.ba = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.ap, i8 noundef zeroext %i.az) #26, !inline_history !11
  br i1 %i.ba, label %.lr.ph.i.i22, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18, !llvm.loop !12

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i19 = phi ptr [ %.0.lcssa, %bb.j ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %bb.i ], [ %.020.i16, %bb.k ], [ %.013.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.ap, ptr %.sink.i19, align 1, !tbaa !87
  %.0.i20 = getelementptr inbounds nuw i8, ptr %.020.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.lr.ph.i15, !llvm.loop !13

_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26: ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18, %._crit_edge, %.preheader.i12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 5 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
end_hunk_0
begin_hunk_1_@_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_:bb.a
  br label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44
  %.pre-phi82 = phi i64 [ %.pre81, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ab, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %.011.lcssa.i45 = phi ptr [ %.112.i50, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr73, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %i.am = sub i64 %.pre-phi82, %i.ab
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit
  %.062 = phi ptr [ %i.n, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %.011.lcssa.i45, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.038 = phi i64 [ %i.y, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.z, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.am, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.an = tail call noundef ptr @_ZNSt3_V28__rotateIPN9Stockfish6SquareEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6575, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr73, ptr noundef %.062, ptr noundef %i.an, i64 noundef %.0, i64 noundef %.038, ptr %5)
  %i.ao = sub nsw i64 %.tr6777, %.0               ; 2 uses
  %i.ap = sub nsw i64 %.tr6878, %.038             ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = icmp eq i64 %i.ap, 0
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPN9Stockfish6SquareEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check222, label %bb.d

iter.check222:                                    ; preds = %bb.c
  %min.iters.check200 = icmp ult i64 %i.g, 16
  br i1 %min.iters.check200, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check205

vector.main.loop.iter.check205:                   ; preds = %iter.check222
  %min.iters.check206 = icmp ult i64 %i.g, 128
  br i1 %min.iters.check206, label %vec.epilog.ph226, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check205
  %i.j = and i64 %i.g, 112
  %n.vec208 = and i64 %i.g, -128                  ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec208
  %i.l = getelementptr i8, ptr %0, i64 %n.vec208
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph207, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %1, i64 %index210 ; 3 uses
  %next.gep212 = getelementptr i8, ptr %0, i64 %index210 ; 3 uses
  %i.m = getelementptr i8, ptr %next.gep212, i64 64 ; 2 uses
  %wide.load213 = load <64 x i8>, ptr %next.gep212, align 1, !tbaa !87, !alias.scope !560, !noalias !561
  %wide.load214 = load <64 x i8>, ptr %i.m, align 1, !tbaa !87, !alias.scope !560, !noalias !561
  %i.n = getelementptr i8, ptr %next.gep211, i64 64 ; 2 uses
  %wide.load215 = load <64 x i8>, ptr %next.gep211, align 1, !tbaa !87, !alias.scope !561
  %wide.load216 = load <64 x i8>, ptr %i.n, align 1, !tbaa !87, !alias.scope !561
  store <64 x i8> %wide.load215, ptr %next.gep212, align 1, !tbaa !87, !alias.scope !560, !noalias !561
  store <64 x i8> %wide.load216, ptr %i.m, align 1, !tbaa !87, !alias.scope !560, !noalias !561
  store <64 x i8> %wide.load213, ptr %next.gep211, align 1, !tbaa !87, !alias.scope !561
  store <64 x i8> %wide.load214, ptr %i.n, align 1, !tbaa !87, !alias.scope !561
  %index.next217 = add nuw i64 %index210, 128     ; 2 uses
  %i.o = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.o, label %middle.block218, label %vector.body209, !llvm.loop !541

middle.block218:                                  ; preds = %vector.body209
  %cmp.n219 = icmp eq i64 %i.g, %n.vec208
  br i1 %cmp.n219, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block218
  %min.epilog.iters.check225 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check225, label %.lr.ph.i.preheader, label %vec.epilog.ph226, !prof !562

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check224
  %vec.epilog.resume.val220 = phi i64 [ %n.vec208, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check205 ]
  %n.vec227 = and i64 %i.g, -16                   ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec227
  %i.q = getelementptr i8, ptr %0, i64 %n.vec227
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph226
  %index229 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph226 ], [ %index.next234, %vec.epilog.vector.body228 ] ; 3 uses
  %next.gep230 = getelementptr i8, ptr %1, i64 %index229 ; 2 uses
  %next.gep231 = getelementptr i8, ptr %0, i64 %index229 ; 2 uses
  %wide.load232 = load <16 x i8>, ptr %next.gep231, align 1, !tbaa !87, !alias.scope !560, !noalias !561
  %wide.load233 = load <16 x i8>, ptr %next.gep230, align 1, !tbaa !87, !alias.scope !561
  store <16 x i8> %wide.load233, ptr %next.gep231, align 1, !tbaa !87, !alias.scope !560, !noalias !561
  store <16 x i8> %wide.load232, ptr %next.gep230, align 1, !tbaa !87, !alias.scope !561
  %index.next234 = add nuw i64 %index229, 16      ; 2 uses
  %i.r = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.r, label %vec.epilog.middle.block235, label %vec.epilog.vector.body228, !llvm.loop !542

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body228
  %cmp.n236 = icmp eq i64 %i.g, %n.vec227
  br i1 %cmp.n236, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block235
  %.010.i.ph = phi ptr [ %1, %iter.check222 ], [ %i.k, %vec.epilog.iter.check224 ], [ %i.p, %vec.epilog.middle.block235 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check222 ], [ %i.l, %vec.epilog.iter.check224 ], [ %i.q, %vec.epilog.middle.block235 ] ; 3 uses
  %.079.i.ph248 = ptrtoaddr ptr %.079.i.ph to i64 ; 2 uses
  %i.s = sub i64 %i.f, %.079.i.ph248
  %xtraiter249 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.w, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.t = load i8, ptr %.079.i.prol, align 1, !tbaa !87
  %i.u = load i8, ptr %.010.i.prol, align 1, !tbaa !87
  store i8 %i.u, ptr %.079.i.prol, align 1, !tbaa !87
  store i8 %i.t, ptr %.010.i.prol, align 1, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !543

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %i.x = sub i64 %.079.i.ph248, %i.f
  %i.y = icmp ugt i64 %i.x, -8
  br i1 %i.y, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.079.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.z = load i8, ptr %.079.i, align 1, !tbaa !87
  %i.aa = load i8, ptr %.010.i, align 1, !tbaa !87
  store i8 %i.aa, ptr %.079.i, align 1, !tbaa !87
  store i8 %i.z, ptr %.010.i, align 1, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !87
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !87
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !87
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !87
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !87
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !87
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !87
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !87
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !87
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !87
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !87
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !87
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i, i64 5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i, i64 5 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !87
  %i.au = load i8, ptr %i.as, align 1, !tbaa !87
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !87
  store i8 %i.at, ptr %i.as, align 1, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i, i64 6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i, i64 6 ; 2 uses
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !87
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !87
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !87
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i, i64 7 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i, i64 7 ; 2 uses
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !87
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !87
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !87
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !87
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bd, %1
  br i1 %.not.i.7, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !544

bb.d:                                             ; preds = %bb.c
  %i.bf = sub i64 %i.c, %i.f
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.bh = sub nsw i64 %.086, %.082                ; 16 uses
  %i.bi = icmp slt i64 %.082, %i.bh
  br i1 %i.bi, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bj = icmp eq i64 %.082, 1
  br i1 %i.bj, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.g

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit: ; preds = %bb.f
  %i.bk = load i8, ptr %.058, align 1, !tbaa !87
  %i.bl = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.bm = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.bl, i64 %gepdiff, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -1
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !87
  br label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.bo = icmp sgt i64 %i.bh, 0
  br i1 %i.bo, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.bp = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.bh, 8
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bh
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.bp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.bh, 128
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bh, 120
  %n.vec = and i64 %i.bh, 9223372036854775680     ; 6 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 %n.vec
  %i.bs = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bt = getelementptr i8, ptr %next.gep137, i64 64 ; 2 uses
  %wide.load = load <64 x i8>, ptr %next.gep137, align 1, !tbaa !87, !alias.scope !563, !noalias !564
  %wide.load138 = load <64 x i8>, ptr %i.bt, align 1, !tbaa !87, !alias.scope !563, !noalias !564
  %i.bu = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %wide.load139 = load <64 x i8>, ptr %next.gep, align 1, !tbaa !87, !alias.scope !564
  %wide.load140 = load <64 x i8>, ptr %i.bu, align 1, !tbaa !87, !alias.scope !564
  store <64 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !87, !alias.scope !563, !noalias !564
  store <64 x i8> %wide.load140, ptr %i.bt, align 1, !tbaa !87, !alias.scope !563, !noalias !564
  store <64 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !87, !alias.scope !564
  store <64 x i8> %wide.load138, ptr %i.bu, align 1, !tbaa !87, !alias.scope !564
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !565

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.bh, 9223372036854775800  ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bp, i64 %n.vec142
  %i.bx = getelementptr i8, ptr %.058, i64 %n.vec142 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 3 uses
  %next.gep144 = getelementptr i8, ptr %i.bp, i64 %index143 ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.058, i64 %index143 ; 2 uses
  %wide.load146 = load <8 x i8>, ptr %next.gep145, align 1, !tbaa !87, !alias.scope !563, !noalias !564
  %wide.load147 = load <8 x i8>, ptr %next.gep144, align 1, !tbaa !87, !alias.scope !564
  store <8 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !87, !alias.scope !563, !noalias !564
  store <8 x i8> %wide.load146, ptr %next.gep144, align 1, !tbaa !87, !alias.scope !564
  %index.next148 = add nuw i64 %index143, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !549

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.bh, %n.vec142
  br i1 %cmp.n149, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.bp, %iter.check ], [ %i.bp, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ] ; 2 uses
  %3 = sub i64 %.086, %.082
  %xtraiter245 = and i64 %3, 7                    ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.cd, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.cc, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.cb, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.bz = load i8, ptr %.159105.prol, align 1, !tbaa !87
  %i.ca = load i8, ptr %.055106.prol, align 1, !tbaa !87
  store i8 %i.ca, ptr %.159105.prol, align 1, !tbaa !87
  store i8 %i.bz, ptr %.055106.prol, align 1, !tbaa !87
  %i.cb = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.cd = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !550

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.cb, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.cd, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.cc, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.cb, %.lr.ph109.prol ]
  %i.ce = sub i64 %.054107.ph, %.086
  %i.cf = add i64 %i.ce, %.082
  %i.cg = icmp ugt i64 %i.cf, -8
  br i1 %i.cg, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.bx, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.dm, %.lr.ph109 ]
  %i.ch = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.ch, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.054107 = phi i64 [ %i.do, %.lr.ph109 ], [ %.054107.unr, %.lr.ph109.prol.loopexit ]
  %.055106 = phi ptr [ %i.dn, %.lr.ph109 ], [ %.055106.unr, %.lr.ph109.prol.loopexit ] ; 10 uses
  %.159105 = phi ptr [ %i.dm, %.lr.ph109 ], [ %.159105.unr, %.lr.ph109.prol.loopexit ] ; 10 uses
  %i.ci = load i8, ptr %.159105, align 1, !tbaa !87
  %i.cj = load i8, ptr %.055106, align 1, !tbaa !87
  store i8 %i.cj, ptr %.159105, align 1, !tbaa !87
  store i8 %i.ci, ptr %.055106, align 1, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !87
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !87
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !87
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !87
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !87
  store i8 %i.cr, ptr %i.co, align 1, !tbaa !87
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !87
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !87
  store i8 %i.cv, ptr %i.cs, align 1, !tbaa !87
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !87
  %i.cw = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.055106, i64 4 ; 2 uses
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !87
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !87
  store i8 %i.cz, ptr %i.cw, align 1, !tbaa !87
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !87
  %i.da = getelementptr inbounds nuw i8, ptr %.159105, i64 5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.055106, i64 5 ; 2 uses
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !87
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !87
  store i8 %i.dd, ptr %i.da, align 1, !tbaa !87
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %.159105, i64 6 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.055106, i64 6 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !87
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !87
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !87
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %.159105, i64 7 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.055106, i64 7 ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !87
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !87
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !87
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %.159105, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.055106, i64 8
  %i.do = add nuw nsw i64 %.054107, 8             ; 2 uses
  %exitcond118.not.7 = icmp eq i64 %i.do, %i.bh
  br i1 %exitcond118.not.7, label %._crit_edge110, label %.lr.ph109, !llvm.loop !551

bb.h:                                             ; preds = %._crit_edge110
  %i.dp = sub nsw i64 %.082, %i.ch
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.dq = icmp eq i64 %i.bh, 1
  %i.dr = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.dq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -1 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !87
  %i.du = add nsw i64 %.086, -1                   ; 2 uses
  %i.dv = icmp sgt i64 %.086, 2
  br i1 %i.dv, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  %i.dw = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %.058, i64 %i.du, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.l:                                             ; preds = %bb.j
  %i.dx = icmp eq i64 %i.du, 1
  br i1 %i.dx, label %bb.m, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.l
  %i.dy = load i8, ptr %.058, align 1, !tbaa !87
  store i8 %i.dy, ptr %i.ds, align 1, !tbaa !87
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i8 %i.dt, ptr %.058, align 1, !tbaa !87
  br label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.i
  %i.dz = sub i64 0, %i.bh
  %i.ea = getelementptr i8, ptr %i.dr, i64 %i.dz  ; 8 uses
  %i.eb = icmp sgt i64 %.082, 0
  br i1 %i.eb, label %iter.check176, label %._crit_edge

iter.check176:                                    ; preds = %bb.n
  %min.iters.check158 = icmp ult i64 %.082, 16
  br i1 %min.iters.check158, label %.lr.ph.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %iter.check176
  %scevgep154 = getelementptr i8, ptr %.058, i64 %i.bh
  %bound0155 = icmp ult ptr %.058, %i.dr
  %bound1156 = icmp ult ptr %scevgep154, %i.ea
  %found.conflict157 = and i1 %bound0155, %bound1156
  br i1 %found.conflict157, label %.lr.ph.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck153
  %min.iters.check160 = icmp ult i64 %.082, 128
  br i1 %min.iters.check160, label %vec.epilog.ph180, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.ec = and i64 %.082, 112
  %n.vec162 = and i64 %.082, 9223372036854775680  ; 5 uses
  %i.ed = sub nsw i64 0, %n.vec162                ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dr, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ea, i64 %i.ed
  br label %vector.body163

vector.body163:                                   ; preds = %vector.ph161, %vector.body163
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next171, %vector.body163 ] ; 2 uses
  %i.eg = sub i64 0, %index164                    ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.dr, i64 %i.eg ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.ea, i64 %i.eg ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %next.gep166, i64 -64 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %next.gep166, i64 -128 ; 2 uses
  %wide.load167 = load <64 x i8>, ptr %i.eh, align 1, !tbaa !87, !alias.scope !566, !noalias !567
  %wide.load168 = load <64 x i8>, ptr %i.ei, align 1, !tbaa !87, !alias.scope !566, !noalias !567
  %i.ej = getelementptr inbounds i8, ptr %next.gep165, i64 -64 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %next.gep165, i64 -128 ; 2 uses
  %wide.load169 = load <64 x i8>, ptr %i.ej, align 1, !tbaa !87, !alias.scope !567
  %wide.load170 = load <64 x i8>, ptr %i.ek, align 1, !tbaa !87, !alias.scope !567
  store <64 x i8> %wide.load169, ptr %i.eh, align 1, !tbaa !87, !alias.scope !566, !noalias !567
  store <64 x i8> %wide.load170, ptr %i.ei, align 1, !tbaa !87, !alias.scope !566, !noalias !567
  store <64 x i8> %wide.load167, ptr %i.ej, align 1, !tbaa !87, !alias.scope !567
  store <64 x i8> %wide.load168, ptr %i.ek, align 1, !tbaa !87, !alias.scope !567
  %index.next171 = add nuw i64 %index164, 128     ; 2 uses
  %i.el = icmp eq i64 %index.next171, %n.vec162
  br i1 %i.el, label %middle.block172, label %vector.body163, !llvm.loop !555

middle.block172:                                  ; preds = %vector.body163
  %cmp.n173 = icmp eq i64 %.082, %n.vec162
  br i1 %cmp.n173, label %._crit_edge, label %vec.epilog.iter.check178

vec.epilog.iter.check178:                         ; preds = %middle.block172
  %min.epilog.iters.check179 = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check179, label %.lr.ph.preheader, label %vec.epilog.ph180, !prof !562

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check178
  %vec.epilog.resume.val174 = phi i64 [ %n.vec162, %vec.epilog.iter.check178 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %.082, 9223372036854775792  ; 4 uses
  %i.em = sub nsw i64 0, %n.vec181                ; 2 uses
  %i.en = getelementptr i8, ptr %i.dr, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.ea, i64 %i.em
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph180
  %index183 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph180 ], [ %index.next188, %vec.epilog.vector.body182 ] ; 2 uses
  %i.ep = sub i64 0, %index183                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.dr, i64 %i.ep
  %next.gep185 = getelementptr i8, ptr %i.ea, i64 %i.ep
  %i.eq = getelementptr inbounds i8, ptr %next.gep185, i64 -16 ; 2 uses
  %wide.load186 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !87, !alias.scope !566, !noalias !567
  %i.er = getelementptr inbounds i8, ptr %next.gep184, i64 -16 ; 2 uses
  %wide.load187 = load <16 x i8>, ptr %i.er, align 1, !tbaa !87, !alias.scope !567
end_hunk_1
