Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFrames?download=true
inline.NumInlined: 424
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Gia_ManUnrollDup:bb.a
  %i.co = phi i32 [ %.val54, %bb.w ], [ %.val54, %bb.y ], [ %.pre97, %Vec_IntGrow.exit11.sink.split.i71 ]
  %i.cp = phi ptr [ %.val55, %bb.w ], [ %.val55, %bb.y ], [ %i.cn, %Vec_IntGrow.exit11.sink.split.i71 ]
  %i.cq = add nsw i32 %i.co, 1
  store i32 %i.cq, ptr %i.t, align 4, !tbaa !33
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %.pre-phi
  store i32 %.val4588, ptr %i.cr, align 4, !tbaa !36
  br label %bb.aa

bb.aa:                                            ; preds = %Vec_IntPush.exit75, %bb.v
  %.val41 = load ptr, ptr %i.by, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %.val41, i64 %indvars.iv91
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !10  ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.cv
  %.val56 = load i64, ptr %i.cw, align 4          ; 2 uses
  %i.cx = and i64 %.val56, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.cx, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsRo.exit, label %Gia_ObjIsRo.exit.thread

Gia_ObjIsRo.exit:                                 ; preds = %bb.aa
  %i.cy = lshr i64 %.val56, 32
  %i.cz = trunc nuw i64 %i.cy to i32
  %i.da = and i32 %i.cz, 536870911                ; 2 uses
  %.val4.i = load i32, ptr %i.as, align 8, !tbaa !45
  %.val5.i = load ptr, ptr %i.bz, align 8, !tbaa !32
  %i.db = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.db, align 4, !tbaa !33 ; 2 uses
  %i.dc = sub nsw i32 %.val5.val.i, %.val4.i
  %.not78 = icmp slt i32 %i.da, %i.dc
  br i1 %.not78, label %Gia_ObjIsRo.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %Gia_ObjIsRo.exit
  %.val6.i = load ptr, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %i.dd = getelementptr i8, ptr %.val6.i, i64 4
  %.val6.val.i = load i32, ptr %i.dd, align 4, !tbaa !33
  %i.de = add i32 %.val6.val.i, %i.da
  %i.df = sub i32 %i.de, %.val5.val.i
  %i.dg = getelementptr i8, ptr %.val6.i, i64 8
  %.val4.val.i = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.dh = sext i32 %i.df to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.val4.val.i, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.dk
  tail call void @Gia_ManUnrollDup_rec(ptr noundef nonnull %i.b, ptr noundef %i.dl, i32 noundef %i.dj)
  br label %Gia_ObjIsRo.exit.thread

