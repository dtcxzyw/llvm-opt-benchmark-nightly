Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCollapse?download=true
inline.NumInlined: 300
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Abc_NtkClpGiaOne2:bb.a
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11)
  %i.bt = sitofp i64 %i.bs to double
  %i.bu = fdiv double %i.bt, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.bu)
  br label %.critedge56

.critedge56:                                      ; preds = %Abc_Clock.exit73, %bb.q, %Vec_IntFree.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.bc
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #2

declare void @Gia_ManCollectAnds(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Bmc_CollapseOne_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_GiaDeriveSops(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #20
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %11, align 8, !tbaa !74
  %.neg175 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75
  %.neg = sdiv i64 %i.e, -1000
  %.neg176 = add i64 %.neg, %.neg175
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg176, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.f = call ptr @Gia_ManIsoStrashReduceInt(ptr noundef %1, ptr noundef %2, i32 noundef 0) #20 ; 9 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val138 = load i32, ptr %i.g, align 4, !tbaa !157
  %i.h = getelementptr i8, ptr %1, i64 72
  %.val140 = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.i = getelementptr i8, ptr %.val140, i64 4
  %.val140.val = load i32, ptr %i.i, align 4, !tbaa !27
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.val138, i32 noundef %.val140.val) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.k = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #20
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Abc_Clock.exit146, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %10, align 8, !tbaa !74
  %i.n = mul nsw i64 %i.m, 1000000
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !75
  %i.q = sdiv i64 %i.p, 1000
  %i.r = add nsw i64 %i.q, %i.n
  br label %Abc_Clock.exit146

Abc_Clock.exit146:                                ; preds = %bb.c, %bb.d
  %.0.i145 = phi i64 [ %i.r, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.s = add i64 %.0.i145, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13)
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.u)
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit146, %Abc_Clock.exit
  %i.v = getelementptr i8, ptr %i.f, i64 4        ; 3 uses
  %.val12.i = load i32, ptr %i.v, align 4, !tbaa !157 ; 4 uses
  %i.w = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.x = add i32 %.val12.i, -1
  %or.cond.i.i = icmp ult i32 %i.x, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val12.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !27
  store i32 %spec.store.select.i.i, ptr %i.w, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %spec.store.select.i.i to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = call noalias ptr @malloc(i64 noundef %i.aa) #19
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = icmp sgt i32 %.val12.i, 0
  br i1 %i.ae, label %.lr.ph.i, label %Vec_WecCollectFirsts.exit

