Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/Solver?download=true
inline.NumInlined: 2399
inline.NumDeleted: 491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4cvc58internal7Minisat6Solver12detachClauseEjb:bb.a
  %i.de = tail call ptr @realloc(ptr noundef %i.da, i64 noundef %i.dd) #34 ; 3 uses
  store ptr %i.de, ptr %i.co, align 8, !tbaa !103
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.o, label %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge.i96

._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge.i96: ; preds = %bb.n
  %.pre.i97 = load i32, ptr %i.cp, align 8, !tbaa !102
  br label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit.i95

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 1) #33
  tail call void @__cxa_throw(ptr %i.dg, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #35
  unreachable

_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit.i95: ; preds = %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge.i96, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit_crit_edge.i.i93
  %i.dh = phi i32 [ %i.cq, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit_crit_edge.i.i93 ], [ %.pre.i97, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge.i96 ] ; 2 uses
  %i.di = phi ptr [ %.pre.i.i94, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit_crit_edge.i.i93 ], [ %i.de, %._ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit_crit_edge.i96 ]
  %i.dj = add nsw i32 %i.dh, 1
  store i32 %i.dj, ptr %i.cp, align 8, !tbaa !102
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dk
  store i32 %i.cj, ptr %i.dl, align 4, !tbaa !80
  br label %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE6smudgeERKS3_.exit98

_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE6smudgeERKS3_.exit98: ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEE4pushERKS3_.exit.i95, %_ZN4cvc58internal7Minisat8OccListsINS1_3LitENS1_3vecINS1_6Solver7WatcherEEENS5_14WatcherDeletedEE6smudgeERKS3_.exit, %_ZN4cvc58internal7MinisatL6removeINS1_3vecINS1_6Solver7WatcherEEES5_EEvRT_RKT0_.exit89
  %i.dm = load i64, ptr %i.d, align 4             ; 2 uses
  %i.dn = and i64 %i.dm, 4
  %.not = icmp eq i64 %i.dn, 0
  %i.do = lshr i64 %i.dm, 5
  %i.dp = and i64 %i.do, 134217727
  %. = select i1 %.not, i64 312, i64 320
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !370
  %i.ds = sub nsw i64 %i.dr, %i.dp
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !370
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal7Minisat6Solver12removeClauseEj(ptr noundef nonnull align 8 dereferenceable(850) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 6 uses
  tail call void @_ZN4cvc58internal7Minisat6Solver12detachClauseEjb(ptr noundef nonnull align 8 dereferenceable(850) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4, !tbaa !80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = ashr i32 %.sroa.0.0.copyload.i.i, 1
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = trunc i32 %.sroa.0.0.copyload.i.i to i8
  %i.l = load i8, ptr %i.j, align 1, !tbaa !374
  %i.m = and i8 %i.k, 1
  %i.n = icmp eq i8 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = getelementptr inbounds [20 x i8], ptr %i.p, i64 %i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !133  ; 2 uses
  %switch.i.i = icmp ugt i32 %i.r, -3
  br i1 %switch.i.i, label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread, label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit

_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %bb.c, label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread

bb.c:                                             ; preds = %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !116
  %.not.i53 = icmp eq ptr %i.x, null
  br i1 %.not.i53, label %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit.thread, label %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit

_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit: ; preds = %bb.c
  %i.y = tail call noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(850) %0)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !317, !nonnull !78, !align !131
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !330
  %.not = icmp eq i32 %i.ac, 1
  br i1 %.not, label %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !116
  tail call void @_ZN4cvc58internal4prop15SatProofManager13startResChainERKNS0_7Minisat6ClauseE(ptr noundef nonnull align 8 dereferenceable(1232) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %i.d)
  %i.ae = load i64, ptr %i.d, align 4             ; 2 uses
  %i.af = and i64 %i.ae, 4294967232
  %.not64 = icmp eq i64 %i.af, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ag = lshr i64 %i.ae, 5
  %wide.trip.count = and i64 %i.ag, 134217727
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !116
  %.sroa.01.0.copyload = load i32, ptr %i.e, align 4, !tbaa !80
  tail call void @_ZN4cvc58internal4prop15SatProofManager11endResChainENS0_7Minisat3LitE(ptr noundef nonnull align 8 dereferenceable(1232) %i.ah, i32 %.sroa.01.0.copyload)
  br label %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %.sroa.02.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !80
  tail call void @_ZN4cvc58internal4prop15SatProofManager17addResolutionStepENS0_7Minisat3LitEb(ptr noundef nonnull align 8 dereferenceable(1232) %i.ai, i32 %.sroa.02.0.copyload, i1 noundef zeroext false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !466

_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit.thread: ; preds = %bb.c, %._crit_edge, %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 4, !tbaa !80
  %i.ak = ashr i32 %.sroa.0.0.copyload, 1
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [20 x i8], ptr %i.al, i64 %i.am
  store i32 -1, ptr %i.an, align 4, !tbaa !133
  br label %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread

_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK4cvc58internal7Minisat6Solver9needProofEv.exit.thread, %_ZNK4cvc58internal7Minisat6Solver6lockedERKNS1_6ClauseE.exit
  %i.ao = load i64, ptr %i.d, align 4
  %i.ap = and i64 %i.ao, -4
  %i.aq = or disjoint i64 %i.ap, 1
  store i64 %i.aq, ptr %i.d, align 4
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.c
  %i.at = load i64, ptr %i.as, align 4
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = lshr i32 %i.au, 5
  %i.aw = lshr i32 %i.au, 3
  %i.ax = and i32 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !381
  %i.ba = add i32 %i.az, 2
  %i.bb = add i32 %i.ba, %i.av
  %i.bc = add i32 %i.bb, %i.ax
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !381
  ret void
}

declare void @_ZN4cvc58internal4prop15SatProofManager13startResChainERKNS0_7Minisat6ClauseE(ptr noundef nonnull align 8 dereferenceable(1232), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4cvc58internal4prop15SatProofManager17addResolutionStepENS0_7Minisat3LitEb(ptr noundef nonnull align 8 dereferenceable(1232), i32, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4cvc58internal4prop15SatProofManager11endResChainENS0_7Minisat3LitE(ptr noundef nonnull align 8 dereferenceable(1232), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal7Minisat6Solver9satisfiedERKNS1_6ClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(850) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %1, align 4
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 5                         ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !80 ; 2 uses
  %i.h = ashr i32 %.sroa.0.0.copyload.i, 1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = trunc i32 %.sroa.0.0.copyload.i to i8
  %i.l = load i8, ptr %i.j, align 1, !tbaa !374
  %i.m = and i8 %i.k, 1
  %i.n = icmp eq i8 %i.l, %i.m                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.n, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal7Minisat6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(850) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = icmp sgt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 %i.b, %1                     ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !102  ; 3 uses
  %i.j = sext i32 %1 to i64                       ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !110    ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.j
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80   ; 2 uses
  %.not.not36 = icmp sgt i32 %i.i, %i.m
  br i1 %.not.not36, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.v = sext i32 %i.i to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.032 = phi i32 [ %i.d, %.lr.ph ], [ %i.x, %bb.c ] ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !71
  tail call void @_ZN4cvc57context7Context3popEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w)
  %i.x = add nsw i32 %.032, -1
  %i.y = icmp samesign ugt i32 %.032, 1
  br i1 %i.y, label %bb.c, label %._crit_edge, !llvm.loop !467

._crit_edge40.loopexit:                           ; preds = %_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit
  %.pre = load i32, ptr %i.h, align 8, !tbaa !102
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %._crit_edge
  %i.z = phi i32 [ %i.i, %._crit_edge ], [ %.pre, %._crit_edge40.loopexit ]
  %.lcssa33 = phi ptr [ %i.k, %._crit_edge ], [ %i.bx, %._crit_edge40.loopexit ]
  %.lcssa = phi i32 [ %i.m, %._crit_edge ], [ %i.bz, %._crit_edge40.loopexit ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %.lcssa33, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i32 %.lcssa, ptr %i.ab, align 8, !tbaa !377
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !80 ; 2 uses
  %i.ad = icmp sgt i32 %i.z, %i.ac
  br i1 %i.ad, label %.lr.ph.i16, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE6shrinkEi.exit

.lr.ph.i16:                                       ; preds = %._crit_edge40
  store i32 %i.ac, ptr %i.h, align 8, !tbaa !102
  br label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE6shrinkEi.exit

_ZN4cvc58internal7Minisat3vecINS1_3LitEE6shrinkEi.exit: ; preds = %._crit_edge40, %.lr.ph.i16
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !100
  %i.af = icmp sgt i32 %i.ae, %1
  br i1 %i.af, label %.lr.ph.i17, label %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit

.lr.ph.i17:                                       ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEE6shrinkEi.exit
  store i32 %1, ptr %i.a, align 8, !tbaa !100
  br label %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit

_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit:   ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEE6shrinkEi.exit, %.lr.ph.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !100
  %i.ai = icmp sgt i32 %i.ah, %1
  br i1 %i.ai, label %.lr.ph.i19, label %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit21

.lr.ph.i19:                                       ; preds = %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit
  store i32 %1, ptr %i.ag, align 8, !tbaa !100
  br label %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit21

_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit21: ; preds = %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit, %.lr.ph.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70
  tail call void @_ZN4cvc58internal4prop11TheoryProxy15notifyBacktrackEv(ptr noundef nonnull align 8 dereferenceable(521) %i.ak)
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph39, %_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit
  %indvars.iv = phi i64 [ %i.v, %.lr.ph39 ], [ %indvars.iv.next, %_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv.next
  %.sroa.01.0.copyload = load i32, ptr %i.am, align 4, !tbaa !80
  %i.an = ashr i32 %.sroa.01.0.copyload, 1        ; 3 uses
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.ap = sext i32 %i.an to i64                   ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  store i8 2, ptr %i.aq, align 1, !tbaa !99
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.as = getelementptr inbounds [20 x i8], ptr %i.ar, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 -1, ptr %i.at, align 4, !tbaa !382
  %i.au = load i32, ptr %i.p, align 8, !tbaa !82  ; 2 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp eq i32 %i.au, 1
  br i1 %i.aw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %2, align 8, !tbaa !110
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !100
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.ax, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !80
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp sgt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ap ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !99
  %i.bi = and i8 %i.bh, 2
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv.next
  %.sroa.0.0.copyload = load i32, ptr %i.bl, align 4, !tbaa !80
  %i.bm = trunc i32 %.sroa.0.0.copyload to i8
  %i.bn = and i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bg, align 1, !tbaa !99
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.bo = load i32, ptr %i.s, align 8, !tbaa !100
  %i.bp = icmp slt i32 %i.an, %i.bo
  br i1 %i.bp, label %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.i, label %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i

_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.i: ; preds = %bb.i
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !110
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ap
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !80
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit, label %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i

_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i: ; preds = %bb.i, %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.i
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.ap
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !99
  %.not.i22 = icmp eq i8 %i.bw, 0
  br i1 %.not.i22, label %_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i
  tail call void @_ZN4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i32 noundef %i.an)
  br label %_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit

_ZN4cvc58internal7Minisat6Solver14insertVarOrderEi.exit: ; preds = %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.i, %_ZNK4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6inHeapEi.exit.thread.i, %bb.j
  %i.bx = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.j
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !80 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.ca
  br i1 %.not.not, label %bb.d, label %._crit_edge40.loopexit, !llvm.loop !468

bb.k:                                             ; preds = %_ZN4cvc58internal7Minisat3vecIiE6shrinkEi.exit21, %bb.a
  ret void
}

declare void @_ZN4cvc57context7Context3popEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN4cvc58internal4prop11TheoryProxy15notifyBacktrackEv(ptr noundef nonnull align 8 dereferenceable(521)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal7Minisat6Solver10resetTrailEv(ptr noundef nonnull align 8 dereferenceable(850) %0) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4cvc58internal7Minisat6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(850) %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden i32 @_ZN4cvc58internal7Minisat6Solver13pickBranchLitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(850) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i8 0, ptr %i.a, align 1, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i8 0, ptr %i.b, align 1, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = call i64 @_ZN4cvc58internal4prop11TheoryProxy22getNextDecisionRequestERbS3_(ptr noundef nonnull align 8 dereferenceable(521) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.f = call i32 @_ZN4cvc58internal4prop16MinisatSatSolver12toMinisatLitENS1_10SatLiteralE(i64 %i.e) ; 2 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !76, !range !77, !noundef !78
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread202, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not204211 = icmp eq i32 %i.f, -2
  br i1 %.not204211, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.c

bb.b:                                             ; preds = %thread-pre-split
  %.not204 = icmp eq i32 %i.af, -2
  br i1 %.not204, label %._crit_edge, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal7Minisat15RegionAllocatorIjE8capacityEj:bb.a
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %_ZN4cvc58internal7MinisatL8xreallocEPvm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80
  %i.s = icmp eq i32 %i.r, 12
  br i1 %i.s, label %bb.f, label %_ZN4cvc58internal7MinisatL8xreallocEPvm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__cxa_allocate_exception(i64 1) #33
  tail call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #35
  unreachable

_ZN4cvc58internal7MinisatL8xreallocEPvm.exit:     ; preds = %bb.d, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4cvc58internal7MinisatL8xreallocEPvm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = add nsw i32 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 -1, ptr %i.a, align 4, !tbaa !80
  call void @_ZN4cvc58internal7Minisat3vecIiE6growToEiRKi(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100  ; 6 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  store i32 %i.f, ptr %i.i, align 4, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !393
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %bb.b, label %._ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit_crit_edge.i

._ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !110
  br label %_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit

bb.b:                                             ; preds = %bb.a
  %i.m = ashr i32 %i.f, 1
  %i.n = and i32 %i.m, -2
  %i.o = call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = add nuw nsw i32 %i.o, 2                  ; 2 uses
  %i.q = sub nsw i32 2147483647, %i.f
  %i.r = icmp samesign ugt i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.t = add nsw i32 %i.p, %i.f                   ; 2 uses
  store i32 %i.t, ptr %i.j, align 4, !tbaa !393
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = call ptr @realloc(ptr noundef %i.s, i64 noundef %i.v) #34 ; 3 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !110
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %._ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit_crit_edge

._ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit_crit_edge: ; preds = %bb.c
  %.pre = load i32, ptr %i.e, align 8, !tbaa !100
  %.pre6 = load ptr, ptr %i.b, align 8, !tbaa !110
  br label %_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = call ptr @__cxa_allocate_exception(i64 1) #33
  call void @__cxa_throw(ptr %i.y, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #35
  unreachable

_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit:   ; preds = %._ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit_crit_edge, %._ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit_crit_edge.i
  %i.z = phi ptr [ %i.g, %._ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit_crit_edge.i ], [ %.pre6, %._ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit_crit_edge ] ; 3 uses
  %i.aa = phi i32 [ %i.f, %._ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit_crit_edge.i ], [ %.pre, %._ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit_crit_edge ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i, %._ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit_crit_edge.i ], [ %i.w, %._ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit_crit_edge ] ; 6 uses
  %i.ac = add nsw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.e, align 8, !tbaa !100
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %1, ptr %i.ae, align 4, !tbaa !80
  %i.af = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.h
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !80 ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !80 ; 2 uses
  %.not21.i = icmp eq i32 %i.ag, 0
  %.pre26.i = sext i32 %i.aj to i64               ; 2 uses
  br i1 %.not21.i, label %_ZN4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE11percolateUpEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !389, !nonnull !78, !align !131
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112 ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.pre26.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !74
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.01522.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %.023.i, %bb.f ] ; 4 uses
  %.023.in.i = add nsw i32 %.01522.i, -1
  %.023.i = ashr i32 %.023.in.i, 1                ; 3 uses
  %i.ao = sext i32 %.023.i to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !80 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !74
  %i.au = fcmp ogt double %i.an, %i.at
  %i.av = sext i32 %.01522.i to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.av ; 2 uses
  br i1 %i.au, label %bb.f, label %_ZN4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE11percolateUpEi.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !80
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !80
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ay
  store i32 %.01522.i, ptr %i.az, align 4, !tbaa !80
  %.not.i = icmp eq i32 %.023.i, 0
  br i1 %.not.i, label %_ZN4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE11percolateUpEi.exit, label %bb.e, !llvm.loop !8

_ZN4cvc58internal7Minisat4HeapINS1_6Solver10VarOrderLtEE11percolateUpEi.exit: ; preds = %bb.f, %bb.e, %_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit
  %.01518.i = phi i32 [ 0, %_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit ], [ 0, %bb.f ], [ %.01522.i, %bb.e ]
  %phi.call.i = phi ptr [ %i.ab, %_ZN4cvc58internal7Minisat3vecIiE4pushERKi.exit ], [ %i.ab, %bb.f ], [ %i.aw, %bb.e ]
  store i32 %i.aj, ptr %phi.call.i, align 4, !tbaa !80
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.pre26.i
  store i32 %.01518.i, ptr %i.ba, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat3vecIiE6growToEiRKi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %.not = icmp slt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !393  ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %1, 1
  %i.f = sub i32 %i.e, %i.d
  %i.g = and i32 %i.f, -2
  %i.h = ashr i32 %i.d, 1
  %i.i = and i32 %i.h, -2
  %i.j = add nsw i32 %i.i, 2
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.l = sub nsw i32 2147483647, %i.d
  %i.m = icmp samesign ugt i32 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !110
  %i.o = add nsw i32 %i.k, %i.d                   ; 2 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !393
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.q) #34 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !110
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %_ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @__errno_location() #36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !80
  %i.v = icmp eq i32 %i.u, 12
  br i1 %i.v, label %bb.f, label %_ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = tail call ptr @__cxa_allocate_exception(i64 1) #33
  tail call void @__cxa_throw(ptr %i.w, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #35
  unreachable

_ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.x = load i32, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.y = icmp slt i32 %i.x, %1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %i.aa = sext i32 %i.x to i64                    ; 4 uses
  %wide.trip.count = sext i32 %1 to i64           ; 2 uses
  %.pre = load i32, ptr %2, align 4, !tbaa !80    ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count, %i.aa     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.ab, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.z, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !80
  store <4 x i32> %broadcast.splat, ptr %i.ac, align 4, !tbaa !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !551

middle.block:                                     ; preds = %vector.body
  %3 = add nsw i64 %n.vec, %i.aa
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.aa, %.lr.ph ], [ %3, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN4cvc58internal7Minisat3vecIiE8capacityEi.exit
  store i32 %1, ptr %i.a, align 8, !tbaa !100
  br label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  store i32 %.pre, ptr %i.ae, align 4, !tbaa !80
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !552

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #29

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat3vecINS1_3LitEE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %.not = icmp slt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !119  ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %1, 1
  %i.f = sub i32 %i.e, %i.d
  %i.g = and i32 %i.f, -2
  %i.h = ashr i32 %i.d, 1
  %i.i = and i32 %i.h, -2
  %i.j = add nsw i32 %i.i, 2
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.g) ; 2 uses
  %i.l = sub nsw i32 2147483647, %i.d
  %i.m = icmp samesign ugt i32 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !103
  %i.o = add nsw i32 %i.k, %i.d                   ; 2 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !119
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.q) #34 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !103
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @__errno_location() #36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !80
  %i.v = icmp eq i32 %i.u, 12
  br i1 %i.v, label %bb.f, label %_ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = tail call ptr @__cxa_allocate_exception(i64 1) #33
  tail call void @__cxa_throw(ptr %i.w, ptr nonnull @_ZTIN4cvc58internal7Minisat20OutOfMemoryExceptionE, ptr null) #35
  unreachable

_ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.x = load i32, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.y = icmp slt i32 %i.x, %1
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit
  %i.z = sext i32 %i.x to i64                     ; 4 uses
  %wide.trip.count = sext i32 %1 to i64           ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count, %i.z
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !103
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv.prol
  store i32 0, ptr %i.ac, align 4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !553

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.z, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %i.z, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %_ZN4cvc58internal7Minisat3vecINS1_3LitEE8capacityEi.exit
  store i32 %1, ptr %i.a, align 8, !tbaa !102
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !103
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 0, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %0, align 8, !tbaa !103
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %0, align 8, !tbaa !103
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 0, ptr %i.am, align 4
  %i.an = load ptr, ptr %0, align 8, !tbaa !103
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.ap, align 4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !554

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal12NodeTemplateILb1EEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.k, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !385 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i, label %bb.b, !prof !386

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i, !prof !386

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #39
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal12NodeTemplateILb1EEEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !15

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal12NodeTemplateILb1EEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat3vecINS2_INS1_6Solver7WatcherEEEE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123
  %.not = icmp slt i32 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !557  ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN4cvc58internal7Minisat3vecINS2_INS1_6Solver7WatcherEEEE8capacityEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %1, 1
  %i.f = sub i32 %i.e, %i.d
  %i.g = and i32 %i.f, -2
  %i.h = ashr i32 %i.d, 1
  %i.i = and i32 %i.h, -2
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal7Minisat4sortINS1_3LitENS1_6Solver8lemma_ltEEEvPT_iT0_:bb.a
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !382
  %i.dn = getelementptr inbounds [20 x i8], ptr %i.dj, i64 %i.dg
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !382
  %i.dq = icmp sgt i32 %i.dm, %i.dp
  br i1 %i.dq, label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us, label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150

_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us: ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.us, %.split54.us
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1 ; 3 uses
  %i.dr = add nsw i32 %i.dh, -1                   ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.tr105, i64 %indvars.iv.next131
  %.sroa.02.0.copyload.us = load i32, ptr %i.ds, align 4, !tbaa !80 ; 4 uses
  %i.dt = ashr i32 %.sroa.02.0.copyload.us, 1
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.aw, i64 %i.du
  %i.dw = trunc i32 %.sroa.02.0.copyload.us to i8
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !374 ; 2 uses
  %i.dy = and i8 %i.dw, 1
  %i.dz = xor i8 %i.dy, %i.dx
  %i.ea = and i8 %i.dx, 2
  %.not23.i45.us = icmp eq i8 %i.ea, 0
  br i1 %.not23.i45.us, label %.lr.ph, label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread, !llvm.loop !563

_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit: ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader112, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit
  %indvars.iv126 = phi i64 [ %i.ct, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader112 ], [ %indvars.iv.next127, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit ]
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1 ; 4 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %.tr105, i64 %indvars.iv.next127
  %.sroa.02.0.copyload = load i32, ptr %i.eb, align 4, !tbaa !80 ; 3 uses
  %i.ec = ashr i32 %.sroa.02.0.copyload, 1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.aw, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !374
  %i.eg = and i8 %i.ef, 2
  %.not23.i45 = icmp eq i8 %i.eg, 0
  %i.eh = icmp slt i32 %.sroa.020.0.copyload, %.sroa.02.0.copyload
  %spec.select.i46 = or i1 %i.eh, %.not23.i45
  br i1 %spec.select.i46, label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit, label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113, !llvm.loop !563

_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113: ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit
  %i.ei = trunc nsw i64 %indvars.iv.next127 to i32
  br label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread

_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146: ; preds = %.split54.us
  %i.ej = trunc nsw i64 %indvars.iv130 to i32
  br label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread

_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150: ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.us
  %i.ek = trunc nsw i64 %indvars.iv130 to i32
  br label %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread

_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread: ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us
  %i.el = phi ptr [ %i.cs, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113 ], [ %i.cr, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us ], [ %i.cr, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146 ], [ %i.cr, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150 ], [ %i.cr, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us ] ; 3 uses
  %.us-phi69140 = phi i32 [ %.us-phi69141, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113 ], [ %.us-phi69, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us ], [ %.us-phi69, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146 ], [ %.us-phi69, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150 ], [ %.us-phi69, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us ]
  %.us-phi68138 = phi i32 [ %.us-phi68139, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113 ], [ %i.cq, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us ], [ %i.cq, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146 ], [ %i.cq, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150 ], [ %i.cq, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us ] ; 4 uses
  %.us-phi88 = phi i64 [ %indvars.iv.next127, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113 ], [ %i.cv, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us ], [ %indvars.iv130, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146 ], [ %indvars.iv130, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150 ], [ %indvars.iv.next131, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us ]
  %.us-phi89 = phi i32 [ %i.ei, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113 ], [ %i.cu, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us ], [ %i.ej, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146 ], [ %i.ek, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150 ], [ %i.dr, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us ] ; 2 uses
  %.us-phi90 = phi i32 [ %.sroa.02.0.copyload, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit113 ], [ %.sroa.02.0.copyload.us93, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.preheader.split87.us ], [ %.sroa.02.0.copyload.us95, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit146 ], [ %.sroa.02.0.copyload.us95, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread.loopexit.split.loop.exit150 ], [ %.sroa.02.0.copyload.us, %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit.backedge.us ]
  %.not = icmp slt i32 %.us-phi68138, %.us-phi89
  br i1 %.not, label %bb.j, label %tailrecurse

bb.j:                                             ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread
  %i.em = getelementptr inbounds [4 x i8], ptr %.tr105, i64 %.us-phi88
  store i32 %.us-phi90, ptr %i.el, align 4, !tbaa !80
  store i32 %.us-phi69140, ptr %i.em, align 4, !tbaa !80
  br label %bb.g, !llvm.loop !564

tailrecurse:                                      ; preds = %_ZN4cvc58internal7Minisat6Solver8lemma_ltclENS1_3LitES4_.exit48.thread
  tail call void @_ZN4cvc58internal7Minisat4sortINS1_3LitENS1_6Solver8lemma_ltEEEvPT_iT0_(ptr noundef nonnull %.tr105, i32 noundef %.us-phi68138, ptr %2)
  %i.en = sub nsw i32 %.tr55106, %.us-phi68138    ; 3 uses
  %i.eo = icmp slt i32 %i.en, 16
  br i1 %i.eo, label %tailrecurse._crit_edge, label %bb.f

_ZN4cvc58internal7Minisat13selectionSortINS1_3LitENS1_6Solver8lemma_ltEEEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat4sortINS1_3LitENS1_16LessThan_defaultIS3_EEEEvPT_iT0_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %2, %tailrecurse ] ; 7 uses
  %.tr41.lcssa = phi i32 [ %1, %bb.a ], [ %i.aq, %tailrecurse ] ; 3 uses
  %i.b = icmp sgt i32 %.tr41.lcssa, 1
  br i1 %i.b, label %.lr.ph29.preheader.i, label %_ZN4cvc58internal7Minisat13selectionSortINS1_3LitENS1_16LessThan_defaultIS3_EEEEvPT_iT0_.exit

.lr.ph29.preheader.i:                             ; preds = %tailrecurse._crit_edge
  %i.c = add nsw i32 %.tr41.lcssa, -1
  %wide.trip.count37.i = zext nneg i32 %i.c to i64
  %wide.trip.count.i = zext nneg i32 %.tr41.lcssa to i64 ; 3 uses
  %i.d = add nsw i64 %wide.trip.count.i, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph29.preheader.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph29.preheader.i ], [ %indvars.iv.next35.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph29.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.e = xor i64 %indvars.iv34.i, -1
  %i.f = add nsw i64 %i.e, %wide.trip.count.i
  %i.g = sub i64 %i.d, %indvars.iv34.i
  %i.h = trunc nuw nsw i64 %indvars.iv34.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv34.i ; 2 uses
  %.sroa.0.0.copyload.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !80 ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.sroa.0.0.copyload.i.prol = phi i32 [ %i.l, %.lr.ph.i.prol ], [ %.sroa.0.0.copyload.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv31.i.prol = phi i64 [ %indvars.iv.next32.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i, %.lr.ph.preheader.i ] ; 3 uses
  %.02425.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv31.i.prol
  %.sroa.01.0.copyload.i.prol = load i32, ptr %i.i, align 4, !tbaa !80 ; 2 uses
  %i.j = icmp slt i32 %.sroa.01.0.copyload.i.prol, %.sroa.0.0.copyload.i.prol
  %i.k = trunc nuw nsw i64 %indvars.iv31.i.prol to i32
  %spec.select.i.prol = select i1 %i.j, i32 %i.k, i32 %.02425.i.prol ; 3 uses
  %indvars.iv.next32.i.prol = add nuw nsw i64 %indvars.iv31.i.prol, 1 ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.prol, i32 %.sroa.0.0.copyload.i.prol) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !565

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %.sroa.0.0.copyload.i.unr = phi i32 [ %.sroa.0.0.copyload.pre.i, %.lr.ph.preheader.i ], [ %i.l, %.lr.ph.i.prol ]
  %indvars.iv31.i.unr = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next32.i.prol, %.lr.ph.i.prol ]
  %.02425.i.unr = phi i32 [ %i.h, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i.prol ]
  %i.m = icmp ult i64 %i.g, 3
  br i1 %i.m, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.0.copyload.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.3, %.lr.ph.i ], [ %indvars.iv31.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.02425.i = phi i32 [ %spec.select.i.3, %.lr.ph.i ], [ %.02425.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv31.i
  %.sroa.01.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !80 ; 2 uses
  %i.o = icmp slt i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.p = trunc nuw nsw i64 %indvars.iv31.i to i32
  %spec.select.i = select i1 %i.o, i32 %i.p, i32 %.02425.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %i.q = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i, i32 %.sroa.0.0.copyload.i) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next32.i
  %.sroa.01.0.copyload.i.1 = load i32, ptr %i.r, align 4, !tbaa !80 ; 2 uses
  %i.s = icmp slt i32 %.sroa.01.0.copyload.i.1, %i.q
  %i.t = trunc nuw nsw i64 %indvars.iv.next32.i to i32
  %spec.select.i.1 = select i1 %i.s, i32 %i.t, i32 %spec.select.i
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.u = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.1, i32 %i.q) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next32.i.1
  %.sroa.01.0.copyload.i.2 = load i32, ptr %i.v, align 4, !tbaa !80 ; 2 uses
  %i.w = icmp slt i32 %.sroa.01.0.copyload.i.2, %i.u
  %i.x = trunc nuw nsw i64 %indvars.iv.next32.i.1 to i32
  %spec.select.i.2 = select i1 %i.w, i32 %i.x, i32 %spec.select.i.1
  %indvars.iv.next32.i.2 = add nuw nsw i64 %indvars.iv31.i, 3 ; 2 uses
  %i.y = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.2, i32 %i.u) ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv.next32.i.2
  %.sroa.01.0.copyload.i.3 = load i32, ptr %i.z, align 4, !tbaa !80 ; 2 uses
  %i.aa = icmp slt i32 %.sroa.01.0.copyload.i.3, %i.y
  %i.ab = trunc nuw nsw i64 %indvars.iv.next32.i.2 to i32
  %spec.select.i.3 = select i1 %i.aa, i32 %i.ab, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next32.i.3, %wide.trip.count.i
  %i.ac = tail call i32 @llvm.smin.i32(i32 %.sroa.01.0.copyload.i.3, i32 %i.y)
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !566

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i ]
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.ad = sext i32 %spec.select.i.lcssa to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.tr.lcssa, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  store i32 %i.af, ptr %.phi.trans.insert.i, align 4, !tbaa !80
  store i32 %.sroa.0.0.copyload.pre.i, ptr %i.ae, align 4, !tbaa !80
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %_ZN4cvc58internal7Minisat13selectionSortINS1_3LitENS1_16LessThan_defaultIS3_EEEEvPT_iT0_.exit, label %.lr.ph.preheader.i, !llvm.loop !567

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr4147 = phi i32 [ %i.aq, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr46 = phi ptr [ %2, %tailrecurse ], [ %0, %bb.a ] ; 6 uses
  %i.ag = lshr i32 %.tr4147, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.tr46, i64 %i.ah
  %.sroa.018.0.copyload = load i32, ptr %i.ai, align 4, !tbaa !80 ; 2 uses
  %i.aj = zext nneg i32 %.tr4147 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.034 = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next56, %bb.f ]
  %.0 = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %bb.f ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %.0, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.tr46, i64 %indvars.iv.next
  %.sroa.03.0.copyload = load i32, ptr %i.ak, align 4, !tbaa !80 ; 2 uses
  %i.al = icmp slt i32 %.sroa.03.0.copyload, %.sroa.018.0.copyload
  br i1 %i.al, label %bb.c, label %bb.d, !llvm.loop !568

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.d ], [ %.034, %bb.c ]
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1 ; 5 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %.tr46, i64 %indvars.iv.next56
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 4, !tbaa !80 ; 2 uses
  %i.an = icmp slt i32 %.sroa.018.0.copyload, %.sroa.0.0.copyload
  br i1 %i.an, label %bb.d, label %bb.e, !llvm.loop !569