Gia_ObjIsRo.exit.thread:                          ; preds = %bb.aa, %Gia_ObjIsRo.exit, %bb.ab
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %.val45 = load i32, ptr %i.s, align 8, !tbaa !42 ; 2 uses
  %i.dm = sext i32 %.val45 to i64
  %i.dn = icmp slt i64 %indvars.iv.next92, %i.dm
  br i1 %i.dn, label %bb.v, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %Gia_ObjIsRo.exit.thread, %Vec_IntPush.exit67
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.b, i32 noundef 0) #26
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @Gia_ManStart(i32 noundef) local_unnamed_addr #3

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManUnrollAbs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val75 = load i32, ptr %i.a, align 8, !tbaa !42 ; 3 uses
  %i.b = icmp ult i32 %.val75, 2
  %i.c = add i32 %.val75, -1
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.e = sub nuw nsw i32 32, %i.d
  %.09.i = select i1 %i.b, i32 %.val75, i32 %i.e
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !33
  store i32 1000, ptr %i.f, align 8, !tbaa !34
  %i.h = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #25
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = tail call ptr @Gia_ManUnrollDup(ptr noundef %0, ptr noundef nonnull %i.f) ; 3 uses
  %.val69 = load i32, ptr %i.g, align 4, !tbaa !33 ; 3 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.l = add i32 %.val69, -1
  %or.cond.i = icmp ult i32 %i.l, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %.val69 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  store i32 0, ptr %i.m, align 4, !tbaa !49
  store i32 %spec.store.select.i, ptr %i.k, align 8, !tbaa !52
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #25
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !53
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %Vec_PtrAlloc.exit
  %i.t = getelementptr i8, ptr %i.j, i64 24
  %i.u = getelementptr i8, ptr %i.j, i64 32
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = getelementptr i8, ptr %0, i64 64
  %i.y = sext i32 %.val69 to i64                  ; 3 uses
  %wide.trip.count112 = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph98, %Vec_PtrPush.exit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next108, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv105 = phi i64 [ 1, %.lr.ph98 ], [ %indvars.iv.next106, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 4 uses
  %i.z = icmp slt i64 %indvars.iv.next108, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val78 = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val78, i64 %indvars.iv.next108
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.aa, %bb.d ], [ %i.t, %bb.c ]
  %i.ab = load i32, ptr %.in, align 4, !tbaa !36  ; 2 uses
  %i.ac = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.ad = add i32 %i.ab, -1
  %or.cond.i82 = icmp ult i32 %i.ad, 15
  %spec.store.select.i83 = select i1 %or.cond.i82, i32 16, i32 %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 5 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !33
  store i32 %spec.store.select.i83, ptr %i.ac, align 8, !tbaa !34
  %.not.i84 = icmp eq i32 %spec.store.select.i83, 0
  br i1 %.not.i84, label %Vec_IntAlloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sext i32 %spec.store.select.i83 to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #25
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.e, %bb.f
  %i.ai = phi ptr [ %i.ah, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !35
  br label %bb.g

.loopexit:                                        ; preds = %bb.v, %bb.k
  %.val81 = phi ptr [ %i.al, %bb.k ], [ %i.cj, %bb.v ] ; 2 uses
  %i.ak = phi ptr [ %i.am, %bb.k ], [ %i.ck, %bb.v ]
  %exitcond.not = icmp eq i64 %indvars.iv.next101, %indvars.iv105
  br i1 %exitcond.not, label %bb.w, label %bb.g, !llvm.loop !54

bb.g:                                             ; preds = %Vec_IntAlloc.exit, %.loopexit
  %i.al = phi ptr [ %i.ai, %Vec_IntAlloc.exit ], [ %.val81, %.loopexit ] ; 2 uses
  %i.am = phi ptr [ %i.ai, %Vec_IntAlloc.exit ], [ %i.ak, %.loopexit ] ; 2 uses
  %indvars.iv100 = phi i64 [ 0, %Vec_IntAlloc.exit ], [ %indvars.iv.next101, %.loopexit ] ; 4 uses
  %i.an = icmp slt i64 %indvars.iv100, %i.y
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val77 = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv100
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aq = phi i32 [ %i.ap, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 4 uses
  %i.ar = icmp slt i64 %indvars.iv.next101, %i.y
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val76 = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv.next101
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %i.au = add nsw i32 %i.at, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.av = phi i32 [ %i.au, %bb.j ], [ -1, %bb.i ] ; 2 uses
  %.not6494 = icmp slt i32 %i.av, %i.aq
  br i1 %.not6494, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aw = sub nsw i64 %indvars.iv107, %indvars.iv100
  %i.ax = trunc nsw i64 %i.aw to i32
  %i.ay = shl i32 %i.ax, %.09.i
  %i.az = sext i32 %i.av to i64
  %i.ba = sext i32 %i.aq to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.v
  %i.bb = phi ptr [ %i.al, %.lr.ph ], [ %i.cj, %bb.v ] ; 4 uses
  %i.bc = phi ptr [ %i.am, %.lr.ph ], [ %i.ck, %bb.v ] ; 6 uses
  %indvars.iv = phi i64 [ %i.az, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %.val71 = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.bd = getelementptr inbounds [12 x i8], ptr %.val71, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %.val70 = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [12 x i8], ptr %.val70, i64 %i.bg
  %.val73 = load i64, ptr %i.bh, align 4          ; 4 uses
  %i.bi = and i64 %.val73, 2147483648
  %.not.i85 = icmp eq i64 %i.bi, 0
  %i.bj = and i64 %.val73, 536870911
  %i.bk = icmp eq i64 %i.bj, 536870911
  %narrow.i.not = or i1 %.not.i85, %i.bk
  br i1 %narrow.i.not, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bl = and i64 %.val73, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.bl, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsPi.exit, label %Gia_ObjIsPi.exit.thread

Gia_ObjIsPi.exit:                                 ; preds = %bb.m
  %i.bm = lshr i64 %.val73, 32
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 536870911
  %.val4.i = load i32, ptr %i.w, align 8, !tbaa !45
  %.val5.i = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.bp = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.bp, align 4, !tbaa !33
  %i.bq = sub nsw i32 %.val5.val.i, %.val4.i
  %.not92 = icmp slt i32 %i.bo, %i.bq
  br i1 %.not92, label %bb.v, label %Gia_ObjIsPi.exit.thread

Gia_ObjIsPi.exit.thread:                          ; preds = %bb.m, %Gia_ObjIsPi.exit
  %i.br = or i32 %i.bf, %i.ay
  %i.bs = load i32, ptr %i.ae, align 4, !tbaa !33 ; 7 uses
  %i.bt = load i32, ptr %i.ac, align 8, !tbaa !34
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %Gia_ObjIsPi.exit.thread
  %i.bv = icmp slt i32 %i.bs, 16
  br i1 %i.bv, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i = icmp eq ptr %i.bc, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.bx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.by = icmp samesign ult i32 %i.bs, 1073741823
  %i.bz = shl nuw nsw i32 %i.bs, 1
  %spec.select.i = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bs, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %i.bc, null
  %i.ca = zext nneg i32 %spec.select.i to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %i.cb) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cb) #25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge = phi ptr [ %i.bx, %bb.q ], [ %i.bw, %bb.p ], [ %i.cc, %bb.t ], [ %i.cd, %bb.u ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ]
  store ptr %storemerge, ptr %i.aj, align 8, !tbaa !35
  store i32 %spec.select.sink.i, ptr %i.ac, align 8, !tbaa !34
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Gia_ObjIsPi.exit.thread, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.ce = phi i32 [ %i.bs, %Gia_ObjIsPi.exit.thread ], [ %i.bs, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cf = phi ptr [ %i.bb, %Gia_ObjIsPi.exit.thread ], [ %i.bb, %bb.r ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.cg = add nsw i32 %i.ce, 1
  store i32 %i.cg, ptr %i.ae, align 4, !tbaa !33
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ch
  store i32 %i.br, ptr %i.ci, align 4, !tbaa !36
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %Gia_ObjIsPi.exit, %Vec_IntPush.exit
  %i.cj = phi ptr [ %i.bb, %bb.l ], [ %i.bb, %Gia_ObjIsPi.exit ], [ %i.cf, %Vec_IntPush.exit ] ; 2 uses
  %i.ck = phi ptr [ %i.bc, %bb.l ], [ %i.bc, %Gia_ObjIsPi.exit ], [ %i.cf, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not64.not = icmp sgt i64 %indvars.iv, %i.ba
  br i1 %.not64.not, label %bb.l, label %.loopexit, !llvm.loop !55

bb.w:                                             ; preds = %.loopexit
  %.val80 = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.cl = sext i32 %.val80 to i64
  tail call void @qsort(ptr noundef %.val81, i64 noundef %i.cl, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare2) #26
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !49  ; 7 uses
  %i.cn = load i32, ptr %i.k, align 8, !tbaa !52
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.x, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.w
  %.pre114 = load ptr, ptr %i.r, align 8, !tbaa !53
  br label %Vec_PtrPush.exit

bb.x:                                             ; preds = %bb.w
  %i.cp = icmp slt i32 %i.cm, 16
  br i1 %i.cp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !53  ; 2 uses
  %.not9.i.i88 = icmp eq ptr %i.cq, null
  br i1 %.not9.i.i88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cq, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.cs = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.ct = icmp samesign ult i32 %i.cm, 1073741823
  %i.cu = shl nuw nsw i32 %i.cm, 1
  %spec.select.i86 = select i1 %i.ct, i32 %i.cu, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.cm, %spec.select.i86
  %.pre115 = load ptr, ptr %i.r, align 8, !tbaa !53 ; 3 uses
  br i1 %.not.i10.i, label %bb.ac, label %Vec_PtrPush.exit

bb.ac:                                            ; preds = %bb.ab
  %.not9.i11.i = icmp eq ptr %.pre115, null
  %i.cv = zext nneg i32 %spec.select.i86 to i64
  %i.cw = shl nuw nsw i64 %i.cv, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = tail call ptr @realloc(ptr noundef nonnull %.pre115, i64 noundef %i.cw) #24
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ae:                                            ; preds = %bb.ac
  %i.cy = tail call noalias ptr @malloc(i64 noundef %i.cw) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.ad, %bb.ae, %bb.z, %bb.aa
  %storemerge93 = phi ptr [ %i.cs, %bb.aa ], [ %i.cr, %bb.z ], [ %i.cx, %bb.ad ], [ %i.cy, %bb.ae ] ; 2 uses
  %spec.select.sink.i87 = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i86, %bb.ad ], [ %spec.select.i86, %bb.ae ]
  store ptr %storemerge93, ptr %i.r, align 8, !tbaa !53
  store i32 %spec.select.sink.i87, ptr %i.k, align 8, !tbaa !52
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.ab, %Vec_PtrGrow.exit12.sink.split.i
  %i.cz = phi ptr [ %.pre114, %.Vec_PtrPush.exit_crit_edge ], [ %.pre115, %bb.ab ], [ %storemerge93, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.da = add nsw i32 %i.cm, 1
  store i32 %i.da, ptr %i.m, align 4, !tbaa !49
  %i.db = sext i32 %i.cm to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.db
  store ptr %i.ac, ptr %i.dc, align 8, !tbaa !56
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge, label %bb.c, !llvm.loop !57

._crit_edge:                                      ; preds = %Vec_PtrPush.exit, %Vec_PtrAlloc.exit
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !35  ; 2 uses
  %.not.i89 = icmp eq ptr %i.dd, null
  br i1 %.not.i89, label %Vec_IntFree.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.dd) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.af
  tail call void @free(ptr noundef nonnull %i.f) #26
  tail call void @Gia_ManStop(ptr noundef %i.j) #26
  ret ptr %i.k
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

end_hunk_0
begin_hunk_1_@Gia_ManUnrollStart:bb.a
  %.val23.val32 = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.ae = icmp sgt i32 %.val23.val32, %.val30
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader27, %Gia_ManAppendCi.exit
  %.033 = phi i32 [ %i.bu, %Gia_ManAppendCi.exit ], [ 0, %.preheader27 ]
  %i.af = tail call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.b) ; 4 uses
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = or i64 %i.ag, 2684354559                ; 2 uses
  store i64 %i.ah, ptr %i.af, align 4
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val.i = load i32, ptr %i.aj, align 4, !tbaa !33
  %i.ak = and i32 %.val.i, 536870911
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = and i64 %i.ah, -2305843004918726657
  %i.ao = or disjoint i64 %i.am, %i.an
  store i64 %i.ao, ptr %i.af, align 4
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 6 uses
  %.val11.i = load ptr, ptr %i.ab, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33 ; 7 uses
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !34
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %Gia_ManAppendCi.exit

bb.d:                                             ; preds = %.lr.ph
  %i.au = icmp slt i32 %i.ar, 16
  br i1 %i.au, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ay = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.g, %bb.f
  %i.az = phi ptr [ %i.ax, %bb.f ], [ %i.ay, %bb.g ]
  store ptr %i.az, ptr %i.av, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.ba = icmp samesign ult i32 %i.ar, 1073741823
  %i.bb = shl nuw nsw i32 %i.ar, 1
  %spec.select.i.i = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ar, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.i, label %Gia_ManAppendCi.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bd, null
  %i.be = zext nneg i32 %spec.select.i.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef %i.bf) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi ptr [ %i.bg, %bb.j ], [ %i.bh, %bb.k ]
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ap, align 8, !tbaa !34
  %.pre.i = load i32, ptr %i.aq, align 4, !tbaa !33
  br label %Gia_ManAppendCi.exit

Gia_ManAppendCi.exit:                             ; preds = %.lr.ph, %bb.h, %Vec_IntGrow.exit11.sink.split.i.i
  %i.bj = phi i32 [ %i.ar, %.lr.ph ], [ %i.ar, %bb.h ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bk = ptrtoint ptr %i.af to i64
  %i.bl = ptrtoint ptr %.val11.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 12
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.br = add nsw i32 %i.bj, 1
  store i32 %i.br, ptr %i.aq, align 4, !tbaa !33
  %i.bs = sext i32 %i.bj to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !36
  %i.bu = add nuw nsw i32 %.033, 1                ; 2 uses
  %.val = load i32, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %.val23 = load ptr, ptr %i.z, align 8, !tbaa !32 ; 2 uses
  %i.bv = getelementptr i8, ptr %.val23, i64 4
  %.val23.val = load i32, ptr %i.bv, align 4, !tbaa !33
  %i.bw = sub nsw i32 %.val23.val, %.val
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !86

._crit_edge.loopexit:                             ; preds = %Gia_ManAppendCi.exit
  %.pre = load i32, ptr %i.t, align 4, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader27
  %i.by = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ac, %.preheader27 ] ; 2 uses
  %.val233140 = phi ptr [ %.val23, %._crit_edge.loopexit ], [ %.val2331, %.preheader27 ]
  %.val3038 = phi i32 [ %.val, %._crit_edge.loopexit ], [ %.val30, %.preheader27 ]
  %i.bz = add nuw nsw i32 %.02134, 1              ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %i.by
  br i1 %i.ca, label %.preheader27, label %.loopexit29, !llvm.loop !87

.loopexit29:                                      ; preds = %._crit_edge, %.preheader28, %Abc_UtilStrsav.exit26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !88
  %.not22 = icmp eq i32 %i.cc, 0
  br i1 %.not22, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit29
  %i.cd = getelementptr i8, ptr %i.e, i64 16      ; 2 uses
  %.val2435 = load i32, ptr %i.cd, align 8, !tbaa !45
  %i.ce = icmp sgt i32 %.val2435, 0
  br i1 %i.ce, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.preheader, %.lr.ph37
  %.136 = phi i32 [ %i.cg, %.lr.ph37 ], [ 0, %.preheader ]
  %i.cf = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.b) ; 0 uses
  %i.cg = add nuw nsw i32 %.136, 1                ; 2 uses
  %.val24 = load i32, ptr %i.cd, align 8, !tbaa !45
  %i.ch = icmp slt i32 %i.cg, %.val24
  br i1 %i.ch, label %.lr.ph37, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %.lr.ph37, %.preheader, %.loopexit29
  ret ptr %i.a
}

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_ManUnrollAdd(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !84
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit96, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val6797 = load i32, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr i8, ptr %i.e, i64 64
  %.val6898 = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr i8, ptr %.val6898, i64 4
  %.val68.val99 = load i32, ptr %i.h, align 4, !tbaa !33
  %i.i = icmp sgt i32 %.val68.val99, %.val6797
  br i1 %i.i, label %.lr.ph, label %.loopexit96

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.051100 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.b ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef %i.k) ; 0 uses
  %i.m = add nuw nsw i32 %.051100, 1              ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val67 = load i32, ptr %i.o, align 8, !tbaa !45
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %.val68 = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr i8, ptr %.val68, i64 4
  %.val68.val = load i32, ptr %i.q, align 4, !tbaa !33
  %i.r = sub nsw i32 %.val68.val, %.val67
  %i.s = icmp slt i32 %i.m, %i.r
  br i1 %i.s, label %bb.b, label %.loopexit96, !llvm.loop !90

