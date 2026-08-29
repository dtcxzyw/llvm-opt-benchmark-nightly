Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbFunc?download=true
inline.NumInlined: 1282
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 43
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@Acb_TransformPatchFunctions:bb.a
  %indvars.iv130 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next131, %Vec_PtrPush.exit ] ; 3 uses
  %.val82 = load ptr, ptr %i.bj, align 8, !tbaa !137
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.val82, i64 %indvars.iv130
  %.val85 = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val85, i64 %indvars.iv130
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !113
  %i.dh = tail call ptr @Acb_RemapOneFunction(ptr noundef %i.dg, ptr noundef %i.de, ptr noundef nonnull %i.n, i32 noundef %.val.pre)
  %i.di = load i32, ptr %i.d, align 4, !tbaa !111 ; 7 uses
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !107
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.aa, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.z
  %.pre144 = load ptr, ptr %i.i, align 8, !tbaa !110
  br label %Vec_PtrPush.exit

bb.aa:                                            ; preds = %bb.z
  %i.dl = icmp slt i32 %i.di, 16
  br i1 %i.dl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !110 ; 2 uses
  %.not9.i.i101 = icmp eq ptr %i.dm, null
  br i1 %.not9.i.i101, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dm, i64 noundef 128) #33
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ad:                                            ; preds = %bb.ab
  %i.do = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ae:                                            ; preds = %bb.aa
  %i.dp = icmp samesign ult i32 %i.di, 1073741823
  %i.dq = shl nuw nsw i32 %i.di, 1
  %spec.select.i99 = select i1 %i.dp, i32 %i.dq, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.di, %spec.select.i99
  %.pre145 = load ptr, ptr %i.i, align 8, !tbaa !110 ; 3 uses
  br i1 %.not.i10.i, label %bb.af, label %Vec_PtrPush.exit

bb.af:                                            ; preds = %bb.ae
  %.not9.i11.i = icmp eq ptr %.pre145, null
  %i.dr = zext nneg i32 %spec.select.i99 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %.pre145, i64 noundef %i.ds) #33
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ah:                                            ; preds = %bb.af
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.ds) #31
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.ad
  %storemerge = phi ptr [ %i.do, %bb.ad ], [ %i.dn, %bb.ac ], [ %i.dt, %bb.ag ], [ %i.du, %bb.ah ] ; 2 uses
  %spec.select.sink.i100 = phi i32 [ 16, %bb.ad ], [ 16, %bb.ac ], [ %spec.select.i99, %bb.ag ], [ %spec.select.i99, %bb.ah ]
  store ptr %storemerge, ptr %i.i, align 8, !tbaa !110
  store i32 %spec.select.sink.i100, ptr %i.b, align 8, !tbaa !107
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.ae, %Vec_PtrGrow.exit12.sink.split.i
  %i.dv = phi ptr [ %.pre144, %.Vec_PtrPush.exit_crit_edge ], [ %.pre145, %bb.ae ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.dw = add nsw i32 %i.di, 1
  store i32 %i.dw, ptr %i.d, align 4, !tbaa !111
  %i.dx = sext i32 %i.di to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dx
  store ptr %i.dh, ptr %i.dy, align 8, !tbaa !113
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %.val88 = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.dz = sext i32 %.val88 to i64
  %i.ea = icmp slt i64 %indvars.iv.next131, %i.dz
  br i1 %i.ea, label %bb.z, label %.critedge6, !llvm.loop !338

.critedge6:                                       ; preds = %Vec_PtrPush.exit, %Vec_IntStart.exit, %.critedge.preheader, %.critedge2.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !25 ; 2 uses
  %.not.i102 = icmp eq ptr %i.ec, null
  br i1 %.not.i102, label %Vec_IntFree.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.ec) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.ai
  tail call void @free(ptr noundef nonnull %i.ag) #34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !25 ; 2 uses
  %.not.i103 = icmp eq ptr %i.ee, null
  br i1 %.not.i103, label %Vec_IntFree.exit104, label %bb.aj