.lr.ph.i:                                         ; preds = %Vec_IntAlloc.exit.i
  %i.af = getelementptr i8, ptr %i.f, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %.lr.ph.i
  %.val1116.i = phi i32 [ %.val12.i, %.lr.ph.i ], [ %.val11.i, %bb.q ]
  %i.ag = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.be, %bb.q ] ; 3 uses
  %i.ah = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.bf, %bb.q ] ; 5 uses
  %i.ai = phi i32 [ %spec.store.select.i.i, %.lr.ph.i ], [ %i.bg, %bb.q ] ; 8 uses
  %i.aj = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %bb.q ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.val10.i = load ptr, ptr %i.af, align 8, !tbaa !93
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.val10.i, i64 %indvars.iv.i ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %.val.i = load i32, ptr %i.al, align 4, !tbaa !27
  %i.am = icmp sgt i32 %.val.i, 0
  br i1 %i.am, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  %.val9.i = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ao = load i32, ptr %.val9.i, align 4, !tbaa !32
  %i.ap = icmp eq i32 %i.aj, %i.ai
  br i1 %i.ap, label %bb.i, label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp slt i32 %i.ai, 16
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.m:                                             ; preds = %bb.i
  %i.at = icmp samesign ult i32 %i.ai, 1073741823
  %i.au = shl nuw nsw i32 %i.ai, 1
  %spec.select.i.i = select i1 %i.at, i32 %i.au, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ai, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.n, label %Vec_IntPush.exit.i

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i.i = icmp eq ptr %i.ah, null
  %i.av = zext nneg i32 %spec.select.i.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = call ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef %i.aw) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = call noalias ptr @malloc(i64 noundef %i.aw) #19
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.p, %bb.o, %bb.l, %bb.k
  %storemerge.i = phi ptr [ %i.as, %bb.l ], [ %i.ar, %bb.k ], [ %i.ax, %bb.o ], [ %i.ay, %bb.p ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i.i, %bb.o ], [ %spec.select.i.i, %bb.p ] ; 2 uses
  store ptr %storemerge.i, ptr %i.ad, align 8, !tbaa !31
  store i32 %spec.select.sink.i.i, ptr %i.w, align 8, !tbaa !30
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.m, %bb.h
  %i.az = phi ptr [ %i.ag, %bb.h ], [ %i.ag, %bb.m ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.ba = phi i32 [ %i.ai, %bb.h ], [ %i.ai, %bb.m ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.bb = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.bb, ptr %i.y, align 4, !tbaa !27
  %i.bc = sext i32 %i.aj to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bc
  store i32 %i.ao, ptr %i.bd, align 4, !tbaa !32
  %.val11.pre.i = load i32, ptr %i.v, align 4, !tbaa !157
  br label %bb.q

bb.q:                                             ; preds = %Vec_IntPush.exit.i, %bb.g
  %.val11.i = phi i32 [ %.val1116.i, %bb.g ], [ %.val11.pre.i, %Vec_IntPush.exit.i ] ; 2 uses
  %i.be = phi ptr [ %i.ag, %bb.g ], [ %i.az, %Vec_IntPush.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.ah, %bb.g ], [ %i.az, %Vec_IntPush.exit.i ]
  %i.bg = phi i32 [ %i.ai, %bb.g ], [ %i.ba, %Vec_IntPush.exit.i ]
  %i.bh = phi i32 [ %i.aj, %bb.g ], [ %i.bb, %Vec_IntPush.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bi = sext i32 %.val11.i to i64
  %i.bj = icmp slt i64 %indvars.iv.next.i, %i.bi
  br i1 %i.bj, label %bb.g, label %Vec_WecCollectFirsts.exit.loopexit, !llvm.loop !151

Vec_WecCollectFirsts.exit.loopexit:               ; preds = %bb.q
  %.val127.pre = load i32, ptr %i.y, align 4, !tbaa !27
  br label %Vec_WecCollectFirsts.exit

Vec_WecCollectFirsts.exit:                        ; preds = %Vec_WecCollectFirsts.exit.loopexit, %Vec_IntAlloc.exit.i
  %.val130 = phi ptr [ %i.be, %Vec_WecCollectFirsts.exit.loopexit ], [ %i.ac, %Vec_IntAlloc.exit.i ]
  %.val127 = phi i32 [ %.val127.pre, %Vec_WecCollectFirsts.exit.loopexit ], [ 0, %Vec_IntAlloc.exit.i ] ; 10 uses
  %i.bk = add i32 %.val127, -1                    ; 2 uses
  %or.cond.i = icmp ult i32 %i.bk, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val127 ; 3 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.r

bb.r:                                             ; preds = %Vec_WecCollectFirsts.exit
  %i.bl = sext i32 %spec.store.select.i to i64
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = call noalias ptr @malloc(i64 noundef %i.bm) #19
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Vec_WecCollectFirsts.exit, %bb.r
  %.promoted182 = phi ptr [ %i.bn, %bb.r ], [ null, %Vec_WecCollectFirsts.exit ] ; 4 uses
  %i.bo = icmp sgt i32 %.val127, 0                ; 2 uses
  br i1 %i.bo, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.bp = getelementptr i8, ptr %2, i64 8
  %wide.trip.count = zext nneg i32 %.val127 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv194 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next195, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge183 = phi ptr [ %.promoted182, %.lr.ph ], [ %storemerge184, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i181 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i180, %Vec_IntPush.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val130, i64 %indvars.iv194
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %.val135 = load ptr, ptr %i.bp, align 8, !tbaa !93
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %.val135, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %.val125 = load i32, ptr %i.bu, align 4, !tbaa !27
  %i.bv = trunc nsw i64 %indvars.iv to i32
  %i.bw = icmp eq i32 %spec.select.sink.i181, %i.bv
  br i1 %i.bw, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %i.bx = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bx, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i = icmp eq ptr %storemerge183, null
  br i1 %.not9.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge183, i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.w:                                             ; preds = %bb.u
  %i.bz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntPush.exit

bb.x:                                             ; preds = %bb.t
  %i.ca = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.cb = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ca, i32 %i.cb, i32 2147483647 ; 4 uses
  %i.cc = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.cc
  br i1 %.not.i9.i, label %bb.y, label %Vec_IntPush.exit

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i = icmp eq ptr %storemerge183, null
  %i.cd = zext nneg i32 %spec.select.i to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = call ptr @realloc(ptr noundef nonnull %storemerge183, i64 noundef %i.ce) #21
  br label %Vec_IntPush.exit

bb.aa:                                            ; preds = %bb.y
  %i.cg = call noalias ptr @malloc(i64 noundef %i.ce) #19
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.w, %bb.v, %bb.aa, %bb.z, %bb.s, %bb.x
  %storemerge184 = phi ptr [ %storemerge183, %bb.s ], [ %storemerge183, %bb.x ], [ %i.bz, %bb.w ], [ %i.by, %bb.v ], [ %i.cf, %bb.z ], [ %i.cg, %bb.aa ] ; 4 uses
  %spec.select.sink.i180 = phi i32 [ %spec.select.sink.i181, %bb.s ], [ %spec.select.sink.i181, %bb.x ], [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i, %bb.z ], [ %spec.select.i, %bb.aa ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %storemerge184, i64 %indvars.iv
  store i32 %.val125, ptr %i.ch, align 4, !tbaa !32
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.s, !llvm.loop !152

.critedge.thread:                                 ; preds = %Vec_IntPush.exit
  %i.ci = trunc nsw i64 %indvars.iv.next to i32
  %i.cj = call ptr @Abc_MergeSortCost(ptr noundef nonnull %storemerge184, i32 noundef %i.ci) #20
  br label %bb.ab

.critedge:                                        ; preds = %Vec_IntAlloc.exit
  %i.ck = call ptr @Abc_MergeSortCost(ptr noundef %.promoted182, i32 noundef 0) #20 ; 2 uses
  %.not.i147 = icmp eq ptr %.promoted182, null
  br i1 %.not.i147, label %Vec_IntFree.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge.thread, %.critedge
  %i.cl = phi ptr [ %i.cj, %.critedge.thread ], [ %i.ck, %.critedge ]
  %.val136234 = phi ptr [ %storemerge184, %.critedge.thread ], [ %.promoted182, %.critedge ]
  call void @free(ptr noundef nonnull %.val136234) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.ab
  %i.cm = phi ptr [ %i.ck, %.critedge ], [ %i.cl, %bb.ab ] ; 4 uses
  %.not114 = icmp eq i32 %8, 0                    ; 3 uses
  br i1 %.not114, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntFree.exit
  %i.cn = getelementptr i8, ptr %1, i64 24
  %.val141 = load i32, ptr %i.cn, align 8, !tbaa !94 ; 5 uses
  %i.co = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.cp = add i32 %.val141, -1
  %or.cond.i.i148 = icmp ult i32 %i.cp, 15
  %spec.store.select.i.i149 = select i1 %or.cond.i.i148, i32 16, i32 %.val141 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i149, ptr %i.co, align 8, !tbaa !30
  %.not.i.i150 = icmp eq i32 %spec.store.select.i.i149, 0
  br i1 %.not.i.i150, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i151

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !31
  store i32 %.val141, ptr %i.cq, align 4, !tbaa !27
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i151:                           ; preds = %bb.ac
  %i.cs = sext i32 %spec.store.select.i.i149 to i64
  %i.ct = shl nsw i64 %i.cs, 2
  %i.cu = call noalias ptr @malloc(i64 noundef %i.ct) #19 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !31
  store i32 %.val141, ptr %i.cq, align 4, !tbaa !27
  %.not.i152 = icmp eq ptr %i.cu, null
  br i1 %.not.i152, label %Vec_IntStartFull.exit, label %bb.ad

bb.ad:                                            ; preds = %Vec_IntAlloc.exit.i151
  %i.cw = sext i32 %.val141 to i64
  %i.cx = shl nsw i64 %i.cw, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cu, i8 -1, i64 %i.cx, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i151, %bb.ad
  %i.cy = call ptr @Mf_ManGenerateCnf(ptr noundef nonnull %1, i32 noundef 8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #20
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_IntStartFull.exit, %Vec_IntFree.exit
  %.0107 = phi ptr [ %i.cy, %Vec_IntStartFull.exit ], [ null, %Vec_IntFree.exit ] ; 3 uses
  %.0106 = phi ptr [ %i.co, %Vec_IntStartFull.exit ], [ null, %Vec_IntFree.exit ] ; 4 uses
  %i.cz = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %or.cond.i.i153 = icmp ult i32 %i.bk, 7
  %spec.store.select.i.i154 = select i1 %or.cond.i.i153, i32 8, i32 %.val127 ; 3 uses
  store i32 %spec.store.select.i.i154, ptr %i.cz, align 8, !tbaa !25
  %.not.i.i155 = icmp eq i32 %spec.store.select.i.i154, 0
  br i1 %.not.i.i155, label %Vec_PtrStart.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = sext i32 %spec.store.select.i.i154 to i64
  %i.db = shl nsw i64 %i.da, 3
  %i.dc = call noalias ptr @malloc(i64 noundef %i.db) #19
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %bb.ae, %bb.af
  %i.dd = phi ptr [ %i.dc, %bb.af ], [ null, %bb.ae ] ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !26
  store i32 %.val127, ptr %i.de, align 4, !tbaa !24
  %i.dg = sext i32 %.val127 to i64                ; 3 uses
  %i.dh = shl nsw i64 %i.dg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dd, i8 0, i64 %i.dh, i1 false)
  %i.di = load ptr, ptr @stdout, align 8, !tbaa !72
  %i.dj = call ptr @Extra_ProgressBarStart(ptr noundef %i.di, i32 noundef %.val127) #20 ; 8 uses
  %.not.i156 = icmp eq ptr %i.dj, null            ; 3 uses
  br i1 %.not.i156, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %Vec_PtrStart.exit
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %Extra_ProgressBarUpdate.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %Vec_PtrStart.exit
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.dj, i32 noundef 0, ptr noundef null) #20
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %bb.ag, %bb.ah
  br i1 %i.bo, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %Extra_ProgressBarUpdate.exit
  %.val129 = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.dm = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.dn = icmp ne i32 %6, 0
  %or.cond = or i1 %i.dn, %.not114                ; 2 uses
  %i.do = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %wide.trip.count202 = zext nneg i32 %.val127 to i64
  %12 = getelementptr [4 x i8], ptr %i.cm, i64 %i.dg
  %13 = getelementptr i8, ptr %12, i64 -4
  %i.dq = load i32, ptr %13, align 4, !tbaa !32
  %i.dr = sext i32 %i.dq to i64                   ; 4 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.val129, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !32 ; 3 uses
  %.val134.peel = load ptr, ptr %i.dm, align 8, !tbaa !93
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [16 x i8], ptr %.val134.peel, i64 %i.du ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %.val119.peel = load i32, ptr %i.dw, align 4, !tbaa !27
  %i.dx = icmp slt i32 %.val119.peel, 2
  br i1 %i.dx, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph187
  %.val132.peel = load ptr, ptr %i.do, align 8, !tbaa !93
  %i.dy = getelementptr inbounds [16 x i8], ptr %.val132.peel, i64 %i.dr ; 2 uses
  br i1 %or.cond, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = call ptr @Abc_NtkClpGiaOne2(ptr noundef %.0107, ptr noundef %1, i32 noundef %i.dt, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %7, ptr noundef nonnull %i.dv, ptr noundef %.0106, i32 noundef %9, ptr noundef %i.dy, ptr noundef nonnull %2)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ea = call ptr @Abc_NtkClpGiaOne(ptr noundef %1, i32 noundef %i.dt, i32 noundef %3, i32 noundef %4, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %i.dv, i32 noundef %9, ptr noundef %i.dy, ptr noundef nonnull %2)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0105.peel = phi ptr [ %i.ea, %bb.ak ], [ %i.dz, %bb.aj ] ; 3 uses
  %i.eb = icmp eq ptr %.0105.peel, null
  br i1 %i.eb, label %.critedge3.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i156, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %Extra_ProgressBarUpdate.exit158.peel, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.dj, i32 noundef 0, ptr noundef null) #20
  br label %Extra_ProgressBarUpdate.exit158.peel

Extra_ProgressBarUpdate.exit158.peel:             ; preds = %bb.ao, %bb.an
  %i.ee = load ptr, ptr %i.dp, align 8, !tbaa !47
  %i.ef = getelementptr i8, ptr %.0105.peel, i64 8 ; 2 uses
  %.0105.val.peel = load ptr, ptr %i.ef, align 8, !tbaa !14
  %i.eg = call ptr @Abc_SopRegister(ptr noundef %i.ee, ptr noundef %.0105.val.peel) #20
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dr
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !28
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !14 ; 2 uses
  %.not.i159.peel = icmp eq ptr %i.ei, null
  br i1 %.not.i159.peel, label %Vec_StrFree.exit.peel, label %bb.ap

bb.ap:                                            ; preds = %Extra_ProgressBarUpdate.exit158.peel
  call void @free(ptr noundef nonnull %i.ei) #20
  br label %Vec_StrFree.exit.peel

Vec_StrFree.exit.peel:                            ; preds = %bb.ap, %Extra_ProgressBarUpdate.exit158.peel
  call void @free(ptr noundef nonnull %.0105.peel) #20
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph187
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dr
  store ptr inttoptr (i64 1 to ptr), ptr %i.ej, align 8, !tbaa !28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %Vec_StrFree.exit.peel
  %exitcond203.peel.not = icmp eq i32 %.val127, 1
  br i1 %exitcond203.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.ar
  %14 = getelementptr [4 x i8], ptr %i.cm, i64 %i.dg
  br label %.peel.next.a

.peel.next.a:                                     ; preds = %.peel.next, %bb.bb
  %indvars.iv199 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next200, %bb.bb ] ; 4 uses
  %15 = xor i64 %indvars.iv199, -1
  %i.ek = getelementptr [4 x i8], ptr %14, i64 %15
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !32
  %i.em = sext i32 %i.el to i64                   ; 4 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %.val129, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !32 ; 3 uses
  %.val134 = load ptr, ptr %i.dm, align 8, !tbaa !93
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [16 x i8], ptr %.val134, i64 %i.ep ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %.val119 = load i32, ptr %i.er, align 4, !tbaa !27
  %i.es = icmp slt i32 %.val119, 2
  br i1 %i.es, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.peel.next.a
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.em
  store ptr inttoptr (i64 1 to ptr), ptr %i.et, align 8, !tbaa !28
  br label %bb.bb

bb.at:                                            ; preds = %.peel.next.a
  %.val132 = load ptr, ptr %i.do, align 8, !tbaa !93
  %i.eu = getelementptr inbounds [16 x i8], ptr %.val132, i64 %i.em ; 2 uses
  br i1 %or.cond, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = call ptr @Abc_NtkClpGiaOne2(ptr noundef %.0107, ptr noundef %1, i32 noundef %i.eo, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %7, ptr noundef nonnull %i.eq, ptr noundef %.0106, i32 noundef 0, ptr noundef %i.eu, ptr noundef nonnull %2)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ew = call ptr @Abc_NtkClpGiaOne(ptr noundef %1, i32 noundef %i.eo, i32 noundef %3, i32 noundef %4, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %i.eq, i32 noundef 0, ptr noundef %i.eu, ptr noundef nonnull %2)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0105 = phi ptr [ %i.ew, %bb.av ], [ %i.ev, %bb.au ] ; 3 uses
  %i.ex = icmp eq ptr %.0105, null
  br i1 %i.ex, label %.critedge3.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i156, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv199, %i.ez
  br i1 %i.fa, label %Extra_ProgressBarUpdate.exit158, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fb = trunc nuw nsw i64 %indvars.iv199 to i32
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.dj, i32 noundef %i.fb, ptr noundef null) #20
  br label %Extra_ProgressBarUpdate.exit158

Extra_ProgressBarUpdate.exit158:                  ; preds = %bb.ay, %bb.az
  %i.fc = load ptr, ptr %i.dp, align 8, !tbaa !47
  %i.fd = getelementptr i8, ptr %.0105, i64 8     ; 2 uses
  %.0105.val = load ptr, ptr %i.fd, align 8, !tbaa !14
  %i.fe = call ptr @Abc_SopRegister(ptr noundef %i.fc, ptr noundef %.0105.val) #20
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.em
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !28
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !14 ; 2 uses
  %.not.i159 = icmp eq ptr %i.fg, null
  br i1 %.not.i159, label %Vec_StrFree.exit, label %bb.ba

bb.ba:                                            ; preds = %Extra_ProgressBarUpdate.exit158
  call void @free(ptr noundef nonnull %i.fg) #20
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %Extra_ProgressBarUpdate.exit158, %bb.ba
  call void @free(ptr noundef nonnull %.0105) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.as, %Vec_StrFree.exit
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge, label %.peel.next.a, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.bb, %bb.ar, %Extra_ProgressBarUpdate.exit
  call void @Extra_ProgressBarStop(ptr noundef %i.dj) #20
  br i1 %.not114, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge
  call void @Cnf_DataFree(ptr noundef %.0107) #20
  %i.fh = getelementptr inbounds nuw i8, ptr %.0106, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !31 ; 2 uses
  %.not.i160 = icmp eq ptr %i.fi, null
  br i1 %.not.i160, label %Vec_IntFree.exit161, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.fi) #20
  br label %Vec_IntFree.exit161

