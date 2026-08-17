inline.NumInlined: 794
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4cvc58internal7Minisat10SimpSolver10substituteEiNS1_3LitE:bb.a
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i.i, %i.bb
  br i1 %i.bc, label %bb.f, label %._crit_edge.i.i, !llvm.loop !375

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.be = sub nsw i32 %i.bd, %.1.i.i              ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.bg = sub i32 %i.ba, %i.be
  store i32 %i.bg, ptr %i.ai, align 8, !tbaa !297
  br label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i, %bb.e
  store i8 0, ptr %i.ae, align 1, !tbaa !290
  br label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE6lookupERKi.exit

_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE6lookupERKi.exit: ; preds = %_ZN4cvc58internal7Minisat6Solver14setDecisionVarEib.exit, %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !308
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.g ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !297
  %.not.not40 = icmp sgt i32 %i.bl, 0
  br i1 %.not.not40, label %.lr.ph42, label %.critedge31

.lr.ph42:                                         ; preds = %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE6lookupERKi.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph42, %.critedge
  %indvars.iv44 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next45, %.critedge ] ; 3 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !296 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !300
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt ; 4 uses
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !281 ; 2 uses
  %.not.i33 = icmp eq ptr %i.bv, null
  br i1 %.not.i33, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  store i32 0, ptr %i.bn, align 8, !tbaa !282
  br label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE5clearEb.exit