.loopexit96:                                      ; preds = %bb.b, %.preheader, %bb.a
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.loopexit96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %i.z = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = add nsw i32 %1, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = zext nneg i32 %1 to i64
  %2 = zext nneg i32 %i.ab to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph108, %.loopexit
  %indvars.iv110 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next111, %.loopexit ] ; 5 uses
  %.0107 = phi i32 [ 0, %.lr.ph108 ], [ %.3, %.loopexit ] ; 3 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !65  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val61 = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ag = sub nsw i64 %i.ad, %indvars.iv110       ; 2 uses
  %3 = sext i32 %.val61 to i64
  %.not56 = icmp slt i64 %i.ag, %3
  br i1 %.not56, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val66 = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr [4 x i8], ptr %.val66, i64 %i.ag ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36 ; 2 uses
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !36 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph104, label %.loopexit

.lr.ph104:                                        ; preds = %bb.d
  %i.an = icmp eq i64 %indvars.iv110, 0
  %i.ao = icmp eq i64 %indvars.iv110, %2
  %i.ap = sext i32 %i.ak to i64
  %i.aq = trunc nuw nsw i64 %indvars.iv110 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph104, %Gia_ObjUnrWrite.exit
  %indvars.iv = phi i64 [ %i.ap, %.lr.ph104 ], [ %indvars.iv.next, %Gia_ObjUnrWrite.exit ] ; 11 uses
  %.1103 = phi i32 [ %.0107, %.lr.ph104 ], [ %.2, %Gia_ObjUnrWrite.exit ]
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  %.val62 = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.at = getelementptr inbounds [12 x i8], ptr %.val62, i64 %indvars.iv ; 2 uses
  %.val64 = load i64, ptr %i.at, align 4          ; 9 uses
  %i.au = and i64 %.val64, 2147483648             ; 2 uses
  %.not.i = icmp eq i64 %i.au, 0
  %i.av = and i64 %.val64, 536870911
  %i.aw = icmp ne i64 %i.av, 536870911            ; 2 uses
  %narrow.i = and i1 %.not.i, %i.aw
  br i1 %narrow.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.ay = trunc i64 %.val64 to i32                ; 2 uses
  %i.az = and i32 %i.ay, 536870911
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %Gia_ObjUnrReadCopy0.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = and i64 %.val64, 536870911
  %i.bd = sub nsw i64 %indvars.iv, %i.bc
  %.val9.i = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.be = getelementptr i8, ptr %.val9.i, i64 8
  %.val9.val.i = load ptr, ptr %i.be, align 8, !tbaa !35
  %.val8.i = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.bf = getelementptr i8, ptr %.val8.i, i64 8
  %.val8.val.i = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val7.i = load ptr, ptr %i.bh, align 8, !tbaa !35
  %.idx124.a = shl nsw i64 %indvars.iv, 3
  %i.bi = getelementptr inbounds i8, ptr %.val7.i, i64 %.idx124.a
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !36
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val8.val.i, i64 %i.bd
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !36
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val9.val.i, i64 %i.bm
  %narrow.i.i = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 1)
  %spec.select.i.i = sext i32 %narrow.i.i to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %spec.select.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !36
  br label %Gia_ObjUnrReadCopy0.exit

