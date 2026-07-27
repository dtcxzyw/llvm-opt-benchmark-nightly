inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_:bb.a
  %smin = tail call i64 @llvm.smin.i64(i64 %i.e, i64 0)
  %i.f = add i64 %smin, %i.b
  %i.g = sub i64 %i.a, %i.f                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.preheader.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 248
  %n.vec = and i64 %i.g, -256                     ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 %n.vec     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  %i.j = getelementptr i8, ptr %pointer.phi, i64 256
  %i.k = ptrtoint ptr %i.j to i64
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.us.preheader, label %vec.epilog.ph, !prof !520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.h, %vec.epilog.iter.check ], [ %0, %vector.main.loop.iter.check ]
  %n.vec66 = and i64 %i.g, -8                     ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 %n.vec66   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ]
  %pointer.phi68 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind71, %vec.epilog.vector.body ] ; 2 uses
  %index.next70 = add nuw i64 %index67, 8         ; 2 uses
  %ptr.ind71 = getelementptr i8, ptr %pointer.phi68, i64 8
  %i.m = icmp eq i64 %index.next70, %n.vec66
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !521

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.n = getelementptr i8, ptr %pointer.phi68, i64 8
  %i.o = ptrtoint ptr %i.n to i64
  %cmp.n73 = icmp eq i64 %i.g, %n.vec66
  br i1 %cmp.n73, label %._crit_edge, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.028.us31.ph = phi ptr [ %0, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ]
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.028.us31 = phi ptr [ %i.p, %.preheader.i.us ], [ %.028.us31.ph, %.preheader.i.us.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.028.us31, i64 1 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = sub i64 %i.a, %i.q
  %.not.us33 = icmp slt i64 %i.r, 1
  br i1 %.not.us33, label %._crit_edge, label %.preheader.i.us, !llvm.loop !522

.preheader.i:                                     ; preds = %.lr.ph, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit
  %i.s = phi i64 [ %i.aj, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.028 = phi ptr [ %i.t, %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 9 uses
  %i.t = getelementptr inbounds i8, ptr %.028, i64 %2 ; 4 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %.020.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.017.i, %.preheader.i ] ; 7 uses
  %.pn19.i = phi ptr [ %.020.i, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i ], [ %.028, %.preheader.i ] ; 3 uses
  %i.u = load i8, ptr %.020.i, align 1, !tbaa !95
  %i.v = load i8, ptr %.028, align 1, !tbaa !95
  %i.w = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.u, i8 noundef zeroext %i.v) #26, !inline_history !511
  %i.x = load i8, ptr %.020.i, align 1, !tbaa !95 ; 3 uses
  br i1 %i.w, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = ptrtoint ptr %.020.i to i64
  %i.z = sub i64 %i.y, %i.s                       ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !190

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i, ptr noundef nonnull align 1 dereferenceable(1) %.028, i64 %i.z, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.e, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 1
  %i.ad = load i8, ptr %.028, align 1, !tbaa !95
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ae = load i8, ptr %.pn19.i, align 1, !tbaa !95
  %i.af = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.x, i8 noundef zeroext %i.ae) #26, !inline_history !512
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i, %bb.f ]
  %i.ag = load i8, ptr %.013.i.i, align 1, !tbaa !95
  store i8 %i.ag, ptr %.0912.i.i, align 1, !tbaa !95
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.ah = load i8, ptr %.0.i.i, align 1, !tbaa !95
  %i.ai = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.x, i8 noundef zeroext %i.ah) #26, !inline_history !512
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, !llvm.loop !513

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi ptr [ %.028, %bb.e ], [ %.028, %bb.c ], [ %.028, %bb.d ], [ %.020.i, %bb.f ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.x, ptr %.sink.i, align 1, !tbaa !95
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.t
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !514

_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit.loopexit: ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.aj = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.ak = sub i64 %i.a, %i.aj
  %.not = icmp slt i64 %i.ak, %2
  br i1 %.not, label %._crit_edge, label %.preheader.i, !llvm.loop !523

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
  %i.am = load i8, ptr %.020.i16, align 1, !tbaa !95
  %i.an = load i8, ptr %.0.lcssa, align 1, !tbaa !95
  %i.ao = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.am, i8 noundef zeroext %i.an) #26, !inline_history !511
  %i.ap = load i8, ptr %.020.i16, align 1, !tbaa !95 ; 3 uses
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i15
  %i.aq = ptrtoint ptr %.020.i16 to i64
  %i.ar = sub i64 %i.aq, %.lcssa                  ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.h, label %bb.i, !prof !190

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.017.i13, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.i:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.j, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 1
  %i.av = load i8, ptr %.0.lcssa, align 1, !tbaa !95
  store i8 %i.av, ptr %i.au, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

bb.k:                                             ; preds = %.lr.ph.i15
  %i.aw = load i8, ptr %.pn19.i17, align 1, !tbaa !95
  %i.ax = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.ap, i8 noundef zeroext %i.aw) #26, !inline_history !512
  br i1 %i.ax, label %.lr.ph.i.i22, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.k, %.lr.ph.i.i22
  %.013.i.i23 = phi ptr [ %.0.i.i25, %.lr.ph.i.i22 ], [ %.pn19.i17, %bb.k ] ; 4 uses
  %.0912.i.i24 = phi ptr [ %.013.i.i23, %.lr.ph.i.i22 ], [ %.020.i16, %bb.k ]
  %i.ay = load i8, ptr %.013.i.i23, align 1, !tbaa !95
  store i8 %i.ay, ptr %.0912.i.i24, align 1, !tbaa !95
  %.0.i.i25 = getelementptr inbounds i8, ptr %.013.i.i23, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.0.i.i25, align 1, !tbaa !95
  %i.ba = tail call noundef zeroext i1 %3(i8 noundef zeroext %i.ap, i8 noundef zeroext %i.az) #26, !inline_history !512
  br i1 %i.ba, label %.lr.ph.i.i22, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18, !llvm.loop !513

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i19 = phi ptr [ %.0.lcssa, %bb.j ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %bb.i ], [ %.020.i16, %bb.k ], [ %.013.i.i23, %.lr.ph.i.i22 ]
  store i8 %i.ap, ptr %.sink.i19, align 1, !tbaa !95
  %.0.i20 = getelementptr inbounds nuw i8, ptr %.020.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26, label %.lr.ph.i15, !llvm.loop !514

