Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nbench1?download=true
inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoStringSortIteration:bb.a
middle.block89:                                   ; preds = %vector.body84
  %cmp.n90 = icmp eq i64 %indvar78, %n.vec83
  br i1 %cmp.n90, label %._crit_edge.i39.i, label %.lr.ph.split.us.i45.i.preheader134

.lr.ph.split.us.i45.i.preheader134:               ; preds = %.lr.ph.split.us.i45.i.preheader, %middle.block89
  %.046.us.i46.i.ph = phi i64 [ %.045.i.i, %.lr.ph.split.us.i45.i.preheader ], [ %i.gs, %middle.block89 ]
  br label %.lr.ph.split.us.i45.i

.lr.ph.split.us.i45.i:                            ; preds = %.lr.ph.split.us.i45.i.preheader134, %.lr.ph.split.us.i45.i
  %.046.us.i46.i = phi i64 [ %.0.us.i47.i, %.lr.ph.split.us.i45.i ], [ %.046.us.i46.i.ph, %.lr.ph.split.us.i45.i.preheader134 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i46.i ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !15
  %i.hb = sub i64 %i.ha, %i.gk
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !15
  %.0.us.i47.i = add nuw i64 %.046.us.i46.i, 1
  %exitcond48.not.i48.i = icmp eq i64 %.046.us.i46.i, %.028
  br i1 %exitcond48.not.i48.i, label %._crit_edge.i39.i, label %.lr.ph.split.us.i45.i, !llvm.loop !67

.lr.ph.split.i41.i:                               ; preds = %.lr.ph.split.i41.i.preheader135, %.lr.ph.split.i41.i
  %.046.i42.i = phi i64 [ %.0.i43.i, %.lr.ph.split.i41.i ], [ %.046.i42.i.ph, %.lr.ph.split.i41.i.preheader135 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.i42.i ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !15
  %i.he = add i64 %i.hd, %i.gk
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !15
  %.0.i43.i = add nuw i64 %.046.i42.i, 1
  %exitcond.not.i44.i = icmp eq i64 %.046.i42.i, %.028
  br i1 %exitcond.not.i44.i, label %._crit_edge.i39.i, label %.lr.ph.split.i41.i, !llvm.loop !68

._crit_edge.i39.i:                                ; preds = %.lr.ph.split.i41.i, %.lr.ph.split.us.i45.i, %middle.block103, %middle.block89, %bb.g
  %i.hf = load i64, ptr %i.dq, align 8, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %.034, i64 %i.hf
  store i8 %i.fm, ptr %i.hg, align 1, !tbaa !21
  br label %stradjust.exit49.i

stradjust.exit49.i:                               ; preds = %._crit_edge.i39.i, %bb.f
  %.pre-phi61.i = phi i64 [ %.pre60.i, %bb.f ], [ %i.ge, %._crit_edge.i39.i ]
  %i.hh = load i64, ptr %i.dq, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %.034, i64 %i.hh
  %i.hj = add nuw nsw i64 %.pre-phi61.i, 1
  call void @MoveMemory(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.a, i64 noundef %i.hj) #11
  %i.hk = add i64 %.156.i, -1                     ; 2 uses
  %.not38.i = icmp eq i64 %i.hk, 0
  %indvar.next79 = add i64 %indvar78, 1
  br i1 %.not38.i, label %StrHeapSort.exit.loopexit, label %bb.e, !llvm.loop !69

StrHeapSort.exit.loopexit:                        ; preds = %stradjust.exit49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.hl = getelementptr i8, ptr %.034, i64 %2
  %i.hm = getelementptr i8, ptr %i.hl, i64 100
  %i.hn = add nuw nsw i32 %.01632, 1              ; 2 uses
  %exitcond43.not = icmp eq i32 %i.hn, %1
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !70

._crit_edge:                                      ; preds = %StrHeapSort.exit.loopexit, %.lr.ph, %LoadStringArray.exit
  %i.ho = phi i64 [ %i.de, %.lr.ph ], [ %i.dd, %LoadStringArray.exit ], [ %i.de, %StrHeapSort.exit.loopexit ]
  %i.hp = call i64 @StopStopwatch(i64 noundef %i.ho) #11
  call void @FreeMemory(ptr noundef %i.ba, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i64 %i.hp
}

; Function Attrs: nounwind uwtable
define dso_local void @DoBitops() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr @global_bitopstruct, align 8, !tbaa !74
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !23
  %i.f = shl i64 %i.e, 3
  %i.g = call ptr @AllocateMemory(i64 noundef %i.f, ptr noundef nonnull %i.b) #11 ; 5 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %.not39 = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %.not39, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.h) #11
  call void (...) @ErrorExit() #11
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.g
  %storemerge = phi i64 [ %i.r, %bb.g ], [ 30, %.preheader ] ; 2 uses
  store i64 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !75
  %i.i = shl i64 %storemerge, 4
  %i.j = call ptr @AllocateMemory(i64 noundef %i.i, ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.k) #11
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !75
  %i.m = call fastcc i64 @DoBitfieldIteration(ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.l, ptr noundef %i.a)
  %sext = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @FreeMemory(ptr noundef %i.j, ptr noundef nonnull %i.b) #11
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !75
  %i.r = add i64 %i.q, 100
  br label %bb.d

bb.h:                                             ; preds = %bb.a
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.h) #11
  call void (...) @ErrorExit() #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !75
  %i.t = shl i64 %i.s, 4
  %i.u = call ptr @AllocateMemory(i64 noundef %i.t, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ReportError(ptr noundef nonnull @.str.53, i32 noundef %i.v) #11
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.j, %bb.k
  %.031 = phi ptr [ %i.u, %bb.j ], [ %i.u, %bb.k ], [ %i.j, %bb.f ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.loopexit
  %.030 = phi i64 [ 0, %.loopexit ], [ %i.y, %bb.l ]
  %.0 = phi double [ 0.000000e+00, %.loopexit ], [ %i.ab, %bb.l ]
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !75
  %i.x = call fastcc i64 @DoBitfieldIteration(ptr noundef %i.g, ptr noundef %.031, i64 noundef %i.w, ptr noundef %i.a)
  %i.y = add i64 %i.x, %.030                      ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !15
  %i.aa = uitofp i64 %i.z to double
  %i.ab = fadd double %.0, %i.aa                  ; 3 uses
  %i.ac = fcmp olt double %i.ab, 1.250000e+06
  br i1 %i.ac, label %bb.l, label %bb.m, !llvm.loop !73

bb.m:                                             ; preds = %bb.l
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %.031, ptr noundef nonnull %i.b) #11
  %i.ad = call double @TicksToFracSecs(i64 noundef %i.y) #11
  %i.ae = fdiv double %i.ab, %i.ad
  store double %i.ae, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 16), align 8, !tbaa !76
  %i.af = load i32, ptr @global_bitopstruct, align 8, !tbaa !74
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr @global_bitopstruct, align 8, !tbaa !74
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoBitfieldIteration(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !15
  %i.a = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !23
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.050
  store i64 6148914691236517205, ptr %i.c, align 8, !tbaa !15
  %i.d = add nuw nsw i64 %.050, 1                 ; 2 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !23
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %._crit_edge, %.lr.ph53
  %.151 = phi i64 [ %i.q, %.lr.ph53 ], [ 0, %._crit_edge ] ; 2 uses
  %i.i = tail call i32 @abs_randwc(i32 noundef 262140) #11 ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx44 = shl i64 %.151, 4
  %4 = getelementptr inbounds i8, ptr %1, i64 %.idx44 ; 2 uses
  store i64 %i.j, ptr %4, align 8, !tbaa !15
  %i.k = sub i32 262140, %i.i
  %i.l = tail call i32 @abs_randwc(i32 noundef %i.k) #11
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !15
  %i.o = load i64, ptr %3, align 8, !tbaa !15
  %i.p = add i64 %i.o, %i.m
  store i64 %i.p, ptr %3, align 8, !tbaa !15
  %i.q = add nuw nsw i64 %.151, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %.lr.ph57.preheader, label %.lr.ph53, !llvm.loop !78

._crit_edge54:                                    ; preds = %._crit_edge
  %i.r = tail call i64 (...) @StartStopwatch() #11
  br label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %.lr.ph53
  %i.s = tail call i64 (...) @StartStopwatch() #11
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %ToggleBitRun.exit
  %.255 = phi i64 [ %i.cw, %ToggleBitRun.exit ], [ 0, %.lr.ph57.preheader ] ; 3 uses
  %i.t = urem i64 %.255, 3
  %.idx43 = shl i64 %.255, 4
  %5 = getelementptr inbounds i8, ptr %1, i64 %.idx43 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15   ; 13 uses
  %.not12.i = icmp eq i64 %i.v, 0                 ; 3 uses
  switch i64 %i.t, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph57
  br i1 %.not12.i, label %ToggleBitRun.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load i64, ptr %5, align 8, !tbaa !15     ; 4 uses
  %xtraiter74 = and i64 %i.v, 1
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.i
  %i.x = add nsw i64 %i.v, -1
  %i.y = lshr i64 %i.w, 6
  %i.z = and i64 %i.w, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = or i64 %i.aa, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !15
  %i.ae = add i64 %i.w, 1
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.i
  %.in47.unr = phi i64 [ %i.v, %.lr.ph.i ], [ %i.x, %.lr.ph.split.i.prol ]
  %.013.i.unr = phi i64 [ %i.w, %.lr.ph.i ], [ %i.ae, %.lr.ph.split.i.prol ]
  %i.af = icmp eq i64 %i.v, 1
  br i1 %i.af, label %ToggleBitRun.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.in47 = phi i64 [ %i.an, %.lr.ph.split.i ], [ %.in47.unr, %.lr.ph.split.i.prol.loopexit ]
  %.013.i = phi i64 [ %i.au, %.lr.ph.split.i ], [ %.013.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.ag = lshr i64 %.013.i, 6
  %i.ah = and i64 %.013.i, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.al = or i64 %i.ai, %i.ak
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !15
  %i.am = add i64 %.013.i, 1                      ; 2 uses
  %i.an = add i64 %.in47, -2                      ; 2 uses
  %i.ao = lshr i64 %i.am, 6
  %i.ap = and i64 %i.am, 63
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = or i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !15
  %i.au = add i64 %.013.i, 2
  %.not.i.1 = icmp eq i64 %i.an, 0
  br i1 %.not.i.1, label %ToggleBitRun.exit, label %.lr.ph.split.i, !llvm.loop !79

bb.c:                                             ; preds = %.lr.ph57
  br i1 %.not12.i, label %ToggleBitRun.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.c
  %i.av = load i64, ptr %5, align 8, !tbaa !15    ; 4 uses
  %xtraiter72 = and i64 %i.v, 1
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.i43
  %i.aw = add nsw i64 %i.v, -1
  %i.ax = lshr i64 %i.av, 6
  %i.ay = and i64 %i.av, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bd = and i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !15
  %i.be = add i64 %i.av, 1
  br label %.lr.ph.split.us.i.prol.loopexit

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.i43
  %.in.unr = phi i64 [ %i.v, %.lr.ph.i43 ], [ %i.aw, %.lr.ph.split.us.i.prol ]
  %.013.us.i.unr = phi i64 [ %i.av, %.lr.ph.i43 ], [ %i.be, %.lr.ph.split.us.i.prol ]
  %i.bf = icmp eq i64 %i.v, 1
  br i1 %i.bf, label %ToggleBitRun.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.in = phi i64 [ %i.bo, %.lr.ph.split.us.i ], [ %.in.unr, %.lr.ph.split.us.i.prol.loopexit ]
  %.013.us.i = phi i64 [ %i.bw, %.lr.ph.split.us.i ], [ %.013.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 4 uses
  %i.bg = lshr i64 %.013.us.i, 6
  %i.bh = and i64 %.013.us.i, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = xor i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.bm = and i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !15
  %i.bn = add i64 %.013.us.i, 1                   ; 2 uses
  %i.bo = add i64 %.in, -2                        ; 2 uses
  %i.bp = lshr i64 %i.bn, 6
  %i.bq = and i64 %i.bn, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = xor i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.bv = and i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !15
  %i.bw = add i64 %.013.us.i, 2
  %.not.us.i.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.us.i.1, label %ToggleBitRun.exit, label %.lr.ph.split.us.i, !llvm.loop !79

bb.d:                                             ; preds = %.lr.ph57
  br i1 %.not12.i, label %ToggleBitRun.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %bb.d
  %i.bx = load i64, ptr %5, align 8, !tbaa !15    ; 4 uses
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i45.prol.loopexit, label %.lr.ph.i45.prol

.lr.ph.i45.prol:                                  ; preds = %.lr.ph.i45.preheader
  %i.by = add nsw i64 %i.v, -1
  %i.bz = lshr i64 %i.bx, 6
  %i.ca = and i64 %i.bx, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.ce = xor i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !15
  %i.cf = add i64 %i.bx, 1
  br label %.lr.ph.i45.prol.loopexit

.lr.ph.i45.prol.loopexit:                         ; preds = %.lr.ph.i45.prol, %.lr.ph.i45.preheader
  %.09.i.unr = phi i64 [ %i.v, %.lr.ph.i45.preheader ], [ %i.by, %.lr.ph.i45.prol ]
  %.068.i.unr = phi i64 [ %i.bx, %.lr.ph.i45.preheader ], [ %i.cf, %.lr.ph.i45.prol ]
  %i.cg = icmp eq i64 %i.v, 1
  br i1 %i.cg, label %ToggleBitRun.exit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.prol.loopexit, %.lr.ph.i45
  %.09.i = phi i64 [ %i.co, %.lr.ph.i45 ], [ %.09.i.unr, %.lr.ph.i45.prol.loopexit ]
  %.068.i = phi i64 [ %i.cv, %.lr.ph.i45 ], [ %.068.i.unr, %.lr.ph.i45.prol.loopexit ] ; 4 uses
  %i.ch = lshr i64 %.068.i, 6
  %i.ci = and i64 %.068.i, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.cm = xor i64 %i.cj, %i.cl
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !15
  %i.cn = add i64 %.068.i, 1                      ; 2 uses
  %i.co = add i64 %.09.i, -2                      ; 2 uses
  %i.cp = lshr i64 %i.cn, 6
  %i.cq = and i64 %i.cn, 63
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cp ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !15
  %i.cu = xor i64 %i.cr, %i.ct
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !15
  %i.cv = add i64 %.068.i, 2
  %.not.i46.1 = icmp eq i64 %i.co, 0
  br i1 %.not.i46.1, label %ToggleBitRun.exit, label %.lr.ph.i45, !llvm.loop !80

default.unreachable:                              ; preds = %.lr.ph57
  unreachable

ToggleBitRun.exit:                                ; preds = %.lr.ph.i45.prol.loopexit, %.lr.ph.i45, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %bb.d, %bb.c, %bb.b
  %i.cw = add nuw nsw i64 %.255, 1                ; 2 uses
  %exitcond61.not = icmp eq i64 %i.cw, %2
  br i1 %exitcond61.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !81

._crit_edge58:                                    ; preds = %ToggleBitRun.exit, %._crit_edge54
  %i.cx = phi i64 [ %i.r, %._crit_edge54 ], [ %i.s, %ToggleBitRun.exit ]
  %i.cy = tail call i64 @StopStopwatch(i64 noundef %i.cx) #11
  ret i64 %i.cy
}

; Function Attrs: nounwind uwtable
define dso_local void @DoEmFloat() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.c = mul i64 %i.b, 12
  %i.d = call ptr @AllocateMemory(i64 noundef %i.c, ptr noundef nonnull %i.a) #11 ; 25 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ReportError(ptr noundef nonnull @.str.54, i32 noundef %i.e) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.g = mul i64 %i.f, 12
  %i.h = call ptr @AllocateMemory(i64 noundef %i.g, ptr noundef nonnull %i.a) #11 ; 24 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not52 = icmp eq i32 %i.i, 0
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ReportError(ptr noundef nonnull @.str.54, i32 noundef %i.i) #11
  call void @FreeMemory(ptr noundef %i.d, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.k = mul i64 %i.j, 12
  %i.l = call ptr @AllocateMemory(i64 noundef %i.k, ptr noundef nonnull %i.a) #11 ; 23 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ReportError(ptr noundef nonnull @.str.54, i32 noundef %i.m) #11
  call void @FreeMemory(ptr noundef %i.d, ptr noundef nonnull %i.a) #11
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.a) #11
  call void (...) @ErrorExit() #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  call void @SetupCPUEmFloatArrays(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.n) #11
  %i.o = load i32, ptr @global_emfloatstruct, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 24), align 8, !tbaa !27
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.r = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.q, i64 noundef 1) #11
  %i.s = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.056.lcssa = phi i64 [ 1, %bb.h ], [ 2, %bb.i ], [ 4, %bb.j ], [ 8, %bb.k ], [ 16, %bb.l ], [ 32, %bb.m ], [ 64, %bb.n ], [ 128, %bb.o ], [ 256, %bb.p ], [ 512, %bb.q ], [ 1024, %bb.r ], [ 2048, %bb.s ], [ 4096, %bb.t ], [ 8192, %bb.u ], [ 16384, %bb.v ], [ 32768, %bb.w ], [ 65536, %bb.x ], [ 131072, %bb.y ], [ 262144, %bb.z ]
  store i64 %.056.lcssa, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 24), align 8, !tbaa !27
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.v = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.u, i64 noundef 2) #11
  %i.w = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.z = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.y, i64 noundef 4) #11
  %i.aa = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.ad = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.ac, i64 noundef 8) #11
  %i.ae = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.ah = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.ag, i64 noundef 16) #11
  %i.ai = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.al = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.ak, i64 noundef 32) #11
  %i.am = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.ap = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.ao, i64 noundef 64) #11
  %i.aq = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.at = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.as, i64 noundef 128) #11
  %i.au = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.ax = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.aw, i64 noundef 256) #11
  %i.ay = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.bb = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.ba, i64 noundef 512) #11
  %i.bc = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.bf = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.be, i64 noundef 1024) #11
  %i.bg = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !25
  %i.bj = call i64 @DoEmFloatIteration(ptr noundef %i.d, ptr noundef %i.h, ptr noundef %i.l, i64 noundef %i.bi, i64 noundef 2048) #11
  %i.bk = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.bl = icmp ugt i64 %i.bj, %i.bk
end_hunk_0
