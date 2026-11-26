Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilSupp?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Abc_SuppReadMin:bb.a
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.p, %bb.u, %Vec_WrdGrow.exit11.sink.split.i
  %i.an = phi ptr [ %i.q, %bb.p ], [ %i.q, %bb.u ], [ %storemerge, %Vec_WrdGrow.exit11.sink.split.i ] ; 3 uses
  %i.ao = phi i32 [ %i.r, %bb.p ], [ %i.r, %bb.u ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.ap = add nuw nsw i32 %i.s, 1                 ; 3 uses
  store i32 %i.ap, ptr %i.m, align 4, !tbaa !17
  %i.aq = zext nneg i32 %i.s to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  store i64 %.05083, ptr %i.ar, align 8, !tbaa !21
  %i.as = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #25 ; 2 uses
  %.not82 = icmp eq ptr %i.as, null
  br i1 %.not82, label %.loopexit, label %.lr.ph, !llvm.loop !66

bb.y:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !67
  switch i8 %i.au, label %.thread [
    i8 48, label %bb.z
    i8 49, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.av = load i8, ptr %i.u, align 1, !tbaa !67
  %i.aw = icmp eq i8 %i.av, 49
  br i1 %i.aw, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ax = shl nuw i64 1, %indvars.iv
  %i.ay = or i64 %i.ax, %.05083
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.az = load i8, ptr %i.u, align 1, !tbaa !67
  %.not58 = icmp eq i8 %i.az, 48
  br i1 %.not58, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.y, %bb.z, %bb.ab
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %i.u, i32 noundef %i.j) ; 0 uses
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !19  ; 2 uses
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
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !66

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
  %i.c = load i64, ptr %2, align 8, !tbaa !28
  %.neg39 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %.neg = sdiv i64 %i.e, -1000
  %.neg40 = add i64 %.neg, %.neg39
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg40, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val33 = load ptr, ptr %i.f, align 8, !tbaa !19 ; 7 uses
  %.val3359 = ptrtoaddr ptr %.val33 to i64        ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 4
  %.val30 = load i32, ptr %i.g, align 4, !tbaa !17 ; 4 uses
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
  %i.s = getelementptr i8, ptr %.val33, i64 %.idx
  %scevgep = getelementptr i8, ptr %i.s, i64 -8
  %i.t = add i64 %.idx, %.val3359
  %i.u = add i64 %.val3359, 16
  %i.v = add i64 %.val3359, 16
  %i.w = add i64 %.idx, %.val3359
  %invariant.op = sub i64 -9, %.val3359
  %invariant.op70 = sub i64 -9, %.val3359
  br label %.lr.ph.preheader

.lr.ph45.loopexit:                                ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.as, %middle.block ], [ %i.be, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge, !llvm.loop !68

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.lr.ph, %.lr.ph45.loopexit
  %indvar = phi i64 [ 0, %.lr.ph.preheader.lr.ph ], [ %indvar.next, %.lr.ph45.loopexit ] ; 4 uses
  %i.z = phi ptr [ %i.r, %.lr.ph.preheader.lr.ph ], [ %i.x, %.lr.ph45.loopexit ] ; 7 uses
  %.0234350 = phi ptr [ %.val33, %.lr.ph.preheader.lr.ph ], [ %i.z, %.lr.ph45.loopexit ] ; 2 uses
  %.04449 = phi ptr [ %i.q, %.lr.ph.preheader.lr.ph ], [ %.lcssa, %.lr.ph45.loopexit ] ; 7 uses
  %i.aa = shl nuw i64 %indvar, 3
  %i.ab = add nuw i64 %i.v, %i.aa
  %i.ac = call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.w)
  %i.ad = mul i64 %indvar, -8                     ; 2 uses
  %.reass = add i64 %i.ad, %invariant.op
  %i.ae = add i64 %i.ac, %.reass                  ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 40
  br i1 %min.iters.check, label %.lr.ph.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ah = shl nuw i64 %indvar, 3                  ; 2 uses
  %i.ai = add nuw i64 %i.u, %i.ah
  %i.aj = call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.t)
  %.reass71 = add i64 %i.ad, %invariant.op70
  %i.ak = add i64 %i.aj, %.reass71
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.04449, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  %i.ao = getelementptr i8, ptr %.val33, i64 %i.ah
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.al
  %bound0 = icmp ult ptr %.04449, %i.aq
  %bound1 = icmp ult ptr %i.z, %i.an
  %found.conflict = and i1 %bound0, %bound1
  %bound060 = icmp ult ptr %.04449, %scevgep
  %bound161 = icmp ult ptr %.val33, %i.an
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx = or i1 %found.conflict, %found.conflict62
  br i1 %conflict.rdx, label %.lr.ph.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %.04449, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.ar
  %i.au = load i64, ptr %.0234350, align 8, !tbaa !21, !alias.scope !75
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.04449, i64 %i.av ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.z, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep63, align 8, !tbaa !21, !alias.scope !76
  %wide.load64 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !21, !alias.scope !76
  %i.ax = xor <2 x i64> %wide.load, %broadcast.splat
  %i.ay = xor <2 x i64> %wide.load64, %broadcast.splat
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ax, ptr %next.gep, align 8, !tbaa !21, !alias.scope !77, !noalias !78
  store <2 x i64> %i.ay, ptr %i.az, align 8, !tbaa !21, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.lr.ph45.loopexit, label %.lr.ph.preheader67