_ZN4cvc58internal7Minisat3vecINS1_3LitEE5clearEb.exit: ; preds = %bb.i, %.preheader.i
  %i.bw = load i64, ptr %i.bu, align 4
  %i.bx = and i64 %i.bw, 4294967264
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEE5clearEb.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit
  %.pre49 = load ptr, ptr %i.bi, align 8, !tbaa !296
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4cvc58internal7Minisat3vecINS1_3LitEE5clearEb.exit
  %i.bz = phi ptr [ %.pre49, %._crit_edge.loopexit ], [ %i.bp, %_ZN4cvc58internal7Minisat3vecINS1_3LitEE5clearEb.exit ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !10
  call void @_ZN4cvc58internal7Minisat10SimpSolver12removeClauseEj(ptr noundef nonnull align 8 dereferenceable(1108) %0, i32 noundef %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 -2, ptr %i.a, align 4, !tbaa !10
  %i.cc = load i64, ptr %i.bu, align 4
  %i.cd = and i64 %i.cc, 4
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = call noundef zeroext i1 @_ZN4cvc58internal7Minisat10SimpSolver10addClause_ERNS1_3vecINS1_3LitEEEbRj(ptr noundef nonnull align 8 dereferenceable(1108) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i1 noundef zeroext %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.cf, label %.critedge, label %bb.m

bb.j:                                             ; preds = %.lr.ph, %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit
  %i.cg = phi ptr [ %i.bv, %.lr.ph ], [ %.pre.i3448, %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %.sroa.04.0.copyload = load i32, ptr %i.ch, align 4, !tbaa !10 ; 3 uses
  %i.ci = ashr i32 %.sroa.04.0.copyload, 1
  %i.cj = icmp eq i32 %i.ci, %1
  %i.ck = and i32 %.sroa.04.0.copyload, 1
  %i.cl = xor i32 %i.ck, %2
  %storemerge = select i1 %i.cj, i32 %i.cl, i32 %.sroa.04.0.copyload
  %i.cm = load i32, ptr %i.bn, align 8, !tbaa !282 ; 5 uses
  %i.cn = load i32, ptr %i.bo, align 4, !tbaa !280
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.k, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit

bb.k:                                             ; preds = %bb.j
  %i.cp = ashr i32 %i.cm, 1
  %i.cq = and i32 %i.cp, -2
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %i.cs = add nuw nsw i32 %i.cr, 2                ; 2 uses
  %i.ct = sub nsw i32 2147483647, %i.cm
  %i.cu = icmp samesign ugt i32 %i.cs, %i.ct
  br i1 %i.cu, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = add nsw i32 %i.cs, %i.cm                ; 2 uses
  store i32 %i.cv, ptr %i.bo, align 4, !tbaa !280
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = call ptr @realloc(ptr noundef %i.cg, i64 noundef %i.cx) #32 ; 3 uses
  store ptr %i.cy, ptr %i.bj, align 8, !tbaa !281
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.loopexit, label %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge

._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge: ; preds = %bb.l
  %.pre = load i32, ptr %i.bn, align 8, !tbaa !282
  br label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit

.loopexit:                                        ; preds = %bb.k, %bb.l
  %i.da = call ptr @__cxa_allocate_exception(i64 1) #29
  call void @__cxa_throw(ptr %i.da, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #31
  unreachable

_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit: ; preds = %bb.j, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge
  %i.db = phi i32 [ %.pre, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge ], [ %i.cm, %bb.j ] ; 2 uses
  %.pre.i3448 = phi ptr [ %i.cy, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge ], [ %i.cg, %bb.j ] ; 2 uses
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.bn, align 8, !tbaa !282
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.pre.i3448, i64 %i.dd
  store i32 %storemerge, ptr %i.de, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i64, ptr %i.bu, align 4
  %i.dg = lshr i64 %i.df, 5
  %i.dh = and i64 %i.dg, 134217727
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !408

bb.m:                                             ; preds = %._crit_edge
  store i8 0, ptr %i.b, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.critedge31

.critedge:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.dj = load i32, ptr %i.bk, align 8, !tbaa !297
  %i.dk = sext i32 %i.dj to i64
  %.not.not = icmp slt i64 %indvars.iv.next45, %i.dk
  br i1 %.not.not, label %bb.i, label %.critedge31, !llvm.loop !409

.critedge31:                                      ; preds = %.critedge, %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE6lookupERKi.exit, %bb.m, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.m ], [ true, %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE6lookupERKi.exit ], [ true, %.critedge ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZN4cvc58internal7Minisat6Solver8simplifyEv(ptr noundef nonnull align 8 dereferenceable(850)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5clearEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !308
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !309  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i, %.preheader.i
  store i32 0, ptr %i.b, align 8, !tbaa !309
  br i1 %1, label %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread8, label %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i
  %i.e = phi i32 [ %i.j, %_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i ], [ %i.c, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !308
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !296  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !297
  tail call void @free(ptr noundef nonnull %i.h) #29
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !309
  br label %_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i

_ZN4cvc58internal7Minisat3vecIjED2Ev.exit.i:      ; preds = %.preheader.i.i.i, %.lr.ph.i
  %i.j = phi i32 [ %i.e, %.lr.ph.i ], [ %.pre.i, %.preheader.i.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !310

_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !289  ; 2 uses
  %.not.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i3, label %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit, label %.preheader.i4.thread

_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread8: ; preds = %._crit_edge.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !308
  tail call void @free(ptr noundef %i.o) #29
  store ptr null, ptr %0, align 8, !tbaa !308
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !410
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !289  ; 2 uses
  %.not.i39 = icmp eq ptr %i.r, null
  br i1 %.not.i39, label %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit, label %.preheader.i4.thread10

.preheader.i4.thread10:                           ; preds = %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !286
  br label %.preheader.i4

_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread: ; preds = %._crit_edge.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !289
  %.not.i37 = icmp eq ptr %i.u, null
  br i1 %.not.i37, label %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit, label %bb.b

.preheader.i4.thread:                             ; preds = %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !286
  br i1 %1, label %.preheader.i4, label %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit

.preheader.i4:                                    ; preds = %.preheader.i4.thread10, %.preheader.i4.thread
  %2 = phi ptr [ %i.q, %.preheader.i4.thread10 ], [ %i.m, %.preheader.i4.thread ]
  %3 = phi ptr [ %i.r, %.preheader.i4.thread10 ], [ %i.n, %.preheader.i4.thread ]
  tail call void @free(ptr noundef nonnull %3) #29
  store ptr null, ptr %2, align 8, !tbaa !289
  br label %bb.b

bb.b:                                             ; preds = %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread, %.preheader.i4
  %.sink15 = phi i64 [ 28, %.preheader.i4 ], [ 24, %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i32 0, ptr %i.w, align 4, !tbaa !10
  br label %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit

_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit:    ; preds = %bb.b, %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread8, %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit.thread, %_ZN4cvc58internal7Minisat3vecINS2_IjEEE5clearEb.exit, %.preheader.i4.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !293  ; 2 uses
  %.not.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i5, label %_ZN4cvc58internal7Minisat3vecIiE5clearEb.exit, label %.preheader.i6

.preheader.i6:                                    ; preds = %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.z, align 8, !tbaa !291
  br i1 %1, label %bb.c, label %_ZN4cvc58internal7Minisat3vecIiE5clearEb.exit

bb.c:                                             ; preds = %.preheader.i6
  tail call void @free(ptr noundef nonnull %i.y) #29
  store ptr null, ptr %i.x, align 8, !tbaa !293
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.aa, align 4, !tbaa !292
  br label %_ZN4cvc58internal7Minisat3vecIiE5clearEb.exit

_ZN4cvc58internal7Minisat3vecIiE5clearEb.exit:    ; preds = %_ZN4cvc58internal7Minisat3vecIcE5clearEb.exit, %.preheader.i6, %bb.c
  ret void
}

declare void @_ZN4cvc58internal7Minisat6Solver16rebuildOrderHeapEv(ptr noundef nonnull align 8 dereferenceable(850)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4cvc58internal7Minisat10SimpSolver14cleanUpClausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1108) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !291  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 976
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.g, %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !293
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i
  store i32 0, ptr %i.c, align 8, !tbaa !291
  br label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.at, %bb.g ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !289  ; 2 uses
  %i.n = sext i32 %i.l to i64                     ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !290
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !308
  %i.r = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !297  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !296  ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !374, !nonnull !70, !align !256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !300
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.y = phi i32 [ %i.t, %.lr.ph.i.i ], [ %i.aj, %bb.f ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %.017.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 4
  %i.ae = and i64 %i.ad, 3
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %.017.i.i, 1
  %i.ah = sext i32 %.017.i.i to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ah
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !10
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !297
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %i.y, %bb.d ], [ %.pre.i.i, %bb.e ] ; 3 uses
  %.1.i.i = phi i32 [ %.017.i.i, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i.i, %i.ak
  br i1 %i.al, label %bb.d, label %._crit_edge.i.i, !llvm.loop !375

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.am = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.an = sub nsw i32 %i.am, %.1.i.i              ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ap = sub i32 %i.aj, %i.an
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !297
  br label %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i

_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i, %bb.c
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !10
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.m, i64 %i.ar
  store i8 0, ptr %i.as, align 1, !tbaa !290
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !291
  br label %bb.g

bb.g:                                             ; preds = %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i, %bb.b
  %i.at = phi i32 [ %i.i, %bb.b ], [ %.pre.i, %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE5cleanERKi.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge.i, !llvm.loop !411

_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit: ; preds = %._crit_edge.i, %.preheader.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !297 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %_ZN4cvc58internal7Minisat3vecIjE6shrinkEi.exit

.lr.ph:                                           ; preds = %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !296 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !300
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %i.bd = phi i32 [ %i.ax, %.lr.ph ], [ %i.bo, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ]  ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 4
  %i.bj = and i64 %i.bi, 3
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i32 %.012, 1
  %i.bm = sext i32 %.012 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bm
  store i32 %i.bf, ptr %i.bn, align 4, !tbaa !10
  %.pre = load i32, ptr %i.aw, align 8, !tbaa !297
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bo = phi i32 [ %.pre, %bb.i ], [ %i.bd, %bb.h ] ; 3 uses
  %.1 = phi i32 [ %i.bl, %bb.i ], [ %.012, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.h, label %._crit_edge, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.j
  %i.br = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bs = sub nsw i32 %i.br, %.1                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i8, label %_ZN4cvc58internal7Minisat3vecIjE6shrinkEi.exit

.lr.ph.i8:                                        ; preds = %._crit_edge
  %i.bu = sub i32 %i.bo, %i.bs
  store i32 %i.bu, ptr %i.aw, align 8, !tbaa !297
  br label %_ZN4cvc58internal7Minisat3vecIjE6shrinkEi.exit

_ZN4cvc58internal7Minisat3vecIjE6shrinkEi.exit:   ; preds = %_ZN4cvc58internal7Minisat8OccListsIiNS1_3vecIjEENS1_10SimpSolver13ClauseDeletedEE8cleanAllEv.exit, %._crit_edge, %.lr.ph.i8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal7Minisat10SimpSolver8relocAllERNS1_15ClauseAllocatorE(ptr noundef nonnull align 8 dereferenceable(1108) %0, ptr noundef nonnull align 8 dereferenceable(21) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.b = load i8, ptr %i.a, align 4, !tbaa !277, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader13, label %bb.d

.preheader13:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !287  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph16, label %.preheader

end_hunk_0