_ZSt16__insertion_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_.exit26: ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i18, %._crit_edge, %.preheader.i12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not47 = icmp slt i64 %i.d, %i.a
  %.not43 = icmp eq i64 %3, 0
  %or.cond = or i1 %.not47, %.not43
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit
  %.049 = phi ptr [ %i.f, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ], [ %0, %bb.a ] ; 3 uses
  %.01948 = phi ptr [ %i.aa, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ], [ %2, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.049, i64 %3 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.049, i64 %i.a ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.024.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.01948, %.lr.ph.i.preheader ] ; 2 uses
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.049, %.lr.ph.i.preheader ] ; 3 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %i.g = load i8, ptr %.01922.i, align 1, !tbaa !95
  %i.h = load i8, ptr %.01823.i, align 1, !tbaa !95
  %i.i = tail call noundef zeroext i1 %4(i8 noundef zeroext %i.g, i8 noundef zeroext %i.h) #26, !inline_history !524 ; 3 uses
  %.sink.in.i = select i1 %i.i, ptr %.01922.i, ptr %.01823.i
  %.120.idx.i = zext i1 %i.i to i64
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 5 uses
  %not..i = xor i1 %i.i, true
  %.1.idx.i = zext i1 %not..i to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 5 uses
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !95
  store i8 %.sink.i, ptr %.024.i, align 1, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 4 uses
  %i.k = icmp ne ptr %.1.i, %i.e
  %i.l = icmp ne ptr %.120.i, %i.f
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !525

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %.1.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c, !prof !190

bb.b:                                             ; preds = %._crit_edge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %.1.i, i64 %i.p, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.loopexit
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.d, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %.1.i, align 1, !tbaa !95
  store i8 %i.s, ptr %i.j, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.p ; 3 uses
  %i.u = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.v = ptrtoint ptr %.120.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !190

bb.e:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %.120.i, i64 %i.w, i1 false)
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit

bb.f:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.y = icmp eq i64 %i.w, 1
  br i1 %i.y, label %bb.g, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %.120.i, align 1, !tbaa !95
  store i8 %i.z, ptr %i.t, align 1, !tbaa !95
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit

_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.ab = sub i64 %i.b, %i.u                      ; 2 uses
  %.not = icmp slt i64 %i.ab, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !526

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit, %bb.a
  %.019.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ] ; 3 uses
  %.lcssa45 = phi i64 [ %i.d, %bb.a ], [ %i.ab, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa45) ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.sroa.speculated ; 5 uses
  %i.ad = icmp ne i64 %.sroa.speculated, 0
  %i.ae = icmp ne ptr %i.ac, %1
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i27, label %._crit_edge.i22

.lr.ph.i27:                                       ; preds = %._crit_edge, %.lr.ph.i27
  %.024.i28 = phi ptr [ %i.aj, %.lr.ph.i27 ], [ %.019.lcssa, %._crit_edge ] ; 2 uses
  %.01823.i29 = phi ptr [ %.1.i36, %.lr.ph.i27 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01922.i30 = phi ptr [ %.120.i33, %.lr.ph.i27 ], [ %i.ac, %._crit_edge ] ; 3 uses
  %i.ag = load i8, ptr %.01922.i30, align 1, !tbaa !95
  %i.ah = load i8, ptr %.01823.i29, align 1, !tbaa !95
  %i.ai = tail call noundef zeroext i1 %4(i8 noundef zeroext %i.ag, i8 noundef zeroext %i.ah) #26, !inline_history !524 ; 3 uses
  %.sink.in.i31 = select i1 %i.ai, ptr %.01922.i30, ptr %.01823.i29
  %.120.idx.i32 = zext i1 %i.ai to i64
  %.120.i33 = getelementptr inbounds nuw i8, ptr %.01922.i30, i64 %.120.idx.i32 ; 3 uses
  %not..i34 = xor i1 %i.ai, true
  %.1.idx.i35 = zext i1 %not..i34 to i64
  %.1.i36 = getelementptr inbounds nuw i8, ptr %.01823.i29, i64 %.1.idx.i35 ; 3 uses
  %.sink.i37 = load i8, ptr %.sink.in.i31, align 1, !tbaa !95
  store i8 %.sink.i37, ptr %.024.i28, align 1, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %.024.i28, i64 1 ; 2 uses
  %i.ak = icmp ne ptr %.1.i36, %i.ac
  %i.al = icmp ne ptr %.120.i33, %1
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i27, label %._crit_edge.i22, !llvm.loop !525

._crit_edge.i22:                                  ; preds = %.lr.ph.i27, %._crit_edge
  %.019.lcssa.i23 = phi ptr [ %i.ac, %._crit_edge ], [ %.120.i33, %.lr.ph.i27 ] ; 3 uses
  %.018.lcssa.i24 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i36, %.lr.ph.i27 ] ; 3 uses
  %.0.lcssa.i25 = phi ptr [ %.019.lcssa, %._crit_edge ], [ %i.aj, %.lr.ph.i27 ] ; 3 uses
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = ptrtoint ptr %.018.lcssa.i24 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !190