Gia_ObjUnrReadCopy0.exit:                         ; preds = %bb.f, %bb.g
  %.08.i.i = phi i32 [ %i.bp, %bb.g ], [ 0, %bb.f ]
  %i.bq = lshr i32 %i.ay, 29
  %i.br = and i32 %i.bq, 1
  %i.bs = xor i32 %.08.i.i, %i.br
  %i.bt = lshr i64 %.val64, 32                    ; 2 uses
  %i.bu = trunc nuw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 536870911
  %i.bw = icmp eq i32 %i.bv, %i.ba
  br i1 %i.bw, label %Gia_ObjUnrReadCopy1.exit, label %bb.h

bb.h:                                             ; preds = %Gia_ObjUnrReadCopy0.exit
  %i.bx = and i64 %i.bt, 536870911
  %i.by = sub nsw i64 %indvars.iv, %i.bx
  %.val9.i74 = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.bz = getelementptr i8, ptr %.val9.i74, i64 8
  %.val9.val.i75 = load ptr, ptr %i.bz, align 8, !tbaa !35
  %.val8.i76 = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ca = getelementptr i8, ptr %.val8.i76, i64 8
  %.val8.val.i77 = load ptr, ptr %i.ca, align 8, !tbaa !35
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val7.i78 = load ptr, ptr %i.cc, align 8, !tbaa !35
  %.idx125 = shl i64 %indvars.iv, 3
  %i.cd = getelementptr i8, ptr %.val7.i78, i64 %.idx125
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !36
  %i.cg = getelementptr inbounds [4 x i8], ptr %.val8.val.i77, i64 %i.by
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val9.val.i75, i64 %i.ci
  %narrow.i.i79 = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 1)
  %spec.select.i.i80 = sext i32 %narrow.i.i79 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %spec.select.i.i80
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !36
  br label %Gia_ObjUnrReadCopy1.exit

