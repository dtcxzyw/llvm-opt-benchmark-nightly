Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilSupp?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Abc_SuppReadMin:bb.a
bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.x) ; 0 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.q) #25
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.k, %bb.l
  tail call void @free(ptr noundef nonnull %i.l) #25
  br label %bb.ah

bb.m:                                             ; preds = %bb.j
  %i.ab = icmp eq i32 %.049.ph87, -1
  br i1 %i.ab, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not61 = icmp eq i32 %.049.ph87, %i.x
  br i1 %.not61, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %.049.ph87, i32 noundef %i.x) ; 0 uses
  tail call fastcc void @Vec_WrdFree(ptr noundef nonnull %i.l)
  br label %bb.ah

bb.p:                                             ; preds = %bb.m, %bb.n
  %.1 = phi i32 [ %.049.ph87, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.ad = icmp eq i32 %i.s, %i.r
  br i1 %i.ad, label %bb.q, label %Vec_WrdPush.exit

bb.q:                                             ; preds = %bb.p
  %i.ae = icmp slt i32 %i.r, 16
  br i1 %i.ae, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 128) #24
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ag = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.u:                                             ; preds = %bb.q
  %i.ah = icmp samesign ult i32 %i.r, 1073741823
  %i.ai = shl nuw nsw i32 %i.r, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.r, %spec.select.i
  br i1 %.not.i9.i, label %bb.v, label %Vec_WrdPush.exit

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i = icmp eq ptr %i.q, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.ak) #24
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.v
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #23
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.w, %bb.x, %bb.s, %bb.t
  %storemerge = phi ptr [ %i.ag, %bb.t ], [ %i.af, %bb.s ], [ %i.al, %bb.w ], [ %i.am, %bb.x ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i, %bb.w ], [ %spec.select.i, %bb.x ] ; 2 uses
  store ptr %storemerge, ptr %i.o, align 8, !tbaa !13
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !12
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.p, %bb.u, %Vec_WrdGrow.exit11.sink.split.i
  %i.an = phi ptr [ %i.q, %bb.p ], [ %i.q, %bb.u ], [ %storemerge, %Vec_WrdGrow.exit11.sink.split.i ] ; 3 uses
  %i.ao = phi i32 [ %i.r, %bb.p ], [ %i.r, %bb.u ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.ap = add nuw nsw i32 %i.s, 1                 ; 3 uses
  store i32 %i.ap, ptr %i.m, align 4, !tbaa !8
  %i.aq = zext nneg i32 %i.s to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  store i64 %.05083, ptr %i.ar, align 8, !tbaa !14
  %i.as = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #25 ; 2 uses
  %.not82 = icmp eq ptr %i.as, null
  br i1 %.not82, label %.loopexit, label %.lr.ph, !llvm.loop !55

bb.y:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56
  switch i8 %i.au, label %.thread [
    i8 48, label %bb.z
    i8 49, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.av = load i8, ptr %i.u, align 1, !tbaa !56
  %i.aw = icmp eq i8 %i.av, 49
  br i1 %i.aw, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ax = shl nuw i64 1, %indvars.iv
  %i.ay = or i64 %i.ax, %.05083
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.az = load i8, ptr %i.u, align 1, !tbaa !56
  %.not58 = icmp eq i8 %i.az, 48
  br i1 %.not58, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.y, %bb.z, %bb.ab
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %i.u, i32 noundef %i.j) ; 0 uses
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %.not.i63 = icmp eq ptr %i.bb, null
  br i1 %.not.i63, label %Vec_WrdFree.exit64, label %bb.ac

bb.ac:                                            ; preds = %.thread
  tail call void @free(ptr noundef nonnull %i.bb) #25
  br label %Vec_WrdFree.exit64

Vec_WrdFree.exit64:                               ; preds = %.thread, %bb.ac
  tail call void @free(ptr noundef nonnull %i.l) #25
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.151 = phi i64 [ %i.ay, %bb.aa ], [ %.05083, %bb.ab ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bc = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #25 ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !55

.loopexit:                                        ; preds = %bb.i, %Vec_WrdPush.exit, %bb.ad, %bb.g
  %i.bd = phi ptr [ %i.n, %bb.g ], [ %i.q, %bb.ad ], [ %i.an, %Vec_WrdPush.exit ], [ %i.q, %bb.i ] ; 2 uses
  %.val62 = phi i32 [ 0, %bb.g ], [ %i.s, %bb.ad ], [ %i.ap, %Vec_WrdPush.exit ], [ %i.s, %bb.i ] ; 2 uses
  %.049.ph81 = phi i32 [ -1, %bb.g ], [ %.049.ph87, %bb.ad ], [ %.1, %Vec_WrdPush.exit ], [ %.049.ph87, %bb.i ] ; 2 uses
  tail call void @free(ptr noundef %i.a) #25
  %.not60 = icmp eq i32 %.val62, %i.j
  br i1 %.not60, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.val62, i32 noundef %i.j) ; 0 uses
  %.not.i65 = icmp eq ptr %i.bd, null
  br i1 %.not.i65, label %Vec_WrdFree.exit66, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.bd) #25
  br label %Vec_WrdFree.exit66