bb.h:                                             ; preds = %._crit_edge.i22
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i25, ptr align 1 %.018.lcssa.i24, i64 %i.ap, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i26

bb.i:                                             ; preds = %._crit_edge.i22
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %bb.j, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i26

bb.j:                                             ; preds = %bb.i
  %i.as = load i8, ptr %.018.lcssa.i24, align 1, !tbaa !95
  store i8 %i.as, ptr %.0.lcssa.i25, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i26

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i26: ; preds = %bb.j, %bb.i, %bb.h
  %i.at = getelementptr inbounds i8, ptr %.0.lcssa.i25, i64 %i.ap ; 2 uses
  %i.au = ptrtoint ptr %.019.lcssa.i23 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !190

bb.k:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %.019.lcssa.i23, i64 %i.av, i1 false)
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit38

bb.l:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i26
  %i.ax = icmp eq i64 %i.av, 1
  br i1 %i.ax, label %bb.m, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit38

bb.m:                                             ; preds = %bb.l
  %i.ay = load i8, ptr %.019.lcssa.i23, align 1, !tbaa !95
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !95
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit38

_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEET0_T_SA_SA_SA_S9_T1_.exit38: ; preds = %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond72 = or i1 %i.a, %i.b
  br i1 %or.cond72, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6878 = phi i64 [ %4, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 4 uses
  %.tr6777 = phi i64 [ %3, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 4 uses
  %.tr6575 = phi ptr [ %1, %.lr.ph ], [ %.061, %tailrecurse ] ; 8 uses
  %.tr73 = phi ptr [ %0, %.lr.ph ], [ %i.an, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr6878, %.tr6777
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.tr6575, align 1, !tbaa !95
  %i.g = load i8, ptr %.tr73, align 1, !tbaa !95
  %i.h = tail call noundef zeroext i1 %5(i8 noundef zeroext %i.f, i8 noundef zeroext %i.g) #26, !inline_history !527
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %.tr73, align 1, !tbaa !95
  %i.j = load i8, ptr %.tr6575, align 1, !tbaa !95
  store i8 %i.j, ptr %.tr73, align 1, !tbaa !95
  store i8 %i.i, ptr %.tr6575, align 1, !tbaa !95
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr6777, %.tr6878
  %i.l = ptrtoint ptr %.tr6575 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr6777, 2                     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.tr73, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi ptr [ %.1.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr6575, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01116.i = phi i64 [ %.112.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.o, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.q = lshr i64 %.01116.i, 1                    ; 3 uses
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.q ; 2 uses
  %i.r = load i8, ptr %.sink.i.i, align 1, !tbaa !95
  %i.s = load i8, ptr %i.n, align 1, !tbaa !95
  %i.t = tail call noundef zeroext i1 %5(i8 noundef zeroext %i.r, i8 noundef zeroext %i.s) #26, !inline_history !528 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 1
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.01116.i, %i.v
  %.112.i = select i1 %i.t, i64 %i.w, i64 %i.q    ; 2 uses
  %.1.i = select i1 %i.t, ptr %i.u, ptr %.017.i   ; 3 uses
  %i.x = icmp sgt i64 %.112.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !529

_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr6575, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.l
  br label %tailrecurse

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44: ; preds = %bb.e
  %i.z = sdiv i64 %.tr6878, 2                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.tr6575, i64 %i.z ; 2 uses
  %i.ab = ptrtoint ptr %.tr73 to i64              ; 3 uses
  %i.ac = sub i64 %i.l, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.017.i47 = phi ptr [ %.1.i51, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %.tr73, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %.01116.i48 = phi i64 [ %.112.i50, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %i.ac, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %i.ae = lshr i64 %.01116.i48, 1                 ; 3 uses
  %.sink.i.i49 = getelementptr inbounds nuw i8, ptr %.017.i47, i64 %i.ae ; 2 uses
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !95
  %i.ag = load i8, ptr %.sink.i.i49, align 1, !tbaa !95
  %i.ah = tail call noundef zeroext i1 %5(i8 noundef zeroext %i.af, i8 noundef zeroext %i.ag) #26, !inline_history !530 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i.i49, i64 1
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add nsw i64 %.01116.i48, %i.aj
  %.112.i50 = select i1 %i.ah, i64 %i.ae, i64 %i.ak ; 2 uses
  %.1.i51 = select i1 %i.ah, ptr %.017.i47, ptr %i.ai ; 3 uses
  %i.al = icmp sgt i64 %.112.i50, 0
  br i1 %i.al, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !531

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.pre81 = ptrtoint ptr %.1.i51 to i64
  br label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44
  %.pre-phi82 = phi i64 [ %.pre81, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ab, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %.0.lcssa.i45 = phi ptr [ %.1.i51, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr73, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %i.am = sub i64 %.pre-phi82, %i.ab
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit
  %.062 = phi ptr [ %i.n, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %.0.lcssa.i45, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
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
  br i1 %i.i, label %iter.check226, label %bb.d

iter.check226:                                    ; preds = %bb.c
  %min.iters.check203 = icmp ult i64 %i.g, 16
  br i1 %min.iters.check203, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check226
  %min.iters.check205 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check205, label %vec.epilog.ph230, label %vector.ph206

end_hunk_0
begin_hunk_1_@_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_:bb.a
  %i.ew = shl nuw nsw i64 %.019, 1
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %i.ew)
  %i.ex = shl nsw i64 %.019, 2                    ; 2 uses
  %i.ey = icmp slt i64 %i.ex, %i.c
  br i1 %i.ey, label %.lr.ph, label %._crit_edge, !llvm.loop !567

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #4 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !190

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr align 1 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 1
  br i1 %i.e, label %bb.e, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %0, align 1, !tbaa !95
  store i8 %i.f, ptr %5, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %i.h = icmp ne ptr %1, %0                       ; 2 uses
  %i.i = icmp ne ptr %1, %2
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, %.lr.ph.i
  %.024.i = phi ptr [ %i.n, %.lr.ph.i ], [ %0, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %5, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %1, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %i.k = load i8, ptr %.01922.i, align 1, !tbaa !95 ; 2 uses
  %i.l = load i8, ptr %.01823.i, align 1, !tbaa !95 ; 2 uses
  %i.m = icmp ult i8 %i.k, %i.l                   ; 2 uses
  %.sink.i = tail call i8 @llvm.umin.i8(i8 %i.k, i8 %i.l)
  %.120.idx.i = zext i1 %i.m to i64
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 2 uses
  %not..i = xor i1 %i.m, true
  %.1.idx.i = zext i1 %not..i to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 3 uses
  store i8 %.sink.i, ptr %.024.i, align 1, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.g                  ; 2 uses
  %i.p = icmp ne ptr %.120.i, %2
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !568

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit
  %.018.lcssa.i = phi ptr [ %5, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ], [ %.1.i, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.h, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit ], [ %i.o, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.f, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = ptrtoint ptr %.018.lcssa.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %bb.h, !prof !190

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i, ptr align 1 %.018.lcssa.i, i64 %i.t, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %bb.i, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load i8, ptr %.018.lcssa.i, align 1, !tbaa !95
  store i8 %i.w, ptr %.0.lcssa.i, align 1, !tbaa !95
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.j:                                             ; preds = %bb.a
  %i.x = ptrtoint ptr %2 to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 7 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17.thread, label %bb.k, !prof !190

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.l, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17

bb.l:                                             ; preds = %bb.k
  %i.ac = load i8, ptr %1, align 1, !tbaa !95
  store i8 %i.ac, ptr %5, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17: ; preds = %bb.k, %bb.l
  %i.ad = icmp eq ptr %0, %1
  br i1 %i.ad, label %bb.m, label %bb.o

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17.thread: ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %5, ptr align 1 %1, i64 %i.z, i1 false)
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %.thread, label %bb.o

.thread:                                          ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17.thread
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %5, i64 %i.z, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.m:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17
  %i.ah = icmp eq i64 %i.z, 1
  br i1 %i.ah, label %bb.n, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds i8, ptr %2, i64 -1
  %i.aj = load i8, ptr %5, align 1, !tbaa !95
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !95
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.o:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17.thread, %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit17
  %i.ak = icmp eq ptr %2, %1
  br i1 %i.ak, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.z
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -1
  br label %.outer

.outer:                                           ; preds = %bb.r, %bb.p
  %.026.i.ph.pn = phi ptr [ %1, %bb.p ], [ %.026.i.ph, %bb.r ]
  %.024.i18.ph = phi ptr [ %i.am, %bb.p ], [ %.024.i18, %bb.r ]
  %.0.i.ph = phi ptr [ %2, %bb.p ], [ %i.aq, %bb.r ]
  %.026.i.ph = getelementptr inbounds i8, ptr %.026.i.ph.pn, i64 -1 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.outer, %bb.x
  %.024.i18 = phi ptr [ %i.bd, %bb.x ], [ %.024.i18.ph, %.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.aq, %bb.x ], [ %.0.i.ph, %.outer ] ; 2 uses
  %i.an = load i8, ptr %.024.i18, align 1, !tbaa !95 ; 2 uses
  %i.ao = load i8, ptr %.026.i.ph, align 1, !tbaa !95 ; 2 uses
  %i.ap = icmp ult i8 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  br i1 %i.ap, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !95
  %i.ar = icmp eq ptr %0, %.026.i.ph
  br i1 %i.ar, label %bb.s, label %.outer, !llvm.loop !569

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.024.i18, i64 1
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %5 to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %bb.t, label %bb.u, !prof !190

bb.t:                                             ; preds = %bb.s
  %i.ax = sub nsw i64 0, %i.av
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %5, i64 %i.av, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.u:                                             ; preds = %bb.s
  %i.az = icmp eq i64 %i.av, 1
  br i1 %i.az, label %bb.v, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.bb = load i8, ptr %5, align 1, !tbaa !95
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !95
  br label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit

bb.w:                                             ; preds = %bb.q
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !95
  %i.bc = icmp eq ptr %5, %.024.i18
  br i1 %i.bc, label %_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds i8, ptr %.024.i18, i64 -1
  br label %bb.q, !llvm.loop !569

_ZSt21__move_merge_adaptiveIPN9Stockfish6SquareES2_S2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_S7_T1_T2_.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.o, %bb.n, %bb.m, %.thread, %bb.i, %bb.h, %bb.g, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not44 = icmp slt i64 %i.d, %i.a
  %.not40 = icmp eq i64 %3, 0
  %or.cond = or i1 %.not44, %.not40
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit
  %.046 = phi ptr [ %i.f, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit ], [ %0, %bb.a ] ; 3 uses
  %.01745 = phi ptr [ %i.aa, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit ], [ %2, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.046, i64 %3 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.046, i64 %i.a ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.024.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.01745, %.lr.ph.i.preheader ] ; 2 uses
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.046, %.lr.ph.i.preheader ] ; 2 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %i.e, %.lr.ph.i.preheader ] ; 2 uses
  %i.g = load i8, ptr %.01922.i, align 1, !tbaa !95 ; 2 uses
  %i.h = load i8, ptr %.01823.i, align 1, !tbaa !95 ; 2 uses
  %i.i = icmp ult i8 %i.g, %i.h                   ; 2 uses
  %.sink.i = tail call i8 @llvm.umin.i8(i8 %i.g, i8 %i.h)
  %.120.idx.i = zext i1 %i.i to i64
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 5 uses
  %not..i = xor i1 %i.i, true
  %.1.idx.i = zext i1 %not..i to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 5 uses
  store i8 %.sink.i, ptr %.024.i, align 1, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 4 uses
  %i.k = icmp ne ptr %.1.i, %i.e
  %i.l = icmp ne ptr %.120.i, %i.f
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !570

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %.1.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c, !prof !190

bb.b:                                             ; preds = %._crit_edge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %.1.i, i64 %i.p, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.loopexit
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.d, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %.1.i, align 1, !tbaa !95
  store i8 %i.s, ptr %i.j, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.j, i64 %i.p ; 3 uses
  %i.u = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.v = ptrtoint ptr %.120.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !190

bb.e:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %.120.i, i64 %i.w, i1 false)
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit

bb.f:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.y = icmp eq i64 %i.w, 1
  br i1 %i.y, label %bb.g, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %.120.i, align 1, !tbaa !95
  store i8 %i.z, ptr %i.t, align 1, !tbaa !95
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit

_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.ab = sub i64 %i.b, %i.u                      ; 2 uses
  %.not = icmp slt i64 %i.ab, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !571

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit ] ; 3 uses
  %.lcssa42 = phi i64 [ %i.d, %bb.a ], [ %i.ab, %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa42) ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.sroa.speculated ; 5 uses
  %i.ad = icmp ne i64 %.sroa.speculated, 0
  %i.ae = icmp ne ptr %i.ac, %1
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i25, label %._crit_edge.i20

.lr.ph.i25:                                       ; preds = %._crit_edge, %.lr.ph.i25
  %.024.i26 = phi ptr [ %i.aj, %.lr.ph.i25 ], [ %.017.lcssa, %._crit_edge ] ; 2 uses
  %.01823.i27 = phi ptr [ %.1.i34, %.lr.ph.i25 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.01922.i28 = phi ptr [ %.120.i31, %.lr.ph.i25 ], [ %i.ac, %._crit_edge ] ; 2 uses
  %i.ag = load i8, ptr %.01922.i28, align 1, !tbaa !95 ; 2 uses
  %i.ah = load i8, ptr %.01823.i27, align 1, !tbaa !95 ; 2 uses
  %i.ai = icmp ult i8 %i.ag, %i.ah                ; 2 uses
  %.sink.i29 = tail call i8 @llvm.umin.i8(i8 %i.ag, i8 %i.ah)
  %.120.idx.i30 = zext i1 %i.ai to i64
  %.120.i31 = getelementptr inbounds nuw i8, ptr %.01922.i28, i64 %.120.idx.i30 ; 3 uses
  %not..i32 = xor i1 %i.ai, true
  %.1.idx.i33 = zext i1 %not..i32 to i64
  %.1.i34 = getelementptr inbounds nuw i8, ptr %.01823.i27, i64 %.1.idx.i33 ; 3 uses
  store i8 %.sink.i29, ptr %.024.i26, align 1, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %.024.i26, i64 1 ; 2 uses
  %i.ak = icmp ne ptr %.1.i34, %i.ac
  %i.al = icmp ne ptr %.120.i31, %1
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i25, label %._crit_edge.i20, !llvm.loop !570

._crit_edge.i20:                                  ; preds = %.lr.ph.i25, %._crit_edge
  %.019.lcssa.i21 = phi ptr [ %i.ac, %._crit_edge ], [ %.120.i31, %.lr.ph.i25 ] ; 3 uses
  %.018.lcssa.i22 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i34, %.lr.ph.i25 ] ; 3 uses
  %.0.lcssa.i23 = phi ptr [ %.017.lcssa, %._crit_edge ], [ %i.aj, %.lr.ph.i25 ] ; 3 uses
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = ptrtoint ptr %.018.lcssa.i22 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !190

bb.h:                                             ; preds = %._crit_edge.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i23, ptr align 1 %.018.lcssa.i22, i64 %i.ap, i1 false)
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i24

bb.i:                                             ; preds = %._crit_edge.i20
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %bb.j, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i24

bb.j:                                             ; preds = %bb.i
  %i.as = load i8, ptr %.018.lcssa.i22, align 1, !tbaa !95
  store i8 %i.as, ptr %.0.lcssa.i23, align 1, !tbaa !95
  br label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i24

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i24: ; preds = %bb.j, %bb.i, %bb.h
  %i.at = getelementptr inbounds i8, ptr %.0.lcssa.i23, i64 %i.ap ; 2 uses
  %i.au = ptrtoint ptr %.019.lcssa.i21 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !190

bb.k:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %.019.lcssa.i21, i64 %i.av, i1 false)
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit35

bb.l:                                             ; preds = %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i24
  %i.ax = icmp eq i64 %i.av, 1
  br i1 %i.ax, label %bb.m, label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit35

bb.m:                                             ; preds = %bb.l
  %i.ay = load i8, ptr %.019.lcssa.i21, align 1, !tbaa !95
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !95
  br label %_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit35

_ZSt12__move_mergeIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit35: ; preds = %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond67 = or i1 %i.a, %i.b
  br i1 %or.cond67, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6472 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 4 uses
  %.tr6371 = phi i64 [ %3, %.lr.ph ], [ %i.am, %tailrecurse ] ; 4 uses
  %.tr6169 = phi ptr [ %1, %.lr.ph ], [ %.057, %tailrecurse ] ; 7 uses
  %.tr68 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr6472, %.tr6371
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.tr6169, align 1, !tbaa !95 ; 2 uses
  %i.g = load i8, ptr %.tr68, align 1, !tbaa !95  ; 2 uses
  %i.h = icmp ult i8 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i8 %i.f, ptr %.tr68, align 1, !tbaa !95
  store i8 %i.g, ptr %.tr6169, align 1, !tbaa !95
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr6371, %.tr6472
  %i.j = ptrtoint ptr %.tr6169 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr6371, 2                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.tr68, i64 %i.k ; 2 uses
  %i.m = sub i64 %i.c, %i.j                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit
  %i.o = load i8, ptr %i.l, align 1, !tbaa !95
  br label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi ptr [ %.tr6169, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %i.m, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.p = lshr i64 %.01116.i, 1                    ; 3 uses
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.p ; 2 uses
  %i.q = load i8, ptr %.sink.i.i, align 1, !tbaa !95
  %i.r = icmp ult i8 %i.q, %i.o                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 1
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.01116.i, %i.t
  %.112.i = select i1 %i.r, i64 %i.u, i64 %i.p    ; 2 uses
  %.1.i = select i1 %i.r, ptr %i.s, ptr %.017.i   ; 3 uses
  %i.v = icmp sgt i64 %.112.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit, !llvm.loop !572

_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit

_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %.tr6169, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.w = sub i64 %.pre-phi, %i.j
  br label %tailrecurse

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.x = sdiv i64 %.tr6472, 2                     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.tr6169, i64 %i.x ; 2 uses
  %i.z = ptrtoint ptr %.tr68 to i64               ; 3 uses
  %i.aa = sub i64 %i.j, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit39
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !95
  br label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i43 = phi ptr [ %.tr68, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i47, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42 ] ; 2 uses
  %.01116.i44 = phi i64 [ %i.aa, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i46, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42 ] ; 2 uses
  %i.ad = lshr i64 %.01116.i44, 1                 ; 3 uses
  %.sink.i.i45 = getelementptr inbounds nuw i8, ptr %.017.i43, i64 %i.ad ; 2 uses
  %i.ae = load i8, ptr %.sink.i.i45, align 1, !tbaa !95
  %i.af = icmp ult i8 %i.ac, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink.i.i45, i64 1
  %i.ah = xor i64 %i.ad, -1
  %i.ai = add nsw i64 %.01116.i44, %i.ah
  %.112.i46 = select i1 %i.af, i64 %i.ad, i64 %i.ai ; 2 uses
  %.1.i47 = select i1 %i.af, ptr %.017.i43, ptr %i.ag ; 3 uses
  %i.aj = icmp sgt i64 %.112.i46, 0
  br i1 %i.aj, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42, label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit, !llvm.loop !573

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i42
  %.pre75 = ptrtoint ptr %.1.i47 to i64
  br label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi76 = phi i64 [ %.pre75, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %i.z, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.0.lcssa.i40 = phi ptr [ %.1.i47, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %.tr68, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.ak = sub i64 %.pre-phi76, %i.z
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit
  %.058 = phi ptr [ %i.l, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %.0.lcssa.i40, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %.057 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %i.y, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %.033 = phi i64 [ %i.w, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %i.x, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %i.al = tail call noundef ptr @_ZNSt3_V28__rotateIPN9Stockfish6SquareEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.058, ptr noundef %.tr6169, ptr noundef %.057) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_(ptr noundef %.tr68, ptr noundef %.058, ptr noundef %i.al, i64 noundef %.0, i64 noundef %.033)
  %i.am = sub nsw i64 %.tr6371, %.0               ; 2 uses
  %i.an = sub nsw i64 %.tr6472, %.033             ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = icmp eq i64 %i.an, 0
  %or.cond = or i1 %i.ao, %i.ap
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_S7_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %.not79 = icmp sgt i64 %3, %6
  %.not4780 = icmp sgt i64 %4, %6
  %or.cond81 = and i1 %.not79, %.not4780
  br i1 %or.cond81, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.af, %tailrecurse ]
  %.tr73.lcssa = phi ptr [ %1, %bb.a ], [ %.069, %tailrecurse ]
  %.tr75.lcssa = phi i64 [ %3, %bb.a ], [ %i.ae, %tailrecurse ]
  %.tr76.lcssa = phi i64 [ %4, %bb.a ], [ %i.ag, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr73.lcssa, ptr noundef %2, i64 noundef %.tr75.lcssa, i64 noundef %.tr76.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7685 = phi i64 [ %4, %.lr.ph ], [ %i.ag, %tailrecurse ] ; 3 uses
  %.tr7584 = phi i64 [ %3, %.lr.ph ], [ %i.ae, %tailrecurse ] ; 3 uses
  %.tr7383 = phi ptr [ %1, %.lr.ph ], [ %.069, %tailrecurse ] ; 5 uses
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.or.v8i64
!324 = distinct !{!324, !31, !325}
!325 = !{!"llvm.loop.vectorize.width", i32 1}
!326 = distinct !{!326, !292}
!327 = distinct !{!327, !31}
!328 = distinct !{!328, !31, !98, !99}
!329 = distinct !{!329, !31, !98, !99}
!330 = distinct !{!330, !31, !99, !98}
!331 = distinct !{!331, !31, !325}
!332 = distinct !{!332, !292}
!333 = distinct !{!333, !292}
!334 = distinct !{!334, !31, !325}
!335 = distinct !{!335, !31, !325}
!336 = distinct !{!336, !31, !98, !99}
!337 = distinct !{!337, !31, !98, !99}
!338 = distinct !{!338, !31, !99, !98}
!339 = distinct !{!339, !31}
!340 = distinct !{!340, !31, !98, !99}
!341 = distinct !{!341, !31, !98, !99}
!342 = distinct !{!342, !31, !99, !98}
!343 = distinct !{!343, !31}
!344 = !{!255, !18, i64 72}
!345 = !{!255, !14, i64 52}
!346 = !{!347, !347, i64 0}
!347 = !{!"p1 _ZTSN9Stockfish6Search8RootMoveE", !24, i64 0}
!348 = !{!349, !238, i64 0}
!349 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE17_Vector_impl_dataE", !238, i64 0, !238, i64 8, !238, i64 16}
!350 = !{!351, !24, i64 16}
!351 = !{!"_ZTSSt14_Function_base", !15, i64 0, !24, i64 16}
!352 = !{!353, !24, i64 24}
!353 = !{!"_ZTSSt8functionIFbvEE", !351, i64 0, !24, i64 24}
!354 = distinct !{null}
!355 = !{!356, !14, i64 36}
!356 = !{!"_ZTSN9Stockfish6Search8RootMoveE", !18, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !145, i64 28, !145, i64 29, !14, i64 32, !14, i64 36, !14, i64 40, !357, i64 48}
!357 = !{!"_ZTSSt6vectorIN9Stockfish4MoveESaIS1_EE", !358, i64 0}
!358 = !{!"_ZTSSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE", !359, i64 0}
!359 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish4MoveESaIS1_EE12_Vector_implE", !349, i64 0}
!360 = !{!356, !14, i64 40}
!361 = !{!255, !14, i64 48}
!362 = distinct !{!362, !31}
!363 = !{!349, !238, i64 8}
!364 = !{!349, !238, i64 16}
!365 = !{!238, !238, i64 0}
!366 = distinct !{!366, !292}
!367 = distinct !{!367, !31}
!368 = distinct !{!368, !31}
!369 = !{!370, !347, i64 0}
!370 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish6Search8RootMoveESaIS2_EE17_Vector_impl_dataE", !347, i64 0, !347, i64 8, !347, i64 16}
!371 = distinct !{!371, !98, !99}
!372 = !{!"branch_weights", i32 16, i32 48}
!373 = distinct !{!373, !98, !99}
!374 = distinct !{!374, !99, !98}
!375 = !{!376, !377, i64 0}
!376 = !{!"_ZTSNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_Vector_impl_dataE", !377, i64 0, !377, i64 8, !377, i64 16}
!377 = !{!"p2 _ZTSN9Stockfish3shm6detail16SharedMemoryBaseE", !37, i64 0}
!378 = !{!376, !377, i64 16}
!379 = !{!21, !23, i64 24}
!380 = !{!21, !23, i64 16}
!381 = distinct !{!381, !31}
!382 = !{!200, !18, i64 24}
!383 = distinct !{!383, !31}
!384 = !{!203, !24, i64 8}
!385 = !{!203, !18, i64 24}
!386 = distinct !{!386, !31}
!387 = !{!135, !144, i64 216}
!388 = !{!135, !15, i64 224}
!389 = !{!135, !145, i64 225}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!392 = distinct !{!392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!393 = !{!394, !391}
!394 = distinct !{!394, !395, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!395 = distinct !{!395, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!398 = distinct !{!398, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!399 = distinct !{!399, !31}
!400 = distinct !{null}
!401 = distinct !{ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD0Ev, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev, null}
!402 = !{ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD0Ev, ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev}
!403 = !{ptr @_ZN9Stockfish12_GLOBAL__N_16TBFileD0Ev}
!404 = distinct !{!404, !31}
!405 = distinct !{!405, !31}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!408 = distinct !{!408, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!409 = !{!410, !407}
!410 = distinct !{!410, !411, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!411 = distinct !{!411, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!414 = distinct !{!414, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!417 = distinct !{!417, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!418 = !{!419, !416}
!419 = distinct !{!419, !420, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!420 = distinct !{!420, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!423 = distinct !{!423, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!426 = distinct !{!426, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!427 = distinct !{!427, !31}
!428 = !{!429}
!429 = distinct !{!429, !430}
!430 = distinct !{!430, !"LVerDomain"}
!431 = !{!432}
!432 = distinct !{!432, !430}
!433 = distinct !{!433, !31, !98, !99}
!434 = !{!"branch_weights", i32 8, i32 56}
!435 = distinct !{!435, !31, !98, !99}
!436 = distinct !{!436, !292}
!437 = distinct !{!437, !31, !98, !99}
!438 = distinct !{!438, !31, !98, !99}
!439 = distinct !{!439, !292}
!440 = distinct !{!440, !31, !98}
!441 = distinct !{!441, !31, !98}
!442 = distinct !{!442, !31}
!443 = distinct !{!443, !31}
!444 = distinct !{!444, !31}
!445 = distinct !{!445, !31}
!446 = distinct !{!446, !292}
!447 = distinct !{!447, !31}
!448 = distinct !{!448, !31}
!449 = distinct !{!449, !31}
!450 = distinct !{!450, !292}
!451 = distinct !{!451, !292}
!452 = distinct !{!452, !31}
!453 = distinct !{!453, !292}
!454 = distinct !{!454, !292}
!455 = distinct !{!455, !31}
!456 = distinct !{!456, !31}
!457 = distinct !{!457, !292}
!458 = distinct !{!458, !31}
!459 = distinct !{!459, !31}
!460 = distinct !{!460, !292}
!461 = distinct !{!461, !31}
!462 = distinct !{!462, !31, !325}
!463 = distinct !{!463, !292}
!464 = distinct !{!464, !31, !98, !99}
!465 = distinct !{!465, !31, !98, !99}
!466 = distinct !{!466, !31, !99, !98}
!467 = distinct !{!467, !31, !325}
!468 = distinct !{!468, !292}
!469 = distinct !{!469, !292}
!470 = distinct !{!470, !31, !325}
!471 = distinct !{!471, !31, !325}
!472 = distinct !{!472, !31, !98, !99}
!473 = distinct !{!473, !31, !98, !99}
!474 = distinct !{!474, !31, !99, !98}
!475 = distinct !{!475, !31}
!476 = distinct !{!476, !31, !98, !99}
!477 = distinct !{!477, !31, !98, !99}
!478 = distinct !{!478, !31, !99, !98}
!479 = distinct !{!479, !31}
!480 = !{i64 0, !481}
!481 = distinct !{}
!482 = !{!483, !18, i64 48}
!483 = !{!"_ZTS4stat", !18, i64 0, !18, i64 8, !18, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !484, i64 72, !484, i64 88, !484, i64 104, !15, i64 120}
!484 = !{!"_ZTS8timespec", !18, i64 0, !18, i64 8}
!485 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!486 = !{!300, !18, i64 16}
!487 = !{!300, !15, i64 2}
!488 = !{!145, !145, i64 0}
!489 = !{!300, !15, i64 1}
!490 = !{!300, !155, i64 24}
!491 = !{!282, !283, i64 8}
!492 = distinct !{!492, !292}
!493 = distinct !{!493, !31, !98, !99}
!494 = !{!"branch_weights", i32 4, i32 28}
!495 = distinct !{!495, !31, !98, !99}
!496 = distinct !{!496, !31}
!497 = !{!300, !301, i64 32}
!498 = !{!286, !93, i64 8}
!499 = !{!500, !283, i64 32}
!500 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !501, i64 0, !501, i64 16, !283, i64 32}
!501 = !{!"_ZTSSt13_Bit_iterator", !502, i64 0}
!502 = !{!"_ZTSSt18_Bit_iterator_base", !283, i64 0, !14, i64 8}
!503 = distinct !{!503, !31, !99, !98}
!504 = !{!502, !283, i64 0}
!505 = distinct !{!505, !31}
!506 = distinct !{!506, !31}
!507 = distinct !{!507, !31}
!508 = distinct !{!508, !31}
!509 = distinct !{!509, !31}
!510 = distinct !{!510, !31}
!511 = distinct !{null, null}
!512 = distinct !{null, null, null}
!513 = distinct !{!513, !31}
!514 = distinct !{!514, !31}
!515 = distinct !{null, null}
!516 = distinct !{!516, !31}
!517 = distinct !{null, null}
!518 = distinct !{!518, !31}
!519 = distinct !{!519, !31, !98, !99}
!520 = !{!"branch_weights", i32 8, i32 248}
!521 = distinct !{!521, !31, !98, !99}
!522 = distinct !{!522, !31, !99, !98}
!523 = distinct !{!523, !31}
!524 = distinct !{null, null}
!525 = distinct !{!525, !31}
!526 = distinct !{!526, !31}
!527 = distinct !{null}
!528 = distinct !{null, null}
!529 = distinct !{!529, !31}
!530 = distinct !{null, null}
!531 = distinct !{!531, !31}
!532 = !{!533}
!533 = distinct !{!533, !534}
!534 = distinct !{!534, !"LVerDomain"}
!535 = !{!536}
!536 = distinct !{!536, !534}
!537 = distinct !{!537, !31, !98, !99}
!538 = distinct !{!538, !31, !98, !99}
!539 = distinct !{!539, !292}
!540 = distinct !{!540, !31, !98}
!541 = !{!542}
!542 = distinct !{!542, !543}
!543 = distinct !{!543, !"LVerDomain"}
!544 = !{!545}
!545 = distinct !{!545, !543}
!546 = distinct !{!546, !31, !98, !99}
!547 = !{!"branch_weights", i32 8, i32 120}
!548 = distinct !{!548, !31, !98, !99}
!549 = distinct !{!549, !292}
!550 = distinct !{!550, !31, !98}
!551 = !{!552}
!552 = distinct !{!552, !553}
!553 = distinct !{!553, !"LVerDomain"}
!554 = !{!555}
!555 = distinct !{!555, !553}
!556 = distinct !{!556, !31, !98, !99}
!557 = !{!"branch_weights", i32 16, i32 112}
!558 = distinct !{!558, !31, !98, !99}
!559 = distinct !{!559, !292}
!560 = distinct !{!560, !31}
!561 = distinct !{!561, !31, !98}
!562 = distinct !{!562, !31}
!563 = distinct !{!563, !292}
!564 = distinct !{!564, !31}
!565 = distinct !{!565, !31}
!566 = distinct !{!566, !292}
!567 = distinct !{!567, !31}
!568 = distinct !{!568, !31}
!569 = distinct !{!569, !31}
!570 = distinct !{!570, !31}
!571 = distinct !{!571, !31}
!572 = distinct !{!572, !31}
!573 = distinct !{!573, !31}
!574 = distinct !{!574, !31}
!575 = distinct !{!575, !31}
!576 = distinct !{!576, !31}
!577 = distinct !{!577, !31}
!578 = distinct !{!578, !31}
!579 = distinct !{!579, !31}
!580 = distinct !{!580, !31}
!581 = distinct !{!581, !31}
!582 = distinct !{!582, !31}
!583 = distinct !{!583, !31}
!584 = distinct !{!584, !31}
!585 = distinct !{!585, !31}
!586 = distinct !{!586, !31}
!587 = distinct !{!587, !31}
!588 = distinct !{!588, !31}
!589 = distinct !{!589, !292}
!590 = distinct !{!590, !31}
!591 = distinct !{!591, !292}
!592 = distinct !{!592, !31}
!593 = distinct !{!593, !31}
!594 = !{!71, !57, i64 16}
!595 = !{!50, !35, i64 16}
end_hunk_2