Gia_ObjUnrReadCopy1.exit:                         ; preds = %Gia_ObjUnrReadCopy0.exit, %bb.h
  %.08.i.i81 = phi i32 [ %i.cl, %bb.h ], [ 0, %Gia_ObjUnrReadCopy0.exit ]
  %i.cm = lshr i64 %.val64, 61
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = and i32 %i.cn, 1
  %i.cp = xor i32 %.08.i.i81, %i.co
  %i.cq = tail call i32 @Gia_ManHashAnd(ptr noundef %i.ax, i32 noundef %i.bs, i32 noundef %i.cp) #26
  br label %Gia_ObjUnrReadCi.exit

bb.i:                                             ; preds = %bb.e
  %.not.i82 = icmp ne i64 %i.au, 0
  %narrow.i83 = and i1 %.not.i82, %i.aw
  br i1 %narrow.i83, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.cr = trunc i64 %.val64 to i32                ; 2 uses
  %i.cs = and i32 %i.cr, 536870911
  %i.ct = trunc nsw i64 %indvars.iv to i32
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %Gia_ObjUnrReadCopy0.exit92, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = and i64 %.val64, 536870911
  %i.cw = sub nsw i64 %indvars.iv, %i.cv
  %.val9.i84 = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.cx = getelementptr i8, ptr %.val9.i84, i64 8
  %.val9.val.i85 = load ptr, ptr %i.cx, align 8, !tbaa !35
  %.val8.i86 = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.cy = getelementptr i8, ptr %.val8.i86, i64 8
  %.val8.val.i87 = load ptr, ptr %i.cy, align 8, !tbaa !35
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %.val7.i88 = load ptr, ptr %i.da, align 8, !tbaa !35
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.db = getelementptr inbounds i8, ptr %.val7.i88, i64 %.idx
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !36
  %i.dd = getelementptr inbounds [4 x i8], ptr %.val8.val.i87, i64 %i.cw
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.val9.val.i85, i64 %i.df
  %narrow.i.i89 = tail call i32 @llvm.umax.i32(i32 %i.dc, i32 1)
  %spec.select.i.i90 = sext i32 %narrow.i.i89 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %spec.select.i.i90
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !36
  br label %Gia_ObjUnrReadCopy0.exit92