Vec_WrdFree.exit66:                               ; preds = %bb.ae, %bb.af
  tail call void @free(ptr noundef nonnull %i.l) #25
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.049.ph81, i32 noundef %i.j) ; 0 uses
  store i32 %.049.ph81, ptr %1, align 4, !tbaa !23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %Vec_WrdFree.exit66, %Vec_WrdFree.exit64, %bb.o, %Vec_WrdFree.exit, %bb.f, %bb.d, %bb.b
  %.052 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %Vec_WrdFree.exit ], [ null, %bb.o ], [ null, %Vec_WrdFree.exit66 ], [ %i.l, %bb.ag ], [ null, %Vec_WrdFree.exit64 ]
  ret ptr %.052
}

declare ptr @Extra_FileReadContents(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_SuppDiffMatrix(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #25
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !51
  %.neg39 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53
  %.neg = sdiv i64 %i.e, -1000
  %.neg40 = add i64 %.neg, %.neg39
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg40, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val33 = load ptr, ptr %i.f, align 8, !tbaa !13 ; 7 uses
  %.val3351 = ptrtoaddr ptr %.val33 to i64        ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 4
  %.val30 = load i32, ptr %i.g, align 4, !tbaa !8 ; 4 uses
  %i.h = sext i32 %.val30 to i64
  %.idx = shl nsw i64 %i.h, 3                     ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.val33, i64 %.idx ; 2 uses
  %i.j = add nsw i32 %.val30, -1
  %i.k = mul nsw i32 %i.j, %.val30
  %i.l = sdiv i32 %i.k, 2                         ; 2 uses
  %i.m = add nsw i32 %i.l, -1
  %or.cond.i = icmp ult i32 %i.m, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.l ; 7 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #23
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %Abc_Clock.exit ] ; 4 uses
  %or.cond = icmp slt i32 %.val30, 2
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.preheader.lr.ph

.lr.ph.preheader.lr.ph:                           ; preds = %Vec_WrdAlloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  %i.s = add i64 %.val3351, 16
  %i.t = add i64 %.idx, %.val3351
  %i.u = sub i64 -9, %.val3351                    ; 2 uses
  %i.v = getelementptr i8, ptr %.val33, i64 %.idx
  %scevgep56 = getelementptr i8, ptr %i.v, i64 -8
  %i.w = add i64 %.val3351, 16
  %i.x = add i64 %.idx, %.val3351
  br label %.lr.ph.preheader

.lr.ph45.loopexit:                                ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.an, %middle.block ], [ %i.az, %.lr.ph ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge, !llvm.loop !57

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.lr.ph, %.lr.ph45.loopexit
  %indvar = phi i64 [ 0, %.lr.ph.preheader.lr.ph ], [ %indvar.next, %.lr.ph45.loopexit ] ; 5 uses
  %i.aa = phi ptr [ %i.r, %.lr.ph.preheader.lr.ph ], [ %i.y, %.lr.ph45.loopexit ] ; 7 uses
  %.0234350 = phi ptr [ %.val33, %.lr.ph.preheader.lr.ph ], [ %i.aa, %.lr.ph45.loopexit ] ; 2 uses
  %.04449 = phi ptr [ %i.q, %.lr.ph.preheader.lr.ph ], [ %.lcssa, %.lr.ph45.loopexit ] ; 7 uses
  %3 = shl i64 %indvar, 3
  %4 = sub i64 %i.u, %3
  %i.ab = shl nuw i64 %indvar, 3
  %i.ac = add i64 %i.w, %i.ab
  %i.ad = call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.x)
  %i.ae = add i64 %i.ad, %4                       ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 40
  br i1 %min.iters.check, label %.lr.ph.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ah = shl nuw i64 %indvar, 3                  ; 2 uses
  %i.ai = getelementptr i8, ptr %.val33, i64 %i.ah
  %scevgep53 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = add i64 %i.s, %i.ah
  %umax = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.t)
  %5 = shl i64 %indvar, 3
  %6 = sub i64 %i.u, %5
  %i.ak = add i64 %umax, %6
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.al
  %scevgep = getelementptr i8, ptr %.04449, i64 8
  %scevgep52 = getelementptr i8, ptr %scevgep, i64 %i.al ; 2 uses
  %bound0 = icmp ult ptr %.04449, %scevgep54
  %bound1 = icmp ult ptr %i.aa, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  %bound057 = icmp ult ptr %.04449, %scevgep56
  %bound158 = icmp ult ptr %.val33, %scevgep52
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx = or i1 %found.conflict, %found.conflict59
  br i1 %conflict.rdx, label %.lr.ph.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %.04449, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aa, i64 %i.am
  %i.ap = load i64, ptr %.0234350, align 8, !tbaa !14, !alias.scope !58
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.04449, i64 %i.aq ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.aa, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !14, !alias.scope !61
  %wide.load61 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !14, !alias.scope !61
  %i.as = xor <2 x i64> %wide.load, %broadcast.splat
  %i.at = xor <2 x i64> %wide.load61, %broadcast.splat
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.as, ptr %next.gep, align 8, !tbaa !14, !alias.scope !63, !noalias !65
  store <2 x i64> %i.at, ptr %i.au, align 8, !tbaa !14, !alias.scope !63, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.lr.ph45.loopexit, label %.lr.ph.preheader64

