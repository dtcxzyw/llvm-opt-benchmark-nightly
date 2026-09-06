Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Instructions?download=true
inline.NumInlined: 4574
inline.NumDeleted: 2152
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm17ShuffleVectorInst17isReplicationMaskENS_8ArrayRefIiEERiS3_:bb.a
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.c = and i64 %.idx4.i, 9223372036854775792
  %scevgep.i.i.i.i = getelementptr i8, ptr %0, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.b, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i.i ], [ %i.o, %bb.f ] ; 9 uses
  %i.d = load i32, ptr %.02946.i.i.i.i, align 4, !tbaa !75
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !75
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit123, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !75
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit125, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.p = add nsw i64 %.047.i.i.i.i, -1
  %i.q = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.q, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !336

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.r = and i64 %1, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i = phi i64 [ %i.r, %._crit_edge.loopexit.i.i.i.i ], [ %1, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %0, %bb.a ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !75
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.1.i.i.i.i = phi ptr [ %i.u, %bb.h ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.v = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !75
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.2.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.y = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !75
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit123: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit125: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit123, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit125, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.g ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.ac, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit125 ], [ %i.ab, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit123 ], [ %i.aa, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.b ]
  %.not76 = icmp eq ptr %.028.i.i.i.i, %i.a
  br i1 %.not76, label %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread, label %bb.v

_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread
  %i.ad = and i64 %.idx4.i, 9223372036854775792
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %0, i64 %i.ad
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i
  %.050.i.i.i.i.i = phi i64 [ %i.ai, %bb.m ], [ %i.b, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02949.i.i.i.i.i = phi ptr [ %i.ah, %bb.m ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i = load i32, ptr %.02949.i.i.i.i.i, align 4, !tbaa !75
  %.not35.i.i.i.i.i = icmp eq i32 %.029.val32.i.i.i.i.i, 0
  br i1 %.not35.i.i.i.i.i, label %bb.j, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 4
  %.val31.i.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !75
  %.not36.i.i.i.i.i = icmp eq i32 %.val31.i.i.i.i.i, 0
  br i1 %.not36.i.i.i.i.i, label %bb.k, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit"

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 8
  %.val30.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !75
  %.not37.i.i.i.i.i = icmp eq i32 %.val30.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit131"

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 12
  %.val.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !75
  %.not38.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not38.i.i.i.i.i, label %bb.m, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit133"

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 16
  %i.ai = add nsw i64 %.050.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.050.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !337

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.m
  %i.ak = and i64 %1, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i ], [ %1, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %0, %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit.thread ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %bb.s [
    i64 3, label %bb.n
    i64 2, label %bb.p
    i64 1, label %bb.r
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !75
  %.not.i.i.i.i.i = icmp eq i32 %.029.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.al, %bb.o ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !75
  %.not33.i.i.i.i.i = icmp eq i32 %.1.val.i.i.i.i.i, 0
  br i1 %.not33.i.i.i.i.i, label %bb.q, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.am, %bb.q ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !75
  %.not34.i.i.i.i.i = icmp eq i32 %.2.val.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.s, label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i
  br label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit": ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 4
  br label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit131": ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 8
  br label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit133": ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.i, i64 12
  br label %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"

"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit": ; preds = %.lr.ph.i.i.i.i.i, %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit", %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit131", %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit133", %bb.n, %bb.p, %bb.r, %bb.s
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.p ], [ %i.a, %bb.s ], [ %.2.i.i.i.i.i, %bb.r ], [ %.029.lcssa.i.i.i.i.i, %bb.n ], [ %i.ap, %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit133" ], [ %i.ao, %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit131" ], [ %i.an, %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit.loopexit.split.loop.exit" ], [ %.02949.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.aq = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.ar = ptrtoint ptr %0 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = lshr exact i64 %i.as, 2
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  store i32 %i.au, ptr %2, align 4, !tbaa !75
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit"
  %sext77 = shl i64 %i.as, 30
  %i.aw = ashr i64 %sext77, 32                    ; 2 uses
  %i.ax = urem i64 %1, %i.aw
  %i.ay = udiv i64 %1, %i.aw
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  store i32 %i.az, ptr %3, align 4, !tbaa !75
  %i.ba = load i32, ptr %2, align 4, !tbaa !75
  %i.bb = tail call fastcc noundef zeroext i1 @_ZL27isReplicationMaskWithParamsN4llvm8ArrayRefIiEEii(ptr %0, i64 %1, i32 noundef %i.ba, i32 noundef %i.az)
  br label %.loopexit

bb.v:                                             ; preds = %_ZN4llvm12is_containedIRNS_8ArrayRefIiEEiEEbOT_RKT0_.exit
  %.not3890 = icmp eq i64 %1, 0
  br i1 %.not3890, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %.03692 = phi ptr [ %i.bf, %bb.x ], [ %0, %bb.v ] ; 2 uses
  %.091 = phi i32 [ %.1.ph, %bb.x ], [ -1, %bb.v ] ; 2 uses
  %i.bc = load i32, ptr %.03692, align 4, !tbaa !75 ; 3 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.be = icmp slt i32 %i.bc, %.091
  br i1 %i.be, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph
  %.1.ph = phi i32 [ %.091, %.lr.ph ], [ %i.bc, %bb.w ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.03692, i64 4 ; 2 uses
  %.not38 = icmp eq ptr %i.bf, %i.a
  br i1 %.not38, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.x
  %i.bg = and i64 %1, 4294967295                  ; 2 uses
  %.not103 = icmp eq i64 %i.bg, 0
  br i1 %.not103, label %.loopexit, label %.lr.ph94

.lr.ph94:                                         ; preds = %.critedge, %.thread70
  %.sroa.043.093 = phi i64 [ %i.bn, %.thread70 ], [ %i.bg, %.critedge ] ; 3 uses
  %sext = shl nuw i64 %.sroa.043.093, 32
  %i.bh = ashr exact i64 %sext, 32                ; 2 uses
  %i.bi = urem i64 %1, %i.bh
  %i.bj = udiv i64 %1, %i.bh
  %.not39 = icmp eq i64 %i.bi, 0
  br i1 %.not39, label %bb.y, label %.thread70

bb.y:                                             ; preds = %.lr.ph94
  %i.bk = trunc nuw i64 %.sroa.043.093 to i32     ; 2 uses
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bm = tail call fastcc noundef zeroext i1 @_ZL27isReplicationMaskWithParamsN4llvm8ArrayRefIiEEii(ptr %0, i64 %1, i32 noundef %i.bk, i32 noundef %i.bl)
  br i1 %i.bm, label %bb.z, label %.thread70

bb.z:                                             ; preds = %bb.y
  store i32 %i.bk, ptr %2, align 4, !tbaa !75
  store i32 %i.bl, ptr %3, align 4, !tbaa !75
  br label %.loopexit

.thread70:                                        ; preds = %bb.y, %.lr.ph94
  %i.bn = add nsw i64 %.sroa.043.093, -1          ; 2 uses
  %.not104 = icmp eq i64 %i.bn, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph94

.loopexit:                                        ; preds = %bb.w, %.thread70, %bb.v, %.critedge, %bb.z, %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit", %bb.t, %bb.u
  %.8 = phi i1 [ false, %"_ZNK4llvm8ArrayRefIiE10take_whileIZNS_17ShuffleVectorInst17isReplicationMaskES1_RiS4_E3$_0EES1_T_.exit" ], [ %i.bb, %bb.u ], [ false, %bb.t ], [ false, %.thread70 ], [ true, %bb.z ], [ false, %.critedge ], [ false, %bb.v ], [ false, %bb.w ]
  ret i1 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZL27isReplicationMaskWithParamsN4llvm8ArrayRefIiEEii(ptr nofree readonly captures(address) %0, i64 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %3 to i64
  %.not34 = icmp eq i32 %3, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread"
  %.sroa.017.037 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread" ] ; 2 uses
  %.sroa.022.036 = phi ptr [ %0, %.lr.ph ], [ %i.e, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread" ] ; 5 uses
  %.sroa.423.035 = phi i64 [ %1, %.lr.ph ], [ %i.d, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread" ] ; 2 uses
  %i.c = trunc i64 %.sroa.017.037 to i32          ; 7 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %.sroa.423.035) ; 4 uses
  %i.d = sub i64 %.sroa.423.035, %i.b
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.sroa.022.036, i64 %i.b
  %.idx1.i = shl nuw nsw i64 %..i, 2              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.036, i64 %.idx1.i
  %i.g = lshr i64 %..i, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.h = and i64 %.idx1.i, 9223372036854775792
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.sroa.022.036, i64 %i.h
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i
  %.063.i.i.i.i.i = phi i64 [ %i.u, %bb.f ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02962.i.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %.sroa.022.036, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val39.i.i.i.i.i = load i32, ptr %.02962.i.i.i.i.i, align 4, !tbaa !75 ; 2 uses
  %i.i = icmp ne i32 %.029.val39.i.i.i.i.i, -1
  %i.j = icmp ne i32 %.029.val39.i.i.i.i.i, %i.c
  %.not4.i.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %.not4.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 4
  %.val37.i.i.i.i.i = load i32, ptr %i.k, align 4, !tbaa !75 ; 2 uses
  %i.l = icmp ne i32 %.val37.i.i.i.i.i, -1
  %i.m = icmp ne i32 %.val37.i.i.i.i.i, %i.c
  %.not4.i40.i.i.i.i.i = and i1 %i.l, %i.m
  br i1 %.not4.i40.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 8
  %.val35.i.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !75 ; 2 uses
  %i.o = icmp ne i32 %.val35.i.i.i.i.i, -1
  %i.p = icmp ne i32 %.val35.i.i.i.i.i, %i.c
  %.not4.i41.i.i.i.i.i = and i1 %i.o, %i.p
  br i1 %.not4.i41.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit45", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 12
  %.val33.i.i.i.i.i = load i32, ptr %i.q, align 4, !tbaa !75 ; 2 uses
  %i.r = icmp ne i32 %.val33.i.i.i.i.i, -1
  %i.s = icmp ne i32 %.val33.i.i.i.i.i, %i.c
  %.not4.i42.i.i.i.i.i = and i1 %i.r, %i.s
  br i1 %.not4.i42.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit47", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 16
  %i.u = add nsw i64 %.063.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.063.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !338

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %i.w = and i64 %..i, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.b
  %.pre-phi69.i.i.i.i.i = phi i64 [ %i.w, %._crit_edge.loopexit.i.i.i.i.i ], [ %..i, %bb.b ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.022.036, %bb.b ] ; 5 uses
  switch i64 %.pre-phi69.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !75 ; 2 uses
  %i.x = icmp ne i32 %.029.val.i.i.i.i.i, -1
  %i.y = icmp ne i32 %.029.val.i.i.i.i.i, %i.c
  %.not4.i43.i.i.i.i.i = and i1 %i.x, %i.y
  br i1 %.not4.i43.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !75 ; 2 uses
  %i.aa = icmp ne i32 %.1.val.i.i.i.i.i, -1
  %i.ab = icmp ne i32 %.1.val.i.i.i.i.i, %i.c
  %.not4.i44.i.i.i.i.i = and i1 %i.aa, %i.ab
  br i1 %.not4.i44.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ac, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !75 ; 2 uses
  %i.ad = icmp ne i32 %.2.val.i.i.i.i.i, -1
  %i.ae = icmp ne i32 %.2.val.i.i.i.i.i, %i.c
  %.not4.i45.i.i.i.i.i = and i1 %i.ad, %i.ae
  br i1 %.not4.i45.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 4
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit45": ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit47": ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02962.i.i.i.i.i, i64 12
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit45", %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit47", %bb.g, %bb.i, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i, %bb.k ], [ %i.ah, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit47" ], [ %i.ag, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit45" ], [ %i.af, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02962.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ai = icmp eq ptr %i.f, %.028.i.i.i.i.i
  br i1 %i.ai, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread", label %._crit_edge

"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.k, %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit"
  %i.aj = add i64 %.sroa.017.037, 1               ; 2 uses
  %.not = icmp eq i64 %i.aj, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit", %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread", %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ true, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit.thread" ], [ false, %"_ZN4llvm6all_ofIRNS_8ArrayRefIiEEZL27isReplicationMaskWithParamsS2_iiE3$_0EEbOT_T0_.exit" ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ShuffleVectorInst17isReplicationMaskERiS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 19
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  store i32 %i.l, ptr %2, align 4, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %i.q = urem i64 %i.o, %i.p
  %i.r = udiv i64 %i.o, %i.p
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = trunc nuw i64 %i.r to i32                ; 2 uses
  store i32 %i.t, ptr %1, align 4, !tbaa !75
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.v = load i32, ptr %i.m, align 8, !tbaa !105
  %i.w = zext i32 %i.v to i64
  %i.x = load i32, ptr %2, align 4, !tbaa !75
  %i.y = tail call fastcc noundef zeroext i1 @_ZL27isReplicationMaskWithParamsN4llvm8ArrayRefIiEEii(ptr %i.u, i64 %i.w, i32 noundef %i.t, i32 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.y, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst24isOneUseSingleSourceMaskENS_8ArrayRefIiEEi(ptr nofree readonly captures(address) %0, i64 %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 7 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = urem i64 %1, %i.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50

bb.d:                                             ; preds = %bb.c
  %i.e = trunc i64 %1 to i32                      ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.d
  %.idx2.i = shl nuw nsw i64 %i.b, 2              ; 2 uses
  %i.g = lshr i64 %i.b, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = and i64 %.idx2.i, 8589934576
  %i.i = and i64 %i.b, 3
  %i.j = icmp samesign ult i32 %2, 58
  %i.k = add nuw i32 %2, 63
  %i.l = lshr i32 %i.k, 6                         ; 2 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = icmp samesign ugt i32 %2, 384
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3
  %i.o = shl nuw i64 %i.b, 58
  %i.p = or disjoint i64 %i.o, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph67, %_ZN4llvm14SmallBitVectorD2Ev.exit.thread
  %.02365 = phi i32 [ 0, %.lr.ph67 ], [ %i.cs, %_ZN4llvm14SmallBitVectorD2Ev.exit.thread ] ; 2 uses
  %i.q = zext i32 %.02365 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx2.i ; 2 uses
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.r, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.j ] ; 9 uses
  %i.t = load i32, ptr %.02946.i.i.i.i.i, align 4, !tbaa !75
  %.not32.i.i.i.i.i = icmp eq i32 %i.t, -1
  br i1 %.not32.i.i.i.i.i, label %bb.g, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !75
  %.not33.i.i.i.i.i = icmp eq i32 %i.v, -1
  br i1 %.not33.i.i.i.i.i, label %bb.h, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !75
  %.not34.i.i.i.i.i = icmp eq i32 %i.x, -1
  br i1 %.not34.i.i.i.i.i, label %bb.i, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit88

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75
  %.not35.i.i.i.i.i = icmp eq i32 %i.z, -1
  br i1 %.not35.i.i.i.i.i, label %bb.j, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit90

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.ab = add nsw i64 %.047.i.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.f, label %._crit_edge.i.i.i.i.i, !llvm.loop !339

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j, %bb.e
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.b, %bb.e ], [ %i.i, %bb.j ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %scevgep.i.i.i.i.i, %bb.j ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ad = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !75
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.af = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !75
  %.not30.i.i.i.i.i = icmp eq i32 %i.af, -1
  br i1 %.not30.i.i.i.i.i, label %bb.m, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

bb.m:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ag, %bb.m ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ah = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !75
  %.not31.i.i.i.i.i = icmp eq i32 %i.ah, -1
  br i1 %.not31.i.i.i.i.i, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread, label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit88: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit90: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 12
  br label %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit

_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit: ; preds = %bb.f, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit88, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit90, %bb.k, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.k ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.ak, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit90 ], [ %i.aj, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit88 ], [ %i.ai, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.f ]
  %i.al = icmp eq ptr %i.s, %.028.i.i.i.i.i
  br i1 %i.al, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit
  br i1 %i.j, label %.lr.ph.preheader, label %bb.o

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, %bb.n
  %.sroa.0.063.ph = phi i64 [ %i.p, %bb.n ], [ %i.as, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i ]
  br label %.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.am = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 6, ptr %i.ap, align 4, !tbaa !106
  br i1 %i.n, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit: ; preds = %bb.o
  store i32 0, ptr %i.ao, align 8, !tbaa !105
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.am, ptr noundef nonnull %i.an, i64 noundef %i.m, i64 noundef 8) #30
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !21
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i:     ; preds = %bb.o, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit
  %.sink = phi ptr [ %i.aq, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit ], [ %i.an, %bb.o ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !113
  store i32 %i.l, ptr %i.ao, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i32 %2, ptr %i.ar, align 8, !tbaa !348
  %i.as = ptrtoint ptr %i.am to i64
  br label %.lr.ph.preheader

._crit_edge:                                      ; preds = %_ZN4llvm14SmallBitVector3setEj.exit
  %i.at = trunc i64 %.sroa.0.1 to i1              ; 2 uses
  br i1 %i.at, label %.split, label %bb.p

.split:                                           ; preds = %._crit_edge
  %i.au = lshr i64 %.sroa.0.1, 1
  %i.av = lshr i64 %.sroa.0.1, 58
  %i.aw = shl nsw i64 -1, %i.av
  %i.ax = or i64 %i.aw, %i.au
  %.fr52 = freeze i64 %i.ax
  %i.ay = icmp eq i64 %.fr52, -1
  br i1 %i.ay, label %_ZNK4llvm14SmallBitVector3allEv.exit.thread, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50

bb.p:                                             ; preds = %._crit_edge
  %i.az = inttoptr i64 %.sroa.0.1 to ptr          ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !348 ; 2 uses
  %i.bc = lshr i32 %i.bb, 6                       ; 3 uses
  %.not19.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN4llvm17ShuffleVectorInst24isOneUseSingleSourceMaskENS_8ArrayRefIiEEi:bb.a
  br i1 %i.at, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm14SmallBitVector3allEv.exit.thread45
  %i.bo = inttoptr i64 %.sroa.0.1 to ptr          ; 3 uses
  %i.bp = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.bp, label %_ZN4llvm14SmallBitVectorD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN4llvm9BitVectorD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef %i.bq) #30
  br label %_ZN4llvm9BitVectorD2Ev.exit.i

_ZN4llvm9BitVectorD2Ev.exit.i:                    ; preds = %bb.u, %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 72) #32
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm14SmallBitVector3setEj.exit
  %.064 = phi ptr [ %i.cr, %_ZN4llvm14SmallBitVector3setEj.exit ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.063 = phi i64 [ %.sroa.0.1, %_ZN4llvm14SmallBitVector3setEj.exit ], [ %.sroa.0.063.ph, %.lr.ph.preheader ] ; 7 uses
  %i.bt = load i32, ptr %.064, align 4, !tbaa !75 ; 5 uses
  %.not30 = icmp ne i32 %i.bt, -1
  %i.bu = icmp slt i32 %i.bt, %2
  %or.cond = and i1 %.not30, %i.bu
  br i1 %or.cond, label %bb.v, label %_ZN4llvm14SmallBitVector3setEj.exit

bb.v:                                             ; preds = %.lr.ph
  %i.bv = trunc i64 %.sroa.0.063 to i1
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = lshr i64 %.sroa.0.063, 1
  %i.bx = lshr i64 %.sroa.0.063, 58
  %i.by = shl nsw i64 -1, %i.bx
  %i.bz = xor i64 %i.by, -1
  %i.ca = zext nneg i32 %i.bt to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %i.cb, %i.bw
  %i.cd = and i64 %i.cc, %i.bz
  %i.ce = shl nuw i64 %i.cd, 1
  %i.cf = and i64 %.sroa.0.063, -288230376151711743
  %i.cg = or i64 %i.ce, %i.cf
  br label %_ZN4llvm14SmallBitVector3setEj.exit

bb.x:                                             ; preds = %bb.v
  %i.ch = inttoptr i64 %.sroa.0.063 to ptr
  %i.ci = and i32 %i.bt, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = lshr i32 %i.bt, 6
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !113
  %i.cq = or i64 %i.cp, %i.ck
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !113
  br label %_ZN4llvm14SmallBitVector3setEj.exit

_ZN4llvm14SmallBitVector3setEj.exit:              ; preds = %bb.x, %bb.w, %.lr.ph
  %.sroa.0.1 = phi i64 [ %.sroa.0.063, %.lr.ph ], [ %i.cg, %bb.w ], [ %.sroa.0.063, %bb.x ] ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.064, i64 4 ; 2 uses
  %.not29 = icmp eq ptr %i.cr, %i.s
  br i1 %.not29, label %._crit_edge, label %.lr.ph

_ZN4llvm14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i, %bb.s, %_ZNK4llvm14SmallBitVector3allEv.exit.thread45
  br i1 %cond, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50

_ZN4llvm14SmallBitVectorD2Ev.exit.thread:         ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZN4llvm6all_ofIRNS_8ArrayRefIiEENS_6detail11BindStorageILb1ESt5tupleIJiEENS4_8FnHolderISt8equal_toIvEEESt16integer_sequenceImJLm0EEEEEEEbOT_T0_.exit
  %i.cs = add i32 %.02365, %2                     ; 2 uses
  %.not71 = icmp ult i32 %i.cs, %i.e
  br i1 %.not71, label %bb.e, label %_ZN4llvm14SmallBitVectorD2Ev.exit.thread50, !llvm.loop !341

_ZN4llvm14SmallBitVectorD2Ev.exit.thread50:       ; preds = %_ZN4llvm14SmallBitVectorD2Ev.exit, %.split, %_ZN4llvm14SmallBitVectorD2Ev.exit.thread, %bb.d, %bb.a, %bb.b, %bb.c
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ false, %.split ], [ false, %_ZN4llvm14SmallBitVectorD2Ev.exit ], [ true, %_ZN4llvm14SmallBitVectorD2Ev.exit.thread ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17ShuffleVectorInst24isOneUseSingleSourceMaskEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 19
  br i1 %i.f, label %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.k, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not36.i.i = icmp eq i32 %i.j, 0
  br i1 %.not36.i.i, label %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.02039.i.i = phi ptr [ %i.w, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %.02138.i.i = phi i8 [ %.122.ph.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.02337.i.i = phi i8 [ %.124.ph.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.m = load i32, ptr %.02039.i.i, align 4, !tbaa !75 ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = icmp slt i32 %i.m, %1
  %i.p = zext i1 %i.o to i8
  %i.q = or i8 %.02337.i.i, %i.p                  ; 2 uses
  %i.r = icmp ne i8 %i.q, 0
  %i.s = icmp sge i32 %i.m, %1
  %i.t = zext i1 %i.s to i8
  %i.u = or i8 %.02138.i.i, %i.t                  ; 2 uses
  %i.v = icmp ne i8 %i.u, 0
  %or.cond.i.i = select i1 %i.r, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.124.ph.i.i = phi i8 [ %i.q, %bb.c ], [ %.02337.i.i, %.lr.ph.i.i ] ; 2 uses
  %.122.ph.i.i = phi i8 [ %i.u, %bb.c ], [ %.02138.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02039.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.l
  br i1 %.not.i.i, label %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit, label %.lr.ph.i.i

_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit: ; preds = %bb.d
  %i.x = trunc nuw i8 %.124.ph.i.i to i1
  %i.y = trunc nuw i8 %.122.ph.i.i to i1
  %i.z = select i1 %i.x, i1 true, i1 %i.y
  br i1 %i.z, label %bb.e, label %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit.thread

bb.e:                                             ; preds = %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst24isOneUseSingleSourceMaskENS_8ArrayRefIiEEi(ptr %i.h, i64 %i.k, i32 noundef %1)
  br label %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit.thread

_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit.thread: ; preds = %bb.c, %bb.b, %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ %i.aa, %bb.e ], [ false, %_ZN4llvm17ShuffleVectorInst18isSingleSourceMaskENS_8ArrayRefIiEEi.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst12isInterleaveEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.485", align 8 ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 255
  %i.h = icmp ne i32 %i.g, 18
  %.not6 = icmp eq ptr %i.d, null
  %.not = or i1 %.not6, %i.h
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105
  %i.o = zext i32 %i.n to i64
  %i.p = shl i32 %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.s, align 4, !tbaa !106
  %i.t = call noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjjRNS_15SmallVectorImplIjEE(ptr %i.l, i64 %i.o, i32 noundef %1, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.u = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.u) #30
  br label %_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjj.exit

_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjj.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjj.exit
  %.0 = phi i1 [ %i.t, %_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjj.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst16isInterleaveMaskENS_8ArrayRefIiEEjjRNS_15SmallVectorImplIjEE(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  %i.b = urem i32 %i.a, %2
  %i.c = udiv i32 %i.a, %2                        ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ule i32 %2, %i.a
  %i.d = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp samesign ult i32 %i.d, 2
  %or.cond109 = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond109, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %2 to i64                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %i.i = icmp eq i32 %2, %i.h
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %2, %i.h
  br i1 %i.j, label %.sink.split.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !106
  %i.m = icmp ugt i32 %2, %i.l
  br i1 %i.m, label %bb.f, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.n, i64 noundef %i.f, i64 noundef 4) #30
  %.pre.i.i = load i32, ptr %i.g, align 8, !tbaa !105
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i:  ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.in = phi i32 [ %i.h, %bb.e ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %.not11.i.i = icmp eq i32 %2, %.pre-phi.i.i.in
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !21
  %i.p = getelementptr [4 x i8], ptr %i.o, i64 %.pre-phi.i.i
  %i.q = sub nsw i64 %i.f, %.pre-phi.i.i
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !75
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, %bb.d
  store i32 %2, ptr %i.g, align 8, !tbaa !105
  br label %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit

_ZN4llvm15SmallVectorImplIjE6resizeEm.exit:       ; preds = %bb.c, %.sink.split.i.i
  %i.s = add i32 %i.c, -1                         ; 3 uses
  %.not124 = icmp eq i32 %i.s, 0
  %i.t = mul i32 %i.s, %2
  br i1 %.not124, label %.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit
  %i.u = zext i32 %i.s to i64
  %invariant.op = sub i32 1, %i.c
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.o
  %indvars.iv129 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next130, %bb.o ] ; 4 uses
  %i.v = trunc nuw i64 %indvars.iv129 to i32      ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %select.unfold.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %select.unfold.us ] ; 2 uses
  %.063119.us = phi i32 [ 0, %.preheader.us ], [ %.3.ph.us, %select.unfold.us ]
  %.064118.us = phi i32 [ undef, %.preheader.us ], [ %spec.select.us, %select.unfold.us ]
  %i.w = trunc nuw i64 %indvars.iv to i32
  %i.x = mul i32 %2, %i.w
  %i.y = add i32 %i.x, %i.v                       ; 2 uses
  %i.z = add i32 %i.y, %2
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !75 ; 4 uses
  %i.ad = zext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !75 ; 4 uses
  %i.ag = icmp sgt i32 %i.ac, -1                  ; 2 uses
  %i.ah = icmp sgt i32 %i.af, -1                  ; 2 uses
  %or.cond.us = select i1 %i.ag, i1 %i.ah, i1 false
  %i.ai = add nuw nsw i32 %i.ac, 1
  %.not84.us = icmp ne i32 %i.ai, %i.af
  %or.cond87.not.us = select i1 %or.cond.us, i1 %.not84.us, i1 false
  br i1 %or.cond87.not.us, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp slt i32 %i.af, 0
  %or.cond3.us = select i1 %i.ag, i1 %i.aj, i1 false ; 2 uses
  %spec.select.us = select i1 %or.cond3.us, i32 %i.ac, i32 %.064118.us ; 3 uses
  %spec.select88.us = select i1 %or.cond3.us, i32 1, i32 %.063119.us ; 3 uses
  %i.ak = icmp ne i32 %spec.select88.us, 0
  %i.al = icmp slt i32 %i.ac, 0
  %or.cond5.us = and i1 %i.al, %i.ak
  br i1 %or.cond5.us, label %bb.i, label %select.unfold.us

bb.i:                                             ; preds = %bb.h
  %i.am = add i32 %spec.select88.us, 1            ; 2 uses
  %i.an = add i32 %i.am, %spec.select.us
  %.not85.us = icmp ne i32 %i.an, %i.af
  %or.cond90.not.us = select i1 %i.ah, i1 %.not85.us, i1 false
  br i1 %or.cond90.not.us, label %.critedge, label %select.unfold.us

select.unfold.us:                                 ; preds = %bb.i, %bb.h
  %.3.ph.us = phi i32 [ %spec.select88.us, %bb.h ], [ %i.am, %bb.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.ao, label %bb.g, label %._crit_edge.us, !llvm.loop !349

bb.j:                                             ; preds = %._crit_edge.us
  %i.ap = add i32 %i.t, %i.v
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75 ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not86.us = icmp eq i32 %.3.ph.us, 0
  br i1 %.not86.us, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.neg.us.reass.reass = add i32 %spec.select.us, %invariant.op
  %i.au = add i32 %.neg.us.reass.reass, %.3.ph.us
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.av = sub i32 %i.as, %i.bb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %._crit_edge.us
  %.0.us = phi i32 [ 0, %bb.k ], [ %i.av, %bb.m ], [ %i.au, %bb.l ], [ %i.bd, %._crit_edge.us ] ; 3 uses
  %i.aw = icmp sgt i32 %.0.us, -1
  %i.ax = add i32 %.0.us, %i.c
  %i.ay = icmp ule i32 %i.ax, %3
  %or.cond93.us.not = and i1 %i.aw, %i.ay         ; 3 uses
  br i1 %or.cond93.us.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %4, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv129
  store i32 %.0.us, ptr %i.ba, align 4, !tbaa !75
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next130, %i.f
  br i1 %exitcond.not, label %.critedge, label %.preheader.us, !llvm.loop !350

._crit_edge.us:                                   ; preds = %select.unfold.us
  %i.bb = trunc nuw i64 %indvars.iv.next to i32
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv129
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.n, label %bb.j

.preheader:                                       ; preds = %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit, %bb.p
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %bb.p ], [ 0, %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv132
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !75
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0) ; 2 uses
  %i.bh = add i32 %spec.select, %i.c
  %.not150.not = icmp ule i32 %i.bh, %3           ; 3 uses
  br i1 %.not150.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.preheader
  %i.bi = load ptr, ptr %4, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv132
  store i32 %spec.select, ptr %i.bj, align 4, !tbaa !75
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next133, %i.f
  br i1 %exitcond137.not, label %.critedge, label %.preheader, !llvm.loop !350

.critedge:                                        ; preds = %bb.o, %bb.n, %bb.i, %bb.g, %bb.p, %.preheader, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ %.not150.not, %bb.p ], [ false, %bb.b ], [ false, %bb.i ], [ %.not150.not, %.preheader ], [ false, %bb.g ], [ %or.cond93.us.not, %bb.n ], [ %or.cond93.us.not, %bb.o ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17ShuffleVectorInst26isDeInterleaveMaskOfFactorENS_8ArrayRefIiEEjRj(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #14 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not45 = icmp eq i64 %1, 0
  br i1 %.not45, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.critedge.us
  %.01631.us = phi i32 [ %i.j, %.critedge.us ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %i.a = phi i64 [ 0, %.preheader.us ], [ %i.h, %bb.d ] ; 2 uses
  %.028.us = phi i32 [ 0, %.preheader.us ], [ %i.g, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = mul i32 %.028.us, %2
  %i.f = add i32 %i.e, %.01631.us
  %.not.us = icmp eq i32 %i.c, %i.f
  br i1 %.not.us, label %bb.d, label %._crit_edge.us
end_hunk_1