Vec_IntFree.exit161:                              ; preds = %bb.bc, %bb.bd
  call void @free(ptr noundef nonnull %.0106) #20
  br label %bb.be

bb.be:                                            ; preds = %Vec_IntFree.exit161, %._crit_edge
  %i.fj = getelementptr i8, ptr %1, i64 72
  %.val139 = load ptr, ptr %i.fj, align 8, !tbaa !91
  %i.fk = getelementptr i8, ptr %.val139, i64 4
  %.val139.val = load i32, ptr %i.fk, align 4, !tbaa !27 ; 4 uses
  %i.fl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.fm = add i32 %.val139.val, -1
  %or.cond.i.i162 = icmp ult i32 %i.fm, 7
  %spec.store.select.i.i163 = select i1 %or.cond.i.i162, i32 8, i32 %.val139.val ; 3 uses
  store i32 %spec.store.select.i.i163, ptr %i.fl, align 8, !tbaa !25
  %.not.i.i164 = icmp eq i32 %spec.store.select.i.i163, 0
  br i1 %.not.i.i164, label %Vec_PtrStart.exit165, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fn = sext i32 %spec.store.select.i.i163 to i64
  %i.fo = shl nsw i64 %i.fn, 3
  %i.fp = call noalias ptr @malloc(i64 noundef %i.fo) #19
  br label %Vec_PtrStart.exit165

