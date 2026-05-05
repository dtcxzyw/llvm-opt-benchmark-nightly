inline.NumInlined: 660
inline.NumDeleted: 80
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internalL17ParseCVQualifiersEPNS1_5StateE:bb.a
  %i.o = phi i32 [ %i.f, %.lr.ph ], [ %i.ao, %.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.i, %.lr.ph ], [ %i.al, %.preheader ] ; 3 uses
  %i.q = phi i32 [ %i.c, %.lr.ph ], [ %i.am, %.preheader ] ; 2 uses
  %.01257 = phi i32 [ 0, %.lr.ph ], [ %i.an, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !25
  %i.r = add nsw i32 %i.q, 2
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218debugging_internalL17ParseCVQualifiersEPNS1_5StateE:bb.a
  br i1 %i.y, label %bb.d, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.threadsplit

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.threadsplit: ; preds = %bb.c
  %.lcssa228.ph = phi i32 [ %i.p, %bb.c ]
  %.01257.lcssa236 = phi i32 [ %.01257, %bb.c ]
  %.lcssa.ph = phi i32 [ %i.s, %bb.c ]
  br label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread

._ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread_crit_edge: ; preds = %bb.b
  %.01257.lcssa237 = phi i32 [ %.01257, %bb.b ]
  %split = phi i32 [ %i.p, %bb.b ]
  %.01257.lcssa235 = phi i32 [ %.01257, %bb.b ]   ; 0 uses
  %split236 = phi i32 [ %i.s, %bb.b ]
  br label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread: ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.threadsplit, %._ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread_crit_edge
  %.lcssa228 = phi i32 [ %split, %._ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread_crit_edge ], [ %.lcssa228.ph, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.threadsplit ] ; 2 uses
  %.01257.lcssa = phi i32 [ %.01257.lcssa237, %._ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread_crit_edge ], [ %.01257.lcssa236, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.threadsplit ]
  %.lcssa = phi i32 [ %split236, %._ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread_crit_edge ], [ %.lcssa.ph, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.threadsplit ]
  store i32 %.lcssa228, ptr %i.a, align 4, !tbaa !17
  br label %.thread42

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE:bb.a
  br i1 %i.ai, label %.lr.ph.i, label %bb.f, !llvm.loop !43

bb.f:                                             ; preds = %.lr.ph.i
  %lsr.iv.next.lcssa35 = phi i32 [ %lsr.iv.next, %.lr.ph.i ]
  %lsr.iv.next.lcssa = phi i32 [ %lsr.iv.next, %.lr.ph.i ]
  %.lcssa31 = phi i32 [ %i.ae, %.lr.ph.i ]        ; 2 uses
  %.lcssa = phi ptr [ %i.af, %.lr.ph.i ]
  %i.aj = ptrtoint ptr %.lcssa to i64
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE:bb.a
  br i1 %i.au, label %_ZN4absl12lts_2025051218debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.av = sext i32 %lsr.iv.next.lcssa to i64
  %scevgep = getelementptr i8, ptr %.val34.pre.i, i64 %i.av
  br label %.lr.ph.i.i

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE:bb.a
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2025051218debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ba = sext i32 %lsr.iv.next.lcssa35 to i64
  %scevgep35 = getelementptr i8, ptr %.val34.pre.i, i64 %i.ba
  br label %.lr.ph.i.i.i

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE:bb.a
  br i1 %i.bt, label %bb.n, label %bb.o, !llvm.loop !49

bb.o:                                             ; preds = %bb.n
  %lsr.iv169.lcssa = phi i64 [ %lsr.iv169, %bb.n ]
  %lsr.iv165.lcssa = phi i64 [ %lsr.iv165, %bb.n ]
  %.lcssa160 = phi ptr [ %scevgep164, %bb.n ]
  %i.bu = ptrtoint ptr %.lcssa160 to i64
  %i.bv = ptrtoint ptr %i.a to i64
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i
  %lsr.iv171 = phi i64 [ %lsr.iv.next172, %bb.q ], [ %lsr.iv169.lcssa, %.lr.ph.i.i ] ; 2 uses
  %lsr.iv166 = phi i64 [ %lsr.iv.next167, %bb.q ], [ %lsr.iv165.lcssa, %.lr.ph.i.i ]
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !18 ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1                    ; 2 uses
  %i.cc = load i32, ptr %i.by, align 8, !tbaa !14 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi:bb.a
  br i1 %i.k, label %bb.c, label %bb.d, !llvm.loop !49

bb.d:                                             ; preds = %bb.c
  %lsr.iv15.lcssa = phi i64 [ %lsr.iv15, %bb.c ]
  %lsr.iv11.lcssa = phi i64 [ %lsr.iv11, %bb.c ]
  %.lcssa8 = phi ptr [ %scevgep10, %bb.c ]
  %i.l = ptrtoint ptr %.lcssa8 to i64
  %i.m = ptrtoint ptr %i.a to i64
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218debugging_internalL18MaybeAppendDecimalEPNS1_5StateEi:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %lsr.iv17 = phi i64 [ %lsr.iv.next18, %bb.f ], [ %lsr.iv15.lcssa, %.lr.ph.i ] ; 2 uses
  %lsr.iv12 = phi i64 [ %lsr.iv.next13, %bb.f ], [ %lsr.iv11.lcssa, %.lr.ph.i ]
  %i.r = load i32, ptr %i.o, align 4, !tbaa !18   ; 2 uses
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  %i.t = load i32, ptr %i.p, align 8, !tbaa !14   ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218debugging_internalL20ParseLocalNameSuffixEPNS1_5StateE:bb.a
  br i1 %i.bn, label %bb.k, label %bb.l, !llvm.loop !49

bb.l:                                             ; preds = %bb.k
  %lsr.iv166.lcssa = phi i64 [ %lsr.iv166, %bb.k ]
  %lsr.iv162.lcssa = phi i64 [ %lsr.iv162, %bb.k ]
  %.lcssa157 = phi ptr [ %scevgep161, %bb.k ]
  %i.bo = ptrtoint ptr %.lcssa157 to i64
  %i.bp = ptrtoint ptr %i.a to i64
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218debugging_internalL20ParseLocalNameSuffixEPNS1_5StateE:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i
  %lsr.iv168 = phi i64 [ %lsr.iv.next169, %bb.n ], [ %lsr.iv166.lcssa, %.lr.ph.i.i ] ; 2 uses
  %lsr.iv163 = phi i64 [ %lsr.iv.next164, %bb.n ], [ %lsr.iv162.lcssa, %.lr.ph.i.i ]
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !18 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  %i.bw = load i32, ptr %i.bs, align 8, !tbaa !14 ; 2 uses
end_hunk_10
