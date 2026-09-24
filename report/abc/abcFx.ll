Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFx?download=true
inline.NumInlined: 642
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Abc_NtkFxCheck:bb.a
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Vec_IntCheckUniqueSmall.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 20
  %.val14 = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val14, 15
  %.not = icmp eq i32 %i.j, 7
  br i1 %.not, label %bb.d, label %Vec_IntCheckUniqueSmall.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph17.i, label %Vec_IntCheckUniqueSmall.exit.thread

.lr.ph17.i:                                       ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  %i.o = zext nneg i32 %i.l to i64                ; 3 uses
  br label %bb.e

.loopexit.i:                                      ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, %i.o
  br i1 %exitcond26.not.i, label %Vec_IntCheckUniqueSmall.exit.thread, label %bb.e, !llvm.loop !125

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph17.i
  %indvars.iv22.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next23.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph17.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next23.i, %i.o
  br i1 %i.p, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv22.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next20.i, %i.o
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.g, !llvm.loop !126

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next20.i, %bb.f ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv19.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %Vec_IntCheckUniqueSmall.exit, label %bb.f

Vec_IntCheckUniqueSmall.exit:                     ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.x) ; 0 uses
  %.val6.i = load i32, ptr %i.w, align 4, !tbaa !45
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.val6.i) ; 0 uses
  %.val8.i = load i32, ptr %i.w, align 4, !tbaa !45
  %i.aa = icmp sgt i32 %.val8.i, 0
  br i1 %i.aa, label %.lr.ph.i15, label %Vec_IntPrint.exit

.lr.ph.i15:                                       ; preds = %Vec_IntCheckUniqueSmall.exit, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %.lr.ph.i15 ], [ 0, %Vec_IntCheckUniqueSmall.exit ] ; 2 uses
  %.val7.i = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val7.i, i64 %indvars.iv.i16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ac) ; 0 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !45
  %i.ae = sext i32 %.val.i to i64
  %i.af = icmp slt i64 %indvars.iv.next.i17, %i.ae
  br i1 %i.af, label %.lr.ph.i15, label %Vec_IntPrint.exit, !llvm.loop !127

Vec_IntPrint.exit:                                ; preds = %.lr.ph.i15, %Vec_IntCheckUniqueSmall.exit
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.critedge

Vec_IntCheckUniqueSmall.exit.thread:              ; preds = %.loopexit.i, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !128