Gia_ObjUnrReadCopy0.exit92:                       ; preds = %bb.j, %bb.k
  %.08.i.i91 = phi i32 [ %i.di, %bb.k ], [ 0, %bb.j ]
  %i.dj = lshr i32 %i.cr, 29
  %i.dk = and i32 %i.dj, 1
  %i.dl = xor i32 %.08.i.i91, %i.dk               ; 5 uses
  br i1 %i.ao, label %bb.l, label %Gia_ObjUnrReadCi.exit

bb.l:                                             ; preds = %Gia_ObjUnrReadCopy0.exit92
  %i.dm = load ptr, ptr %0, align 8, !tbaa !64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !84
  %.not60 = icmp eq i32 %i.do, 0
  br i1 %.not60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.dl, ptr %i.ac, align 8, !tbaa !91
  br label %Gia_ObjUnrReadCi.exit

bb.n:                                             ; preds = %bb.l
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.dq = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef %i.dp, i32 noundef %i.dl) ; 0 uses
  br label %Gia_ObjUnrReadCi.exit

bb.o:                                             ; preds = %bb.i
  %i.dr = and i64 %.val64, 2684354559
  %narrow.i93.not = icmp eq i64 %i.dr, 2684354559
  br i1 %narrow.i93.not, label %bb.p, label %Gia_ObjUnrReadCi.exit

bb.p:                                             ; preds = %bb.o
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !83  ; 2 uses
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !61  ; 9 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = getelementptr i8, ptr %i.dt, i64 32
  %.val41.i = load ptr, ptr %i.dw, align 8, !tbaa !10 ; 2 uses
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [12 x i8], ptr %.val41.i, i64 %i.dx
  %.val61.i = load i64, ptr %i.dy, align 4        ; 5 uses
  %i.dz = and i64 %.val61.i, 2684354559
  %narrow.i.not.i.i = icmp eq i64 %i.dz, 2684354559
  br i1 %narrow.i.not.i.i, label %Gia_ObjIsPi.exit.i, label %Gia_ObjIsPi.exit.thread.i

Gia_ObjIsPi.exit.i:                               ; preds = %bb.p
  %i.ea = lshr i64 %.val61.i, 32
  %i.eb = trunc nuw i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 536870911                ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dt, i64 16
  %.val4.i.i = load i32, ptr %i.ed, align 8, !tbaa !45 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dt, i64 64
  %.val5.i.i = load ptr, ptr %i.ee, align 8, !tbaa !32
  %i.ef = getelementptr i8, ptr %.val5.i.i, i64 4
  %.val5.val.i.i = load i32, ptr %i.ef, align 4, !tbaa !33
  %i.eg = sub nsw i32 %.val5.val.i.i, %.val4.i.i  ; 2 uses
  %.not.i94 = icmp slt i32 %i.ec, %i.eg
  br i1 %.not.i94, label %bb.q, label %Gia_ObjIsPi.exit.thread.i

bb.q:                                             ; preds = %Gia_ObjIsPi.exit.i
  %i.eh = load ptr, ptr %0, align 8, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !84
  %.not40.i = icmp eq i32 %i.ej, 0
  %i.ek = mul nsw i32 %i.eg, %i.aq
  %i.el = select i1 %.not40.i, i32 0, i32 %.val4.i.i
  %.sink.v.i = add i32 %i.ek, %i.ec
  %.sink.i = add i32 %.sink.v.i, %i.el
  %i.em = getelementptr i8, ptr %i.ds, i64 64
  %.val70.i = load ptr, ptr %i.em, align 8, !tbaa !32
  %i.en = getelementptr i8, ptr %.val70.i, i64 8
  %.val70.val.i = load ptr, ptr %i.en, align 8, !tbaa !35
  %i.eo = sext i32 %.sink.i to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %.val70.val.i, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !36
  %i.er = shl nsw i32 %i.eq, 1
  br label %Gia_ObjUnrReadCi.exit

Gia_ObjIsPi.exit.thread.i:                        ; preds = %Gia_ObjIsPi.exit.i, %bb.p
  br i1 %i.an, label %bb.r, label %bb.w

bb.r:                                             ; preds = %Gia_ObjIsPi.exit.thread.i
  %i.es = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !88
  %.not38.i = icmp eq i32 %i.eu, 0
  br i1 %.not38.i, label %bb.s, label %Gia_ObjUnrReadCi.exit

