Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb2Flow?download=true
inline.NumInlined: 368
inline.NumDeleted: 45
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Llb_ManCutSupp:bb.a

bb.j:                                             ; preds = %bb.i
  %i.dc = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cu, i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.dd = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.de = icmp samesign ult i32 %i.cv, 1073741823
  %i.df = shl nuw nsw i32 %i.cv, 1
  %spec.select.i = select i1 %i.de, i32 %i.df, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.cv, %spec.select.i
  br i1 %.not.i10.i, label %bb.m, label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i11.i = icmp eq ptr %i.cu, null
  %i.dg = zext nneg i32 %spec.select.i to i64
  %i.dh = shl nuw nsw i64 %i.dg, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = tail call ptr @realloc(ptr noundef nonnull %i.cu, i64 noundef %i.dh) #22
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.dj = tail call noalias ptr @malloc(i64 noundef %i.dh) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.dd, %bb.k ], [ %i.dc, %bb.j ], [ %i.di, %bb.n ], [ %i.dj, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  store ptr %storemerge, ptr %i.cp, align 8, !tbaa !25
  store i32 %spec.select.sink.i, ptr %i.cm, align 8, !tbaa !24
  %.val26.pre.pre = load i32, ptr %i.a, align 4, !tbaa !26
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_PtrGrow.exit12.sink.split.i
  %.val26.pre = phi i32 [ %.val26.pre44, %bb.g ], [ %.val26.pre44, %bb.l ], [ %.val26.pre.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.dk = phi ptr [ %i.ct, %bb.g ], [ %i.ct, %bb.l ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.dl = phi i32 [ %i.cv, %bb.g ], [ %i.cv, %bb.l ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.dm = add nsw i32 %i.cw, 1                    ; 2 uses
  store i32 %i.dm, ptr %i.cn, align 4, !tbaa !26
  %i.dn = sext i32 %i.cw to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dn
  store ptr %i.cy, ptr %i.do, align 8, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %Vec_PtrPush.exit
  %.val26.pre45 = phi i32 [ %.val26.pre44, %bb.f ], [ %.val26.pre, %Vec_PtrPush.exit ]
  %.val26 = phi i32 [ %.val2642, %bb.f ], [ %.val26.pre, %Vec_PtrPush.exit ] ; 2 uses
  %i.dp = phi ptr [ %i.ct, %bb.f ], [ %i.dk, %Vec_PtrPush.exit ]
  %i.dq = phi ptr [ %i.cu, %bb.f ], [ %i.dk, %Vec_PtrPush.exit ]
  %i.dr = phi i32 [ %i.cv, %bb.f ], [ %i.dl, %Vec_PtrPush.exit ]
  %i.ds = phi i32 [ %i.cw, %bb.f ], [ %i.dm, %Vec_PtrPush.exit ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.dt = sext i32 %.val26 to i64
  %i.du = icmp slt i64 %indvars.iv.next40, %i.dt
  br i1 %i.du, label %bb.f, label %.critedge2, !llvm.loop !66

.critedge2:                                       ; preds = %bb.p, %Vec_PtrFree.exit
  ret ptr %i.cm
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Llb_ManCutMap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !26
  store i32 100, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val254348 = load i32, ptr %i.e, align 4, !tbaa !26
  %i.f = icmp sgt i32 %.val254348, 0
  br i1 %i.f, label %.lr.ph350, label %.critedge

.lr.ph350:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = getelementptr i8, ptr %0, i64 108
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph350, %Vec_PtrPush.exit
  %indvars.iv401 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next402, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv399 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next400, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge344356 = phi ptr [ %i.c, %.lr.ph350 ], [ %storemerge344357, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i354 = phi i32 [ 100, %.lr.ph350 ], [ %spec.select.sink.i353, %Vec_PtrPush.exit ] ; 3 uses
  %.val242 = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val242, i64 %indvars.iv401
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %.val258 = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.l = getelementptr i8, ptr %.val258, i64 4
  %.val258.val = load i32, ptr %i.l, align 4, !tbaa !26 ; 5 uses
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.n = add i32 %.val258.val, -1
  %or.cond.i.i = icmp ult i32 %i.n, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val258.val ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.m, align 8, !tbaa !81
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !82
  store i32 %.val258.val, ptr %i.o, align 4, !tbaa !83
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.b
  %i.q = sext i32 %spec.store.select.i.i to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #21 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !82
  store i32 %.val258.val, ptr %i.o, align 4, !tbaa !83
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.u = sext i32 %.val258.val to i64
  %i.v = shl nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.v, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.c
  %.val270 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.s, %bb.c ]
  %i.w = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %.val253346 = load i32, ptr %i.w, align 4, !tbaa !26 ; 2 uses
  %i.x = icmp sgt i32 %.val253346, 0
  br i1 %i.x, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.y = getelementptr i8, ptr %i.k, i64 8
  %.val241 = load ptr, ptr %i.y, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.val253458 = phi i32 [ %.val253346, %.lr.ph ], [ %.val253, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val241, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val.i = load i64, ptr %i.ab, align 8
  %i.ac = and i64 %.val.i, 7
  %.not.i286 = icmp eq i64 %i.ac, 2
  br i1 %.not.i286, label %Saig_ObjIsPi.exit, label %Saig_ObjIsPi.exit.thread

Saig_ObjIsPi.exit:                                ; preds = %bb.d
  %.val3.i = load i32, ptr %i.aa, align 8, !tbaa !48
  %.val4.i = load i32, ptr %i.i, align 4, !tbaa !49
  %.not345 = icmp slt i32 %.val3.i, %.val4.i
  br i1 %.not345, label %bb.e, label %Saig_ObjIsPi.exit.thread

Saig_ObjIsPi.exit.thread:                         ; preds = %bb.d, %Saig_ObjIsPi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val270, i64 %i.af
  store i32 1, ptr %i.ag, align 4, !tbaa !51
  %.val253.pre = load i32, ptr %i.w, align 4, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %Saig_ObjIsPi.exit, %Saig_ObjIsPi.exit.thread
  %.val253 = phi i32 [ %.val253458, %Saig_ObjIsPi.exit ], [ %.val253.pre, %Saig_ObjIsPi.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = sext i32 %.val253 to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.d, label %.critedge2, !llvm.loop !67

.critedge2:                                       ; preds = %bb.e, %Vec_IntStart.exit
  %i.aj = trunc nsw i64 %indvars.iv399 to i32
  %i.ak = icmp eq i32 %spec.select.sink.i354, %i.aj
  br i1 %i.ak, label %bb.f, label %Vec_PtrPush.exit

bb.f:                                             ; preds = %.critedge2
  %i.al = icmp samesign ult i64 %indvars.iv399, 16
  br i1 %i.al, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge344356, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge344356, i64 noundef 128) #22
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.g
  %i.an = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.f
  %i.ao = icmp samesign ult i64 %indvars.iv399, 1073741823
  %indvars.iv399.tr = trunc nsw i64 %indvars.iv399 to i32
  %i.ap = shl nuw nsw i32 %indvars.iv399.tr, 1
  %spec.select.i = select i1 %i.ao, i32 %i.ap, i32 2147483647 ; 4 uses
  %3 = zext nneg i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv399, %3
  br i1 %.not.i10.i, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i11.i = icmp eq ptr %storemerge344356, null
  %i.aq = zext nneg i32 %spec.select.i to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @realloc(ptr noundef nonnull %storemerge344356, i64 noundef %i.ar) #22
  br label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.k
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ar) #21
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %.critedge2, %bb.j
  %storemerge344357 = phi ptr [ %storemerge344356, %.critedge2 ], [ %storemerge344356, %bb.j ], [ %i.an, %bb.i ], [ %i.am, %bb.h ], [ %i.as, %bb.l ], [ %i.at, %bb.m ] ; 4 uses
  %spec.select.sink.i353 = phi i32 [ %spec.select.sink.i354, %.critedge2 ], [ %spec.select.sink.i354, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 3 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %storemerge344357, i64 %indvars.iv399
  store ptr %i.m, ptr %i.au, align 8, !tbaa !27
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %.val254 = load i32, ptr %i.e, align 4, !tbaa !26
  %i.av = sext i32 %.val254 to i64
  %i.aw = icmp slt i64 %indvars.iv.next402, %i.av
  br i1 %i.aw, label %bb.b, label %..critedge_crit_edge, !llvm.loop !68

..critedge_crit_edge:                             ; preds = %Vec_PtrPush.exit
  %i.ax = trunc nsw i64 %indvars.iv.next400 to i32 ; 2 uses
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !26
  store i32 %spec.select.sink.i353, ptr %i.a, align 8
  store ptr %storemerge344357, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.ay = phi ptr [ %storemerge344357, %..critedge_crit_edge ], [ %i.c, %bb.a ] ; 6 uses
  %i.az = phi i32 [ %spec.select.sink.i353, %..critedge_crit_edge ], [ 100, %bb.a ] ; 5 uses
  %i.ba = phi i32 [ %i.ax, %..critedge_crit_edge ], [ 0, %bb.a ] ; 6 uses
  %i.bb = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %.val257 = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr i8, ptr %.val257, i64 4
  %.val257.val = load i32, ptr %i.bc, align 4, !tbaa !26 ; 5 uses
  %i.bd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.be = add i32 %.val257.val, -1
  %or.cond.i.i287 = icmp ult i32 %i.be, 15
  %spec.store.select.i.i288 = select i1 %or.cond.i.i287, i32 16, i32 %.val257.val ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i288, ptr %i.bd, align 8, !tbaa !81
  %.not.i.i289 = icmp eq i32 %spec.store.select.i.i288, 0
  br i1 %.not.i.i289, label %Vec_IntAlloc.exit.thread.i292, label %Vec_IntAlloc.exit.i290

Vec_IntAlloc.exit.thread.i292:                    ; preds = %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !82
  store i32 %.val257.val, ptr %i.bf, align 4, !tbaa !83
  br label %Vec_IntStart.exit293

Vec_IntAlloc.exit.i290:                           ; preds = %.critedge
  %i.bh = sext i32 %spec.store.select.i.i288 to i64
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #21 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !82
  store i32 %.val257.val, ptr %i.bf, align 4, !tbaa !83
  %.not.i291 = icmp eq ptr %i.bj, null
  br i1 %.not.i291, label %Vec_IntStart.exit293, label %bb.n

bb.n:                                             ; preds = %Vec_IntAlloc.exit.i290
  %i.bl = sext i32 %.val257.val to i64
  %i.bm = shl nsw i64 %i.bl, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bj, i8 0, i64 %i.bm, i1 false)
  br label %Vec_IntStart.exit293

Vec_IntStart.exit293:                             ; preds = %Vec_IntAlloc.exit.thread.i292, %Vec_IntAlloc.exit.i290, %bb.n
  %i.bn = icmp eq i32 %i.ba, %i.az
  br i1 %i.bn, label %bb.o, label %Vec_PtrPush.exit301

bb.o:                                             ; preds = %Vec_IntStart.exit293
  %i.bo = icmp slt i32 %i.az, 16
  br i1 %i.bo, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i299 = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i299, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i297

bb.r:                                             ; preds = %bb.p
  %i.bq = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i297

bb.s:                                             ; preds = %bb.o
  %i.br = icmp samesign ult i32 %i.az, 1073741823
  %i.bs = shl nuw nsw i32 %i.az, 1
  %spec.select.i294 = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 4 uses
  %.not.i10.i295 = icmp samesign ult i32 %i.az, %spec.select.i294
  br i1 %.not.i10.i295, label %bb.t, label %Vec_PtrPush.exit301

bb.t:                                             ; preds = %bb.s
  %.not9.i11.i296 = icmp eq ptr %i.ay, null
  %i.bt = zext nneg i32 %spec.select.i294 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3                ; 2 uses
  br i1 %.not9.i11.i296, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.bu) #22
  br label %Vec_PtrGrow.exit12.sink.split.i297

bb.v:                                             ; preds = %bb.t
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #21
  br label %Vec_PtrGrow.exit12.sink.split.i297

Vec_PtrGrow.exit12.sink.split.i297:               ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %storemerge = phi ptr [ %i.bq, %bb.r ], [ %i.bp, %bb.q ], [ %i.bv, %bb.u ], [ %i.bw, %bb.v ] ; 2 uses
  %spec.select.sink.i298 = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i294, %bb.u ], [ %spec.select.i294, %bb.v ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !25
  store i32 %spec.select.sink.i298, ptr %i.a, align 8, !tbaa !24
  br label %Vec_PtrPush.exit301

Vec_PtrPush.exit301:                              ; preds = %Vec_IntStart.exit293, %bb.s, %Vec_PtrGrow.exit12.sink.split.i297
  %i.bx = phi ptr [ %i.ay, %Vec_IntStart.exit293 ], [ %i.ay, %bb.s ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i297 ] ; 10 uses
  %i.by = add i32 %i.ba, 1                        ; 5 uses
  store i32 %i.by, ptr %i.b, align 4, !tbaa !26
  %i.bz = sext i32 %i.ba to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bz
  store ptr %i.bd, ptr %i.ca, align 8, !tbaa !27
  %i.cb = getelementptr i8, ptr %0, i64 108       ; 5 uses
  %.val267 = load i32, ptr %i.cb, align 4, !tbaa !49 ; 5 uses
  %i.cc = sext i32 %.val267 to i64
  %i.cd = shl nsw i64 %i.cc, 2                    ; 2 uses
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #21 ; 5 uses
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.cd) #21 ; 6 uses
  %i.cg = icmp sgt i32 %.val267, 0                ; 2 uses
  br i1 %i.cg, label %.lr.ph359.preheader, label %.critedge4.preheader

.lr.ph359.preheader:                              ; preds = %Vec_PtrPush.exit301
  %i.ch = zext nneg i32 %.val267 to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 -1, i64 %i.ci, i1 false), !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ce, i8 -1, i64 %i.ci, i1 false), !tbaa !51
  br label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %.lr.ph359.preheader, %Vec_PtrPush.exit301
  %i.cj = getelementptr i8, ptr %2, i64 4
  %.val252 = load i32, ptr %i.cj, align 4, !tbaa !26 ; 2 uses
  %i.ck = icmp sgt i32 %.val252, 0
  br i1 %i.ck, label %.lr.ph363, label %.critedge6.preheader

.lr.ph363:                                        ; preds = %.critedge4.preheader
  %i.cl = getelementptr i8, ptr %2, i64 8
  %.val239 = load ptr, ptr %i.cl, align 8, !tbaa !25
  %wide.trip.count415 = zext nneg i32 %.val252 to i64
  br label %bb.w

.critedge6.preheader:                             ; preds = %.critedge8, %.critedge4.preheader
  %i.cm = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %.val271 = load i32, ptr %i.cm, align 8, !tbaa !52 ; 2 uses
  %i.cn = icmp sgt i32 %.val271, 0
  br i1 %i.cn, label %.lr.ph365, label %.critedge10.preheader

.lr.ph365:                                        ; preds = %.critedge6.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !53
  %i.cq = getelementptr i8, ptr %0, i64 112
  %.val272 = load i32, ptr %i.cq, align 8, !tbaa !54
  %i.cr = getelementptr i8, ptr %i.cp, i64 8
  %.val237 = load ptr, ptr %i.cr, align 8, !tbaa !25
  %i.cs = sext i32 %.val272 to i64
  %wide.trip.count420 = zext nneg i32 %.val271 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %.val237, i64 %i.cs
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph363, %.critedge8
  %indvars.iv412 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next413, %.critedge8 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val239, i64 %indvars.iv412
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %.val251 = load i32, ptr %i.cv, align 4, !tbaa !26 ; 2 uses
  %i.cw = icmp sgt i32 %.val251, 0
  br i1 %i.cw, label %.lr.ph361, label %.critedge8

.lr.ph361:                                        ; preds = %bb.w
  %i.cx = getelementptr i8, ptr %i.cu, i64 8
  %.val238 = load ptr, ptr %i.cx, align 8, !tbaa !25
  %wide.trip.count = zext nneg i32 %.val251 to i64
  %i.cy = trunc nuw nsw i64 %indvars.iv412 to i32 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph361, %Saig_ObjIsPi.exit306.thread
  %indvars.iv409 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next410, %Saig_ObjIsPi.exit306.thread ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val238, i64 %indvars.iv409
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !27 ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 24
  %.val.i302 = load i64, ptr %i.db, align 8
  %i.dc = and i64 %.val.i302, 7
  %.not.i303 = icmp eq i64 %i.dc, 2
  br i1 %.not.i303, label %Saig_ObjIsPi.exit306, label %Saig_ObjIsPi.exit306.thread

Saig_ObjIsPi.exit306:                             ; preds = %bb.x
  %.val3.i304 = load i32, ptr %i.da, align 8, !tbaa !48 ; 2 uses
  %.not343 = icmp slt i32 %.val3.i304, %.val267
  br i1 %.not343, label %bb.y, label %Saig_ObjIsPi.exit306.thread

bb.y:                                             ; preds = %Saig_ObjIsPi.exit306
  %i.dd = sext i32 %.val3.i304 to i64             ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !51 ; 2 uses
  %i.dg = icmp eq i32 %i.df, -1
  %spec.store.select = select i1 %i.dg, i32 %i.cy, i32 %i.df
  store i32 %spec.store.select, ptr %i.de, align 4, !tbaa !51
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.dd
  store i32 %i.cy, ptr %i.dh, align 4, !tbaa !51
  br label %Saig_ObjIsPi.exit306.thread

Saig_ObjIsPi.exit306.thread:                      ; preds = %bb.x, %Saig_ObjIsPi.exit306, %bb.y
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count
  br i1 %exitcond.not, label %.critedge8, label %bb.x, !llvm.loop !69

.critedge8:                                       ; preds = %Saig_ObjIsPi.exit306.thread, %bb.w
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond416.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count415
  br i1 %exitcond416.not, label %.critedge6.preheader, label %bb.w, !llvm.loop !70

.critedge10.preheader:                            ; preds = %Saig_ObjIsPi.exit311.thread, %.critedge6.preheader
  br i1 %i.cg, label %.lr.ph371, label %.critedge12

.lr.ph371:                                        ; preds = %.critedge10.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !55
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val236 = load ptr, ptr %i.dk, align 8, !tbaa !25
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph365, %Saig_ObjIsPi.exit311.thread
  %indvars.iv417 = phi i64 [ 0, %.lr.ph365 ], [ %indvars.iv.next418, %Saig_ObjIsPi.exit311.thread ] ; 2 uses
end_hunk_0
begin_hunk_1_@Llb_ManCutMap:bb.a
  %i.gp = getelementptr i8, ptr %i.gg, i64 8
  %.val230 = load ptr, ptr %i.gp, align 8, !tbaa !25 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.ge, i64 8      ; 3 uses
  %i.gr = getelementptr i8, ptr %i.gc, i64 8      ; 4 uses
  %i.gs = icmp eq ptr %i.go, null
  %i.gt = getelementptr i8, ptr %i.go, i64 8
  br i1 %i.gs, label %.lr.ph375.split.us.preheader, label %.lr.ph375.split.preheader

.lr.ph375.split.preheader:                        ; preds = %.lr.ph375
  %wide.trip.count432 = zext nneg i32 %.val247484 to i64
  br label %.lr.ph375.split

.lr.ph375.split.us.preheader:                     ; preds = %.lr.ph375.thread, %.lr.ph375
  %i.gu = phi ptr [ %i.gl, %.lr.ph375.thread ], [ %i.gr, %.lr.ph375 ] ; 3 uses
  %i.gv = phi ptr [ %i.gk, %.lr.ph375.thread ], [ %i.gq, %.lr.ph375 ] ; 2 uses
  %.val230491 = phi ptr [ %.val230489, %.lr.ph375.thread ], [ %.val230, %.lr.ph375 ]
  %wide.trip.count437 = zext nneg i32 %.val247484 to i64
  br label %.lr.ph375.split.us

.lr.ph375.split.us:                               ; preds = %.lr.ph375.split.us.preheader, %bb.ak
  %indvars.iv434 = phi i64 [ 0, %.lr.ph375.split.us.preheader ], [ %indvars.iv.next435, %bb.ak ] ; 7 uses
  %.0193374.us = phi i32 [ 0, %.lr.ph375.split.us.preheader ], [ %.1.us, %bb.ak ] ; 5 uses
  %.0194373.us = phi i32 [ 0, %.lr.ph375.split.us.preheader ], [ %.3.us, %bb.ak ] ; 5 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.val230491, i64 %indvars.iv434
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !27 ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph375.split.us
  %i.gz = getelementptr i8, ptr %i.gx, i64 24
  %.val.i312.us = load i64, ptr %i.gz, align 8
  %i.ha = and i64 %.val.i312.us, 7
  %.not.i313.us = icmp eq i64 %i.ha, 2
  br i1 %.not.i313.us, label %Saig_ObjIsPi.exit316.us, label %.Saig_ObjIsPi.exit316.thread.us_crit_edge

.Saig_ObjIsPi.exit316.thread.us_crit_edge:        ; preds = %bb.ai
  %.val279.us.pre = load ptr, ptr %i.gv, align 8, !tbaa !82
  br label %Saig_ObjIsPi.exit316.thread.us

Saig_ObjIsPi.exit316.us:                          ; preds = %bb.ai
  %.val3.i314.us = load i32, ptr %i.gx, align 8, !tbaa !48
  %.val4.i315.us = load i32, ptr %i.cb, align 4, !tbaa !49
  %.not341.us = icmp slt i32 %.val3.i314.us, %.val4.i315.us
  %.val279.us.pre462 = load ptr, ptr %i.gv, align 8, !tbaa !82 ; 2 uses
  br i1 %.not341.us, label %._crit_edge464, label %Saig_ObjIsPi.exit316.thread.us

Saig_ObjIsPi.exit316.thread.us:                   ; preds = %.Saig_ObjIsPi.exit316.thread.us_crit_edge, %Saig_ObjIsPi.exit316.us
  %.val279.us = phi ptr [ %.val279.us.pre, %.Saig_ObjIsPi.exit316.thread.us_crit_edge ], [ %.val279.us.pre462, %Saig_ObjIsPi.exit316.us ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val279.us, i64 %indvars.iv434
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !51
  switch i32 %i.hc, label %bb.ak [
    i32 0, label %.thread.us
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %Saig_ObjIsPi.exit316.thread.us
  %.val276.us = load ptr, ptr %i.gu, align 8, !tbaa !82
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val276.us, i64 %indvars.iv434
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !51
  %i.hf = icmp eq i32 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %spec.select227.us = add nsw i32 %.0193374.us, %i.hg
  br label %bb.ak

.thread.us:                                       ; preds = %Saig_ObjIsPi.exit316.thread.us
  %.val278.us = load ptr, ptr %i.gu, align 8, !tbaa !82
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val278.us, i64 %indvars.iv434
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !51
  %i.hj = icmp eq i32 %i.hi, 1
  %i.hk = zext i1 %i.hj to i32
  %spec.select226.us = add nsw i32 %.0194373.us, %i.hk
  br label %bb.ak

._crit_edge464:                                   ; preds = %Saig_ObjIsPi.exit316.us
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val279.us.pre462, i64 %indvars.iv434
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !51
  %i.hn = icmp eq i32 %i.hm, 0
  %.val281.us.pre = load ptr, ptr %i.gu, align 8, !tbaa !82
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val281.us.pre, i64 %indvars.iv434
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !51 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 1
  %narrow495 = select i1 %i.hn, i1 %i.hq, i1 false
  %spec.select.us = zext i1 %narrow495 to i32
  %.1195.us = add nsw i32 %.0194373.us, %spec.select.us
  %i.hr = icmp eq i32 %i.hp, 1
  %i.hs = zext i1 %i.hr to i32
  %spec.select394 = add nsw i32 %.0193374.us, %i.hs
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge464, %.thread.us, %bb.aj, %Saig_ObjIsPi.exit316.thread.us, %.lr.ph375.split.us
  %.3.us = phi i32 [ %.0194373.us, %.lr.ph375.split.us ], [ %.0194373.us, %bb.aj ], [ %spec.select226.us, %.thread.us ], [ %.1195.us, %._crit_edge464 ], [ %.0194373.us, %Saig_ObjIsPi.exit316.thread.us ] ; 2 uses
  %.1.us = phi i32 [ %.0193374.us, %.lr.ph375.split.us ], [ %spec.select227.us, %bb.aj ], [ %.0193374.us, %.thread.us ], [ %spec.select394, %._crit_edge464 ], [ %.0193374.us, %Saig_ObjIsPi.exit316.thread.us ] ; 2 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %.critedge16, label %.lr.ph375.split.us, !llvm.loop !75

.lr.ph375.split:                                  ; preds = %.lr.ph375.split.preheader, %bb.ao
  %indvars.iv429 = phi i64 [ 0, %.lr.ph375.split.preheader ], [ %indvars.iv.next430, %bb.ao ] ; 8 uses
  %.0193374 = phi i32 [ 0, %.lr.ph375.split.preheader ], [ %.1, %bb.ao ] ; 6 uses
  %.0194373 = phi i32 [ 0, %.lr.ph375.split.preheader ], [ %.3, %bb.ao ] ; 5 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val230, i64 %indvars.iv429
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !27 ; 3 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.lr.ph375.split
  %i.hw = getelementptr i8, ptr %i.hu, i64 24
  %.val.i312 = load i64, ptr %i.hw, align 8
  %i.hx = and i64 %.val.i312, 7
  %.not.i313 = icmp eq i64 %i.hx, 2
  br i1 %.not.i313, label %Saig_ObjIsPi.exit316, label %.Saig_ObjIsPi.exit316.thread_crit_edge

.Saig_ObjIsPi.exit316.thread_crit_edge:           ; preds = %bb.al
  %.val279.pre = load ptr, ptr %i.gq, align 8, !tbaa !82
  br label %Saig_ObjIsPi.exit316.thread

Saig_ObjIsPi.exit316:                             ; preds = %bb.al
  %.val3.i314 = load i32, ptr %i.hu, align 8, !tbaa !48
  %.val4.i315 = load i32, ptr %i.cb, align 4, !tbaa !49
  %.not341 = icmp slt i32 %.val3.i314, %.val4.i315
  %.val279.pre460 = load ptr, ptr %i.gq, align 8, !tbaa !82 ; 2 uses
  br i1 %.not341, label %._crit_edge, label %Saig_ObjIsPi.exit316.thread

._crit_edge:                                      ; preds = %Saig_ObjIsPi.exit316
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.val279.pre460, i64 %indvars.iv429
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !51
  %i.ia = icmp eq i32 %i.hz, 0
  %.val281.pre = load ptr, ptr %i.gr, align 8, !tbaa !82
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.val281.pre, i64 %indvars.iv429
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !51 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 1
  %narrow = and i1 %i.ia, %i.id
  %spec.select = zext i1 %narrow to i32
  %.1195 = add nsw i32 %.0194373, %spec.select    ; 2 uses
  %i.ie = icmp eq i32 %i.ic, 1
  br i1 %i.ie, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %._crit_edge
  %.val280 = load ptr, ptr %i.gt, align 8, !tbaa !82
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val280, i64 %indvars.iv429
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !51
  %i.ih = icmp eq i32 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %spec.select395 = add nsw i32 %.0193374, %i.ii
  br label %bb.ao

Saig_ObjIsPi.exit316.thread:                      ; preds = %.Saig_ObjIsPi.exit316.thread_crit_edge, %Saig_ObjIsPi.exit316
  %.val279 = phi ptr [ %.val279.pre, %.Saig_ObjIsPi.exit316.thread_crit_edge ], [ %.val279.pre460, %Saig_ObjIsPi.exit316 ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val279, i64 %indvars.iv429
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !51
  switch i32 %i.ik, label %bb.ao [
    i32 0, label %.thread
    i32 1, label %bb.an
  ]

.thread:                                          ; preds = %Saig_ObjIsPi.exit316.thread
  %.val278 = load ptr, ptr %i.gr, align 8, !tbaa !82
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.val278, i64 %indvars.iv429
  %i.im = load i32, ptr %i.il, align 4, !tbaa !51
  %i.in = icmp eq i32 %i.im, 1
  %i.io = zext i1 %i.in to i32
  %spec.select226 = add nsw i32 %.0194373, %i.io
  br label %bb.ao

bb.an:                                            ; preds = %Saig_ObjIsPi.exit316.thread
  %.val276 = load ptr, ptr %i.gr, align 8, !tbaa !82
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val276, i64 %indvars.iv429
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !51
  %i.ir = icmp eq i32 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %spec.select227 = add nsw i32 %.0193374, %i.is
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %Saig_ObjIsPi.exit316.thread, %.thread, %bb.an, %.lr.ph375.split, %._crit_edge
  %.3 = phi i32 [ %.0194373, %.lr.ph375.split ], [ %spec.select226, %.thread ], [ %.1195, %bb.am ], [ %.1195, %._crit_edge ], [ %.0194373, %Saig_ObjIsPi.exit316.thread ], [ %.0194373, %bb.an ] ; 2 uses
  %.1 = phi i32 [ %.0193374, %.lr.ph375.split ], [ %.0193374, %.thread ], [ %spec.select395, %bb.am ], [ %.0193374, %._crit_edge ], [ %.0193374, %Saig_ObjIsPi.exit316.thread ], [ %spec.select227, %bb.an ] ; 2 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %.critedge16, label %.lr.ph375.split, !llvm.loop !75

.critedge16:                                      ; preds = %bb.ao, %bb.ak, %.thread482, %bb.ah
  %.0194.lcssa = phi i32 [ 0, %bb.ah ], [ 0, %.thread482 ], [ %.3.us, %bb.ak ], [ %.3, %bb.ao ]
  %.0193.lcssa = phi i32 [ 0, %bb.ah ], [ 0, %.thread482 ], [ %.1.us, %bb.ak ], [ %.1, %bb.ao ]
  %i.it = add nsw i32 %.0194.lcssa, %.0380
  %i.iu = sub i32 %i.it, %.0193.lcssa             ; 2 uses
  %i.iv = trunc nuw nsw i64 %indvars.iv439 to i32
  %i.iw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.iv, i32 noundef %i.iu) ; 0 uses
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count442
  br i1 %exitcond443.not, label %.critedge14, label %.lr.ph381, !llvm.loop !76

.critedge14:                                      ; preds = %.critedge16, %bb.ag
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ix = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %.val246391 = load i32, ptr %i.iy, align 4, !tbaa !26
  %i.iz = icmp sgt i32 %.val246391, 0
  br i1 %i.iz, label %.lr.ph393, label %.critedge18

.lr.ph393:                                        ; preds = %.critedge14
  %wide.trip.count447 = zext i32 %i.by to i64
  %wide.trip.count452 = zext i32 %i.by to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph393, %.critedge20.thread
  %i.ja = phi ptr [ %i.ix, %.lr.ph393 ], [ %i.kd, %.critedge20.thread ] ; 5 uses
  %indvars.iv454 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next455, %.critedge20.thread ] ; 5 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 8
  %.val229 = load ptr, ptr %i.jb, align 8, !tbaa !25
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val229, i64 %indvars.iv454
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !27 ; 3 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %.critedge20.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jf = getelementptr i8, ptr %i.jd, i64 24     ; 2 uses
  %.val259 = load i64, ptr %i.jf, align 8         ; 2 uses
  %i.jg = and i64 %.val259, 7
  %.not336 = icmp eq i64 %i.jg, 2
  br i1 %.not336, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jh = trunc i64 %.val259 to i32
  %i.ji = and i32 %i.jh, 7
  %i.jj = add nsw i32 %i.ji, -7
  %narrow.i = icmp ult i32 %i.jj, -2
  br i1 %narrow.i, label %.critedge20.thread, label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  br label %.lr.ph384

.lr.ph384:                                        ; preds = %bb.as, %bb.at
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %bb.at ], [ 0, %bb.as ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv444
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !27
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  %.val275 = load ptr, ptr %i.jm, align 8, !tbaa !82
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.val275, i64 %indvars.iv454
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !51
  %.not216 = icmp eq i32 %i.jo, 0
  br i1 %.not216, label %bb.at, label %.critedge20

bb.at:                                            ; preds = %.lr.ph384
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next445, %wide.trip.count447
  br i1 %exitcond448.not, label %.critedge20.thread, label %.lr.ph384, !llvm.loop !77

.critedge20:                                      ; preds = %.lr.ph384
  %4 = trunc nuw nsw i64 %indvars.iv444 to i32
  %i.jp = icmp eq i32 %i.by, %4
  br i1 %i.jp, label %.critedge20.thread, label %bb.au

bb.au:                                            ; preds = %.critedge20
  %i.jq = trunc nuw nsw i64 %indvars.iv454 to i32
  %i.jr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.jq) ; 0 uses
  %.val.i317 = load i64, ptr %i.jf, align 8       ; 2 uses
  %i.js = and i64 %.val.i317, 7
  %.not.i318 = icmp eq i64 %i.js, 2
  br i1 %.not.i318, label %Saig_ObjIsPi.exit321, label %Saig_ObjIsLo.exit.thread

Saig_ObjIsPi.exit321:                             ; preds = %bb.au
  %.val3.i319 = load i32, ptr %i.jd, align 8, !tbaa !48
  %.val4.i320 = load i32, ptr %i.cb, align 4, !tbaa !49
  %.not338 = icmp slt i32 %.val3.i319, %.val4.i320
  %.str.4..str.5 = select i1 %.not338, ptr @.str.4, ptr @.str.5
  br label %.sink.split

Saig_ObjIsLo.exit.thread:                         ; preds = %bb.au
  %i.jt = trunc i64 %.val.i317 to i32
  %i.ju = and i32 %i.jt, 7
  %i.jv = add nsw i32 %i.ju, -7
  %narrow.i326 = icmp ult i32 %i.jv, -2
  br i1 %narrow.i326, label %bb.av, label %.sink.split

.sink.split:                                      ; preds = %Saig_ObjIsLo.exit.thread, %Saig_ObjIsPi.exit321
  %.str.5.sink = phi ptr [ %.str.4..str.5, %Saig_ObjIsPi.exit321 ], [ @.str.6, %Saig_ObjIsLo.exit.thread ]
  %i.jw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.5.sink) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %Saig_ObjIsLo.exit.thread
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.av, %.lr.ph390
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.lr.ph390 ], [ 0, %bb.av ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv449
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !27
  %i.jz = getelementptr i8, ptr %i.jy, i64 8
  %.val274 = load ptr, ptr %i.jz, align 8, !tbaa !82
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val274, i64 %indvars.iv454
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !51
  %i.kc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.kb) ; 0 uses
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %wide.trip.count452
  br i1 %exitcond453.not, label %.critedge22, label %.lr.ph390, !llvm.loop !78