.lr.ph.preheader64:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.142.ph = phi ptr [ %.04449, %vector.memcheck ], [ %.04449, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.02441.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader64, %.lr.ph
  %.142 = phi ptr [ %i.az, %.lr.ph ], [ %.142.ph, %.lr.ph.preheader64 ] ; 2 uses
  %.02441 = phi ptr [ %i.ba, %.lr.ph ], [ %.02441.ph, %.lr.ph.preheader64 ] ; 2 uses
  %i.aw = load i64, ptr %.0234350, align 8, !tbaa !14
  %i.ax = load i64, ptr %.02441, align 8, !tbaa !14
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %.142, i64 8 ; 2 uses
  store i64 %i.ay, ptr %.142, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.02441, i64 8 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.i
  br i1 %i.bb, label %.lr.ph, label %.lr.ph45.loopexit, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph45.loopexit, %Vec_WrdAlloc.exit
  %i.bc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %spec.store.select.i, ptr %i.bd, align 4, !tbaa !8
  store i32 %spec.store.select.i, ptr %i.bc, align 8, !tbaa !12
  br i1 %.not.i, label %Vec_WrdDup.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.be = sext i32 %spec.store.select.i to i64
  %i.bf = shl nsw i64 %i.be, 3                    ; 2 uses
  %i.bg = call noalias ptr @malloc(i64 noundef %i.bf) #23
  br label %Vec_WrdDup.exit

Vec_WrdDup.exit:                                  ; preds = %._crit_edge, %bb.d
  %.pre-phi12.i = phi i64 [ %i.bf, %bb.d ], [ 0, %._crit_edge ]
  %i.bh = phi ptr [ %i.bg, %bb.d ], [ null, %._crit_edge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bh, ptr align 8 %i.q, i64 %.pre-phi12.i, i1 false)
  %i.bj = sitofp i32 %spec.store.select.i to double ; 2 uses
  %i.bk = fmul nnan double %i.bj, 1.000000e+02
  %i.bl = fdiv double %i.bk, %i.bj
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %spec.store.select.i, double noundef %i.bl) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #25
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %Abc_Clock.exit37, label %bb.e

