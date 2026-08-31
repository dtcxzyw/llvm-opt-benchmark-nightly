Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDar?download=true
inline.NumInlined: 929
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_NtkToDar:bb.a
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21
  %i.gl = getelementptr i8, ptr %i.gk, i64 64
  %.val162 = load ptr, ptr %i.gl, align 8, !tbaa !42
  %.not202 = icmp eq ptr %.val162, inttoptr (i64 2 to ptr)
  br i1 %.not202, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.val142 = load ptr, ptr %i.gb, align 8, !tbaa !20
  %i.gm = getelementptr inbounds [8 x i8], ptr %.val142, i64 %indvars.iv254
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !21
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !92
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = xor i64 %i.gq, 1
  %i.gs = inttoptr i64 %i.gr to ptr
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next255 = add nsw i64 %indvars.iv254, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next255 to i32
  %exitcond.not = icmp eq i32 %.val, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge14, label %bb.r, !llvm.loop !93

.critedge14:                                      ; preds = %bb.t, %bb.q, %.critedge12
  %i.gt = tail call i32 @Abc_NtkGetChoiceNum(ptr noundef nonnull %0) #23
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.u, label %.thread

bb.u:                                             ; preds = %.critedge14
  %i.gv = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.aw) #23 ; 2 uses
  %i.gw = icmp eq i32 %1, 0
  %i.gx = icmp ne i32 %i.gv, 0
  %or.cond = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %i.gv)
  br label %.thread

.thread:                                          ; preds = %.critedge14, %bb.v, %bb.u
  br i1 %.not, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %.thread
  %.val164 = load i32, ptr %i.fs, align 8, !tbaa !38
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.aw, i32 noundef %.val164) #23
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !90 ; 6 uses
  %i.ha = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.hb = add i32 %i.gz, -1
  %or.cond.i.i = icmp ult i32 %i.hb, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.gz ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %spec.store.select.i.i, ptr %i.ha, align 8, !tbaa !45
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hd = sext i32 %spec.store.select.i.i to i64
  %i.he = shl nsw i64 %i.hd, 2
  %i.hf = tail call noalias ptr @malloc(i64 noundef %i.he) #22
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.x, %bb.w
  %i.hg = phi ptr [ %i.hf, %bb.x ], [ null, %bb.w ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !46
  store i32 %i.gz, ptr %i.hc, align 4, !tbaa !44
  %i.hi = icmp sgt i32 %i.gz, 0
  br i1 %i.hi, label %.lr.ph.preheader.i, label %Vec_IntStartNatural.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntAlloc.exit.i
  %wide.trip.count.i = zext nneg i32 %i.gz to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gz, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %index ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <4 x i32> %vec.ind, ptr %i.hj, align 4, !tbaa !38
  store <4 x i32> %step.add, ptr %i.hk, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntStartNatural.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i
  %i.hn = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntStartNatural.exit, label %.lr.ph.i, !llvm.loop !97

Vec_IntStartNatural.exit:                         ; preds = %.lr.ph.i, %middle.block, %Vec_IntAlloc.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aw, i64 392
  store ptr %i.ha, ptr %i.ho, align 8, !tbaa !98
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !99 ; 3 uses
  %.not130 = icmp eq ptr %i.hq, null
  br i1 %.not130, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %Vec_IntStartNatural.exit
  %i.hr = getelementptr i8, ptr %i.hq, i64 4      ; 2 uses
  %.val8.i = load i32, ptr %i.hr, align 4, !tbaa !100 ; 3 uses
  %i.hs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.ht = add i32 %.val8.i, -1
  %or.cond.i.i188 = icmp ult i32 %i.ht, 7
  %spec.store.select.i.i189 = select i1 %or.cond.i.i188, i32 8, i32 %.val8.i ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  store i32 0, ptr %i.hu, align 4, !tbaa !16
  store i32 %spec.store.select.i.i189, ptr %i.hs, align 8, !tbaa !19
  %.not.i.i190 = icmp eq i32 %spec.store.select.i.i189, 0
  br i1 %.not.i.i190, label %Vec_PtrAlloc.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hv = sext i32 %spec.store.select.i.i189 to i64
  %i.hw = shl nsw i64 %i.hv, 3
  %i.hx = tail call noalias ptr @malloc(i64 noundef %i.hw) #22
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.z, %bb.y
  %.promoted16.i = phi ptr [ %i.hx, %bb.z ], [ null, %bb.y ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.hy, align 8, !tbaa !20
  %i.hz = icmp sgt i32 %.val8.i, 0
  br i1 %i.hz, label %.lr.ph.i191, label %Vec_VecDupInt.exit

.lr.ph.i191:                                      ; preds = %Vec_PtrAlloc.exit.i
  %i.ia = getelementptr i8, ptr %i.hq, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %Vec_PtrPush.exit.i, %.lr.ph.i191
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph.i191 ], [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %.promoted16.i, %.lr.ph.i191 ], [ %storemerge18.i, %Vec_PtrPush.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.store.select.i.i189, %.lr.ph.i191 ], [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ] ; 4 uses
  %.val9.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val9.i, i64 %indvars.iv19.i
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !21 ; 2 uses
  %i.id = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !44 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !44
  store i32 %i.if, ptr %i.id, align 8, !tbaa !45
  %.not.i10.i = icmp eq i32 %i.if, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ih = sext i32 %i.if to i64
  %i.ii = shl nsw i64 %i.ih, 2                    ; 2 uses
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ii) #22
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.ab, %bb.aa
  %.pre-phi12.i.i = phi i64 [ %i.ii, %bb.ab ], [ 0, %bb.aa ]
  %i.ik = phi ptr [ %i.ij, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !46
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ik, ptr align 4 %i.in, i64 %.pre-phi12.i.i, i1 false)
  %i.io = trunc nsw i64 %indvars.iv19.i to i32
  %i.ip = icmp eq i32 %spec.select.sink.i15.i, %i.io
  br i1 %i.ip, label %bb.ac, label %Vec_PtrPush.exit.i

