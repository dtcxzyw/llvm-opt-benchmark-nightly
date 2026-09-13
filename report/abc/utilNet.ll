Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilNet?download=true
inline.NumInlined: 220
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Tn_AddCardinality:bb.a
  br i1 %.not.i53, label %tn_vi_free.exit54, label %bb.d

bb.d:                                             ; preds = %tn_vi_free.exit
  tail call void @free(ptr noundef nonnull %i.cm) #18
  br label %tn_vi_free.exit54

tn_vi_free.exit54:                                ; preds = %tn_vi_free.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Tn_GenClause(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.033 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  switch i32 %i.d, label %bb.c [
    i32 1, label %.loopexit
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.b, align 8, !tbaa !24
  %i.f = shl nsw i32 %i.e, 1
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.033, 1
  %i.h = sext i32 %.033 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  store i32 %i.d, ptr %i.i, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.1 = phi i32 [ %.033, %bb.b ], [ %i.g, %bb.d ], [ %.033, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 3 uses
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %tn_vi_push.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.s = icmp slt i32 %i.q, 4
  %i.t = lshr i32 %i.q, 1
  %i.u = mul nuw nsw i32 %i.t, 3
  %i.v = select i1 %i.s, i32 8, i32 %i.u          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.y = zext nneg i32 %i.v to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call ptr @realloc(ptr noundef %i.x, i64 noundef %i.z) #20 ; 2 uses
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !16
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !17
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fmul nnan double %i.ad, 4.000000e+00
  %i.af = fmul nnan double %i.ae, f0x3EB0000000000000
  %i.ag = uitofp nneg i32 %i.v to double
  %i.ah = fmul nnan double %i.ag, 4.000000e+00
  %i.ai = fmul nnan double %i.ah, f0x3EB0000000000000
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.af, double noundef %i.ai) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.al = tail call i32 @fflush(ptr noundef %i.ak) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.v, ptr %i.p, align 4, !tbaa !17
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !15
  br label %tn_vi_push.exit

tn_vi_push.exit:                                  ; preds = %._crit_edge, %bb.h
  %i.am = phi i32 [ %i.o, %._crit_edge ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = add nsw i32 %i.am, 1
  store i32 %i.ap, ptr %i.n, align 8, !tbaa !15
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %.0.lcssa, ptr %i.ar, align 4, !tbaa !10
  %i.as = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.as, label %.lr.ph35.preheader, label %.loopexit

.lr.ph35.preheader:                               ; preds = %tn_vi_push.exit
  %wide.trip.count41 = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %tn_vi_push.exit29
  %indvars.iv38 = phi i64 [ 0, %.lr.ph35.preheader ], [ %indvars.iv.next39, %tn_vi_push.exit29 ] ; 2 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !30  ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv38
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17 ; 3 uses
  %i.az = icmp slt i32 %i.aw, %i.ay
  br i1 %i.az, label %tn_vi_push.exit29, label %bb.i

bb.i:                                             ; preds = %.lr.ph35
  %i.ba = icmp slt i32 %i.ay, 4
  %i.bb = lshr i32 %i.ay, 1
  %i.bc = mul nuw nsw i32 %i.bb, 3
  %i.bd = select i1 %i.ba, i32 8, i32 %i.bc       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = tail call ptr @realloc(ptr noundef %i.bf, i64 noundef %i.bh) #20 ; 2 uses
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !16
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = fmul nnan double %i.bl, 4.000000e+00
  %i.bn = fmul nnan double %i.bm, f0x3EB0000000000000
  %i.bo = uitofp nneg i32 %i.bd to double
  %i.bp = fmul nnan double %i.bo, 4.000000e+00
  %i.bq = fmul nnan double %i.bp, f0x3EB0000000000000
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.bn, double noundef %i.bq) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.bt = tail call i32 @fflush(ptr noundef %i.bs) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.bd, ptr %i.ax, align 4, !tbaa !17
  %.pre.i28 = load i32, ptr %i.at, align 8, !tbaa !15
  br label %tn_vi_push.exit29

tn_vi_push.exit29:                                ; preds = %.lr.ph35, %bb.k
  %i.bu = phi i32 [ %i.aw, %.lr.ph35 ], [ %.pre.i28, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.bx = add nsw i32 %i.bu, 1
  store i32 %i.bx, ptr %i.at, align 8, !tbaa !15
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.by
  store i32 %i.av, ptr %i.bz, align 4, !tbaa !10
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %.loopexit, label %.lr.ph35, !llvm.loop !48

.loopexit:                                        ; preds = %bb.b, %tn_vi_push.exit29, %tn_vi_push.exit
  ret void
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 33) i32 @Tn_ReadHexTruth(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 3 uses
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %i.c = shl nsw i32 %i.b, 2                      ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  %i.e = add i32 %i.c, -1
  %i.f = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.g = sub nuw nsw i32 32, %i.f
  %.09.i = select i1 %i.d, i32 0, i32 %i.g        ; 6 uses
  %i.h = shl nuw i32 1, %.09.i                    ; 2 uses
  %.not = icmp eq i32 %i.h, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.b, i32 noundef %i.h, i32 noundef %.09.i) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.lr.ph.i.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %2 = add i64 %i.a, 4294967295
  %3 = and i64 %i.a, 2147483647
  %4 = and i64 %2, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv.in = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv, %bb.i ] ; 2 uses
  %.028 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.i ]
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 4 uses
  %i.k = sub nuw nsw i64 %4, %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !31    ; 4 uses
  %i.n = sext i8 %i.m to i64                      ; 3 uses
  %i.o = add i8 %i.m, -48
  %or.cond.i = icmp ult i8 %i.o, 10
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.p = add nsw i64 %i.n, -48
  br label %Tn_Hex2Int.exit

