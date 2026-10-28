Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbFunc?download=true
inline.NumInlined: 1282
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@Acb_TransformPatchFunctions:bb.a
  %i.di = load i32, ptr %i.d, align 4, !tbaa !73  ; 7 uses
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !71
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.aa, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.z
  %.pre144 = load ptr, ptr %i.i, align 8, !tbaa !72
  br label %Vec_PtrPush.exit

bb.aa:                                            ; preds = %bb.z
  %i.dl = icmp slt i32 %i.di, 16
  br i1 %i.dl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !72  ; 2 uses
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
  %.pre145 = load ptr, ptr %i.i, align 8, !tbaa !72 ; 3 uses
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
  store ptr %storemerge, ptr %i.i, align 8, !tbaa !72
  store i32 %spec.select.sink.i100, ptr %i.b, align 8, !tbaa !71
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.ae, %Vec_PtrGrow.exit12.sink.split.i
  %i.dv = phi ptr [ %.pre144, %.Vec_PtrPush.exit_crit_edge ], [ %.pre145, %bb.ae ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.dw = add nsw i32 %i.di, 1
  store i32 %i.dw, ptr %i.d, align 4, !tbaa !73
  %i.dx = sext i32 %i.di to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dx
  store ptr %i.dh, ptr %i.dy, align 8, !tbaa !74
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %.val88 = load i32, ptr %i.ah, align 4, !tbaa !88
  %i.dz = sext i32 %.val88 to i64
  %i.ea = icmp slt i64 %indvars.iv.next131, %i.dz
  br i1 %i.ea, label %bb.z, label %.critedge6, !llvm.loop !340

.critedge6:                                       ; preds = %Vec_PtrPush.exit, %Vec_IntStart.exit, %.critedge.preheader, %.critedge2.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !32 ; 2 uses
  %.not.i102 = icmp eq ptr %i.ec, null
  br i1 %.not.i102, label %Vec_IntFree.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.ec) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.ai
  tail call void @free(ptr noundef nonnull %i.ag) #34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %.not.i103 = icmp eq ptr %i.ee, null
  br i1 %.not.i103, label %Vec_IntFree.exit104, label %bb.aj

bb.aj:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ee) #34
  br label %Vec_IntFree.exit104

Vec_IntFree.exit104:                              ; preds = %Vec_IntFree.exit, %bb.aj
  tail call void @free(ptr noundef nonnull %i.n) #34
  store ptr %i.j, ptr %2, align 8, !tbaa !128
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
  %i.f = load i64, ptr %15, align 8, !tbaa !117
  %.neg401 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
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
  %i.k = load i64, ptr %14, align 8, !tbaa !117
  %i.l = mul nsw i64 %i.k, 1000000
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  %i.o = sdiv i64 %i.n, 1000
  %i.p = add nsw i64 %i.o, %i.l
  br label %Abc_Clock.exit190

