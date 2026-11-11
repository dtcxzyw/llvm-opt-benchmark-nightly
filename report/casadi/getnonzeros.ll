Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/getnonzeros?download=true
inline.NumInlined: 1245
inline.NumDeleted: 348
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK6casadi17GetNonzerosSlice27eval_sxEPPKNS_6SXElemEPPS1_PxS5_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph23.i
  %i.m = phi i64 [ %.pre.i, %.lr.ph23.i ], [ %i.p, %._crit_edge.i ] ; 2 uses
  %.01321.i = phi ptr [ %i.h, %.lr.ph23.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.01420.i = phi ptr [ %i.g, %.lr.ph23.i ], [ %i.r, %._crit_edge.i ] ; 3 uses
  %i.n = load i64, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not1516.i = icmp eq i64 %i.n, %i.m
  br i1 %.not1516.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.o = getelementptr inbounds [8 x i8], ptr %.01420.i, i64 %i.n
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %i.p = phi i64 [ %i.m, %bb.b ], [ %i.w, %.lr.ph.i ]
  %.1.lcssa.i = phi ptr [ %.01321.i, %bb.b ], [ %i.s, %.lr.ph.i ]
  %i.q = load i64, ptr %i.l, align 8, !tbaa !60
  %i.r = getelementptr inbounds [8 x i8], ptr %.01420.i, i64 %i.q ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i, label %_ZNK6casadi17GetNonzerosSlice28eval_genINS_6SXElemEEEiPKPKT_PKPS3_PxS8_.exit, label %bb.b, !llvm.loop !140

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.018.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %.117.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.01321.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.117.i, i64 8 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.117.i, ptr noundef nonnull align 8 dereferenceable(8) %.018.i) ; 0 uses
  %i.u = load i64, ptr %i.k, align 8, !tbaa !61
  %i.v = getelementptr inbounds [8 x i8], ptr %.018.i, i64 %i.u ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.01420.i, i64 %i.w
  %.not15.i = icmp eq ptr %i.v, %i.x
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !141