bb.ac:                                            ; preds = %Vec_IntDup.exit.i
  %i.iq = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.iq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i.i = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ir = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #21
  br label %Vec_PtrPush.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.is = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit.i

bb.ag:                                            ; preds = %bb.ac
  %i.it = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.iu = shl nuw nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i = select i1 %i.it, i32 %i.iu, i32 2147483647 ; 3 uses
  %3 = zext nneg i32 %spec.select.i.i to i64      ; 2 uses
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %3
  br i1 %.not.i10.i.i, label %bb.ah, label %Vec_PtrPush.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.iv = shl nuw nsw i64 %3, 3                   ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iw = tail call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.iv) #21
  br label %Vec_PtrPush.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ix = tail call noalias ptr @malloc(i64 noundef %i.iv) #22
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.ag ], [ %i.is, %bb.af ], [ %i.ir, %bb.ae ], [ %i.iw, %bb.ai ], [ %i.ix, %bb.aj ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.ag ], [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i, %bb.ai ], [ %spec.select.i.i, %bb.aj ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.id, ptr %i.iy, align 8, !tbaa !21
  %.val.i194 = load i32, ptr %i.hr, align 4, !tbaa !100
  %i.iz = sext i32 %.val.i194 to i64
  %i.ja = icmp slt i64 %indvars.iv.next20.i, %i.iz
  br i1 %i.ja, label %bb.aa, label %..critedge_crit_edge.i, !llvm.loop !103

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.jb = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.jb, ptr %i.hu, align 4, !tbaa !16
  store i32 %spec.select.sink.i14.i, ptr %i.hs, align 8
  store ptr %storemerge18.i, ptr %i.hy, align 8
  br label %Vec_VecDupInt.exit

Vec_VecDupInt.exit:                               ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.aw, i64 432
  store ptr %i.hs, ptr %i.jc, align 8, !tbaa !104
  br label %bb.ak

bb.ak:                                            ; preds = %Vec_IntStartNatural.exit, %Vec_VecDupInt.exit, %.thread
  %i.jd = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.aw) #23
  %.not131 = icmp eq i32 %i.jd, 0
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.8)
  tail call void @Aig_ManStop(ptr noundef nonnull %i.aw) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.0126 = phi ptr [ null, %bb.al ], [ %i.aw, %bb.ak ]
  ret ptr %.0126
}