bb.e:                                             ; preds = %bb.d
  %2 = getelementptr inbounds [4 x i8], ptr %.tr46, i64 %indvars.iv.next ; 3 uses
  %.not = icmp slt i64 %indvars.iv.next, %indvars.iv.next56
  br i1 %.not, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds [4 x i8], ptr %.tr46, i64 %indvars.iv.next56
  store i32 %.sroa.0.0.copyload, ptr %2, align 4, !tbaa !80
  store i32 %.sroa.03.0.copyload, ptr %i.ao, align 4, !tbaa !80
  br label %bb.b, !llvm.loop !570

tailrecurse:                                      ; preds = %bb.e
  %i.ap = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  tail call void @_ZN4cvc58internal7Minisat4sortINS1_3LitENS1_16LessThan_defaultIS3_EEEEvPT_iT0_(ptr noundef nonnull %.tr46, i32 noundef %i.ap)
  %i.aq = sub nsw i32 %.tr4147, %i.ap             ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 16
  br i1 %i.ar, label %tailrecurse._crit_edge, label %.lr.ph

_ZN4cvc58internal7Minisat13selectionSortINS1_3LitENS1_16LessThan_defaultIS3_EEEEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal7Minisat4sortIjNS1_11reduceDB_ltEEEvPT_iT0_(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph80

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.cn, %tailrecurse ] ; 4 uses
  %.tr43.lcssa = phi i32 [ %1, %bb.a ], [ %i.dn, %tailrecurse ] ; 3 uses
  %i.b = icmp sgt i32 %.tr43.lcssa, 1
  br i1 %i.b, label %.lr.ph30.preheader.i, label %_ZN4cvc58internal7Minisat13selectionSortIjNS1_11reduceDB_ltEEEvPT_iT0_.exit