bb.e:                                             ; preds = %.lr.ph
  %i.q = add i8 %i.m, -65
  %or.cond5.i = icmp ult i8 %i.q, 6
  br i1 %or.cond5.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i64 %i.n, -55
  br label %Tn_Hex2Int.exit

bb.g:                                             ; preds = %bb.e
  %i.s = add i8 %i.m, -97
  %or.cond8.i = icmp ult i8 %i.s, 6
  %i.t = add nsw i64 %i.n, -87
  %spec.select.i = select i1 %or.cond8.i, i64 %i.t, i64 -1
  br label %Tn_Hex2Int.exit

Tn_Hex2Int.exit:                                  ; preds = %bb.d, %bb.f, %bb.g
  %.019.i = phi i64 [ %spec.select.i, %bb.g ], [ %i.p, %bb.d ], [ %i.r, %bb.f ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = and i32 %i.u, 15                         ; 2 uses
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %.019.i, %i.x
  %i.z = or i64 %i.y, %.028                       ; 2 uses
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %Tn_Hex2Int.exit
  %i.ab = lshr exact i64 %indvars.iv, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %Tn_Hex2Int.exit, %bb.h
  %.1 = phi i64 [ 0, %bb.h ], [ %i.z, %Tn_Hex2Int.exit ]
  %i.ae = icmp samesign ugt i64 %indvars.iv.in, 1
  br i1 %i.ae, label %.lr.ph, label %.lr.ph.i.preheader, !llvm.loop !49

.lr.ph.i.preheader:                               ; preds = %bb.i, %bb.c
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.09.i) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !19 ; 2 uses
  %i.ah = icmp samesign ult i32 %.09.i, 3
  %i.ai = add nsw i32 %.09.i, -2
  %i.aj = shl nuw nsw i32 1, %i.ai
  %spec.select.i26 = select i1 %i.ah, i32 1, i32 %i.aj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.013.in.i = phi i32 [ %.013.i, %select.unfold.i ], [ %spec.select.i26, %.lr.ph.i.preheader ] ; 2 uses
  %.013.i = add nsw i32 %.013.in.i, -1            ; 3 uses
  %i.ak = lshr i32 %.013.i, 4
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = shl i32 %.013.i, 2
  %i.ap = and i32 %i.ao, 60
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.an, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 15                       ; 3 uses
  %i.au = icmp samesign ult i32 %i.at, 10
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.24, i32 noundef %i.at) #18 ; 0 uses
  br label %select.unfold.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.aw = add nuw nsw i32 %i.at, 55
  %fputc.i = tail call i32 @fputc(i32 %i.aw, ptr %i.ag) ; 0 uses
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.k, %bb.j
  %i.ax = icmp samesign ugt i32 %.013.in.i, 1
  br i1 %i.ax, label %.lr.ph.i, label %Tn_PrintHexTruth.exit, !llvm.loop !1