.lr.ph.preheader67:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.142.ph = phi ptr [ %.04449, %vector.memcheck ], [ %.04449, %.lr.ph.preheader ], [ %i.as, %middle.block ]
  %.02441.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader67, %.lr.ph
  %.142 = phi ptr [ %i.be, %.lr.ph ], [ %.142.ph, %.lr.ph.preheader67 ] ; 2 uses
  %.02441 = phi ptr [ %i.bf, %.lr.ph ], [ %.02441.ph, %.lr.ph.preheader67 ] ; 2 uses
  %i.bb = load i64, ptr %.0234350, align 8, !tbaa !21
  %i.bc = load i64, ptr %.02441, align 8, !tbaa !21
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %.142, i64 8 ; 2 uses
  store i64 %i.bd, ptr %.142, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.02441, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.i
  br i1 %i.bg, label %.lr.ph, label %.lr.ph45.loopexit, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph45.loopexit, %Vec_WrdAlloc.exit
  %i.bh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %spec.store.select.i, ptr %i.bi, align 4, !tbaa !17
  store i32 %spec.store.select.i, ptr %i.bh, align 8, !tbaa !18
  br i1 %.not.i, label %Vec_WrdDup.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bj = sext i32 %spec.store.select.i to i64
  %i.bk = shl nsw i64 %i.bj, 3                    ; 2 uses
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #23
  br label %Vec_WrdDup.exit

Vec_WrdDup.exit:                                  ; preds = %._crit_edge, %bb.d
  %.pre-phi12.i = phi i64 [ %i.bk, %bb.d ], [ 0, %._crit_edge ]
  %i.bm = phi ptr [ %i.bl, %bb.d ], [ null, %._crit_edge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bm, ptr align 8 %i.q, i64 %.pre-phi12.i, i1 false)
  %i.bo = sitofp i32 %spec.store.select.i to double ; 2 uses
  %i.bp = fmul nnan double %i.bo, 1.000000e+02
  %i.bq = fdiv double %i.bp, %i.bo
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %spec.store.select.i, double noundef %i.bq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #25
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %Abc_Clock.exit37, label %bb.e

bb.e:                                             ; preds = %Vec_WrdDup.exit
  %i.bu = load i64, ptr %1, align 8, !tbaa !28
  %i.bv = mul nsw i64 %i.bu, 1000000
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !29
  %i.by = sdiv i64 %i.bx, 1000
  %i.bz = add nsw i64 %i.by, %i.bv
  br label %Abc_Clock.exit37