bb.s:                                             ; preds = %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !84
  %.not39.i = icmp eq i32 %i.ew, 0
  br i1 %.not39.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = getelementptr i8, ptr %i.dt, i64 16
  %.val54.i = load i32, ptr %i.ex, align 8, !tbaa !45
  %i.ey = getelementptr i8, ptr %i.dt, i64 64
  %.val55.i = load ptr, ptr %i.ey, align 8, !tbaa !32
  %i.ez = getelementptr i8, ptr %.val55.i, i64 4
  %.val55.val.i = load i32, ptr %i.ez, align 4, !tbaa !33
  %i.fa = sub nsw i32 %.val55.val.i, %.val54.i    ; 2 uses
  %i.fb = load i32, ptr %i.es, align 4, !tbaa !85
  %i.fc = mul nsw i32 %i.fa, %i.fb
  %i.fd = lshr i64 %.val61.i, 32
  %i.fe = trunc nuw i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 536870911
  %i.fg = sub i32 %i.ff, %i.fa
  %i.fh = add i32 %i.fg, %i.fc
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.fi = lshr i64 %.val61.i, 32
  %i.fj = trunc nuw i64 %i.fi to i32
  %i.fk = and i32 %i.fj, 536870911
  %i.fl = getelementptr i8, ptr %i.dt, i64 16
  %.val50.i = load i32, ptr %i.fl, align 8, !tbaa !45
  %i.fm = getelementptr i8, ptr %i.dt, i64 64
  %.val51.i = load ptr, ptr %i.fm, align 8, !tbaa !32
  %i.fn = getelementptr i8, ptr %.val51.i, i64 4
  %.val51.val.i = load i32, ptr %i.fn, align 4, !tbaa !33
  %.neg.i = add i32 %.val50.i, %i.fk
  %i.fo = sub i32 %.neg.i, %.val51.val.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink89.i = phi i32 [ %i.fo, %bb.u ], [ %i.fh, %bb.t ]
  %i.fp = getelementptr i8, ptr %i.ds, i64 64
  %.val66.i = load ptr, ptr %i.fp, align 8, !tbaa !32
  %i.fq = getelementptr i8, ptr %.val66.i, i64 8
  %.val66.val.i = load ptr, ptr %i.fq, align 8, !tbaa !35
  %i.fr = sext i32 %.sink89.i to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val66.val.i, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !36
  %i.fu = shl nsw i32 %i.ft, 1
  br label %Gia_ObjUnrReadCi.exit

bb.w:                                             ; preds = %Gia_ObjIsPi.exit.thread.i
  %i.fv = getelementptr i8, ptr %i.dt, i64 72
  %.val6.i.i = load ptr, ptr %i.fv, align 8, !tbaa !37 ; 2 uses
  %i.fw = getelementptr i8, ptr %.val6.i.i, i64 4
  %.val6.val.i.i = load i32, ptr %i.fw, align 4, !tbaa !33
  %i.fx = getelementptr i8, ptr %i.dt, i64 64
  %.val7.i.i = load ptr, ptr %i.fx, align 8, !tbaa !32
  %i.fy = getelementptr i8, ptr %.val7.i.i, i64 4
  %.val7.val.i.i = load i32, ptr %i.fy, align 4, !tbaa !33
  %i.fz = lshr i64 %.val61.i, 32
  %i.ga = trunc nuw i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 536870911
  %i.gc = add i32 %.val6.val.i.i, %i.gb
  %i.gd = sub i32 %i.gc, %.val7.val.i.i
  %i.ge = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val4.val.i.i = load ptr, ptr %i.ge, align 8, !tbaa !35
  %i.gf = sext i32 %i.gd to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %.val4.val.i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !36
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [12 x i8], ptr %.val41.i, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !8
  %i.gm = ashr i32 %i.gl, 1                       ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %Gia_ObjUnrReadCi.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val64.i = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.go = getelementptr i8, ptr %.val64.i, i64 8
  %.val64.val.i = load ptr, ptr %i.go, align 8, !tbaa !35
  %.val63.i = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.gp = getelementptr i8, ptr %.val63.i, i64 8
  %.val63.val.i = load ptr, ptr %i.gp, align 8, !tbaa !35
  %i.gq = sext i32 %i.gm to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %.val63.val.i, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !36
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.val64.val.i, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !36
  br label %Gia_ObjUnrReadCi.exit