Abc_Clock.exit190:                                ; preds = %Abc_Clock.exit, %bb.c
  %.0.i189 = phi i64 [ %i.p, %bb.c ], [ -1, %Abc_Clock.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 340
  %.val186 = load i32, ptr %i.r, align 4, !tbaa !30 ; 14 uses
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.s = call ptr @Acb_NtkFindRoots(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.a) ; 9 uses
  %i.t = call ptr @Acb_NtkFindSupp(ptr noundef %0, ptr noundef %i.s) ; 4 uses
  %i.u = call ptr @Acb_NtkFindSupp(ptr noundef %1, ptr noundef %i.s) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30   ; 3 uses
  %i.z = add nsw i32 %i.y, %i.w                   ; 2 uses
  %i.aa = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 8 uses
  %i.ab = add i32 %i.z, -1
  %or.cond.i.i = icmp ult i32 %i.ab, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.z ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !30
  store i32 %spec.store.select.i.i, ptr %i.aa, align 8, !tbaa !31
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
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr i8, ptr %i.t, i64 8       ; 2 uses
  %.val6.i = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 4 uses
  %.val6.i524 = ptrtoaddr ptr %.val6.i to i64
  %i.aj = getelementptr i8, ptr %i.u, i64 8       ; 2 uses
  %.val8.i = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 4 uses
  %.val8.i534 = ptrtoaddr ptr %.val8.i to i64
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
  %.0.lcssa.i.i533 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %i.ar = icmp ult ptr %.033.lcssa.i.i, %i.al
  br i1 %i.ar, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.036.lcssa.i.i525 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %.033.lcssa.i.i523 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %i.as = add i64 %.idx.i.i, %.val6.i524
  %i.at = xor i64 %.033.lcssa.i.i523, -1
  %i.au = add i64 %i.as, %i.at                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 44
  %i.ax = sub i64 %.033.lcssa.i.i523, %.036.lcssa.i.i525
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph13.i.i.preheader589, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph13.i.i.preheader
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.ay
  %i.ba = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.ay ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.bb ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load527 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !33
  %i.bd = getelementptr i8, ptr %next.gep526, i64 16
  store <4 x i32> %wide.load, ptr %next.gep526, align 4, !tbaa !33
  store <4 x i32> %wide.load527, ptr %i.bd, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph13.i.i.preheader589

.lr.ph13.i.i.preheader589:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.az, %middle.block ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntAlloc.exit.i, %bb.i
  %.08.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.val8.i, %Vec_IntAlloc.exit.i ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.i ], [ %.val6.i, %Vec_IntAlloc.exit.i ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.i ], [ %i.ag, %Vec_IntAlloc.exit.i ] ; 4 uses
  %i.bf = load i32, ptr %.0337.i.i, align 4, !tbaa !33 ; 4 uses
  %i.bg = load i32, ptr %.08.i.i, align 4, !tbaa !33 ; 3 uses
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.bf, ptr %.0366.i.i, align 4, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.bf, ptr %.0366.i.i, align 4, !tbaa !33
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.bg, ptr %.0366.i.i, align 4, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.134.i.i = phi ptr [ %i.bi, %bb.e ], [ %i.bl, %bb.g ], [ %.0337.i.i, %bb.h ] ; 3 uses
  %.1.i.i = phi ptr [ %i.bj, %bb.e ], [ %.08.i.i, %bb.g ], [ %i.bm, %bb.h ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.bn = icmp ult ptr %.134.i.i, %i.al
  %i.bo = icmp ult ptr %.1.i.i, %i.an
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !342

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.ba, %middle.block ], [ %i.cg, %.lr.ph13.i.i ] ; 5 uses
  %i.bq = icmp ult ptr %.0.lcssa.i.i, %i.an
  br i1 %i.bq, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i535 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.br = add i64 %.idx19.i.i, %.val8.i534
  %i.bs = xor i64 %.0.lcssa.i.i533, -1
  %i.bt = add i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check537 = icmp ult i64 %i.bt, 44
  %i.bw = sub i64 %.0.lcssa.i.i533, %.238.lcssa.i.i535
  %diff.check539 = icmp ugt i64 %i.bw, -32
  %or.cond576 = select i1 %min.iters.check537, i1 true, i1 %diff.check539
  br i1 %or.cond576, label %.lr.ph17.i.i.preheader588, label %vector.ph540

vector.ph540:                                     ; preds = %.lr.ph17.i.i.preheader
  %n.vec541 = and i64 %i.bv, 9223372036854775800  ; 3 uses
  %i.bx = shl i64 %n.vec541, 2                    ; 2 uses
  %i.by = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.bx ; 2 uses
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph540
  %index543 = phi i64 [ 0, %vector.ph540 ], [ %index.next548, %vector.body542 ] ; 2 uses
  %i.ca = shl i64 %index543, 2                    ; 2 uses
  %next.gep544 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ca ; 2 uses
  %next.gep545 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep544, i64 16
  %wide.load546 = load <4 x i32>, ptr %next.gep544, align 4, !tbaa !33
  %wide.load547 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !33
  %i.cc = getelementptr i8, ptr %next.gep545, i64 16
  store <4 x i32> %wide.load546, ptr %next.gep545, align 4, !tbaa !33
  store <4 x i32> %wide.load547, ptr %i.cc, align 4, !tbaa !33
  %index.next548 = add nuw i64 %index543, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next548, %n.vec541
  br i1 %i.cd, label %middle.block549, label %vector.body542, !llvm.loop !343