bb.aj:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ee) #34
  br label %Vec_IntFree.exit104

Vec_IntFree.exit104:                              ; preds = %Vec_IntFree.exit, %bb.aj
  tail call void @free(ptr noundef nonnull %i.n) #34
  store ptr %i.j, ptr %2, align 8, !tbaa !339
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Acb_NtkEcoPerform(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #34
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %15, align 8, !tbaa !249
  %.neg401 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !251
  %.neg400 = sdiv i64 %i.h, -1000
  %.neg402 = add i64 %.neg400, %.neg401
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg402, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.i = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #34
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Abc_Clock.exit190, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.k = load i64, ptr %14, align 8, !tbaa !249
  %i.l = mul nsw i64 %i.k, 1000000
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !251
  %i.o = sdiv i64 %i.n, 1000
  %i.p = add nsw i64 %i.o, %i.l
  br label %Abc_Clock.exit190

Abc_Clock.exit190:                                ; preds = %Abc_Clock.exit, %bb.c
  %.0.i189 = phi i64 [ %i.p, %bb.c ], [ -1, %Abc_Clock.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 340
  %.val186 = load i32, ptr %i.r, align 4, !tbaa !21 ; 14 uses
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.s = call ptr @Acb_NtkFindRoots(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.a) ; 9 uses
  %i.t = call ptr @Acb_NtkFindSupp(ptr noundef %0, ptr noundef %i.s) ; 4 uses
  %i.u = call ptr @Acb_NtkFindSupp(ptr noundef %1, ptr noundef %i.s) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21   ; 3 uses
  %i.z = add nsw i32 %i.y, %i.w                   ; 2 uses
  %i.aa = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 8 uses
  %i.ab = add i32 %i.z, -1
  %or.cond.i.i = icmp ult i32 %i.ab, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.z ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  store i32 %spec.store.select.i.i, ptr %i.aa, align 8, !tbaa !24
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit190
  %i.ad = sext i32 %spec.store.select.i.i to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = call noalias ptr @malloc(i64 noundef %i.ae) #31
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.d, %Abc_Clock.exit190
  %i.ag = phi ptr [ %i.af, %bb.d ], [ null, %Abc_Clock.exit190 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr i8, ptr %i.t, i64 8       ; 2 uses
  %.val6.i = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.u, i64 8       ; 2 uses
  %.val8.i = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 4 uses
  %i.ak = sext i32 %i.w to i64
  %.idx.i.i = shl nsw i64 %i.ak, 2                ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.val6.i, i64 %.idx.i.i ; 3 uses
  %i.am = sext i32 %i.y to i64
  %.idx19.i.i = shl nsw i64 %i.am, 2              ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx19.i.i ; 3 uses
  %i.ao = icmp sgt i32 %i.w, 0
  %i.ap = icmp sgt i32 %i.y, 0
  %i.aq = and i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.i, %Vec_IntAlloc.exit.i
  %.036.lcssa.i.i = phi ptr [ %i.ag, %Vec_IntAlloc.exit.i ], [ %.137.i.i, %bb.i ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val6.i, %Vec_IntAlloc.exit.i ], [ %.134.i.i, %bb.i ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntAlloc.exit.i ], [ %.1.i.i, %bb.i ] ; 5 uses
  %.0.lcssa.i.i528 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %i.ar = icmp ult ptr %.033.lcssa.i.i, %i.al
  br i1 %i.ar, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i522 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %.036.lcssa.i.i521 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.as = ptrtoaddr ptr %.val6.i to i64
  %i.at = add i64 %.idx.i.i, %i.as
  %i.au = xor i64 %.033.lcssa.i.i522, -1
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %i.aw = lshr i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 44
  %i.ay = sub i64 %.033.lcssa.i.i522, %.036.lcssa.i.i521
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph13.i.i.preheader581, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i.i.preheader
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.az = shl i64 %n.vec, 2                       ; 2 uses
  %i.ba = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.az ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.bc ; 2 uses
  %next.gep523 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !28
  %wide.load524 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !28
  %i.be = getelementptr i8, ptr %next.gep523, i64 16
  store <4 x i32> %wide.load, ptr %next.gep523, align 4, !tbaa !28
  store <4 x i32> %wide.load524, ptr %i.be, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph13.i.i.preheader581

.lr.ph13.i.i.preheader581:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.ba, %middle.block ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntAlloc.exit.i, %bb.i
  %.08.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.val8.i, %Vec_IntAlloc.exit.i ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.i ], [ %.val6.i, %Vec_IntAlloc.exit.i ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.i ], [ %i.ag, %Vec_IntAlloc.exit.i ] ; 4 uses
  %i.bg = load i32, ptr %.0337.i.i, align 4, !tbaa !28 ; 4 uses
  %i.bh = load i32, ptr %.08.i.i, align 4, !tbaa !28 ; 3 uses
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.bg, ptr %.0366.i.i, align 4, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bl = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.bg, ptr %.0366.i.i, align 4, !tbaa !28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.bh, ptr %.0366.i.i, align 4, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.134.i.i = phi ptr [ %i.bj, %bb.e ], [ %i.bm, %bb.g ], [ %.0337.i.i, %bb.h ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bk, %bb.e ], [ %.08.i.i, %bb.g ], [ %i.bn, %bb.h ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.bo = icmp ult ptr %.134.i.i, %i.al
  %i.bp = icmp ult ptr %.1.i.i, %i.an
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !341

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.bb, %middle.block ], [ %i.ci, %.lr.ph13.i.i ] ; 5 uses
  %i.br = icmp ult ptr %.0.lcssa.i.i, %i.an
  br i1 %i.br, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i527 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.bs = ptrtoaddr ptr %.val8.i to i64
  %i.bt = add i64 %.idx19.i.i, %i.bs
  %i.bu = xor i64 %.0.lcssa.i.i528, -1
  %i.bv = add i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.bv, 44
  %i.by = sub i64 %.0.lcssa.i.i528, %.238.lcssa.i.i527
  %diff.check529 = icmp ugt i64 %i.by, -32
  %or.cond568 = select i1 %min.iters.check531, i1 true, i1 %diff.check529
  br i1 %or.cond568, label %.lr.ph17.i.i.preheader580, label %vector.ph532

vector.ph532:                                     ; preds = %.lr.ph17.i.i.preheader
  %n.vec533 = and i64 %i.bx, 9223372036854775800  ; 3 uses
  %i.bz = shl i64 %n.vec533, 2                    ; 2 uses
  %i.ca = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.bz
  %i.cb = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.bz ; 2 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph532
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next540, %vector.body534 ] ; 2 uses
  %i.cc = shl i64 %index535, 2                    ; 2 uses
  %next.gep536 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.cc ; 2 uses
  %next.gep537 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep536, i64 16
  %wide.load538 = load <4 x i32>, ptr %next.gep536, align 4, !tbaa !28
  %wide.load539 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !28
  %i.ce = getelementptr i8, ptr %next.gep537, i64 16
  store <4 x i32> %wide.load538, ptr %next.gep537, align 4, !tbaa !28
  store <4 x i32> %wide.load539, ptr %i.ce, align 4, !tbaa !28
  %index.next540 = add nuw i64 %index535, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.cf, label %middle.block541, label %vector.body534, !llvm.loop !342

middle.block541:                                  ; preds = %vector.body534
  %cmp.n542 = icmp eq i64 %i.bx, %n.vec533
  br i1 %cmp.n542, label %Vec_IntTwoMerge.exit, label %.lr.ph17.i.i.preheader580

.lr.ph17.i.i.preheader580:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block541
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.ca, %middle.block541 ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.cb, %middle.block541 ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader581, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.cg, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader581 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.ci, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader581 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %.23512.i.i, align 4, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.ch, ptr %.23811.i.i, align 4, !tbaa !28
  %i.cj = icmp ult ptr %i.cg, %i.al
  br i1 %i.cj, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !343

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader580, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.ck, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader580 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.cm, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader580 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %.216.i.i, align 4, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.cl, ptr %.315.i.i, align 4, !tbaa !28
  %i.cn = icmp ult ptr %i.ck, %i.an
  br i1 %i.cn, label %.lr.ph17.i.i, label %Vec_IntTwoMerge.exit, !llvm.loop !344

Vec_IntTwoMerge.exit:                             ; preds = %.lr.ph17.i.i, %middle.block541, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.cb, %middle.block541 ], [ %i.cm, %.lr.ph17.i.i ]
  %i.co = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.cp = ptrtoint ptr %i.ag to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = lshr exact i64 %i.cq, 2
  %i.cs = trunc i64 %i.cr to i32
  store i32 %i.cs, ptr %i.ac, align 4, !tbaa !21
  %i.ct = or i32 %5, %4
  %or.cond.not = icmp eq i32 %i.ct, 0
  br i1 %or.cond.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Vec_IntTwoMerge.exit
  %i.cu = call ptr @Acb_NtkFindDivsCis(ptr noundef %0, ptr noundef nonnull %i.aa)
  br label %bb.l