bb.e:                                             ; preds = %Vec_WrdDup.exit
  %i.bp = load i64, ptr %1, align 8, !tbaa !51
  %i.bq = mul nsw i64 %i.bp, 1000000
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !53
  %i.bt = sdiv i64 %i.bs, 1000
  %i.bu = add nsw i64 %i.bt, %i.bq
  br label %Abc_Clock.exit37

Abc_Clock.exit37:                                 ; preds = %Vec_WrdDup.exit, %bb.e
  %.0.i36 = phi i64 [ %i.bu, %bb.e ], [ -1, %Vec_WrdDup.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.bv = add i64 %.0.i36, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26)
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = fdiv double %i.bw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.29, double noundef %i.bx)
  %.not.i38 = icmp eq ptr %i.q, null
  br i1 %.not.i38, label %Vec_WrdFree.exit, label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit37
  call void @free(ptr noundef nonnull %i.q) #25
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Abc_Clock.exit37, %bb.f
  ret ptr %i.bc
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_SuppFindVar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr i8, ptr %1, i64 8
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge23 ] ; 4 uses
  %.021 = phi i32 [ -1, %.lr.ph ], [ %.1, %._crit_edge23 ] ; 3 uses
  %.01220 = phi i32 [ -1, %.lr.ph ], [ %.113, %._crit_edge23 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val16, i64 %indvars.iv
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val.i = load i32, ptr %i.e, align 4, !tbaa !71
  %.not = icmp eq i32 %.val.i, 0
  br i1 %.not, label %bb.c, label %._crit_edge23

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %.01220, -1
  %.val.pre = load ptr, ptr %i.c, align 8, !tbaa !68
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.val.pre, i64 %indvars.iv
  %.phi.trans.insert24 = getelementptr i8, ptr %.phi.trans.insert, i64 4
  %.val.i18.pre = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !71 ; 2 uses
  %i.g = icmp sgt i32 %.021, %.val.i18.pre
  %or.cond = select i1 %i.f, i1 true, i1 %i.g     ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %or.cond, i32 %i.h, i32 %.01220
  %spec.select26 = select i1 %or.cond, i32 %.val.i18.pre, i32 %.021
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.c, %bb.b
  %.113 = phi i32 [ %.01220, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.021, %bb.b ], [ %spec.select26, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !74

._crit_edge:                                      ; preds = %._crit_edge23, %bb.a
  %.012.lcssa = phi i32 [ -1, %bb.a ], [ %.113, %._crit_edge23 ]
  ret i32 %.012.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_SuppRemove(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 5 uses
  %.val38 = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %.val38, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !71
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val62 = load i32, ptr %i.e, align 4, !tbaa !8
  %i.f = icmp sgt i32 %.val62, 0
  br i1 %i.f, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = zext nneg i32 %4 to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = icmp sgt i32 %5, 0                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  %wide.trip.count74 = zext nneg i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %.loopexit
  %indvars.iv76 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next77, %.loopexit ] ; 6 uses
  %.val36 = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val36, i64 %indvars.iv76
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %i.p = and i64 %i.o, %i.i
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.c

end_hunk_0