Tn_PrintHexTruth.exit:                            ; preds = %select.unfold.i
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %Tn_PrintHexTruth.exit, %bb.b
  %.024 = phi i32 [ 0, %bb.b ], [ %.09.i, %Tn_PrintHexTruth.exit ]
  ret i32 %.024
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias ptr @Tn_ParseSolution(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.5) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.e = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef nonnull %i.b)
  %.not38 = icmp eq ptr %i.e, null
  br i1 %.not38, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %0) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph40, %.thread
  %.01939 = phi ptr [ null, %.lr.ph40 ], [ %.120, %.thread ] ; 11 uses
  %i.h = load i8, ptr %i.a, align 16, !tbaa !31
  switch i8 %i.h, label %.thread [
    i8 115, label %bb.d
    i8 118, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr %i.d, align 1
  %i.j = xor i16 %i.i, 16723
  %i.k = getelementptr i8, ptr %i.d, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 84
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not26 = icmp eq i32 %i.q, 0
  br i1 %.not26, label %bb.e, label %._crit_edge41

bb.e:                                             ; preds = %bb.d
  %i.r = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 100, ptr %i.s, align 4, !tbaa !17
  %i.t = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #19
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !16
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.v = call ptr @strtok(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.8) #18 ; 2 uses
  %.not2433 = icmp eq ptr %i.v, null
  br i1 %.not2433, label %.thread, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.01939, i64 4 ; 3 uses
  %i.x = getelementptr i8, ptr %.01939, i64 8     ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph36, %._crit_edge
  %.01834 = phi ptr [ %i.v, %.lr.ph36 ], [ %i.be, %._crit_edge ]
  %i.y = call i64 @strtol(ptr noundef nonnull captures(none) %.01834, ptr noundef null, i32 noundef 10) #18, !inline_history !50
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call range(i32 1, -2147483648) i32 @llvm.abs.i32(i32 range(i32 1, 0) %i.z, i1 true) ; 3 uses
  %.019.val30 = load i32, ptr %.01939, align 8, !tbaa !15 ; 2 uses
  %.not2531 = icmp sgt i32 %.019.val30, %i.ab
  %.019.val27.pre = load ptr, ptr %i.x, align 8, !tbaa !16 ; 2 uses
  br i1 %.not2531, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %tn_vi_push.exit
  %.pre44 = phi ptr [ %.pre4446, %tn_vi_push.exit ], [ %.019.val27.pre, %bb.h ] ; 2 uses
  %.019.val32 = phi i32 [ %.019.val, %tn_vi_push.exit ], [ %.019.val30, %bb.h ] ; 2 uses
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !17  ; 3 uses
  %i.ad = icmp slt i32 %.019.val32, %i.ac
  br i1 %i.ad, label %tn_vi_push.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ae = icmp slt i32 %i.ac, 4
  %i.af = lshr i32 %i.ac, 1
  %i.ag = mul nuw nsw i32 %i.af, 3
  %i.ah = select i1 %i.ae, i32 8, i32 %i.ag       ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = call ptr @realloc(ptr noundef %.pre44, i64 noundef %i.aj) #20 ; 3 uses
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !16
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.w, align 4, !tbaa !17
  %i.an = sitofp i32 %i.am to double
  %i.ao = fmul nnan double %i.an, 4.000000e+00
end_hunk_0
