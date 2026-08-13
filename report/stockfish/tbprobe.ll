inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_:bb.a

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
  br i1 %i.e, label %bb.c, label %bb.d, !prof !190

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 1
  br i1 %i.f, label %bb.e, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %0, align 1, !tbaa !95
  store i8 %i.g, ptr %5, align 1, !tbaa !95
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
  %i.l = load i8, ptr %.01922.i, align 1, !tbaa !95
  %i.m = load i8, ptr %.01823.i, align 1, !tbaa !95
  %i.n = tail call noundef zeroext i1 %i.a(i8 noundef zeroext %i.l, i8 noundef zeroext %i.m) #26, !inline_history !515 ; 3 uses
  %.sink.in.i = select i1 %i.n, ptr %.01922.i, ptr %.01823.i
  %.120.idx.i = zext i1 %i.n to i64
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 2 uses
  %not..i = xor i1 %i.n, true
  %.1.idx.i = zext i1 %not..i to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 3 uses
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !95
  store i8 %.sink.i, ptr %.024.i, align 1, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %i.p = icmp ne ptr %.1.i, %i.h                  ; 2 uses
  %i.q = icmp ne ptr %.120.i, %2
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !516

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
  br i1 %i.v, label %bb.g, label %bb.h, !prof !190

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %.018.lcssa.i, i64 %i.u, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.i, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %.018.lcssa.i, align 1, !tbaa !95
  store i8 %i.x, ptr %.0.lcssa.i, align 1, !tbaa !95
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.j:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19.thread, label %bb.k, !prof !190

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit19

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %1, align 1, !tbaa !95
  store i8 %i.ad, ptr %5, align 1, !tbaa !95
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
  %i.ak = load i8, ptr %5, align 1, !tbaa !95
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !95
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
  %i.ao = load i8, ptr %.024.i20, align 1, !tbaa !95
  %i.ap = load i8, ptr %.026.i.ph, align 1, !tbaa !95
  %i.aq = tail call noundef zeroext i1 %i.a(i8 noundef zeroext %i.ao, i8 noundef zeroext %i.ap) #26, !inline_history !517
  %i.ar = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  br i1 %i.aq, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.as = load i8, ptr %.026.i.ph, align 1, !tbaa !95
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !95
  %i.at = icmp eq ptr %0, %.026.i.ph
  br i1 %i.at, label %bb.s, label %.outer, !llvm.loop !518

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i20, i64 1
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %5 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp sgt i64 %i.ax, 1
  br i1 %i.ay, label %bb.t, label %bb.u, !prof !190

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
  %i.bd = load i8, ptr %5, align 1, !tbaa !95
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !95
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit

bb.w:                                             ; preds = %bb.q
  %i.be = load i8, ptr %.024.i20, align 1, !tbaa !95
  store i8 %i.be, ptr %i.ar, align 1, !tbaa !95
  %i.bf = icmp eq ptr %5, %.024.i20
  br i1 %i.bf, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_SA_T1_T2_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds i8, ptr %.024.i20, i64 -1
  br label %bb.q, !llvm.loop !518

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
  %i.f = add i64 %smin, %i.b
  %i.g = sub i64 %i.a, %i.f                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.preheader.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.g, 248
  %n.vec = and i64 %i.g, -256                     ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 %n.vec     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  %i.k = getelementptr i8, ptr %pointer.phi, i64 256
  %i.l = ptrtoint ptr %i.k to i64
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.us.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.i, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.g, -8                     ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 %n.vec65   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ]
  %pointer.phi67 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind70, %vec.epilog.vector.body ] ; 2 uses
  %index.next69 = add nuw i64 %index66, 8         ; 2 uses
  %ptr.ind70 = getelementptr i8, ptr %pointer.phi67, i64 8
  %i.n = icmp eq i64 %index.next69, %n.vec65
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !521

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = getelementptr i8, ptr %pointer.phi67, i64 8
  %i.p = ptrtoint ptr %i.o to i64
  %cmp.n72 = icmp eq i64 %i.g, %n.vec65
  br i1 %cmp.n72, label %._crit_edge, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.us31.ph = phi ptr [ %0, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.028.us31 = phi ptr [ %i.q, %.preheader.i.us ], [ %.028.us31.ph, %.preheader.i.us.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %.028.us31, i64 1 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = sub i64 %i.a, %i.r
  %.not.us33 = icmp slt i64 %i.s, 1
  br i1 %.not.us33, label %._crit_edge, label %.preheader.i.us, !llvm.loop !522

.preheader.i:                                     ; preds = %.lr.ph, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit
  %i.t = phi i64 [ %i.ak, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.028 = phi ptr [ %i.u, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 9 uses
  %i.u = getelementptr inbounds i8, ptr %.028, i64 %2 ; 4 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.017.i, %.preheader.i ] ; 7 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.028, %.preheader.i ] ; 3 uses
  %i.v = load i8, ptr %.020.i, align 1, !tbaa !95
  %i.w = load i8, ptr %.028, align 1, !tbaa !95
  %i.x = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.v, i8 noundef zeroext %i.w) #26, !inline_history !511
  %i.y = load i8, ptr %.020.i, align 1, !tbaa !95 ; 3 uses
  br i1 %i.x, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.z = ptrtoint ptr %.020.i to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !190

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i, ptr noundef nonnull align 1 dereferenceable(1) %.028, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.e, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 1
  %i.ae = load i8, ptr %.028, align 1, !tbaa !95
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.af = load i8, ptr %.pn19.i, align 1, !tbaa !95
  %i.ag = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.y, i8 noundef zeroext %i.af) #26, !inline_history !512
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i, %bb.f ]
  %i.ah = load i8, ptr %.013.i.i, align 1, !tbaa !95
  store i8 %i.ah, ptr %.0912.i.i, align 1, !tbaa !95
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.ai = load i8, ptr %.0.i.i, align 1, !tbaa !95
  %i.aj = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.y, i8 noundef zeroext %i.ai) #26, !inline_history !512
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, !llvm.loop !513

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi ptr [ %.028, %bb.e ], [ %.028, %bb.c ], [ %.028, %bb.d ], [ %.020.i, %bb.f ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.y, ptr %.sink.i, align 1, !tbaa !95
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.u
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !514

_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit: ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.ak = ptrtoint ptr %i.u to i64                ; 3 uses
  %i.al = sub i64 %i.a, %i.ak
  %.not = icmp slt i64 %i.al, %2
  br i1 %.not, label %._crit_edge, label %.preheader.i, !llvm.loop !523

._crit_edge:                                      ; preds = %.preheader.i.us, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit, %middle.block, %vec.epilog.middle.block, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %0, %.lr.ph ], [ %i.u, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.m, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %i.q, %.preheader.i.us ] ; 9 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.b, %.lr.ph ], [ %i.ak, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.p, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.r, %.preheader.i.us ]
  %i.am = icmp eq ptr %.0.lcssa, %1
  br i1 %i.am, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.preheader.i12