.lr.ph30.preheader.i:                             ; preds = %tailrecurse._crit_edge
  %i.c = add nsw i32 %.tr43.lcssa, -1
  %wide.trip.count38.i = zext nneg i32 %i.c to i64
  %i.d = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.tr43.lcssa to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph30.preheader.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph30.preheader.i ], [ %indvars.iv.next36.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph30.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.e = trunc nuw nsw i64 %indvars.iv35.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i, %.lr.ph.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next33.i, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i ] ; 3 uses
  %.027.i = phi i32 [ %i.e, %.lr.ph.i ], [ %i.af, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv32.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !80
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 4              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp ugt i32 %i.k, 95
  br i1 %i.l, label %bb.c, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %.027.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.tr.lcssa, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !80
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 4              ; 2 uses
  %.mask4.i.i = and i64 %i.r, 4294967264
  %i.s = icmp eq i64 %.mask4.i.i, 64
  br i1 %i.s, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread.i, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.i

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = lshr i64 %i.j, 5
  %i.v = and i64 %i.u, 134217727
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !388
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = lshr i64 %i.r, 5
  %i.aa = and i64 %i.z, 134217727
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !388
  %i.ad = fcmp olt float %i.x, %i.ac
  %cond.fr.i = freeze i1 %i.ad
  br i1 %cond.fr.i, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread.i, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread.i: ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.i, %bb.c
  %i.ae = trunc nuw nsw i64 %indvars.iv32.i to i32
  br label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i: ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread.i, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.i, %bb.b
  %i.af = phi i32 [ %i.ae, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread.i ], [ %.027.i, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.i ], [ %.027.i, %bb.b ] ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !571

._crit_edge.i:                                    ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.thread24.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.tr.lcssa, i64 %indvars.iv35.i ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !80
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.tr.lcssa, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !80
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !80
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !80
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %_ZN4cvc58internal7Minisat13selectionSortIjNS1_11reduceDB_ltEEEvPT_iT0_.exit, label %.lr.ph.i, !llvm.loop !572

.lr.ph80:                                         ; preds = %bb.a, %tailrecurse
  %.tr4379 = phi i32 [ %i.dn, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr78 = phi ptr [ %i.cn, %tailrecurse ], [ %0, %bb.a ] ; 9 uses
  %i.al = lshr i32 %.tr4379, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.tr78, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !80
  %i.ap = load ptr, ptr %2, align 8, !tbaa !108   ; 5 uses
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph80
  %.032 = phi i32 [ -1, %.lr.ph80 ], [ %.lcssa48, %bb.f ] ; 3 uses
  %.0 = phi i32 [ %.tr4379, %.lr.ph80 ], [ %.lcssa51, %bb.f ]
  %i.at = add nsw i32 %.032, 1                    ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.tr78, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !80 ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 4            ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp ugt i32 %i.ba, 95
  %.pre = load i64, ptr %i.ar, align 4            ; 4 uses
  br i1 %i.bb, label %.lr.ph, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader

.lr.ph:                                           ; preds = %bb.d
  %.mask4.i = and i64 %.pre, 4294967264
  %i.bc = icmp eq i64 %.mask4.i, 64
  br i1 %i.bc, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us.preheader, label %.lr.ph.split

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us.preheader: ; preds = %.lr.ph
  %i.bd = sext i32 %.032 to i64
  %i.be = add nsw i64 %i.bd, 1
  br label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us: ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us.preheader, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us
  %indvars.iv96 = phi i64 [ %i.be, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us.preheader ], [ %indvars.iv.next97, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us ]
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 4 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.tr78, i64 %indvars.iv.next97
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !80 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 4
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp ugt i32 %i.bk, 95
  br i1 %i.bl, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader.loopexit, !llvm.loop !573

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bm = lshr i64 %.pre, 5
  %i.bn = and i64 %i.bm, 134217727
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !388 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.br = lshr i64 %i.az, 5
  %i.bs = and i64 %i.br, 134217727
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !388
  %i.bv = fcmp olt float %i.bu, %i.bp
  br i1 %i.bv, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.preheader, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.preheader: ; preds = %.lr.ph.split
  %i.bw = sext i32 %.032 to i64
  %i.bx = add nsw i64 %i.bw, 1
  br label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge

.split:                                           ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge
  %i.by = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.bz = lshr i64 %i.ci, 5
  %i.ca = and i64 %i.bz, 134217727
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !388
  %i.cd = fcmp olt float %i.cc, %i.bp
  br i1 %i.cd, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader.loopexit106, !llvm.loop !573

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge: ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.preheader, %.split
  %indvars.iv = phi i64 [ %i.bx, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.preheader ], [ %indvars.iv.next, %.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %.tr78, i64 %indvars.iv.next
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !80 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 4            ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp ugt i32 %i.cj, 95
  br i1 %i.ck, label %.split, label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader.loopexit106, !llvm.loop !573

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader.loopexit: ; preds = %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge.us
  %i.cl = trunc nsw i64 %indvars.iv.next97 to i32
  br label %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader

_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit40.preheader.loopexit106: ; preds = %.split, %_ZN4cvc58internal7Minisat11reduceDB_ltclEjj.exit.backedge
end_hunk_2