bb.k:                                             ; preds = %Vec_IntTwoMerge.exit
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.cw = call ptr @Acb_NtkFindDivs(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef %i.cv, i32 noundef %7, i32 noundef %8)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cx = phi ptr [ %i.cu, %bb.j ], [ %i.cw, %bb.k ] ; 12 uses
  %i.cy = call ptr @Acb_NtkFindNodes(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.cx) ; 4 uses
  %i.cz = call ptr @Acb_NtkFindNodes(ptr noundef %1, ptr noundef %i.s, ptr noundef null) ; 4 uses
  %i.da = call ptr @Acb_NtkToGia(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef %i.cy, ptr noundef %i.s, ptr noundef %i.cx, ptr noundef nonnull %i.q) ; 3 uses
  %i.db = call ptr @Acb_NtkToGia(ptr noundef %1, ptr noundef nonnull %i.aa, ptr noundef %i.cz, ptr noundef %i.s, ptr noundef null, ptr noundef null) ; 3 uses
  %i.dc = call ptr @Acb_CreateMiter(ptr noundef %i.da, ptr noundef %i.db) ; 5 uses
  %i.dd = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.de = add i32 %.val186, -1
  %or.cond.i = icmp ult i32 %i.de, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val186 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 4 uses
  store i32 0, ptr %i.df, align 4, !tbaa !111
  store i32 %spec.store.select.i, ptr %i.dd, align 8, !tbaa !107
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 3 uses
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = sext i32 %spec.store.select.i to i64
  %i.dh = shl nsw i64 %i.dg, 3
  %i.di = call noalias ptr @malloc(i64 noundef %i.dh) #31
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.l, %bb.m
  %i.dj = phi ptr [ %i.di, %bb.m ], [ null, %bb.l ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 6 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !110
  %i.dl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 3 uses
  store i32 0, ptr %i.dm, align 4, !tbaa !139
  store i32 %spec.store.select.i, ptr %i.dl, align 8, !tbaa !135
  br i1 %.not.i, label %Vec_WecAlloc.exit, label %bb.n

bb.n:                                             ; preds = %Vec_PtrAlloc.exit
  %i.dn = sext i32 %spec.store.select.i to i64
  %i.do = call noalias ptr @calloc(i64 noundef %i.dn, i64 noundef 16) #35
  br label %Vec_WecAlloc.exit

Vec_WecAlloc.exit:                                ; preds = %Vec_PtrAlloc.exit, %bb.n
  %i.dp = phi ptr [ %i.do, %bb.n ], [ null, %Vec_PtrAlloc.exit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 7 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !137
  %i.dr = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 5 uses
  store i32 0, ptr %i.ds, align 4, !tbaa !21
  store i32 100, ptr %i.dr, align 8, !tbaa !24
  %i.dt = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #31
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 7 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr null, ptr %i.b, align 8, !tbaa !339
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %Vec_WecAlloc.exit
  %i.dv = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 0, ptr %i.dw, align 4, !tbaa !111
  store i32 %spec.store.select.i, ptr %i.dv, align 8, !tbaa !107
  br i1 %.not.i, label %Vec_PtrAlloc.exit197, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = sext i32 %spec.store.select.i to i64
  %i.dy = shl nsw i64 %i.dx, 3
  %i.dz = call noalias ptr @malloc(i64 noundef %i.dy) #31
  br label %Vec_PtrAlloc.exit197

Vec_PtrAlloc.exit197:                             ; preds = %bb.o, %bb.p
  %i.ea = phi ptr [ %i.dz, %bb.p ], [ null, %bb.o ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !110
  br label %bb.q

bb.q:                                             ; preds = %Vec_WecAlloc.exit, %Vec_PtrAlloc.exit197
  %i.ec = phi ptr [ %i.dv, %Vec_PtrAlloc.exit197 ], [ null, %Vec_WecAlloc.exit ] ; 12 uses
  %.not167 = icmp eq i32 %8, 0
  br i1 %.not167, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.122, i32 noundef %.val186) ; 0 uses
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123) ; 0 uses
  call void @Gia_ManPrintStats(ptr noundef %i.da, ptr noundef null) #34
  %i.ef = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.124) ; 0 uses
  call void @Gia_ManPrintStats(ptr noundef %i.db, ptr noundef null) #34
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125) ; 0 uses
  call void @Gia_ManPrintStats(ptr noundef %i.dc, ptr noundef null) #34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not168 = icmp eq i32 %6, 0
  br i1 %.not168, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.eh = call ptr @Acb_NtkDeriveMiterCnf(ptr noundef %i.dc, i32 noundef %.val186, i32 noundef %.val186, i32 noundef %8) ; 2 uses
  %i.ei = call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.eh, i32 noundef 1, i32 noundef 0) #34 ; 4 uses
  call void @Cnf_DataFree(ptr noundef %i.eh) #34
  store i32 2, ptr %i.c, align 4, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ek = call i32 @sat_solver_addclause(ptr noundef %i.ei, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ej) #34
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  call void @sat_solver_delete(ptr noundef %i.ei) #34
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.em = call i32 @sat_solver_solve(ptr noundef %i.ei, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #34
  %.fr = freeze i32 %i.em
  %i.en = icmp eq i32 %.fr, -1                    ; 2 uses
  call void @sat_solver_delete(ptr noundef %i.ei) #34
  %spec.select397 = select i1 %i.en, ptr @.str.127, ptr @.str.128
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread
  %i.eo = phi i1 [ %i.en, %bb.u ], [ true, %.thread ]
  %i.ep = phi ptr [ %spec.select397, %bb.u ], [ @.str.127, %.thread ]
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, ptr noundef nonnull %i.ep) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.er = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %13) #34
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !24
  %.pre = load i32, ptr %i.al, align 4, !tbaa !21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !21
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !101
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !88
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #23

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #25 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !28
  %i.b = load i32, ptr %1, align 4, !tbaa !28
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @Abc_Clock() unnamed_addr #9 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #34
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !249
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #9 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #34 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #34
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #34 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !365
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #32
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #34 ; 0 uses
  call void @free(ptr noundef %i.d) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !365, !noalias !369
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #34, !inline_history !372 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #26

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { nounwind allocsize(1) }
attributes #34 = { nounwind }
attributes #35 = { nounwind allocsize(0,1) }
attributes #36 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{!22, !5, i64 4}
!22 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !23, i64 8}
!23 = !{!"p1 int", !11, i64 0}
!24 = !{!22, !5, i64 0}
!25 = !{!22, !23, i64 8}
!26 = distinct !{null}
!27 = distinct !{!27, !17}
!28 = !{!5, !5, i64 0}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = !{!33, !5, i64 4}
!33 = !{!"Ndr_Data_t_", !5, i64 0, !5, i64 4, !10, i64 8, !23, i64 16}
!34 = !{!33, !10, i64 8}
!35 = !{!33, !23, i64 16}
!36 = !{!33, !5, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43, !38}
!43 = distinct !{!43, !39}
!44 = !{!43}
!45 = distinct !{!45, !17, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !17, !46}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = !{!55, !50}
!55 = distinct !{!55, !51}
!56 = !{!55}
!57 = distinct !{!57, !17, !46, !47}
!58 = distinct !{!58, !17, !46}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = !{!71, !5, i64 120}
!71 = !{!"Gia_Man_t_", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !72, i64 32, !23, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !73, i64 64, !73, i64 72, !22, i64 80, !22, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !22, i64 128, !23, i64 144, !23, i64 152, !73, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !23, i64 184, !74, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !5, i64 224, !5, i64 228, !23, i64 232, !5, i64 240, !73, i64 248, !73, i64 256, !73, i64 264, !75, i64 272, !75, i64 280, !73, i64 288, !11, i64 296, !73, i64 304, !73, i64 312, !76, i64 320, !10, i64 328, !73, i64 336, !73, i64 344, !73, i64 352, !73, i64 360, !73, i64 368, !77, i64 376, !77, i64 384, !78, i64 392, !22, i64 400, !22, i64 416, !73, i64 432, !73, i64 440, !73, i64 448, !73, i64 456, !73, i64 464, !73, i64 472, !73, i64 480, !73, i64 488, !73, i64 496, !73, i64 504, !73, i64 512, !10, i64 520, !79, i64 528, !80, i64 536, !81, i64 544, !81, i64 552, !73, i64 560, !73, i64 568, !73, i64 576, !73, i64 584, !73, i64 592, !5, i64 600, !82, i64 604, !82, i64 608, !73, i64 616, !23, i64 624, !5, i64 632, !78, i64 640, !78, i64 648, !78, i64 656, !73, i64 664, !73, i64 672, !73, i64 680, !73, i64 688, !73, i64 696, !73, i64 704, !73, i64 712, !73, i64 720, !73, i64 728, !83, i64 736, !81, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !84, i64 776, !84, i64 784, !11, i64 792, !23, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !85, i64 856, !85, i64 864, !85, i64 872, !85, i64 880, !73, i64 888, !73, i64 896, !73, i64 904, !86, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !73, i64 936, !5, i64 944, !5, i64 948, !73, i64 952, !73, i64 960, !78, i64 968, !85, i64 976, !73, i64 984, !73, i64 992, !5, i64 1000, !5, i64 1004, !85, i64 1008, !22, i64 1016, !22, i64 1032, !22, i64 1048, !87, i64 1064, !76, i64 1072, !76, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !76, i64 1104, !73, i64 1112, !73, i64 1120, !73, i64 1128, !78, i64 1136}
!72 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!73 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!74 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!75 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!76 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!77 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!78 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!79 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!80 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!81 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!82 = !{!"float", !6, i64 0}
!83 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!84 = !{!"long", !6, i64 0}
!85 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!86 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!87 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!88 = !{!71, !72, i64 32}
!89 = !{!71, !23, i64 232}
!90 = !{!71, !5, i64 116}
!91 = !{!71, !5, i64 832}
!92 = !{!71, !85, i64 1008}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = !{!71, !10, i64 0}
!96 = distinct !{!96, !17}
!97 = !{!71, !73, i64 64}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = !{!71, !5, i64 24}
!102 = !{!103, !5, i64 0}
!103 = !{!"Vec_Bit_t_", !5, i64 0, !5, i64 4, !23, i64 8}
!104 = !{!103, !23, i64 8}
!105 = !{!103, !5, i64 4}
!106 = !{!71, !86, i64 912}
!107 = !{!108, !5, i64 0}
!108 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !109, i64 8}
!109 = !{!"any p2 pointer", !11, i64 0}
!110 = !{!108, !109, i64 8}
!111 = !{!108, !5, i64 4}
!112 = !{!71, !78, i64 656}
!113 = !{!11, !11, i64 0}
!114 = distinct !{!114, !17}
!115 = !{!71, !78, i64 640}
!116 = distinct !{!116, !17}
!117 = !{!71, !78, i64 648}
!118 = distinct !{!118, !17}
!119 = !{!71, !73, i64 592}
!120 = distinct !{!120, !17}
!121 = !{!71, !73, i64 72}
!122 = distinct !{!122, !17}
!123 = !{!71, !10, i64 8}
!124 = distinct !{!124, !17}
!125 = !{!126, !127, i64 8}
!126 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !127, i64 8}
!127 = !{!"p1 long", !11, i64 0}
!128 = !{!126, !5, i64 4}
!129 = !{!126, !5, i64 0}
!130 = !{!131, !132, i64 8}
!131 = !{!"Vec_Flt_t_", !5, i64 0, !5, i64 4, !132, i64 8}
!132 = !{!"p1 float", !11, i64 0}
!133 = !{!131, !5, i64 4}
!134 = !{!131, !5, i64 0}
!135 = !{!136, !5, i64 0}
!136 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !73, i64 8}
!137 = !{!136, !73, i64 8}
!138 = distinct !{!138, !17}
!139 = !{!136, !5, i64 4}
!140 = !{!141, !141, i64 0}
!141 = !{!"p1 _ZTS10Vec_Que_t_", !11, i64 0}
!142 = !{!143, !23, i64 16}
!143 = !{!"Vec_Que_t_", !5, i64 0, !5, i64 4, !23, i64 8, !23, i64 16, !144, i64 24}
!144 = !{!"p2 float", !109, i64 0}
!145 = !{!143, !23, i64 8}
!146 = !{!147, !148, i64 0}
!147 = !{!"Acb_Ntk_t_", !148, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !22, i64 24, !22, i64 40, !22, i64 56, !22, i64 72, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !9, i64 112, !22, i64 128, !22, i64 144, !22, i64 160, !22, i64 176, !22, i64 192, !126, i64 208, !22, i64 224, !22, i64 240, !22, i64 256, !22, i64 272, !22, i64 288, !22, i64 304, !22, i64 320, !22, i64 336, !22, i64 352, !22, i64 368, !22, i64 384, !22, i64 400, !131, i64 416, !136, i64 432, !136, i64 448, !9, i64 464, !22, i64 480, !141, i64 496, !22, i64 504, !22, i64 520, !22, i64 536, !22, i64 552}
!148 = !{!"p1 _ZTS10Acb_Man_t_", !11, i64 0}
!149 = !{!147, !5, i64 12}
!150 = !{!151, !152, i64 16}
!151 = !{!"Acb_Man_t_", !10, i64 0, !10, i64 8, !152, i64 16, !152, i64 24, !152, i64 32, !153, i64 40, !22, i64 48, !22, i64 64, !22, i64 80, !22, i64 96, !6, i64 112, !6, i64 904, !6, i64 1300, !5, i64 1696, !108, i64 1704, !5, i64 1720, !9, i64 1728, !9, i64 1744, !11, i64 1760}
!152 = !{!"p1 _ZTS10Abc_Nam_t_", !11, i64 0}
!153 = !{!"p1 _ZTS14Hash_IntMan_t_", !11, i64 0}
!154 = !{!147, !5, i64 88}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17, !157}
!157 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
