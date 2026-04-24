inline.NumInlined: 2539
inline.NumDeleted: 512
begin_hunk_0_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 30 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 16 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66
  %.not264 = icmp eq i8 %i.d, 48
  br i1 %.not264, label %bb.b, label %.split.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
.split.preheader.sink.split:                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ], [ %i.e, %bb.g ] ; 2 uses
  %.0211.ph.ph = phi i32 [ 2, %bb.d ], [ 8, %bb.c ], [ 8, %bb.g ]
  %.0.ph.ph = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ true, %bb.g ]
  %.0207.ph.ph = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ]
  %.087.ph.ph = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ], [ %i.c, %bb.g ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !19
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a

.split.preheader:                                 ; preds = %.split.preheader.sink.split, %bb.a
  %.promoted.ph = phi ptr [ %i.c, %bb.a ], [ %.sink, %.split.preheader.sink.split ] ; 3 uses
  %.0211.ph = phi i32 [ 10, %bb.a ], [ %.0211.ph.ph, %.split.preheader.sink.split ] ; 4 uses
  %.0.ph = phi i1 [ true, %bb.a ], [ %.0.ph.ph, %.split.preheader.sink.split ]
  %.0207.ph = phi i8 [ 0, %bb.a ], [ %.0207.ph.ph, %.split.preheader.sink.split ] ; 3 uses
  %.087.ph = phi ptr [ %i.c, %bb.a ], [ %.087.ph.ph, %.split.preheader.sink.split ] ; 4 uses
  %i.n = load i8, ptr %.promoted.ph, align 1, !tbaa !66 ; 3 uses
  %i.o = sext i8 %i.n to i32
  %isdigittmp365 = add nsw i32 %i.o, -48
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us
  %.sink346 = phi ptr [ %i.p, %.split.us.preheader ], [ %i.y, %.critedge.us ] ; 3 uses
  %.090.us = phi i8 [ 0, %.split.us.preheader ], [ %i.x, %.critedge.us ] ; 2 uses
  store ptr %.sink346, ptr %i.b, align 8, !tbaa !19
  %i.q = load i8, ptr %.sink346, align 1, !tbaa !66 ; 3 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %isdigittmp.us = add nsw i32 %i.r, -48
  %isdigit.us = icmp ult i32 %isdigittmp.us, 10
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %or.cond128.us = icmp ult i32 %i.t, 6
  %i.u = icmp eq i8 %i.q, 95
  %or.cond238.us = or i1 %i.u, %or.cond128.us
  br i1 %or.cond238.us, label %.critedge.us, label %.loopexit239

.critedge.us:                                     ; preds = %bb.i, %.split.us
  %i.v = icmp eq i8 %i.q, 95
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %or.cond265 = or i1 %isdigit, %.old
  br i1 %or.cond265, label %.critedge, label %.split244.us, !llvm.loop !224

.split244.us:                                     ; preds = %.critedge, %.split.preheader
  %.lcssa367 = phi ptr [ %.promoted.ph, %.split.preheader ], [ %i.ac, %.critedge ] ; 2 uses
  %.090.lcssa = phi i8 [ 0, %.split.preheader ], [ %i.ab, %.critedge ] ; 4 uses
  %.lcssa366 = phi i8 [ %i.n, %.split.preheader ], [ %i.ad, %.critedge ] ; 2 uses
  br i1 %.0.ph, label %bb.j, label %.loopexit239

bb.j:                                             ; preds = %.split244.us
  %i.af = icmp eq i8 %.lcssa366, 46
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa367, i64 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ah = and i8 %.lcssa366, -33
  %i.ai = icmp eq i8 %i.ah, 69
  br i1 %i.ai, label %bb.m, label %.loopexit239

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa367, i64 1
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %bb.f
  %.1212 = phi i32 [ 10, %bb.f ], [ %.0211.ph, %bb.k ] ; 2 uses
  %.1208 = phi i8 [ 0, %bb.f ], [ %.0207.ph, %bb.k ] ; 2 uses
  %storemerge = phi ptr [ %i.k, %bb.f ], [ %i.ag, %bb.k ] ; 4 uses
  %.191 = phi i8 [ 0, %bb.f ], [ %.090.lcssa, %bb.k ] ; 2 uses
  %.188 = phi ptr [ %i.c, %bb.f ], [ %.087.ph, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !19
  %i.ak = load i8, ptr %storemerge, align 1, !tbaa !66 ; 3 uses
  %i.al = sext i8 %i.ak to i32
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.h
  %.sink347 = phi ptr [ %i.aw, %bb.o ], [ %i.aj, %bb.m ], [ %i.m, %bb.h ] ; 4 uses
  %.2213 = phi i32 [ %.1212, %bb.o ], [ %.0211.ph, %bb.m ], [ 10, %bb.h ]
  %.2209 = phi i8 [ %.1208, %bb.o ], [ %.0207.ph, %bb.m ], [ 0, %bb.h ]
  %.393 = phi i8 [ %.292.lcssa, %bb.o ], [ %.090.lcssa, %bb.m ], [ 0, %bb.h ]
  %.289 = phi ptr [ %.188, %bb.o ], [ %.087.ph, %bb.m ], [ %i.c, %bb.h ]
  store ptr %.sink347, ptr %i.b, align 8, !tbaa !19
  %i.ax = load i8, ptr %.sink347, align 1, !tbaa !66 ; 2 uses
  switch i8 %i.ax, label %bb.r [
end_hunk_6
begin_hunk_7_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %or.cond130 = or i1 %i.bj, %isdigit116
  br i1 %or.cond130, label %.critedge6, label %.loopexit239, !llvm.loop !226

.loopexit239:                                     ; preds = %bb.i, %.critedge6, %._crit_edge, %.split244.us, %bb.l
  %.3213 = phi i32 [ %.0211.ph, %.split244.us ], [ %.2213, %.critedge6 ], [ %.1212, %._crit_edge ], [ %.0211.ph, %bb.l ], [ 16, %bb.i ] ; 12 uses
  %.3209 = phi i8 [ 0, %.split244.us ], [ %.2209, %.critedge6 ], [ %.1208, %._crit_edge ], [ %.0207.ph, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %.5 = phi i8 [ %.090.lcssa, %.split244.us ], [ %i.bf, %.critedge6 ], [ %.292.lcssa, %._crit_edge ], [ %.090.lcssa, %bb.l ], [ %.090.us, %bb.i ] ; 3 uses
  %.3 = phi ptr [ %.087.ph, %.split244.us ], [ %.289, %.critedge6 ], [ %.188, %._crit_edge ], [ %.087.ph, %bb.l ], [ %i.p, %bb.i ] ; 22 uses
  %.not = phi i1 [ false, %.split244.us ], [ true, %.critedge6 ], [ true, %._crit_edge ], [ false, %bb.l ], [ false, %bb.i ] ; 3 uses
  %i.bk = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bk, label %bb.s, label %bb.ag

.loopexit239.thread:                              ; preds = %bb.r
  %i.bl = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bl, label %.thread338, label %..thread224_crit_edge

.thread338:                                       ; preds = %.loopexit239.thread
  tail call void @_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %16 = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %.thread224

bb.s:                                             ; preds = %.loopexit239
  tail call void @_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !19  ; 12 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.c to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  br i1 %.not, label %.thread224, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = trunc nuw i8 %.3209 to i1
  br i1 %i.bq, label %bb.u, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread217

bb.u:                                             ; preds = %bb.t
end_hunk_7
begin_hunk_8_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
_ZNK4llvh9StringRef6equalsES0_.exit136.thread219: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136
  %i.cc = getelementptr inbounds i8, ptr %i.bm, i64 -1 ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.3 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %.not117 = icmp eq ptr %i.cc, %.3
  br i1 %.not117, label %.thread224, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219
  %i.cg = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cf
  %i.ch = add nuw nsw i32 %.3213, 48              ; 2 uses
  %i.ci = add nuw nsw i32 %.3213, 87              ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -1
  %i.ck = load i8, ptr %.3, align 1, !tbaa !66    ; 3 uses
  %i.cl = add i8 %i.ck, -48
  %or.cond.peel.i = icmp ult i8 %i.cl, 10
  %i.cm = zext nneg i8 %i.ck to i32
end_hunk_8
begin_hunk_9_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br i1 %.not.peel.i, label %.critedge132, label %.peel.next.i

.peel.next.i:                                     ; preds = %.critedge.peel.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %.peel.next.i
end_hunk_9
begin_hunk_10_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  %.pre280 = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %.thread224

.thread224:                                       ; preds = %bb.z, %bb.y, %.thread338, %..thread224_crit_edge, %_ZNK4llvh9StringRef6equalsES0_.exit136, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.s, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, %bb.u, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217, %bb.v
  %17 = phi ptr [ %.pre280, %..thread224_crit_edge ], [ %i.bm, %bb.v ], [ %i.bm, %_ZNK4llvh9StringRef6equalsES0_.exit136 ], [ %i.bm, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.bm, %bb.s ], [ %i.bm, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219 ], [ %i.bm, %bb.u ], [ %i.bm, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217 ], [ %16, %.thread338 ], [ %i.bm, %bb.y ], [ %i.bm, %bb.z ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ee, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
end_hunk_10
begin_hunk_11_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  store ptr @.str.67, ptr %4, align 8, !tbaa !66
  store i8 3, ptr %i.ef, align 8, !tbaa !71
  %i.eh = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.eh, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %17, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 1) #19
  %i.ei = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 316
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !72, !range !59, !noundef !51
end_hunk_11
begin_hunk_12_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br label %bb.ca

bb.ag:                                            ; preds = %.loopexit239
  %i.eo = icmp ne i32 %.3213, 10
  %or.cond11.not = or i1 %i.eo, %.not
  br i1 %or.cond11.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_12
begin_hunk_13_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br label %bb.ca

bb.aj:                                            ; preds = %bb.ag
  %i.gl = icmp eq i32 %.3213, 10
  %or.cond13 = or i1 %i.gl, %.not
  br i1 %or.cond13, label %.thread226, label %bb.bo

.thread226:                                       ; preds = %bb.ah, %bb.aj
  %i.gm = trunc nuw i8 %.3209 to i1
  br i1 %i.gm, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %.thread226
end_hunk_13
begin_hunk_14_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br i1 %.not.i146, label %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit", label %.lr.ph.i145, !llvm.loop !235

"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit": ; preds = %.lr.ph.i145, %.lr.ph.i145, %bb.aq, %bb.an
  %.not119 = icmp eq i32 %.3213, 10
  br i1 %.not119, label %bb.at, label %bb.ar, !prof !130

bb.ar:                                            ; preds = %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit"
end_hunk_14
begin_hunk_15_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br label %bb.ca

bb.at:                                            ; preds = %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit149.thread, %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit.thread", %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit144.thread, %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit", %.thread226
  %.4215 = phi i32 [ %.3213, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit144.thread ], [ 10, %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit" ], [ %.3213, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit149.thread ], [ %.3213, %.thread226 ], [ 10, %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit.thread" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.hu, ptr %7, align 8, !tbaa !131
end_hunk_15
begin_hunk_16_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br label %bb.ca

bb.bo:                                            ; preds = %bb.aj
  %i.ku = trunc nuw i8 %.3209 to i1
  br i1 %i.ku, label %bb.bp, label %.thread236.a

bb.bp:                                            ; preds = %bb.bo
end_hunk_16
begin_hunk_17_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br i1 %.not.i167, label %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit170", label %.lr.ph.i165, !llvm.loop !235

"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit170": ; preds = %.lr.ph.i165, %.lr.ph.i165, %bb.bw, %bb.bv
  %.7 = phi i32 [ 10, %bb.bv ], [ %.3213, %bb.bw ], [ %.3213, %.lr.ph.i165 ], [ %.3213, %.lr.ph.i165 ] ; 2 uses
  %i.mg = trunc nuw i8 %.5 to i1
  br i1 %i.mg, label %bb.bx, label %.thread237, !prof !62

end_hunk_17
begin_hunk_18_@_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE:bb.a
  br label %.thread237

.thread237:                                       ; preds = %.thread236.a, %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit170", %bb.bx
  %.5216 = phi i32 [ %.7, %bb.bx ], [ %.7, %"_ZZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextEENK3$_1clEv.exit170" ], [ %.3213, %.thread236.a ]
  %i.ml = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %.3 to i64
end_hunk_18