.preheader.i12:                                   ; preds = %._crit_edge
  %.017.i13 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 3 uses
  %.not18.i14 = icmp eq ptr %.017.i13, %1
  br i1 %.not18.i14, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18
  %.020.i16 = phi ptr [ %.0.i20, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18 ], [ %.017.i13, %.preheader.i12 ] ; 7 uses
  %.pn19.i17 = phi ptr [ %.020.i16, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18 ], [ %.0.lcssa, %.preheader.i12 ] ; 3 uses
  %i.an = load i8, ptr %.020.i16, align 1, !tbaa !95
  %i.ao = load i8, ptr %.0.lcssa, align 1, !tbaa !95
  %i.ap = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.an, i8 noundef zeroext %i.ao) #26, !inline_history !511
  %i.aq = load i8, ptr %.020.i16, align 1, !tbaa !95 ; 3 uses
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i15
  %i.ar = ptrtoint ptr %.020.i16 to i64
  %i.as = sub i64 %i.ar, %.lcssa                  ; 3 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.h, label %bb.i, !prof !190

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i13, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.i:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %bb.j, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 1
  %i.aw = load i8, ptr %.0.lcssa, align 1, !tbaa !95
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ax = load i8, ptr %.pn19.i17, align 1, !tbaa !95
  %i.ay = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.aq, i8 noundef zeroext %i.ax) #26, !inline_history !512
  br i1 %i.ay, label %.lr.ph.i.i22, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.k, %.lr.ph.i.i22
  %.013.i.i23 = phi ptr [ %.0.i.i25, %.lr.ph.i.i22 ], [ %.pn19.i17, %bb.k ] ; 4 uses
  %.0912.i.i24 = phi ptr [ %.013.i.i23, %.lr.ph.i.i22 ], [ %.020.i16, %bb.k ]
  %i.az = load i8, ptr %.013.i.i23, align 1, !tbaa !95
  store i8 %i.az, ptr %.0912.i.i24, align 1, !tbaa !95
  %.0.i.i25 = getelementptr inbounds i8, ptr %.013.i.i23, i64 -1 ; 2 uses
  %i.ba = load i8, ptr %.0.i.i25, align 1, !tbaa !95
  %i.bb = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.aq, i8 noundef zeroext %i.ba) #26, !inline_history !512
  br i1 %i.bb, label %.lr.ph.i.i22, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18, !llvm.loop !513

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i19 = phi ptr [ %.0.lcssa, %bb.j ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %bb.i ], [ %.020.i16, %bb.k ], [ %.013.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.aq, ptr %.sink.i19, align 1, !tbaa !95
  %.0.i20 = getelementptr inbounds nuw i8, ptr %.020.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.lr.ph.i15, !llvm.loop !514

_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26: ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18, %._crit_edge, %.preheader.i12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 5 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not47 = icmp slt i64 %i.d, %i.a
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not43 = icmp eq i64 %3, 0
  br i1 %.not43, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us, label %.lr.ph.i.preheader

_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us: ; preds = %.lr.ph, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us
  %.049.us = phi ptr [ %i.e, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.049.us, i64 %i.a ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.b, %i.f                       ; 2 uses
  %.not.us = icmp slt i64 %i.g, %i.a
  br i1 %.not.us, label %._crit_edge, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us, !llvm.loop !524

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit
  %.049 = phi ptr [ %i.i, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %.01948 = phi ptr [ %i.ad, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ], [ %2, %.lr.ph ]
  %i.h = getelementptr inbounds i8, ptr %.049, i64 %3 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.049, i64 %i.a ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.024.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.01948, %.lr.ph.i.preheader ] ; 2 uses
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.049, %.lr.ph.i.preheader ] ; 3 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 3 uses
  %i.j = load i8, ptr %.01922.i, align 1, !tbaa !95
  %i.k = load i8, ptr %.01823.i, align 1, !tbaa !95
  %i.l = tail call noundef zeroext i1 %4(i8 noundef zeroext %i.j, i8 noundef zeroext %i.k) #26, !inline_history !525 ; 3 uses
  %.sink.in.i = select i1 %i.l, ptr %.01922.i, ptr %.01823.i
  %.120.idx.i = zext i1 %i.l to i64
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 5 uses
  %not..i = xor i1 %i.l, true
  %.1.idx.i = zext i1 %not..i to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 5 uses
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !95
  store i8 %.sink.i, ptr %.024.i, align 1, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 4 uses
  %i.n = icmp ne ptr %.1.i, %i.h
  %i.o = icmp ne ptr %.120.i, %i.i
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !526

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %.1.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !190

bb.b:                                             ; preds = %._crit_edge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %.1.i, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.loopexit
  %i.u = icmp eq i64 %i.s, 1
  br i1 %i.u, label %bb.d, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %.1.i, align 1, !tbaa !95
  store i8 %i.v, ptr %i.m, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 %i.s ; 3 uses
  %i.x = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.y = ptrtoint ptr %.120.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !190

bb.e:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %.120.i, i64 %i.z, i1 false)
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit

bb.f:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.g, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %.120.i, align 1, !tbaa !95
  store i8 %i.ac, ptr %i.w, align 1, !tbaa !95
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit

_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 %i.z ; 2 uses
  %i.ae = sub i64 %i.b, %i.x                      ; 2 uses
  %.not = icmp slt i64 %i.ae, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !524

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us, %bb.a
  %.019.lcssa = phi ptr [ %2, %bb.a ], [ %2, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us ], [ %i.ad, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us ], [ %i.i, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 3 uses
  %.lcssa45 = phi i64 [ %i.d, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit.us ], [ %i.ae, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa45) ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.sroa.speculated ; 5 uses
  %i.ag = icmp ne i64 %.sroa.speculated, 0
  %i.ah = icmp ne ptr %i.af, %1
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i27, label %._crit_edge.i22

.lr.ph.i27:                                       ; preds = %._crit_edge, %.lr.ph.i27
  %.024.i28 = phi ptr [ %i.am, %.lr.ph.i27 ], [ %.019.lcssa, %._crit_edge ] ; 2 uses
  %.01823.i29 = phi ptr [ %.1.i36, %.lr.ph.i27 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01922.i30 = phi ptr [ %.120.i33, %.lr.ph.i27 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.aj = load i8, ptr %.01922.i30, align 1, !tbaa !95
  %i.ak = load i8, ptr %.01823.i29, align 1, !tbaa !95
  %i.al = tail call noundef zeroext i1 %4(i8 noundef zeroext %i.aj, i8 noundef zeroext %i.ak) #26, !inline_history !525 ; 3 uses
  %.sink.in.i31 = select i1 %i.al, ptr %.01922.i30, ptr %.01823.i29
  %.120.idx.i32 = zext i1 %i.al to i64
  %.120.i33 = getelementptr inbounds nuw i8, ptr %.01922.i30, i64 %.120.idx.i32 ; 3 uses
  %not..i34 = xor i1 %i.al, true
  %.1.idx.i35 = zext i1 %not..i34 to i64
  %.1.i36 = getelementptr inbounds nuw i8, ptr %.01823.i29, i64 %.1.idx.i35 ; 3 uses
  %.sink.i37 = load i8, ptr %.sink.in.i31, align 1, !tbaa !95
  store i8 %.sink.i37, ptr %.024.i28, align 1, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %.024.i28, i64 1 ; 2 uses
  %i.an = icmp ne ptr %.1.i36, %i.af
  %i.ao = icmp ne ptr %.120.i33, %1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %.lr.ph.i27, label %._crit_edge.i22, !llvm.loop !526

._crit_edge.i22:                                  ; preds = %.lr.ph.i27, %._crit_edge
  %.019.lcssa.i23 = phi ptr [ %i.af, %._crit_edge ], [ %.120.i33, %.lr.ph.i27 ] ; 3 uses
  %.018.lcssa.i24 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i36, %.lr.ph.i27 ] ; 3 uses
  %.0.lcssa.i25 = phi ptr [ %.019.lcssa, %._crit_edge ], [ %i.am, %.lr.ph.i27 ] ; 3 uses
  %i.aq = ptrtoint ptr %i.af to i64
  %i.ar = ptrtoint ptr %.018.lcssa.i24 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 4 uses
  %i.at = icmp sgt i64 %i.as, 1
end_hunk_0