declare ptr @Abc_NtkDfs(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_NtkGetChoiceNum(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkToDarChoices(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Abc_AigDfs(ptr noundef %0, i32 noundef 0, i32 noundef 0) #23 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 124
  %.val65 = load i32, ptr %i.b, align 4, !tbaa !38
  %i.c = add nsw i32 %.val65, 100
  %i.d = tail call ptr @Aig_ManStart(i32 noundef %i.c) #23 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !38
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = tail call ptr @Extra_UtilStrsav(ptr noundef %i.i) #23
  store ptr %i.j, ptr %i.d, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = tail call ptr @Extra_UtilStrsav(ptr noundef %i.l) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !63
  %i.o = tail call i32 @Abc_NtkGetChoiceNum(ptr noundef %0) #23
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 140
  %.val72 = load i32, ptr %i.p, align 4, !tbaa !105
  %i.q = sext i32 %.val72 to i64
  %i.r = shl nsw i64 %i.q, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  store ptr %calloc, ptr %i.s, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr i8, ptr %i.d, i64 48
  %.val66 = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.u = tail call ptr @Abc_AigConst1(ptr noundef nonnull %0) #23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %.val66, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val6790 = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %i.x = getelementptr i8, ptr %.val6790, i64 4
  %.val67.val91 = load i32, ptr %i.x, align 4, !tbaa !16
  %i.y = icmp sgt i32 %.val67.val91, 0
  br i1 %i.y, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.c
  %i.z = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %.val100 = load i32, ptr %i.z, align 4, !tbaa !16
  %i.aa = icmp sgt i32 %.val100, 0
  br i1 %i.aa, label %.lr.ph102, label %.critedge2

.lr.ph102:                                        ; preds = %.critedge.preheader
  %i.ab = getelementptr i8, ptr %i.a, i64 8
  %i.ac = getelementptr i8, ptr %i.d, i64 248
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.val6793 = phi ptr [ %.val67, %.lr.ph ], [ %.val6790, %bb.c ]
  %i.ad = getelementptr i8, ptr %.val6793, i64 8
  %.val68.val = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val68.val, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.d) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val67 = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val67, i64 4
  %.val67.val = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.aj = sext i32 %.val67.val to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.critedge.preheader, !llvm.loop !107

bb.d:                                             ; preds = %.lr.ph102, %Abc_AigNodeIsChoice.exit.thread
  %indvars.iv109 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next110, %Abc_AigNodeIsChoice.exit.thread ] ; 2 uses
  %.val64 = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv109
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 6 uses
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %.val2.i = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load ptr, ptr %i.ao, align 8, !tbaa !24
  %.val2.val.i = load i32, ptr %.val2.i, align 4, !tbaa !38
  %i.ap = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.aq = sext i32 %.val2.val.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = getelementptr i8, ptr %i.am, i64 20
  %.val3.i = load i32, ptr %i.av, align 4         ; 2 uses
  %i.aw = lshr i32 %.val3.i, 10
  %i.ax = and i32 %i.aw, 1
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr i8, ptr %.val2.i, i64 4
  %.val2.val.i78 = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.bd = sext i32 %.val2.val.i78 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = lshr i32 %.val3.i, 11
  %i.bj = and i32 %i.bi, 1
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = tail call ptr @Aig_And(ptr noundef nonnull %i.d, ptr noundef %i.bb, ptr noundef %i.bn) #23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %Abc_AigNodeIsChoice.exit.thread, label %Abc_AigNodeIsChoice.exit

Abc_AigNodeIsChoice.exit:                         ; preds = %bb.d
  %i.bs = getelementptr i8, ptr %i.am, i64 44
  %.val.i81 = load i32, ptr %i.bs, align 4, !tbaa !108
  %i.bt = icmp slt i32 %.val.i81, 1
  br i1 %i.bt, label %Abc_AigNodeIsChoice.exit.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %Abc_AigNodeIsChoice.exit
  %.val73 = load ptr, ptr %i.ac, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph99, %bb.e
  %i.bu = phi ptr [ %i.bo, %.lr.ph99 ], [ %i.bw, %bb.e ]
  %.05898 = phi ptr [ %i.br, %.lr.ph99 ], [ %.058, %bb.e ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05898, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bu, i64 36
  %.val74 = load i32, ptr %i.bx, align 4, !tbaa !109
  %i.by = sext i32 %.val74 to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val73, i64 %i.by
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !110
  %.058.in = getelementptr inbounds nuw i8, ptr %.05898, i64 64
  %.058 = load ptr, ptr %.058.in, align 8, !tbaa !42 ; 2 uses
  %.not63 = icmp eq ptr %.058, null
  br i1 %.not63, label %Abc_AigNodeIsChoice.exit.thread, label %bb.e, !llvm.loop !111
end_hunk_0