.critedge:                                        ; preds = %Vec_IntCheckUniqueSmall.exit.thread, %bb.a, %Vec_IntPrint.exit
  %.010 = phi i32 [ 0, %Vec_IntPrint.exit ], [ 1, %bb.a ], [ 1, %Vec_IntCheckUniqueSmall.exit.thread ]
  ret i32 %.010
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkFxPerform(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Abc_NtkFxCheck(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @Abc_NtkFxRetrieve(ptr noundef %0) ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !38
  %i.e = tail call i32 @Fx_FastExtract(ptr noundef %i.b, i32 noundef %.val.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) ; 0 uses
  tail call void @Abc_NtkFxInsert(ptr noundef %0, ptr noundef %i.b)
  %i.f = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !19 ; 3 uses
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.i = phi i32 [ %i.q, %bb.d ], [ %i.f, %bb.b ]
  %i.j = phi ptr [ %i.r, %bb.d ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.m) #29
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !47
  %.pre18.i.i = load i32, ptr %i.b, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi i32 [ %.pre18.i.i, %bb.c ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.r = phi ptr [ %i.n, %bb.c ], [ %i.j, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.d, %._crit_edge.i.i
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.u) #29
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.b) #29
  %i.v = tail call i32 @Abc_NtkCheck(ptr noundef %0) #29
  %.not14 = icmp eq i32 %i.v, 0
  br i1 %.not14, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %Vec_WecFree.exit, %bb.a
  %str.2.sink = phi ptr [ @str.1, %bb.a ], [ @str.2, %Vec_WecFree.exit ]
  %.0.ph = phi i32 [ 0, %bb.a ], [ 1, %Vec_WecFree.exit ]
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %Vec_WecFree.exit
  %.0 = phi i32 [ 1, %Vec_WecFree.exit ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @Fx_FastExtract(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %10, align 8, !tbaa !54
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.i = call ptr @Fx_ManStart(ptr noundef %0)    ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %3, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %4, ptr %i.k, align 4, !tbaa !62
  call void @Fx_ManCreateLiterals(ptr noundef %i.i, i32 noundef %1)
  call void @Fx_ManComputeLevel(ptr noundef %i.i)
  call void @Fx_ManCreateDivisors(ptr noundef %i.i)
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  br i1 %.not, label %Fx_PrintDivisors.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %.val4.i = load i32, ptr %i.n, align 4, !tbaa !65
  %i.o = icmp sgt i32 %.val4.i, 0
  br i1 %i.o, label %.lr.ph.i, label %Fx_PrintDivisors.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.05.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  call fastcc void @Fx_PrintDiv(ptr noundef nonnull readonly %i.i, i32 noundef %.05.i)
  %i.p = add nuw nsw i32 %.05.i, 1                ; 2 uses
  %.val.i = load i32, ptr %i.n, align 4, !tbaa !65
  %i.q = icmp slt i32 %i.p, %.val.i
  br i1 %i.q, label %.lr.ph.i, label %Fx_PrintDivisors.exit, !llvm.loop !129

Fx_PrintDivisors.exit:                            ; preds = %.lr.ph.i, %bb.c, %Abc_Clock.exit
  %.not31 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Fx_PrintDivisors.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.r = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #29
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %Abc_Clock.exit33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %9, align 8, !tbaa !54
  %i.u = mul nsw i64 %i.t, 1000000
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !55
  %i.x = sdiv i64 %i.w, 1000
  %i.y = add nsw i64 %i.x, %i.u
  br label %Abc_Clock.exit33

Abc_Clock.exit33:                                 ; preds = %bb.d, %bb.e
  %.0.i32 = phi i64 [ %i.y, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.z = sub nsw i64 %.0.i32, %.0.i
  call fastcc void @Fx_PrintStats(ptr noundef nonnull %i.i, i64 noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit33, %Fx_PrintDivisors.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.aa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #29
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %Abc_Clock.exit35, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %8, align 8, !tbaa !54
  %i.ad = mul nsw i64 %i.ac, 1000000
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55
  %i.ag = sdiv i64 %i.af, 1000
  %i.ah = add nsw i64 %i.ag, %i.ad
  br label %Abc_Clock.exit35

Abc_Clock.exit35:                                 ; preds = %bb.f, %bb.g
  %.0.i34 = phi i64 [ %i.ah, %bb.g ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i64 %.0.i34, ptr %i.ai, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ak = icmp sgt i32 %2, 0
  br i1 %i.ak, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Clock.exit35, %bb.q
  %.043 = phi i32 [ %i.dq, %bb.q ], [ 0, %Abc_Clock.exit35 ]
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !67 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 7 uses
  %.val3.i = load i32, ptr %i.am, align 4, !tbaa !70
  %i.an = icmp sgt i32 %.val3.i, 1
  br i1 %i.an, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71 ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48 ; 5 uses
  %i.as = getelementptr i8, ptr %i.al, i64 24
  %.val.i36 = load ptr, ptr %i.as, align 8, !tbaa !72
  %.val.val.i = load ptr, ptr %.val.i36, align 8, !tbaa !73 ; 5 uses
  %.not.i.i = icmp eq ptr %.val.val.i, null       ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !74
  br label %Vec_QueTopPriority.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = sitofp i32 %i.ar to float
  br label %Vec_QueTopPriority.exit

Vec_QueTopPriority.exit:                          ; preds = %bb.i, %bb.j
  %i.ax = phi float [ %i.aw, %bb.j ], [ %i.av, %bb.i ]
  %i.ay = fcmp ogt float %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.k, label %.critedge

bb.k:                                             ; preds = %Vec_QueTopPriority.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75 ; 4 uses
  %i.bb = sext i32 %i.ar to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  store i32 -1, ptr %i.bc, align 4, !tbaa !48
  %i.bd = load i32, ptr %i.am, align 4, !tbaa !70
  %i.be = add nsw i32 %i.bd, -1                   ; 3 uses
  store i32 %i.be, ptr %i.am, align 4, !tbaa !70
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 -1, ptr %i.aq, align 4, !tbaa !48
  br label %Vec_QuePop.exit

bb.m:                                             ; preds = %bb.k
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !48 ; 4 uses
  store i32 -1, ptr %i.bh, align 4, !tbaa !48
  store i32 %i.bi, ptr %i.aq, align 4, !tbaa !48
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bj ; 2 uses
  store i32 1, ptr %i.bk, align 4, !tbaa !48
  br i1 %.not.i.i, label %Vec_QuePrio.exit.i.i, label %Vec_QuePrio.exit.thread.i.i

Vec_QuePrio.exit.i.i:                             ; preds = %bb.m
  %i.bl = sitofp i32 %i.bi to float
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !70 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 2
  br i1 %i.bn, label %.lr.ph.split.us.i.i, label %Vec_QueMoveDown.exit.i

Vec_QuePrio.exit.thread.i.i:                      ; preds = %bb.m
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.bj
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !74
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !70 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 2
  br i1 %i.br, label %.lr.ph.split.i.i, label %Vec_QueMoveDown.exit.i

.lr.ph.split.us.i.i:                              ; preds = %Vec_QuePrio.exit.i.i, %bb.n
  %i.bs = phi i32 [ %i.cm, %bb.n ], [ %i.bm, %Vec_QuePrio.exit.i.i ]
  %.049.us.i.i = phi i32 [ %.0.us.i.i, %bb.n ], [ 2, %Vec_QuePrio.exit.i.i ] ; 4 uses
  %.03548.us.i.i = phi i32 [ %.1.us.i.i, %bb.n ], [ 1, %Vec_QuePrio.exit.i.i ] ; 3 uses
  %i.bt = or disjoint i32 %.049.us.i.i, 1         ; 3 uses
  %i.bu = icmp slt i32 %i.bt, %i.bs
  %i.bv = sext i32 %.049.us.i.i to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !48 ; 3 uses
  br i1 %i.bu, label %Vec_QuePrio.exit44.us.i.i, label %Vec_QuePrio.exit46.us.i.i

Vec_QuePrio.exit44.us.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.by = sitofp i32 %i.bx to float
  %i.bz = sext i32 %i.bt to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 2 uses
  %i.cc = sitofp i32 %i.cb to float
  %i.cd = fcmp olt float %i.by, %i.cc             ; 2 uses
  %spec.select.us.i.i = select i1 %i.cd, i32 %i.bt, i32 %.049.us.i.i
  %i.ce = select i1 %i.cd, i32 %i.cb, i32 %i.bx
  br label %Vec_QuePrio.exit46.us.i.i

Vec_QuePrio.exit46.us.i.i:                        ; preds = %Vec_QuePrio.exit44.us.i.i, %.lr.ph.split.us.i.i
  %i.cf = phi i32 [ %i.ce, %Vec_QuePrio.exit44.us.i.i ], [ %i.bx, %.lr.ph.split.us.i.i ] ; 3 uses
  %.1.us.i.i = phi i32 [ %spec.select.us.i.i, %Vec_QuePrio.exit44.us.i.i ], [ %.049.us.i.i, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.cg = sitofp i32 %i.cf to float
  %i.ch = fcmp ult float %i.bl, %i.cg
  br i1 %i.ch, label %bb.n, label %Vec_QueMoveDown.exit.i

bb.n:                                             ; preds = %Vec_QuePrio.exit46.us.i.i
  %i.ci = sext i32 %.03548.us.i.i to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ci
  store i32 %i.cf, ptr %i.cj, align 4, !tbaa !48
  %i.ck = sext i32 %i.cf to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ck
  store i32 %.03548.us.i.i, ptr %i.cl, align 4, !tbaa !48
  %.0.us.i.i = shl i32 %.1.us.i.i, 1              ; 2 uses
  %i.cm = load i32, ptr %i.am, align 4, !tbaa !70 ; 2 uses
  %i.cn = icmp slt i32 %.0.us.i.i, %i.cm
  br i1 %i.cn, label %.lr.ph.split.us.i.i, label %Vec_QueMoveDown.exit.i, !llvm.loop !1

.lr.ph.split.i.i:                                 ; preds = %Vec_QuePrio.exit.thread.i.i, %bb.o
  %i.co = phi i32 [ %i.dm, %bb.o ], [ %i.bq, %Vec_QuePrio.exit.thread.i.i ]
  %.049.i.i = phi i32 [ %.0.i.i, %bb.o ], [ 2, %Vec_QuePrio.exit.thread.i.i ] ; 4 uses
  %.03548.i.i = phi i32 [ %.1.i.i, %bb.o ], [ 1, %Vec_QuePrio.exit.thread.i.i ] ; 3 uses
  %i.cp = or disjoint i32 %.049.i.i, 1            ; 3 uses
  %i.cq = icmp slt i32 %i.cp, %i.co
  %i.cr = sext i32 %.049.i.i to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !48 ; 3 uses
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !74 ; 3 uses
  br i1 %i.cq, label %Vec_QuePrio.exit44.i.i, label %Vec_QuePrio.exit46.i.i

Vec_QuePrio.exit44.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.cx = sext i32 %i.cp to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !48 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !74 ; 2 uses
  %i.dd = fcmp olt float %i.cw, %i.dc             ; 3 uses
  %spec.select.i.i = select i1 %i.dd, i32 %i.cp, i32 %.049.i.i
  %i.de = select i1 %i.dd, i32 %i.cz, i32 %i.ct   ; 2 uses
  %i.df = select i1 %i.dd, float %i.dc, float %i.cw
  %.pre68.i.i = sext i32 %i.de to i64
  br label %Vec_QuePrio.exit46.i.i

Vec_QuePrio.exit46.i.i:                           ; preds = %Vec_QuePrio.exit44.i.i, %.lr.ph.split.i.i
  %.pre-phi69.i.i = phi i64 [ %.pre68.i.i, %Vec_QuePrio.exit44.i.i ], [ %i.cu, %.lr.ph.split.i.i ]
  %i.dg = phi float [ %i.df, %Vec_QuePrio.exit44.i.i ], [ %i.cw, %.lr.ph.split.i.i ]
  %i.dh = phi i32 [ %i.de, %Vec_QuePrio.exit44.i.i ], [ %i.ct, %.lr.ph.split.i.i ]
end_hunk_0
begin_hunk_1_@Fx_ManFindCommonPairs:bb.a

Vec_IntEqual.exit.Vec_IntPush.exit_crit_edge:     ; preds = %Vec_IntEqual.exit
  %.pre155 = load ptr, ptr %i.w, align 8, !tbaa !47
  br label %Vec_IntPush.exit

bb.t:                                             ; preds = %Vec_IntEqual.exit
  %i.dh = icmp slt i32 %i.de, 16
  br i1 %i.dh, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %i.w, align 8, !tbaa !47  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.di, null
  br i1 %.not9.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.di, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.dk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.t
  %i.dl = icmp samesign ult i32 %i.de, 1073741823
  %i.dm = shl nuw nsw i32 %i.de, 1
  %spec.select.i = select i1 %i.dl, i32 %i.dm, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.de, %spec.select.i
  %.pre156 = load ptr, ptr %i.w, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i, label %bb.y, label %Vec_IntPush.exit

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i = icmp eq ptr %.pre156, null
  %i.dn = zext nneg i32 %spec.select.i to i64
  %i.do = shl nuw nsw i64 %i.dn, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = tail call ptr @realloc(ptr noundef nonnull %.pre156, i64 noundef %i.do) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.dq = tail call noalias ptr @malloc(i64 noundef %i.do) #27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.z, %bb.aa, %bb.v, %bb.w
  %i.dr = phi ptr [ %i.dk, %bb.w ], [ %i.dj, %bb.v ], [ %i.dp, %bb.z ], [ %i.dq, %bb.aa ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i, %bb.z ], [ %spec.select.i, %bb.aa ]
  store ptr %i.dr, ptr %i.w, align 8, !tbaa !47
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !46
  %.pre157 = load i32, ptr %i.m, align 4, !tbaa !45
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntEqual.exit.Vec_IntPush.exit_crit_edge, %bb.x, %Vec_IntGrow.exit11.sink.split.i
  %i.ds = phi i32 [ %i.de, %Vec_IntEqual.exit.Vec_IntPush.exit_crit_edge ], [ %i.de, %bb.x ], [ %.pre157, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.dt = phi ptr [ %.pre155, %Vec_IntEqual.exit.Vec_IntPush.exit_crit_edge ], [ %.pre156, %bb.x ], [ %i.dr, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.du = add nsw i32 %i.ds, 1
  store i32 %i.du, ptr %i.m, align 4, !tbaa !45
  %i.dv = sext i32 %i.ds to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dv
  store i32 %i.dd, ptr %i.dw, align 4, !tbaa !48
  %i.dx = load i32, ptr %i.bh, align 4, !tbaa !48
  %i.dy = load i32, ptr %i.m, align 4, !tbaa !45  ; 7 uses
  %i.dz = load i32, ptr %3, align 8, !tbaa !46
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ab, label %Vec_IntPush.exit105

bb.ab:                                            ; preds = %Vec_IntPush.exit
  %i.eb = icmp slt i32 %i.dy, 16
  br i1 %i.eb, label %Vec_IntGrow.exit11.sink.split.i101, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = icmp samesign ult i32 %i.dy, 1073741823
  %i.ed = shl nuw nsw i32 %i.dy, 1
  %spec.select.i98 = select i1 %i.ec, i32 %i.ed, i32 2147483647 ; 3 uses
  %.not.i9.i99 = icmp samesign ult i32 %i.dy, %spec.select.i98
  br i1 %.not.i9.i99, label %bb.ad, label %Vec_IntPush.exit105

bb.ad:                                            ; preds = %bb.ac
  %i.ee = zext nneg i32 %spec.select.i98 to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2
  br label %Vec_IntGrow.exit11.sink.split.i101

Vec_IntGrow.exit11.sink.split.i101:               ; preds = %bb.ab, %bb.ad
  %.sink = phi i64 [ %i.ef, %bb.ad ], [ 64, %bb.ab ]
  %spec.select.sink.i102 = phi i32 [ %spec.select.i98, %bb.ad ], [ 16, %bb.ab ]
  %i.eg = tail call ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef %.sink) #30 ; 2 uses
  store ptr %i.eg, ptr %i.w, align 8, !tbaa !47
  store i32 %spec.select.sink.i102, ptr %3, align 8, !tbaa !46
  %.pre158 = load i32, ptr %i.m, align 4, !tbaa !45
  br label %Vec_IntPush.exit105

Vec_IntPush.exit105:                              ; preds = %Vec_IntPush.exit, %bb.ac, %Vec_IntGrow.exit11.sink.split.i101
  %i.eh = phi i32 [ %i.dy, %Vec_IntPush.exit ], [ %i.dy, %bb.ac ], [ %.pre158, %Vec_IntGrow.exit11.sink.split.i101 ] ; 2 uses
  %i.ei = phi ptr [ %i.dt, %Vec_IntPush.exit ], [ %i.dt, %bb.ac ], [ %i.eg, %Vec_IntGrow.exit11.sink.split.i101 ]
  %i.ej = add nsw i32 %i.eh, 1
  store i32 %i.ej, ptr %i.m, align 4, !tbaa !45
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ek
  store i32 %i.dx, ptr %i.el, align 4, !tbaa !48
  %i.em = load i32, ptr %i.n, align 4, !tbaa !45  ; 7 uses
  %i.en = load i32, ptr %4, align 8, !tbaa !46
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.ae, label %Vec_IntPush.exit105.Vec_IntPush.exit113_crit_edge

Vec_IntPush.exit105.Vec_IntPush.exit113_crit_edge: ; preds = %Vec_IntPush.exit105
  %.pre159 = load ptr, ptr %i.x, align 8, !tbaa !47
  br label %Vec_IntPush.exit113

bb.ae:                                            ; preds = %Vec_IntPush.exit105
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eq = load ptr, ptr %i.x, align 8, !tbaa !47  ; 2 uses
  %.not9.i.i111 = icmp eq ptr %i.eq, null
  br i1 %.not9.i.i111, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i109

bb.ah:                                            ; preds = %bb.af
  %i.es = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i109

bb.ai:                                            ; preds = %bb.ae
  %i.et = icmp samesign ult i32 %i.em, 1073741823
  %i.eu = shl nuw nsw i32 %i.em, 1
  %spec.select.i106 = select i1 %i.et, i32 %i.eu, i32 2147483647 ; 4 uses
  %.not.i9.i107 = icmp samesign ult i32 %i.em, %spec.select.i106
  %.pre160 = load ptr, ptr %i.x, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i107, label %bb.aj, label %Vec_IntPush.exit113

bb.aj:                                            ; preds = %bb.ai
  %.not9.i10.i108 = icmp eq ptr %.pre160, null
  %i.ev = zext nneg i32 %spec.select.i106 to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2                ; 2 uses
  br i1 %.not9.i10.i108, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ex = tail call ptr @realloc(ptr noundef nonnull %.pre160, i64 noundef %i.ew) #30
  br label %Vec_IntGrow.exit11.sink.split.i109

bb.al:                                            ; preds = %bb.aj
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ew) #27
  br label %Vec_IntGrow.exit11.sink.split.i109

Vec_IntGrow.exit11.sink.split.i109:               ; preds = %bb.ak, %bb.al, %bb.ag, %bb.ah
  %i.ez = phi ptr [ %i.es, %bb.ah ], [ %i.er, %bb.ag ], [ %i.ex, %bb.ak ], [ %i.ey, %bb.al ] ; 2 uses
  %spec.select.sink.i110 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i106, %bb.ak ], [ %spec.select.i106, %bb.al ]
  store ptr %i.ez, ptr %i.x, align 8, !tbaa !47
  store i32 %spec.select.sink.i110, ptr %4, align 8, !tbaa !46
  %.pre161 = load i32, ptr %i.n, align 4, !tbaa !45
  br label %Vec_IntPush.exit113

Vec_IntPush.exit113:                              ; preds = %Vec_IntPush.exit105.Vec_IntPush.exit113_crit_edge, %bb.ai, %Vec_IntGrow.exit11.sink.split.i109
  %i.fa = phi i32 [ %i.em, %Vec_IntPush.exit105.Vec_IntPush.exit113_crit_edge ], [ %i.em, %bb.ai ], [ %.pre161, %Vec_IntGrow.exit11.sink.split.i109 ] ; 2 uses
  %i.fb = phi ptr [ %.pre159, %Vec_IntPush.exit105.Vec_IntPush.exit113_crit_edge ], [ %.pre160, %bb.ai ], [ %i.ez, %Vec_IntGrow.exit11.sink.split.i109 ]
  %i.fc = add nsw i32 %i.fa, 1
  store i32 %i.fc, ptr %i.n, align 4, !tbaa !45
  %i.fd = sext i32 %i.fa to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fd
  store i32 %i.cu, ptr %i.fe, align 4, !tbaa !48
  br label %Vec_IntEqual.exit.thread

Vec_IntEqual.exit.thread:                         ; preds = %bb.s, %Fx_ManDivNormalize.exit, %bb.e, %Vec_IntPush.exit113
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next146, %.072.lcssa
  br i1 %exitcond.not, label %bb.am, label %bb.e, !llvm.loop !175

bb.am:                                            ; preds = %Vec_IntEqual.exit.thread
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %.073.lcssa
  br i1 %exitcond154.not, label %.loopexit, label %.preheader, !llvm.loop !176

bb.an:                                            ; preds = %bb.b
  %i.ff = icmp slt i32 %i.ac, %i.ah
  br i1 %i.ff, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %.075134, i64 4
  br label %.loopexit

bb.ap:                                            ; preds = %bb.an
  %i.fh = getelementptr inbounds nuw i8, ptr %.074135, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %bb.ao, %bb.ap
  %.176 = phi ptr [ %.075134, %bb.ap ], [ %i.fg, %bb.ao ], [ %.lcssa, %bb.am ] ; 2 uses
  %.1 = phi ptr [ %i.fh, %bb.ap ], [ %.074135, %bb.ao ], [ %.lcssa117, %bb.am ] ; 2 uses
  %i.fi = icmp ult ptr %.176, %i.h
  %i.fj = icmp ult ptr %.1, %i.l
  %i.fk = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %i.fk, label %bb.b, label %._crit_edge138, !llvm.loop !177

._crit_edge138:                                   ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Fx_ManUpdate(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 9 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !104
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 20 uses
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 5 uses
  %i.j = icmp ne i32 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.c
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = getelementptr i8, ptr %i.l, i64 8
  %.val3.i.i = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val3.i.i, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !100  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 %i.u, ptr %i.v, align 8, !tbaa !101
  %i.w = getelementptr i8, ptr %i.i, i64 44       ; 2 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = getelementptr i8, ptr %i.i, i64 48       ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !103
  %i.z = icmp sgt i32 %i.u, 0
  br i1 %i.z, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !45  ; 7 uses
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !46
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !47
  br label %Vec_IntPush.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %i.ad, 16
  br i1 %i.ag, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.g:                                             ; preds = %bb.c
  %i.ak = icmp samesign ult i32 %i.ad, 1073741823
  %i.al = shl nuw nsw i32 %i.ad, 1
  %spec.select.i.i = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ad, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.h, label %Vec_IntPush.exit.i

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.am = zext nneg i32 %spec.select.i.i to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.an) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #27
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.aq = phi ptr [ %i.aj, %bb.f ], [ %i.ai, %bb.e ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %bb.j ]
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !47
  store i32 %spec.select.sink.i.i, ptr %i.b, align 8, !tbaa !46
  %.pre11.i = load i32, ptr %i.g, align 4, !tbaa !45
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.g, %.Vec_IntPush.exit_crit_edge.i
  %i.ar = phi i32 [ %i.ad, %.Vec_IntPush.exit_crit_edge.i ], [ %i.ad, %bb.g ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.as = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.g ], [ %i.aq, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.g, align 4, !tbaa !45
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %i.ac, ptr %i.av, align 4, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !45
  %i.aw = sext i32 %.val.i to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.b, label %Vec_IntAppend.exit, !llvm.loop !178

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.a
  %.val16.i = load i32, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  %i.ay = icmp sgt i32 %.val16.i, 0
  br i1 %i.ay, label %.lr.ph.i416, label %Fx_ManDivFindPivots.exit

.lr.ph.i416:                                      ; preds = %Vec_IntAppend.exit
  %i.az = getelementptr i8, ptr %i.b, i64 8
  %.val15.i = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.ba = zext nneg i32 %.val16.i to i64
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.i, %.lr.ph.i416
  %.0857 = phi i32 [ -1, %.lr.ph.i416 ], [ %.1858, %thread-pre-split.i ] ; 2 uses
  %.0853 = phi i32 [ -1, %.lr.ph.i416 ], [ %.2855, %thread-pre-split.i ] ; 2 uses
  %indvars.iv.i417 = phi i64 [ 0, %.lr.ph.i416 ], [ %indvars.iv.next.i418, %thread-pre-split.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.i417
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !48 ; 2 uses
  %i.bd = and i32 %i.bc, 1
  %.not.i = icmp eq i32 %i.bd, 0                  ; 2 uses
  %i.be = ashr i32 %i.bc, 1                       ; 2 uses
  %i.bf = icmp ne i32 %.0853, -1
  %i.bg = icmp eq i32 %.0857, -1
  %i.bh = and i1 %.not.i, %i.bg
  %.1858 = select i1 %i.bh, i32 %i.be, i32 %.0857 ; 3 uses
  %i.bi = select i1 %.not.i, i1 true, i1 %i.bf
  %.2855 = select i1 %i.bi, i32 %.0853, i32 %i.be ; 3 uses
  %i.bj = icmp slt i32 %.1858, 0
  %i.bk = icmp slt i32 %.2855, 0
  %or.cond864.not869 = select i1 %i.bj, i1 true, i1 %i.bk
  %indvars.iv.next.i418 = add nuw nsw i64 %indvars.iv.i417, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next.i418, %i.ba
  %or.cond866 = select i1 %or.cond864.not869, i1 %i.bl, i1 false
  br i1 %or.cond866, label %thread-pre-split.i, label %Fx_ManDivFindPivots.exit, !llvm.loop !179

Fx_ManDivFindPivots.exit:                         ; preds = %thread-pre-split.i, %Vec_IntAppend.exit
  %.2859 = phi i32 [ -1, %Vec_IntAppend.exit ], [ %.1858, %thread-pre-split.i ] ; 5 uses
  %.3856 = phi i32 [ -1, %Vec_IntAppend.exit ], [ %.2855, %thread-pre-split.i ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 5 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !45
  %.val342 = load i32, ptr %i.g, align 4, !tbaa !45
  %i.bp = icmp eq i32 %.val342, 2
  %.pre1048 = load ptr, ptr %0, align 8, !tbaa !76 ; 3 uses
  br i1 %i.bp, label %bb.k, label %bb.af

bb.k:                                             ; preds = %Fx_ManDivFindPivots.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !83
  %i.bs = xor i32 %.2859, 1
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  %.val374 = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %.val374, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 5 uses
  %.val1216.i = load i32, ptr %i.bw, align 4, !tbaa !45 ; 2 uses
  %i.bx = icmp sgt i32 %.val1216.i, 0
  br i1 %i.bx, label %.lr.ph.i420, label %Fx_ManCompressCubes.exit

.lr.ph.i420:                                      ; preds = %bb.k
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %.val14.i = load ptr, ptr %i.by, align 8, !tbaa !47 ; 2 uses
  %i.bz = getelementptr i8, ptr %.pre1048, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i420
  %.val1220.i = phi i32 [ %.val1216.i, %.lr.ph.i420 ], [ %.val12.i, %bb.n ]
  %indvars.iv.i421 = phi i64 [ 0, %.lr.ph.i420 ], [ %indvars.iv.next.i423, %bb.n ] ; 2 uses
  %.018.i = phi i32 [ 0, %.lr.ph.i420 ], [ %.1.i, %bb.n ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i421
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %.val13.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %.val.i422 = load i32, ptr %i.ce, align 4, !tbaa !45
  %i.cf = icmp sgt i32 %.val.i422, 0
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = add nsw i32 %.018.i, 1
  %i.ch = sext i32 %.018.i to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.ch
  store i32 %i.cb, ptr %i.ci, align 4, !tbaa !48
end_hunk_1