Abc_Clock.exit37:                                 ; preds = %Vec_WrdDup.exit, %bb.e
  %.0.i36 = phi i64 [ %i.bz, %bb.e ], [ -1, %Vec_WrdDup.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ca = add i64 %.0.i36, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26)
  %i.cb = sitofp i64 %i.ca to double
  %i.cc = fdiv double %i.cb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.29, double noundef %i.cc)
  %.not.i38 = icmp eq ptr %i.q, null
  br i1 %.not.i38, label %Vec_WrdFree.exit, label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit37
  call void @free(ptr noundef nonnull %i.q) #25
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Abc_Clock.exit37, %bb.f
  ret ptr %i.bh
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_SuppFindVar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %1, i64 8
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge23 ] ; 4 uses
  %.021 = phi i32 [ -1, %.lr.ph ], [ %.1, %._crit_edge23 ] ; 3 uses
  %.01220 = phi i32 [ -1, %.lr.ph ], [ %.113, %._crit_edge23 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val16, i64 %indvars.iv
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val.i = load i32, ptr %i.e, align 4, !tbaa !35
  %.not = icmp eq i32 %.val.i, 0
  br i1 %.not, label %bb.c, label %._crit_edge23

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %.01220, -1
  %.val.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.val.pre, i64 %indvars.iv
  %.phi.trans.insert24 = getelementptr i8, ptr %.phi.trans.insert, i64 4
  %.val.i18.pre = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !35 ; 2 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5

._crit_edge:                                      ; preds = %._crit_edge23, %bb.a
  %.012.lcssa = phi i32 [ -1, %bb.a ], [ %.113, %._crit_edge23 ]
  ret i32 %.012.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_SuppRemove(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 5 uses
  %.val38 = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %.val38, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val62 = load i32, ptr %i.e, align 4, !tbaa !17
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
  %.val36 = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val36, i64 %indvars.iv76
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21   ; 3 uses
  %i.p = and i64 %i.o, %i.i
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv76 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !23
  switch i32 %i.t, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader55
  ]
end_hunk_0
begin_hunk_1_@clock_gettime
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #18 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #25 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #25
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #25 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !92
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #27
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #25 ; 0 uses
  call void @free(ptr noundef %i.d) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !92, !noalias !93
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #25, !inline_history !90 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #11

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{!4, !22}
!5 = distinct !{!5, !22}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 long", !14, i64 0}
!16 = !{!"Vec_Wrd_t_", !11, i64 0, !11, i64 4, !15, i64 8}
!17 = !{!16, !11, i64 4}
!18 = !{!16, !11, i64 0}
!19 = !{!16, !15, i64 8}
!20 = !{!"long", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!11, !11, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"timespec", !20, i64 0, !20, i64 8}
!28 = !{!27, !20, i64 0}
!29 = !{!27, !20, i64 8}
!30 = !{!"p1 _ZTS10Vec_Int_t_", !14, i64 0}
!31 = !{!"Vec_Wec_t_", !11, i64 0, !11, i64 4, !30, i64 8}
!32 = !{!31, !30, i64 8}
!33 = !{!"p1 int", !14, i64 0}
!34 = !{!"Vec_Int_t_", !11, i64 0, !11, i64 4, !33, i64 8}
!35 = !{!34, !11, i64 4}
!36 = !{!34, !33, i64 8}
!37 = !{!31, !11, i64 4}
!38 = !{!31, !11, i64 0}
!39 = !{!34, !11, i64 0}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22, !24, !25}
!48 = distinct !{!48, !22, !24, !25}
!49 = distinct !{!49, !22, !24}
!50 = distinct !{!50, !22}
!51 = !{!"branch_weights", i32 4, i32 28}
!52 = distinct !{!52, !22, !24, !25}
!53 = distinct !{!53, !22, !25, !24}
!54 = distinct !{!54, !22, !24, !25}
!55 = distinct !{!55, !22, !25, !24}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22, !24, !25}
!58 = distinct !{!58, !22, !25, !24}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !22, !24, !25}
!61 = distinct !{!61, !22, !25, !24}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !22}
!65 = distinct !{null}
!66 = distinct !{!66, !22}
!67 = !{!10, !10, i64 0}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !22, !24, !25}
!74 = distinct !{!74, !22, !24}
!75 = !{!70}
!76 = !{!71}
!77 = !{!72}
!78 = !{!71, !70}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, i1 true, !"vprintf"}
!89 = distinct !{!89, !88, !"vprintf: argument 0"}
!90 = distinct !{null}
!91 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!89}
end_hunk_1