_ZNK6casadi17GetNonzerosSlice28eval_genINS_6SXElemEEEiPKPKT_PKPS3_PxS8_.exit: ; preds = %._crit_edge.i, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi17GetNonzerosVector10sp_forwardEPPKyPPyPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %.not13 = icmp eq ptr %i.c, %i.e
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.015 = phi ptr [ %i.l, %bb.c ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.sroa.010.014 = phi ptr [ %i.m, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.g = load i64, ptr %.sroa.010.014, align 8, !tbaa !28 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %.015, i64 8
  store i64 %i.k, ptr %.015, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi17GetNonzerosVector10sp_reverseEPPyS2_PxS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %.not14 = icmp eq ptr %i.c, %i.e
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.016 = phi ptr [ %i.m, %bb.c ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.015 = phi ptr [ %i.n, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.g = load i64, ptr %.sroa.011.015, align 8, !tbaa !28 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %.016, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = or i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 0, ptr %.016, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi16GetNonzerosSlice10sp_forwardEPPKyPPyPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %.not8 = icmp eq i64 %i.c, %i.e
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i64 [ %i.c, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.079 = phi ptr [ %i.f, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.010
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %.079, i64 8
  store i64 %i.i, ptr %.079, align 8, !tbaa !28
  %i.k = load i64, ptr %i.g, align 8, !tbaa !54
  %i.l = add nsw i64 %i.k, %.010                  ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !53
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !142
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi16GetNonzerosSlice10sp_reverseEPPyS2_PxS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %.not9 = icmp eq i64 %i.c, %i.e
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i64 [ %i.c, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %.0810 = phi ptr [ %i.f, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.h = load i64, ptr %.0810, align 8, !tbaa !28
  %i.i = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.011 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %i.k = or i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %.0810, i64 8
  store i64 0, ptr %.0810, align 8, !tbaa !28
  %i.m = load i64, ptr %i.g, align 8, !tbaa !54
  %i.n = add nsw i64 %i.m, %.011                  ; 2 uses
  %i.o = load i64, ptr %i.d, align 8, !tbaa !53
  %.not = icmp eq i64 %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi17GetNonzerosSlice210sp_forwardEPPKyPPyPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not17 = icmp eq i64 %i.c, %i.e
  br i1 %.not17, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.a = load i64, ptr %i.h, align 8, !tbaa !59
  br label %bb.b

._crit_edge22:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph21, %._crit_edge
  %i.k = phi i64 [ %i.e, %.lr.ph21 ], [ %i.n, %._crit_edge ]
  %i.l = phi i64 [ %.pre.a, %.lr.ph21 ], [ %i.o, %._crit_edge ] ; 2 uses
  %.01119.a = phi i64 [ %i.c, %.lr.ph21 ], [ %i.q, %._crit_edge ] ; 3 uses
  %.01218 = phi ptr [ %i.f, %.lr.ph21 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %5 = load i64, ptr %i.g, align 8, !tbaa !58     ; 2 uses
  %.not1314 = icmp eq i64 %5, %i.l
  br i1 %.not1314, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = add nsw i64 %5, %.01119.a
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre23.a = load i64, ptr %i.d, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.n = phi i64 [ %i.k, %bb.b ], [ %.pre23.a, %._crit_edge.loopexit ] ; 2 uses
  %i.o = phi i64 [ %i.l, %bb.b ], [ %i.w, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01218, %bb.b ], [ %i.t, %._crit_edge.loopexit ]
  %i.p = load i64, ptr %i.j, align 8, !tbaa !60
  %i.q = add nsw i64 %i.p, %.01119.a              ; 2 uses
  %.not = icmp eq i64 %i.q, %i.n
  br i1 %.not, label %._crit_edge22, label %bb.b, !llvm.loop !144

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi i64 [ %i.v, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.115 = phi ptr [ %i.t, %.lr.ph ], [ %.01218, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.016
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %.115, i64 8 ; 2 uses
  store i64 %i.s, ptr %.115, align 8, !tbaa !28
  %i.u = load i64, ptr %i.i, align 8, !tbaa !61
  %i.v = add nsw i64 %i.u, %.016                  ; 2 uses
  %i.w = load i64, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.x = add nsw i64 %i.w, %.01119.a
  %.not13 = icmp eq i64 %i.v, %i.x
  br i1 %.not13, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6casadi17GetNonzerosSlice210sp_reverseEPPyS2_PxS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not18 = icmp eq i64 %i.c, %i.e
  br i1 %.not18, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.a = load i64, ptr %i.h, align 8, !tbaa !59
  br label %bb.b

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %i.k = phi i64 [ %i.e, %.lr.ph22 ], [ %i.n, %._crit_edge ]
  %i.l = phi i64 [ %.pre.a, %.lr.ph22 ], [ %i.o, %._crit_edge ] ; 2 uses
  %.01220.a = phi i64 [ %i.c, %.lr.ph22 ], [ %i.q, %._crit_edge ] ; 3 uses
  %.01319 = phi ptr [ %i.f, %.lr.ph22 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %5 = load i64, ptr %i.g, align 8, !tbaa !58     ; 2 uses
  %.not1415 = icmp eq i64 %5, %i.l
  br i1 %.not1415, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = add nsw i64 %5, %.01220.a
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre24.a = load i64, ptr %i.d, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.n = phi i64 [ %i.k, %bb.b ], [ %.pre24.a, %._crit_edge.loopexit ] ; 2 uses
  %i.o = phi i64 [ %i.l, %bb.b ], [ %i.y, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01319, %bb.b ], [ %i.v, %._crit_edge.loopexit ]
  %i.p = load i64, ptr %i.j, align 8, !tbaa !60
  %i.q = add nsw i64 %i.p, %.01220.a              ; 2 uses
  %.not = icmp eq i64 %i.q, %i.n
  br i1 %.not, label %._crit_edge23, label %bb.b, !llvm.loop !146

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.017 = phi i64 [ %i.x, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.116 = phi ptr [ %i.v, %.lr.ph ], [ %.01319, %.lr.ph.preheader ] ; 3 uses
  %i.r = load i64, ptr %.116, align 8, !tbaa !28
  %i.s = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.017 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %.116, i64 8 ; 2 uses
  store i64 0, ptr %.116, align 8, !tbaa !28
  %i.w = load i64, ptr %i.i, align 8, !tbaa !61
  %i.x = add nsw i64 %i.w, %.017                  ; 2 uses
  %i.y = load i64, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.z = add nsw i64 %i.y, %.01220.a
  %.not14 = icmp eq i64 %i.x, %i.z
  br i1 %.not14, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !147
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi17GetNonzerosVector4dispERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  %.not.i.i.not = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.42, i64 noundef 0, i64 noundef 0) #26
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i1 noundef zeroext false)
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %3, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc4
  %i.n = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !72
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.c:                                             ; preds = %.noexc4
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !72
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !73, !alias.scope !154
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !71, !alias.scope !154
  store i8 0, ptr %i.y, align 8, !tbaa !72, !alias.scope !154
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77, !noalias !154 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !154 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %.08.i.i.i = select i1 %i.ae, ptr %i.ab, ptr %i.ad ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i5 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i5, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78, !noalias !154 ; 2 uses
  %i.ah = ptrtoint ptr %.08.i.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ag, i64 noundef %i.aj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !70, !alias.scope !154 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !72, !alias.scope !154
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %.body

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !13
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %4, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !13
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !72
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ax, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #23
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !13
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.bm, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.al, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16GetNonzerosSlice4dispERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  %.not.i.i.not = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.42, i64 noundef 0, i64 noundef 0) #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable
end_hunk_0