Vec_PtrStart.exit165:                             ; preds = %bb.be, %bb.bf
  %i.fq = phi ptr [ %i.fp, %bb.bf ], [ null, %bb.be ] ; 7 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !26
  store i32 %.val139.val, ptr %i.fr, align 4, !tbaa !24
  %i.ft = sext i32 %.val139.val to i64
  %i.fu = shl nsw i64 %i.ft, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fq, i8 0, i64 %i.fu, i1 false)
  %.val137 = load i32, ptr %i.v, align 4, !tbaa !157 ; 2 uses
  %i.fv = icmp sgt i32 %.val137, 0
  br i1 %i.fv, label %.lr.ph192, label %.critedge3

.lr.ph192:                                        ; preds = %Vec_PtrStart.exit165
  %i.fw = getelementptr i8, ptr %i.f, i64 8
  %wide.trip.count213 = zext nneg i32 %.val137 to i64
  %.val131.pre = load ptr, ptr %i.fw, align 8, !tbaa !93
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph192, %.critedge5
  %indvars.iv210 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next211, %.critedge5 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.val131.pre, i64 %indvars.iv210 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 4
  %.val118 = load i32, ptr %i.fy, align 4, !tbaa !27 ; 3 uses
  %i.fz = icmp sgt i32 %.val118, 0
  br i1 %i.fz, label %.lr.ph190, label %.critedge5