Gia_ObjUnrReadCi.exit:                            ; preds = %bb.x, %bb.w, %bb.v, %bb.r, %bb.q, %bb.m, %bb.n, %Gia_ObjUnrReadCopy0.exit92, %bb.o, %Gia_ObjUnrReadCopy1.exit
  %.2 = phi i32 [ %i.cq, %Gia_ObjUnrReadCopy1.exit ], [ %i.dl, %bb.m ], [ %i.dl, %bb.n ], [ %i.dl, %Gia_ObjUnrReadCopy0.exit92 ], [ %.1103, %bb.o ], [ %i.er, %bb.q ], [ 0, %bb.r ], [ %i.fu, %bb.v ], [ %i.gw, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %.val72 = load ptr, ptr %i.z, align 8, !tbaa !73
  %.val73 = load ptr, ptr %i.y, align 8, !tbaa !78
  %i.gx = getelementptr i8, ptr %.val72, i64 8
  %.val72.val = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.gy = getelementptr i8, ptr %.val73, i64 8
  %.val73.val = load ptr, ptr %i.gy, align 8, !tbaa !35 ; 3 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %.val72.val, i64 %indvars.iv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !36
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.val73.val, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !36 ; 4 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %.lr.ph.preheader.i, label %Gia_ObjUnrWrite.exit

.lr.ph.preheader.i:                               ; preds = %Gia_ObjUnrReadCi.exit
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = add nsw i64 %i.hf, %i.hb
  %i.hh = shl nsw i64 %i.hg, 2                    ; 2 uses
  %i.hi = add nsw i32 %i.hd, -2
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2                ; 2 uses
  %i.hl = sub nsw i64 %i.hh, %i.hk
  %scevgep.i = getelementptr i8, ptr %.val73.val, i64 %i.hl
  %i.hm = add nsw i64 %i.hh, -4
  %i.hn = sub nsw i64 %i.hm, %i.hk
  %scevgep2.i = getelementptr i8, ptr %.val73.val, i64 %i.hn
  %i.ho = add nsw i32 %i.hd, -1
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep.i, ptr align 4 %scevgep2.i, i64 %i.hq, i1 false), !tbaa !36
  br label %Gia_ObjUnrWrite.exit

Gia_ObjUnrWrite.exit:                             ; preds = %Gia_ObjUnrReadCi.exit, %.lr.ph.preheader.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 %.2, ptr %i.hr, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !92

.loopexit:                                        ; preds = %Gia_ObjUnrWrite.exit, %bb.d, %bb.c
  %.3 = phi i32 [ %.0107, %bb.c ], [ %.0107, %bb.d ], [ %.2, %Gia_ObjUnrWrite.exit ]
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond113.not, label %._crit_edge, label %bb.c, !llvm.loop !93

._crit_edge:                                      ; preds = %.loopexit, %.loopexit96
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !83
  ret ptr %i.ht
}

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Gia_ManUnrollLastLit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManUnroll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Gia_ManUnrollStart(ptr noundef %0, ptr noundef %1) ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %.not15 = icmp slt i32 %i.c, 1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi i32 [ %i.e, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.d = tail call ptr @Gia_ManUnrollAdd(ptr noundef nonnull %i.a, i32 noundef %.016) ; 0 uses
  %i.e = add nuw nsw i32 %.016, 1
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.g = load i32, ptr %i.f, align 4, !tbaa !85
  %.not.not = icmp slt i32 %.016, %i.g
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 4 uses
  tail call void @Gia_ManHashStop(ptr noundef %i.i) #26
  tail call void @Gia_ManSetRegNum(ptr noundef %i.i, i32 noundef 0) #26
  %i.j = tail call ptr @Gia_ManCleanup(ptr noundef %i.i) #26
  tail call void @Gia_ManStop(ptr noundef %i.i) #26
  store ptr null, ptr %i.h, align 8, !tbaa !83
  tail call void @Gia_ManUnrollStop(ptr noundef nonnull %i.a)
  ret ptr %i.j
}

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_ManFrames2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #26
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !58
  %.neg6 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60
  %.neg = sdiv i64 %i.e, -1000
  %.neg7 = add i64 %.neg, %.neg6
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg7, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.f = call ptr @Gia_ManUnroll(ptr noundef %0, ptr noundef %1)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #26
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %Abc_Clock.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %2, align 8, !tbaa !58
  %i.l = mul nsw i64 %i.k, 1000000
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !60
  %i.o = sdiv i64 %i.n, 1000
  %i.p = add nsw i64 %i.o, %i.l
  br label %Abc_Clock.exit5

Abc_Clock.exit5:                                  ; preds = %bb.c, %bb.d
  %.0.i4 = phi i64 [ %i.p, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.q = add i64 %.0.i4, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5)
  %i.r = sitofp i64 %i.q to double
  %i.s = fdiv double %i.r, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, double noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit5, %Abc_Clock.exit
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Gia_ManFraSetDefaultParams(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  store i32 32, ptr %0, align 4, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !81
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManFraStart(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 {
bb.a:
  %calloc = tail call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !95
  store ptr %1, ptr %calloc, align 8, !tbaa !97
  ret ptr %calloc
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManFraStop(ptr noundef captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val11.i = load i32, ptr %i.c, align 4, !tbaa !99 ; 2 uses
  %i.d = icmp sgt i32 %.val11.i, 0
  br i1 %i.d, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.val14.i = phi i32 [ %.val11.i, %.lr.ph.i ], [ %.val.i, %bb.e ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.val8.i = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #26
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %i.g) #26
  %.val.pre.i = load i32, ptr %i.c, align 4, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %Vec_PtrFree.exit.i, %bb.b
  %.val.i = phi i32 [ %.val14.i, %bb.b ], [ %.val.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = sext i32 %.val.i to i64
  %i.k = icmp slt i64 %indvars.iv.next.i, %i.j
  br i1 %i.k, label %bb.b, label %.critedge.i, !llvm.loop !102

.critedge.i:                                      ; preds = %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %.not.i9.i = icmp eq ptr %i.m, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.m) #26
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.f
  tail call void @free(ptr noundef nonnull %i.b) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103  ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4        ; 2 uses
  %.val11.i5 = load i32, ptr %i.p, align 4, !tbaa !99 ; 2 uses
  %i.q = icmp sgt i32 %.val11.i5, 0
end_hunk_1