middle.block549:                                  ; preds = %vector.body542
  %cmp.n550 = icmp eq i64 %i.bv, %n.vec541
  br i1 %cmp.n550, label %Vec_IntTwoMerge.exit, label %.lr.ph17.i.i.preheader588

.lr.ph17.i.i.preheader588:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block549
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.by, %middle.block549 ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.bz, %middle.block549 ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader589, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.ce, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader589 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.cg, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader589 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.cf = load i32, ptr %.23512.i.i, align 4, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.cf, ptr %.23811.i.i, align 4, !tbaa !33
  %i.ch = icmp ult ptr %i.ce, %i.al
  br i1 %i.ch, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !344

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader588, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.ci, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader588 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.ck, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader588 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.cj = load i32, ptr %.216.i.i, align 4, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.cj, ptr %.315.i.i, align 4, !tbaa !33
  %i.cl = icmp ult ptr %i.ci, %i.an
  br i1 %i.cl, label %.lr.ph17.i.i, label %Vec_IntTwoMerge.exit, !llvm.loop !345

Vec_IntTwoMerge.exit:                             ; preds = %.lr.ph17.i.i, %middle.block549, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.bz, %middle.block549 ], [ %i.ck, %.lr.ph17.i.i ]
  %i.cm = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.cn = ptrtoint ptr %i.ag to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.ac, align 4, !tbaa !30
  %i.cr = or i32 %5, %4
  %or.cond.not = icmp eq i32 %i.cr, 0
  br i1 %or.cond.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Vec_IntTwoMerge.exit
  %i.cs = call ptr @Acb_NtkFindDivsCis(ptr noundef %0, ptr noundef nonnull %i.aa)
  br label %bb.l

bb.k:                                             ; preds = %Vec_IntTwoMerge.exit
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.cu = call ptr @Acb_NtkFindDivs(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef %i.ct, i32 noundef %7, i32 noundef %8)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cv = phi ptr [ %i.cs, %bb.j ], [ %i.cu, %bb.k ] ; 12 uses
  %i.cw = call ptr @Acb_NtkFindNodes(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.cv) ; 4 uses
  %i.cx = call ptr @Acb_NtkFindNodes(ptr noundef %1, ptr noundef %i.s, ptr noundef null) ; 4 uses
  %i.cy = call ptr @Acb_NtkToGia(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef %i.cw, ptr noundef %i.s, ptr noundef %i.cv, ptr noundef nonnull %i.q) ; 3 uses
  %i.cz = call ptr @Acb_NtkToGia(ptr noundef %1, ptr noundef nonnull %i.aa, ptr noundef %i.cx, ptr noundef %i.s, ptr noundef null, ptr noundef null) ; 3 uses
  %i.da = call ptr @Acb_CreateMiter(ptr noundef %i.cy, ptr noundef %i.cz) ; 5 uses
  %i.db = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.dc = add i32 %.val186, -1
  %or.cond.i = icmp ult i32 %i.dc, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val186 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 4 uses
  store i32 0, ptr %i.dd, align 4, !tbaa !73
  store i32 %spec.store.select.i, ptr %i.db, align 8, !tbaa !71
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 3 uses
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = sext i32 %spec.store.select.i to i64
  %i.df = shl nsw i64 %i.de, 3
  %i.dg = call noalias ptr @malloc(i64 noundef %i.df) #31
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.l, %bb.m
  %i.dh = phi ptr [ %i.dg, %bb.m ], [ null, %bb.l ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 6 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !72
  %i.dj = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 3 uses
  store i32 0, ptr %i.dk, align 4, !tbaa !88
  store i32 %spec.store.select.i, ptr %i.dj, align 8, !tbaa !86
  br i1 %.not.i, label %Vec_WecAlloc.exit, label %bb.n

bb.n:                                             ; preds = %Vec_PtrAlloc.exit
  %i.dl = sext i32 %spec.store.select.i to i64
  %i.dm = call noalias ptr @calloc(i64 noundef %i.dl, i64 noundef 16) #35
  br label %Vec_WecAlloc.exit
end_hunk_0