.critedge22:                                      ; preds = %.lr.ph390
  %putchar220 = tail call i32 @putchar(i32 10)    ; 0 uses
  %.pre467 = load ptr, ptr %i.bb, align 8, !tbaa !47
  br label %.critedge20.thread

.critedge20.thread:                               ; preds = %bb.at, %.critedge22, %bb.ap, %.critedge20, %bb.ar
  %i.kd = phi ptr [ %.pre467, %.critedge22 ], [ %i.ja, %bb.ap ], [ %i.ja, %.critedge20 ], [ %i.ja, %bb.ar ], [ %i.ja, %bb.at ] ; 2 uses
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 4
  %.val246 = load i32, ptr %i.ke, align 4, !tbaa !26
  %i.kf = sext i32 %.val246 to i64
  %i.kg = icmp slt i64 %indvars.iv.next455, %i.kf
  br i1 %i.kg, label %bb.ap, label %.critedge18, !llvm.loop !79

.critedge18:                                      ; preds = %.critedge20.thread, %.critedge14
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Llb_ManCutPiNum(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val9 = load i32, ptr %i.a, align 4, !tbaa !26 ; 4 uses
  %i.b = icmp sgt i32 %.val9, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 108        ; 3 uses
  %wide.trip.count = zext nneg i32 %.val9 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %.val9, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.013 = phi i32 [ 0, %.lr.ph.new ], [ %i.t, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 7
  %.not.i = icmp eq i64 %i.i, 2
  br i1 %.not.i, label %Saig_ObjIsPi.exit, label %Saig_ObjIsPi.exit.thread

Saig_ObjIsPi.exit:                                ; preds = %bb.b
  %.val3.i = load i32, ptr %i.g, align 8, !tbaa !48
  %.val4.i = load i32, ptr %i.d, align 4, !tbaa !49
  %i.j = icmp sge i32 %.val3.i, %.val4.i
  %i.k = add nsw i32 %.013, 1
  %cond.fr = freeze i1 %i.j
  br i1 %cond.fr, label %Saig_ObjIsPi.exit.thread, label %bb.c

Saig_ObjIsPi.exit.thread:                         ; preds = %bb.b, %Saig_ObjIsPi.exit
  br label %bb.c

bb.c:                                             ; preds = %Saig_ObjIsPi.exit, %Saig_ObjIsPi.exit.thread
  %i.l = phi i32 [ %.013, %Saig_ObjIsPi.exit.thread ], [ %i.k, %Saig_ObjIsPi.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %.val.i.1 = load i64, ptr %i.p, align 8
  %i.q = and i64 %.val.i.1, 7
  %.not.i.1 = icmp eq i64 %i.q, 2
  br i1 %.not.i.1, label %Saig_ObjIsPi.exit.1, label %Saig_ObjIsPi.exit.thread.1

Saig_ObjIsPi.exit.1:                              ; preds = %bb.c
  %.val3.i.1 = load i32, ptr %i.o, align 8, !tbaa !48
  %.val4.i.1 = load i32, ptr %i.d, align 4, !tbaa !49
  %i.r = icmp sge i32 %.val3.i.1, %.val4.i.1
  %i.s = add nsw i32 %i.l, 1
  %cond.fr.1 = freeze i1 %i.r
  br i1 %cond.fr.1, label %Saig_ObjIsPi.exit.thread.1, label %bb.d

Saig_ObjIsPi.exit.thread.1:                       ; preds = %Saig_ObjIsPi.exit.1, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %Saig_ObjIsPi.exit.thread.1, %Saig_ObjIsPi.exit.1
  %i.t = phi i32 [ %i.l, %Saig_ObjIsPi.exit.thread.1 ], [ %i.s, %Saig_ObjIsPi.exit.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ]
  %.013.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.t, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i32 %.val9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.epil.init
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %.val.i.epil = load i64, ptr %i.w, align 8
  %i.x = and i64 %.val.i.epil, 7
  %.not.i.epil = icmp eq i64 %i.x, 2
  br i1 %.not.i.epil, label %Saig_ObjIsPi.exit.epil, label %Saig_ObjIsPi.exit.thread.epil

Saig_ObjIsPi.exit.epil:                           ; preds = %.epil.preheader
  %.val3.i.epil = load i32, ptr %i.v, align 8, !tbaa !48
  %.val4.i.epil = load i32, ptr %i.d, align 4, !tbaa !49
  %i.y = icmp sge i32 %.val3.i.epil, %.val4.i.epil
  %i.z = add nsw i32 %.013.epil.init, 1
  %cond.fr.epil = freeze i1 %i.y
  br i1 %cond.fr.epil, label %Saig_ObjIsPi.exit.thread.epil, label %.critedge

Saig_ObjIsPi.exit.thread.epil:                    ; preds = %Saig_ObjIsPi.exit.epil, %.epil.preheader
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %Saig_ObjIsPi.exit.thread.epil, %Saig_ObjIsPi.exit.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.t, %.critedge.loopexit.unr-lcssa ], [ %.013.epil.init, %Saig_ObjIsPi.exit.thread.epil ], [ %i.z, %Saig_ObjIsPi.exit.epil ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Llb_ManCutLoNum(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val9 = load i32, ptr %i.a, align 4, !tbaa !26 ; 4 uses
  %i.b = icmp sgt i32 %.val9, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 108        ; 3 uses
  %wide.trip.count = zext nneg i32 %.val9 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %.val9, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.014 = phi i32 [ 0, %.lr.ph.new ], [ %i.r, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 7
  %.not.i = icmp eq i64 %i.i, 2
  br i1 %.not.i, label %Saig_ObjIsLo.exit, label %Saig_ObjIsLo.exit.thread

Saig_ObjIsLo.exit:                                ; preds = %bb.b
  %.val3.i = load i32, ptr %i.g, align 8, !tbaa !48
  %.val4.i = load i32, ptr %i.d, align 4, !tbaa !49
  %.not12 = icmp slt i32 %.val3.i, %.val4.i
  %i.j = add nsw i32 %.014, 1
  %cond.fr = freeze i1 %.not12
  br i1 %cond.fr, label %Saig_ObjIsLo.exit.thread, label %bb.c

Saig_ObjIsLo.exit.thread:                         ; preds = %bb.b, %Saig_ObjIsLo.exit
  br label %bb.c

bb.c:                                             ; preds = %Saig_ObjIsLo.exit, %Saig_ObjIsLo.exit.thread
  %i.k = phi i32 [ %.014, %Saig_ObjIsLo.exit.thread ], [ %i.j, %Saig_ObjIsLo.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val.i.1 = load i64, ptr %i.o, align 8
  %i.p = and i64 %.val.i.1, 7
  %.not.i.1 = icmp eq i64 %i.p, 2
  br i1 %.not.i.1, label %Saig_ObjIsLo.exit.1, label %Saig_ObjIsLo.exit.thread.1

Saig_ObjIsLo.exit.1:                              ; preds = %bb.c
  %.val3.i.1 = load i32, ptr %i.n, align 8, !tbaa !48
  %.val4.i.1 = load i32, ptr %i.d, align 4, !tbaa !49
  %.not12.1 = icmp slt i32 %.val3.i.1, %.val4.i.1
  %i.q = add nsw i32 %i.k, 1
  %cond.fr.1 = freeze i1 %.not12.1
  br i1 %cond.fr.1, label %Saig_ObjIsLo.exit.thread.1, label %bb.d

Saig_ObjIsLo.exit.thread.1:                       ; preds = %Saig_ObjIsLo.exit.1, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %Saig_ObjIsLo.exit.thread.1, %Saig_ObjIsLo.exit.1
  %i.r = phi i32 [ %i.k, %Saig_ObjIsLo.exit.thread.1 ], [ %i.q, %Saig_ObjIsLo.exit.1 ] ; 3 uses
end_hunk_1
begin_hunk_2_@Llb_ManFlowCollectAndMarkCone_rec:bb.a
  %i.v = shl nuw nsw i32 %i.l, 1
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.l, %spec.select.i
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.x, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %i.z) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = phi ptr [ %i.aa, %bb.k ], [ %i.ab, %bb.l ]
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !25
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.m, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.m ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !24
  %.pre = load i32, ptr %i.k, align 4, !tbaa !26
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_PtrGrow.exit12.sink.split.i
  %i.ad = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.i ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !26
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  store ptr %1, ptr %i.ai, align 8, !tbaa !27
  %.pre34 = load i64, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Vec_PtrPush.exit, %bb.b
  %i.aj = phi i64 [ %i.g, %bb.c ], [ %.pre34, %Vec_PtrPush.exit ], [ %.val4.i, %bb.b ]
  %i.ak = and i64 %i.aj, 4294967232
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %.loopexit, label %.critedge.peel

.critedge.peel:                                   ; preds = %bb.n
  %i.al = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50
  %.val25.peel = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.ap = mul nsw i32 %i.ao, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val25.peel, i64 %i.aq
  %.pre35 = load i32, ptr %i.ar, align 4, !tbaa !51 ; 2 uses
  %.val26.peel = load ptr, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %.not.i27.peel = icmp eq ptr %.val26.peel, null
  br i1 %.not.i27.peel, label %Aig_ManObj.exit.peel, label %bb.o

bb.o:                                             ; preds = %.critedge.peel
  %i.as = ashr i32 %.pre35, 1
  %i.at = getelementptr i8, ptr %.val26.peel, i64 8
  %.val.i28.peel = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %.val.i28.peel, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
  br label %Aig_ManObj.exit.peel

Aig_ManObj.exit.peel:                             ; preds = %bb.o, %.critedge.peel
  %i.ax = phi ptr [ %i.aw, %bb.o ], [ null, %.critedge.peel ]
  tail call void @Llb_ManFlowCollectAndMarkCone_rec(ptr noundef nonnull %0, ptr noundef %i.ax, ptr noundef %2)
  %i.ay = load i64, ptr %i.a, align 8
  %i.az = and i64 %i.ay, 4294967168
  %.not39 = icmp eq i64 %i.az, 0
  br i1 %.not39, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %Aig_ManObj.exit.peel, %Aig_ManObj.exit
  %.032 = phi i32 [ %i.bh, %Aig_ManObj.exit ], [ %.pre35, %Aig_ManObj.exit.peel ] ; 2 uses
  %.02031 = phi i32 [ %i.bo, %Aig_ManObj.exit ], [ 1, %Aig_ManObj.exit.peel ]
  %.val24 = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.ba = and i32 %.032, 1
  %i.bb = add nuw nsw i32 %i.ba, 3
  %i.bc = ashr i32 %.032, 1
  %i.bd = mul nsw i32 %i.bc, 5
  %i.be = add i32 %i.bb, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val24, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !51 ; 2 uses
  %.val26 = load ptr, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %.not.i27 = icmp eq ptr %.val26, null
  br i1 %.not.i27, label %Aig_ManObj.exit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = getelementptr i8, ptr %.val26, i64 8
  %.val.i28 = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val.i28, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  br label %Aig_ManObj.exit

Aig_ManObj.exit:                                  ; preds = %.critedge, %bb.p
  %i.bn = phi ptr [ %i.bm, %bb.p ], [ null, %.critedge ]
  tail call void @Llb_ManFlowCollectAndMarkCone_rec(ptr noundef nonnull %0, ptr noundef %i.bn, ptr noundef %2)
  %i.bo = add nuw nsw i32 %.02031, 1              ; 2 uses
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i32 %i.bq, 6
  %i.bs = icmp samesign ult i32 %i.bo, %i.br
  br i1 %i.bs, label %.critedge, label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %Aig_ManObj.exit, %Aig_ManObj.exit.peel, %bb.n, %Saig_ObjIsLi.exit.thread, %Saig_ObjIsLi.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Llb_ManFlowCollectAndMarkCone(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((4, 8)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val89 = load i32, ptr %i.b, align 4, !tbaa !26
  %i.c = icmp sgt i32 %.val89, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  tail call void @Llb_ManFlowCollectAndMarkCone_rec(ptr noundef %0, ptr noundef %i.f, ptr noundef nonnull %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val8 = load i32, ptr %i.b, align 4, !tbaa !26
  %i.g = sext i32 %.val8 to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Llb_ManComputeCutLo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !26
  store i32 100, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val78 = load i32, ptr %i.g, align 4, !tbaa !26
  %i.h = icmp sgt i32 %.val78, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %Vec_PtrPush.exit
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %Vec_PtrPush.exit ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_PtrPush.exit ], [ 0, %bb.a ] ; 7 uses
  %storemerge14 = phi ptr [ %storemerge15, %Vec_PtrPush.exit ], [ %i.c, %bb.a ] ; 6 uses
  %spec.select.sink.i12 = phi i32 [ %spec.select.sink.i11, %Vec_PtrPush.exit ], [ 100, %bb.a ] ; 3 uses
  %i.i = phi ptr [ %i.y, %Vec_PtrPush.exit ], [ %i.f, %bb.a ]
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = trunc nsw i64 %indvars.iv to i32
  %i.n = icmp eq i32 %spec.select.sink.i12, %i.m
  br i1 %i.n, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %storemerge14, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge14, i64 noundef 128) #22
  br label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.s = shl nuw nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 2147483647 ; 4 uses
  %1 = zext nneg i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %1
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i11.i = icmp eq ptr %storemerge14, null
  %i.t = zext nneg i32 %spec.select.i to i64
  %i.u = shl nuw nsw i64 %i.t, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @realloc(ptr noundef nonnull %storemerge14, i64 noundef %i.u) #22
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #21
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %.lr.ph, %bb.f
  %storemerge15 = phi ptr [ %storemerge14, %.lr.ph ], [ %storemerge14, %bb.f ], [ %i.q, %bb.e ], [ %i.p, %bb.d ], [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 3 uses
  %spec.select.sink.i11 = phi i32 [ %spec.select.sink.i12, %.lr.ph ], [ %spec.select.sink.i12, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %storemerge15, i64 %indvars.iv
  store ptr %i.l, ptr %i.x, align 8, !tbaa !27
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val7 = load i32, ptr %i.z, align 4, !tbaa !26
  %i.aa = sext i32 %.val7 to i64
  %i.ab = icmp slt i64 %indvars.iv.next17, %i.aa
  br i1 %i.ab, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !108

..critedge_crit_edge:                             ; preds = %Vec_PtrPush.exit
  %i.ac = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !26
  store i32 %spec.select.sink.i11, ptr %i.a, align 8
  store ptr %storemerge15, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Llb_ManComputeCutLi(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !26
  store i32 100, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !25
  tail call void @Aig_ManIncrementTravId(ptr noundef %0) #23
  %i.e = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %.val2024 = load i32, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %i.f = icmp sgt i32 %.val2024, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 112
  %i.i = getelementptr i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.val20.pre28 = phi i32 [ %.val2024, %.lr.ph ], [ %.val20.pre29, %bb.m ] ; 4 uses
  %.val2026 = phi i32 [ %.val2024, %.lr.ph ], [ %.val20, %bb.m ] ; 2 uses
  %i.j = phi ptr [ %i.c, %.lr.ph ], [ %i.ap, %bb.m ] ; 4 uses
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %i.aq, %bb.m ] ; 6 uses
  %i.l = phi i32 [ 100, %.lr.ph ], [ %i.ar, %bb.m ] ; 9 uses
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.m ] ; 5 uses
  %.025 = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.m ] ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !53
  %.val21 = load i32, ptr %i.h, align 8, !tbaa !54
  %i.o = add nsw i32 %.val21, %.025
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val19 = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.u = ptrtoint ptr %.val19 to i64
  %i.v = and i64 %i.u, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val22 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.val22, 7
  %.not = icmp eq i64 %i.y, 1
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17 = load i32, ptr %i.i, align 8, !tbaa !42 ; 2 uses
  %i.z = getelementptr i8, ptr %i.w, i64 32       ; 2 uses
  %.val18 = load i32, ptr %i.z, align 8, !tbaa !43
  %.not23 = icmp eq i32 %.val18, %.val17
  br i1 %.not23, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.val17, ptr %i.z, align 8, !tbaa !43
  %i.aa = icmp eq i32 %i.m, %i.l
  br i1 %i.aa, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp slt i32 %i.l, 16
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.k, i64 noundef 128) #22
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.ae = icmp samesign ult i32 %i.l, 1073741823
  %i.af = shl nuw nsw i32 %i.l, 1
  %spec.select.i = select i1 %i.ae, i32 %i.af, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.l, %spec.select.i
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i11.i = icmp eq ptr %i.k, null
  %i.ag = zext nneg i32 %spec.select.i to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.ah) #22
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #21
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.ad, %bb.h ], [ %i.ac, %bb.g ], [ %i.ai, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !25
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !24
  %.val20.pre.pre = load i32, ptr %i.e, align 8, !tbaa !52
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.d, %bb.i, %Vec_PtrGrow.exit12.sink.split.i
  %.val20.pre = phi i32 [ %.val20.pre28, %bb.d ], [ %.val20.pre28, %bb.i ], [ %.val20.pre.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ak = phi ptr [ %i.j, %bb.d ], [ %i.j, %bb.i ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.al = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.i ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.am = add nsw i32 %i.m, 1                     ; 2 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !26
  %i.an = sext i32 %i.m to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.an
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.b, %Vec_PtrPush.exit
  %.val20.pre29 = phi i32 [ %.val20.pre28, %bb.c ], [ %.val20.pre28, %bb.b ], [ %.val20.pre, %Vec_PtrPush.exit ]
  %.val20 = phi i32 [ %.val2026, %bb.c ], [ %.val2026, %bb.b ], [ %.val20.pre, %Vec_PtrPush.exit ] ; 2 uses
  %i.ap = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.b ], [ %i.ak, %Vec_PtrPush.exit ]
  %i.aq = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.ak, %Vec_PtrPush.exit ]
  %i.ar = phi i32 [ %i.l, %bb.c ], [ %i.l, %bb.b ], [ %i.al, %Vec_PtrPush.exit ]
  %i.as = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %i.am, %Vec_PtrPush.exit ]
  %i.at = add nuw nsw i32 %.025, 1                ; 2 uses
  %i.au = icmp slt i32 %i.at, %.val20
  br i1 %i.au, label %bb.b, label %.critedge, !llvm.loop !109

.critedge:                                        ; preds = %bb.m, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Llb_ManFlowGetObjSet(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((4, 8)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.pre = load i32, ptr %4, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %i.f = phi i32 [ %.pre, %.lr.ph ], [ %i.aa, %Vec_PtrPush.exit ] ; 8 uses
  %i.g = phi i32 [ 0, %.lr.ph ], [ %i.ab, %Vec_PtrPush.exit ] ; 2 uses
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %Vec_PtrPush.exit ] ; 2 uses
  %i.h = add nsw i32 %.010, %2
  %.val9 = load i32, ptr %i.c, align 4, !tbaa !26
  %i.i = srem i32 %i.h, %.val9
  %.val = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
end_hunk_2
