Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddZddReord?download=true
inline.NumInlined: 28
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
; Function Attrs: nounwind uwtable
define i32 @Cudd_zddReduceHeap(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, %2
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.049 = phi i32 [ %i.i, %bb.c ], [ %1, %bb.b ]  ; 3 uses
  %i.j = icmp eq i32 %.049, 1
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  store ptr %i.o, ptr @empty, align 8, !tbaa !31
  %i.p = tail call i64 (...) @Extra_CpuTime() #14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.04361 = load ptr, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %.not62 = icmp eq ptr %.04361, null
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.r = zext i32 %.049 to i64
  %i.s = inttoptr i64 %i.r to ptr
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.04363, i64 8
  %.043 = load ptr, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %.043, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !33

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.04363 = phi ptr [ %.04361, %.lr.ph ], [ %.043, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.04363, align 8, !tbaa !35
  %i.v = tail call i32 %i.u(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.s) #14
  %.not57 = icmp eq i32 %i.v, 0
  br i1 %.not57, label %.critedge, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  tail call void @cuddCacheFlush(ptr noundef %0) #14
  %i.w = tail call i32 @cuddGarbageCollect(ptr noundef %0, i32 noundef 0) #14 ; 0 uses
  store i32 0, ptr @zddTotalNumberSwapping, align 4, !tbaa !37
  %i.x = tail call i32 @cuddZddTreeSifting(ptr noundef %0, i32 noundef %.049) #14 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call fastcc void @zddReorderPostprocess(ptr noundef %0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %.not53 = icmp eq i32 %i.aa, 0
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @cuddBddAlignToZdd(ptr noundef nonnull %0) #14
  %.not54 = icmp eq i32 %i.ab, 0
  br i1 %.not54, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !8
  %i.ad = shl i32 %i.ac, 1                        ; 2 uses
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !29
  %i.af = icmp slt i32 %i.ae, 20
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39 ; 2 uses
  %i.ai = icmp ugt i32 %i.ad, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.ad, ptr %i.aj, align 4, !tbaa !39
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ak = add i32 %i.ah, 20
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 1, ptr %i.al, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.264 = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %.not5565 = icmp eq ptr %.264, null
  br i1 %.not5565, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.n
  %i.an = inttoptr i64 %i.p to ptr
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.266, i64 8
  %.2 = load ptr, ptr %i.ao, align 8, !tbaa !32   ; 2 uses
  %.not55 = icmp eq ptr %.2, null
  br i1 %.not55, label %._crit_edge69, label %bb.p, !llvm.loop !41

bb.p:                                             ; preds = %.lr.ph68, %bb.o
  %.266 = phi ptr [ %.264, %.lr.ph68 ], [ %.2, %bb.o ] ; 2 uses
  %i.ap = load ptr, ptr %.266, align 8, !tbaa !35
  %i.aq = tail call i32 %i.ap(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.an) #14
  %.not56 = icmp eq i32 %i.aq, 0
  br i1 %.not56, label %.critedge, label %bb.o

._crit_edge69:                                    ; preds = %bb.o, %bb.n
  %i.ar = tail call i64 (...) @Extra_CpuTime() #14
  %i.as = sub i64 %i.ar, %i.p
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !42
  %i.av = add nsw i64 %i.as, %i.au
  store i64 %i.av, ptr %i.at, align 8, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.p, %bb.i, %._crit_edge, %bb.d, %bb.a, %._crit_edge69
  %.4 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.p ], [ 0, %bb.i ], [ %i.x, %._crit_edge69 ], [ 0, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @Extra_CpuTime(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cuddZddTreeSifting(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zddReorderPostprocess(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load double, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %i.e = sdiv i64 %i.d, 2
  %i.f = sitofp i64 %i.e to double
  %i.g = fcmp ogt double %i.b, %i.f
  br i1 %i.g, label %.loopexit, label %.preheader93

.preheader93:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph100, label %.loopexit

.lr.ph100:                                        ; preds = %.preheader93
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph100, %bb.m
  %.pre108 = phi i32 [ %i.i, %.lr.ph100 ], [ %.pre109, %bb.m ] ; 3 uses
  %i.t = phi i32 [ %i.i, %.lr.ph100 ], [ %i.cp, %bb.m ] ; 2 uses
  %indvars.iv105 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next106, %bb.m ] ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %indvars.iv105 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !47   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !48
  %i.aa = shl i32 %i.z, 3
  %i.ab = icmp ult i32 %i.x, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !49
  %.not = icmp ugt i32 %i.x, %i.ac
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !50  ; 3 uses
  %i.ae = lshr i32 %i.x, 1                        ; 5 uses
  %i.af = load ptr, ptr @Extra_UtilMMoutOfMemory, align 8, !tbaa !51
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #15 ; 4 uses
  store ptr %i.af, ptr @Extra_UtilMMoutOfMemory, align 8, !tbaa !51
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ai, ptr %i.v, align 8, !tbaa !50
  store i32 %i.ae, ptr %i.w, align 4, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !52
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !52
  %i.an = shl i32 %i.ae, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !53
  %.not102 = icmp eq i32 %i.ae, 0
  %.pre111 = zext i32 %i.x to i64                 ; 2 uses
  br i1 %.not102, label %.preheader.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ap = shl nuw nsw i64 %.pre111, 2
  %1 = and i64 %i.ap, 17179869176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %1, i1 false), !tbaa !31
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e, %.lr.ph.preheader
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not8995 = icmp eq ptr %i.ar, null
  br i1 %.not8995, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader, %bb.i
  %.07596 = phi ptr [ %i.at, %bb.i ], [ %i.ar, %.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.07596, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.07596, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, -2                       ; 2 uses
  %.not90 = icmp eq i64 %i.ax, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph97
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !56
  %i.bb = shl i64 %i.ba, 1
  %i.bc = and i64 %i.aw, 1
  %i.bd = or disjoint i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = mul i32 %i.be, 12582917
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph97, %bb.f
  %i.bg = phi i32 [ %i.bf, %bb.f ], [ 0, %.lr.ph97 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.07596, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = and i64 %i.bj, -2                       ; 2 uses
  %.not91 = icmp eq i64 %i.bk, 0
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !56
  %i.bo = shl i64 %i.bn, 1
  %i.bp = and i64 %i.bj, 1
  %i.bq = or disjoint i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bs = phi i32 [ %i.br, %bb.h ], [ 0, %bb.g ]
  %i.bt = add i32 %i.bs, %i.bg
  %i.bu = mul i32 %i.bt, 4256249
  %i.bv = lshr i32 %i.bu, %i.am
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !31
  store ptr %i.by, ptr %i.as, align 8, !tbaa !54
  store ptr %.07596, ptr %i.bx, align 8, !tbaa !31
  %.not89 = icmp eq ptr %i.at, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph97, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.pre111
  br i1 %exitcond.not, label %bb.j, label %.preheader, !llvm.loop !58

bb.j:                                             ; preds = %._crit_edge
  %.not88 = icmp eq ptr %i.ad, null
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ad) #14
  %.pre.pre = load i32, ptr %i.h, align 4, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pre = phi i32 [ %.pre108, %bb.j ], [ %.pre.pre, %bb.k ] ; 2 uses
  %i.bz = sub i32 %i.ae, %i.x                     ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !59
  %i.cd = add i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.m, align 8, !tbaa !59
  %i.ce = load i32, ptr %i.n, align 8, !tbaa !60
  %i.cf = add i32 %i.ce, %i.bz                    ; 3 uses
  store i32 %i.cf, ptr %i.n, align 8, !tbaa !60
  %i.cg = load double, ptr %i.o, align 8, !tbaa !61
  %i.ch = uitofp i32 %i.cf to double
  %i.ci = fmul double %i.cg, %i.ch
  %i.cj = fptoui double %i.ci to i32
  store i32 %i.cj, ptr %i.p, align 8, !tbaa !62
  %i.ck = shl i32 %i.cf, 2
  %i.cl = load i32, ptr %i.q, align 4, !tbaa !63
  %. = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 %i.cl)
  %i.cm = load i32, ptr %i.r, align 8, !tbaa !64
  %i.cn = shl nsw i32 %i.cm, 1
  %i.co = sub nsw i32 %., %i.cn
  store i32 %i.co, ptr %i.s, align 8, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b, %bb.c
  %.pre109 = phi i32 [ %.pre, %bb.l ], [ %.pre108, %bb.b ], [ %.pre108, %bb.c ]
  %i.cp = phi i32 [ %.pre, %bb.l ], [ %i.t, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next106, %i.cq
  br i1 %i.cr, label %bb.b, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %bb.m, %bb.d, %.preheader93, %bb.a
  ret void
}

declare i32 @cuddBddAlignToZdd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_zddShuffleHeap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  store ptr %i.b, ptr @empty, align 8, !tbaa !31
  tail call void @cuddCacheFlush(ptr noundef %0) #14
  %i.c = tail call i32 @cuddGarbageCollect(ptr noundef %0, i32 noundef 0) #14 ; 0 uses
  store i32 0, ptr @zddTotalNumberSwapping, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %zddShuffle.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %zddSiftUp.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %zddSiftUp.exit.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %.not.not.i.i11 = icmp slt i64 %indvars.iv.i, %i.n
  br i1 %.not.not.i.i11, label %.lr.ph, label %zddSiftUp.exit.i

bb.c:                                             ; preds = %.lr.ph
  %.not.not.i.i = icmp slt i64 %indvars.iv.i, %indvars.iv.next
  br i1 %.not.not.i.i, label %.lr.ph, label %zddSiftUp.exit.i, !llvm.loop !68

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv12 = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv12, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.o = trunc nsw i64 %indvars.iv12 to i32
  %i.p = tail call i32 @cuddZddSwapInPlace(ptr noundef %0, i32 noundef %indvars, i32 noundef %i.o)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %zddShuffle.exit, label %bb.c, !llvm.loop !68

zddSiftUp.exit.i:                                 ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %zddShuffle.exit, label %bb.b, !llvm.loop !69

zddShuffle.exit:                                  ; preds = %zddSiftUp.exit.i, %.lr.ph, %bb.a
  %.012.i = phi i32 [ 1, %bb.a ], [ 0, %.lr.ph ], [ 1, %zddSiftUp.exit.i ]
  tail call fastcc void @zddReorderPostprocess(ptr noundef %0)
  ret i32 %.012.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddZddAlignToBdd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  store ptr %i.e, ptr @empty, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70   ; 4 uses
  %i.h = sdiv i32 %i.b, %i.g                      ; 7 uses
  %i.i = mul nsw i32 %i.h, %i.g
  %.not = icmp eq i32 %i.i, %i.b
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.b to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #15 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.n = icmp sgt i32 %i.g, 0
  br i1 %i.n, label %.lr.ph48, label %._crit_edge49.split

.lr.ph48:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = icmp sgt i32 %i.h, 0
  br i1 %i.s, label %.lr.ph48.split, label %._crit_edge49.split

.lr.ph48.split:                                   ; preds = %.lr.ph48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = zext nneg i32 %i.h to i64
  %wide.trip.count55 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.w, align 8, !tbaa !73
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph48.split, %._crit_edge
  %indvars.iv52 = phi i64 [ 0, %.lr.ph48.split ], [ %indvars.iv.next53, %._crit_edge ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = mul nsw i32 %i.y, %i.h
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !37
  %.fr = freeze i32 %i.ac                         ; 2 uses
  %i.ad = srem i32 %.fr, %i.h
  %i.ae = sub nsw i32 %.fr, %i.ad
  %i.af = mul nuw nsw i64 %indvars.iv52, %i.v
  %i.ag = sext i32 %i.ae to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.u, i64 %i.ag ; 2 uses
  %invariant.gep65 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.af ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load = load <4 x i32>, ptr %i.ah, align 4, !tbaa !37
  %wide.load72 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !37
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep65, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %wide.load, ptr %i.aj, align 4, !tbaa !37
  store <4 x i32> %wide.load72, ptr %i.ak, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
end_hunk_0