.lr.ph190:                                        ; preds = %bb.bg
  %i.ga = getelementptr i8, ptr %i.fx, i64 8      ; 5 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv210
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !28 ; 5 uses
  %wide.trip.count208 = zext nneg i32 %.val118 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count208, 3      ; 3 uses
  %i.gd = icmp ult i32 %.val118, 4
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph190.new

.lr.ph190.new:                                    ; preds = %.lr.ph190
  %unroll_iter = and i64 %wide.trip.count208, 2147483644
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph190.new
  %indvars.iv205 = phi i64 [ 0, %.lr.ph190.new ], [ %indvars.iv.next206.3, %bb.bh ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph190.new ], [ %niter.next.3, %bb.bh ]
  %.val128 = load ptr, ptr %i.ga, align 8, !tbaa !31
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.val128, i64 %indvars.iv205
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !32
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gg
  store ptr %i.gc, ptr %i.gh, align 8, !tbaa !28
  %.val128.1 = load ptr, ptr %i.ga, align 8, !tbaa !31
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.val128.1, i64 %indvars.iv205
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !32
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gl
  store ptr %i.gc, ptr %i.gm, align 8, !tbaa !28
  %.val128.2 = load ptr, ptr %i.ga, align 8, !tbaa !31
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.val128.2, i64 %indvars.iv205
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !32
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gq
  store ptr %i.gc, ptr %i.gr, align 8, !tbaa !28
  %.val128.3 = load ptr, ptr %i.ga, align 8, !tbaa !31
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val128.3, i64 %indvars.iv205
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !32
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gv
  store ptr %i.gc, ptr %i.gw, align 8, !tbaa !28
  %indvars.iv.next206.3 = add nuw nsw i64 %indvars.iv205, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge5.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !154

.critedge5.loopexit.unr-lcssa:                    ; preds = %bb.bh
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge5, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge5.loopexit.unr-lcssa, %.lr.ph190
  %indvars.iv205.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next206.3, %.critedge5.loopexit.unr-lcssa ]
  %lcmp.mod238 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod238)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.epil.preheader
  %indvars.iv205.epil = phi i64 [ %indvars.iv205.epil.init, %.epil.preheader ], [ %indvars.iv.next206.epil, %bb.bi ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bi ]
  %.val128.epil = load ptr, ptr %i.ga, align 8, !tbaa !31
end_hunk_0
