Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmPre?download=true
inline.NumInlined: 303
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Ifd_ManDsdTruths:bb.a
  br i1 %.not132, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gw = load i32, ptr %i.fw, align 4
  %.not133 = icmp sgt i32 %i.gw, -1
  br i1 %.not133, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gx = tail call i32 @Ifd_ManHashFindOrAdd(ptr noundef nonnull %i.a, i32 noundef %i.ft, i32 noundef %i.gd, i32 noundef %i.gt, i32 noundef 3) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %indvars.iv.next271 = add nsw i64 %indvars.iv270355, 1 ; 2 uses
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !41  ; 5 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %.val = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv279
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !42
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next271, %i.hd
  br i1 %i.he, label %.lr.ph235.split, label %..critedge8.loopexit_crit_edge, !llvm.loop !79

..critedge8.loopexit_crit_edge:                   ; preds = %bb.ab
  br label %.critedge8, !llvm.loop !79

..critedge8.loopexit335_crit_edge:                ; preds = %bb.w
  br label %.critedge8, !llvm.loop !79

.critedge8:                                       ; preds = %.lr.ph235.split.us, %.lr.ph235.split, %.lr.ph235.split.us.preheader, %..critedge8.loopexit335_crit_edge, %.lr.ph235.split.preheader, %..critedge8.loopexit_crit_edge, %bb.t
  %i.hf = phi ptr [ %i.gy, %.lr.ph235.split ], [ %i.fu, %bb.t ], [ %i.fu, %.lr.ph235.split.preheader ], [ %i.gy, %..critedge8.loopexit_crit_edge ], [ %i.fu, %.lr.ph235.split.us.preheader ], [ %i.gl, %..critedge8.loopexit335_crit_edge ], [ %i.gl, %.lr.ph235.split.us ] ; 2 uses
  %i.hg = phi ptr [ %i.gy, %.lr.ph235.split ], [ %i.fv, %bb.t ], [ %i.fv, %.lr.ph235.split.preheader ], [ %i.gy, %..critedge8.loopexit_crit_edge ], [ %i.fv, %.lr.ph235.split.us.preheader ], [ %i.gl, %..critedge8.loopexit335_crit_edge ], [ %i.gl, %.lr.ph235.split.us ] ; 2 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  %.val141 = load ptr, ptr %i.hh, align 8, !tbaa !27 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.val141, i64 %indvars.iv286
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !42
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next274, %i.hl
  br i1 %i.hm, label %bb.s, label %.critedge6.loopexit, !llvm.loop !80

.critedge6.loopexit:                              ; preds = %bb.s, %.critedge8
  %i.hn = phi ptr [ %i.fu, %bb.s ], [ %i.hf, %.critedge8 ] ; 2 uses
  %.phi.trans.insert307 = getelementptr i8, ptr %i.hn, i64 8
  %.val143.pre = load ptr, ptr %.phi.trans.insert307, align 8, !tbaa !27
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %bb.r
  %.val143 = phi ptr [ %.val143.pre, %.critedge6.loopexit ], [ %.val143308, %bb.r ] ; 2 uses
  %i.ho = phi ptr [ %i.hn, %.critedge6.loopexit ], [ %i.fg, %bb.r ]
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv291
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !42
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next277, %i.hs
  br i1 %i.ht, label %bb.q, label %.critedge4, !llvm.loop !81

.critedge4:                                       ; preds = %bb.q, %.critedge6, %bb.p, %bb.o
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next280, %indvars.iv296
  br i1 %exitcond285.not, label %._crit_edge, label %bb.o, !llvm.loop !82

._crit_edge:                                      ; preds = %.critedge4
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %indvars.iv296
  br i1 %exitcond290.not, label %._crit_edge251, label %.preheader, !llvm.loop !83

._crit_edge251:                                   ; preds = %._crit_edge
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %indvars.iv296
  br i1 %exitcond295.not, label %._crit_edge253, label %.preheader218, !llvm.loop !84

._crit_edge253:                                   ; preds = %._crit_edge251, %.preheader220
  %i.hu = load ptr, ptr %i.b, align 8, !tbaa !41  ; 6 uses
  %i.hv = load i32, ptr %i.d, align 8, !tbaa !21
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !25 ; 7 uses
  %i.hy = load i32, ptr %i.hu, align 8, !tbaa !26
  %i.hz = icmp eq i32 %i.hx, %i.hy
  br i1 %i.hz, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %._crit_edge253
  %i.ia = icmp slt i32 %i.hx, 16
  br i1 %i.ia, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ic, null
  br i1 %.not9.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.id = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ic, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ie = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.af, %bb.ae
  %i.if = phi ptr [ %i.id, %bb.ae ], [ %i.ie, %bb.af ]
  store ptr %i.if, ptr %i.ib, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ac
  %i.ig = icmp samesign ult i32 %i.hx, 1073741823
  %i.ih = shl nuw nsw i32 %i.hx, 1
  %spec.select.i211 = select i1 %i.ig, i32 %i.ih, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.hx, %spec.select.i211
  br i1 %.not.i9.i, label %bb.ah, label %Vec_IntPush.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ij, null
  %i.ik = zext nneg i32 %spec.select.i211 to i64
  %i.il = shl nuw nsw i64 %i.ik, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.im = tail call ptr @realloc(ptr noundef nonnull %i.ij, i64 noundef %i.il) #30
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.in = tail call noalias ptr @malloc(i64 noundef %i.il) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.io = phi ptr [ %i.im, %bb.ai ], [ %i.in, %bb.aj ]
  store ptr %i.io, ptr %i.ii, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ak, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i211, %bb.ak ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hu, align 8, !tbaa !26
  %.pre = load i32, ptr %i.hw, align 4, !tbaa !25
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge253, %bb.ag, %Vec_IntGrow.exit11.sink.split.i
  %i.ip = phi i32 [ %i.hx, %._crit_edge253 ], [ %i.hx, %bb.ag ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !27
  %i.is = add nsw i32 %i.ip, 1
  store i32 %i.is, ptr %i.hw, align 4, !tbaa !25
  %i.it = sext i32 %i.ip to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it
  store i32 %i.hv, ptr %i.iu, align 4, !tbaa !42
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %exitcond304.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count303
  br i1 %exitcond304.not, label %._crit_edge256, label %.preheader221, !llvm.loop !85

._crit_edge256:                                   ; preds = %Vec_IntPush.exit, %bb.a
  tail call void @Ifd_ManTruthAll(ptr noundef %i.a)
  tail call void @Mpm_ComputeCnfSizeAll(ptr noundef %i.a)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !44
  store ptr null, ptr %i.iv, align 8, !tbaa !44
  tail call void @Ifd_ManStop(ptr noundef %i.a)
  ret ptr %i.iw
}

; Function Attrs: nofree nounwind uwtable
define void @Ifd_ManDsdPermPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.c) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Ifd_ManDsdPermJT(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !25
  store i32 100, ptr %i.a, align 8, !tbaa !26
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !27
  %i.e = sext i32 %0 to i64                       ; 2 uses
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #28 ; 16 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #27 ; 9 uses
  %i.i = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader98

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %vec.ind, ptr %i.j, align 4, !tbaa !42
  store <4 x i32> %step.add, ptr %i.k, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader140, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader140 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %Vec_IntPush.exit94, label %.preheader98

.preheader98:                                     ; preds = %bb.a, %._crit_edge
  %i.o = add nsw i32 %0, -1                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %wide.trip.count121 = zext i32 %0 to i64        ; 3 uses
  %.not83.peel = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %xtraiter = and i64 %wide.trip.count121, 1
  %i.r = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count121, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod141 = trunc i32 %0 to i1
  %.not144 = icmp eq i32 %0, 2
  %1 = add nsw i64 %wide.trip.count121, -2
  br label %bb.b

bb.b:                                             ; preds = %.preheader98, %._crit_edge105
  %indvars.iv124 = phi i64 [ 0, %.preheader98 ], [ %indvars.iv.next125, %._crit_edge105 ] ; 7 uses
  %storemerge110 = phi ptr [ %i.c, %.preheader98 ], [ %storemerge111, %._crit_edge105 ] ; 6 uses
  %spec.select.sink.i108 = phi i32 [ 100, %.preheader98 ], [ %spec.select.sink.i107, %._crit_edge105 ] ; 3 uses
  %.0 = phi i32 [ %i.o, %.preheader98 ], [ %.2.peel, %._crit_edge105 ] ; 3 uses
  %i.s = sext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 4 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.s ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !42   ; 2 uses
  %.not81 = icmp eq i32 %i.w, 0
  %.v = select i1 %.not81, i32 -1, i32 1
  %i.x = add nsw i32 %.v, %.0                     ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !42
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !42
  store i32 %i.u, ptr %i.z, align 4, !tbaa !42
  %i.ab = tail call noundef i32 @llvm.smin.i32(i32 %.0, i32 %i.x)
  %i.ac = trunc nsw i64 %indvars.iv124 to i32
  %i.ad = icmp eq i32 %spec.select.sink.i108, %i.ac
  br i1 %i.ad, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp samesign ult i64 %indvars.iv124, 16
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge110, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge110, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i64 %indvars.iv124, 1073741823
  %indvars.iv124.tr = trunc nsw i64 %indvars.iv124 to i32
  %i.ai = shl nsw i32 %indvars.iv124.tr, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %i.aj = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv124, %i.aj
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge110, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call ptr @realloc(ptr noundef nonnull %storemerge110, i64 noundef %i.al) #30
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %bb.b, %bb.g
  %storemerge111 = phi ptr [ %storemerge110, %bb.b ], [ %storemerge110, %bb.g ], [ %i.ag, %bb.f ], [ %i.af, %bb.e ], [ %i.am, %bb.i ], [ %i.an, %bb.j ] ; 9 uses
  %spec.select.sink.i107 = phi i32 [ %spec.select.sink.i108, %bb.b ], [ %spec.select.sink.i108, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 7 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %storemerge111, i64 %indvars.iv124
  store i32 %i.ab, ptr %i.ao, align 4, !tbaa !42
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !42
  store i32 %i.aq, ptr %i.v, align 4, !tbaa !42
  store i32 %i.w, ptr %i.ap, align 4, !tbaa !42
  br i1 %i.i, label %.lr.ph101.preheader, label %._crit_edge105.thread

.lr.ph101.preheader:                              ; preds = %Vec_IntPush.exit
  br i1 %i.r, label %.lr.ph101.epil.preheader, label %.lr.ph101

.preheader.unr-lcssa:                             ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph101.epil.preheader

.lr.ph101.epil.preheader:                         ; preds = %.preheader.unr-lcssa, %.lr.ph101.preheader
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next114.1, %.preheader.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv113.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  %i.at = icmp sgt i32 %i.as, %i.u
  br i1 %i.at, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.lr.ph101.epil.preheader
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv113.epil.init ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %.not84.epil = icmp eq i32 %i.av, 0
  %i.aw = zext i1 %.not84.epil to i32
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !42
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph101.epil.preheader, %bb.k, %.preheader.unr-lcssa
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !42
  %i.ay = icmp eq i32 %i.ax, 0
  %or.cond85.peel = select i1 %i.ay, i1 true, i1 %.not83.peel
  br i1 %or.cond85.peel, label %.lr.ph104.preheader, label %bb.l

.lr.ph104.preheader:                              ; preds = %bb.l, %.preheader
  %.1103.ph = phi i32 [ %0, %.preheader ], [ %spec.select139, %bb.l ] ; 2 uses
  br i1 %.not144, label %.lr.ph104.peel, label %.lr.ph104

bb.l:                                             ; preds = %.preheader
  %i.az = load i32, ptr %i.g, align 4, !tbaa !42
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !42
  %i.bb = icmp sgt i32 %i.az, %i.ba
  %spec.select139 = select i1 %i.bb, i32 0, i32 %0
  br label %.lr.ph104.preheader

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %bb.o
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %bb.o ], [ 0, %.lr.ph101.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.lr.ph101.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv113
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !42
  %i.be = icmp sgt i32 %i.bd, %i.u
  br i1 %i.be, label %bb.m, label %.lr.ph101.1

bb.m:                                             ; preds = %.lr.ph101
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv113 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !42
  %.not84 = icmp eq i32 %i.bg, 0
  %i.bh = zext i1 %.not84 to i32
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !42
  br label %.lr.ph101.1

.lr.ph101.1:                                      ; preds = %.lr.ph101, %bb.m
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next114
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !42
  %i.bk = icmp sgt i32 %i.bj, %i.u
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph101.1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next114 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42
  %.not84.1 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not84.1 to i32
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph101.1
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.lr.ph101, !llvm.loop !89

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.thread
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.thread ], [ 1, %.lr.ph104.preheader ] ; 7 uses
  %.1103 = phi i32 [ %.2, %.thread ], [ %.1103.ph, %.lr.ph104.preheader ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv118
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !42
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph104
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !42 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !42
  %i.bv = icmp sgt i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.s, label %.thread

bb.q:                                             ; preds = %.lr.ph104
  %.not83 = icmp eq i64 %indvars.iv118, %i.p
  br i1 %.not83, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !42
  %i.ca = icmp sgt i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cb = phi i32 [ %i.bx, %bb.r ], [ %i.bs, %bb.p ]
  %i.cc = sext i32 %.1103 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !42
  %i.cf = icmp sgt i32 %i.cb, %i.ce
  %i.cg = icmp eq i32 %.1103, %0
  %or.cond86 = select i1 %i.cf, i1 true, i1 %i.cg
  %i.ch = trunc nuw nsw i64 %indvars.iv118 to i32
  %spec.select = select i1 %or.cond86, i32 %i.ch, i32 %.1103
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.s, %bb.q, %bb.r
  %.2 = phi i32 [ %.1103, %bb.q ], [ %spec.select, %bb.s ], [ %.1103, %bb.r ], [ %.1103, %bb.p ] ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv118, %1
  br i1 %exitcond122.not, label %.lr.ph104.peel, label %.lr.ph104, !llvm.loop !90

.lr.ph104.peel:                                   ; preds = %.lr.ph104.preheader, %.thread
  %2 = phi i64 [ 1, %.lr.ph104.preheader ], [ %indvars.iv.next119, %.thread ] ; 5 uses
  %3 = phi i32 [ %.1103.ph, %.lr.ph104.preheader ], [ %.2, %.thread ] ; 6 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %.lr.ph104.peel
  %.not83.peel142 = icmp eq i64 %2, %i.p
  br i1 %.not83.peel142, label %._crit_edge105, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2 ; 2 uses
  %10 = load i32, ptr %9, align 4, !tbaa !42      ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %20, label %._crit_edge105

14:                                               ; preds = %.lr.ph104.peel
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2 ; 2 uses
  %16 = load i32, ptr %15, align 4, !tbaa !42     ; 2 uses
  %17 = getelementptr i8, ptr %15, i64 -4
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %._crit_edge105

20:                                               ; preds = %14, %8
  %21 = phi i32 [ %10, %8 ], [ %16, %14 ]
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %i.g, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !42
  %25 = icmp sgt i32 %21, %24
  %26 = icmp eq i32 %3, %0
  %or.cond86.peel = select i1 %25, i1 true, i1 %26
  %27 = trunc nuw nsw i64 %2 to i32
  %spec.select.peel = select i1 %or.cond86.peel, i32 %27, i32 %3
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %7, %8, %14, %20
  %.2.peel = phi i32 [ %3, %7 ], [ %spec.select.peel, %20 ], [ %3, %8 ], [ %3, %14 ] ; 2 uses
  %i.ci = icmp slt i32 %.2.peel, %0
  br i1 %i.ci, label %bb.b, label %._crit_edge105.thread, !llvm.loop !91

._crit_edge105.thread:                            ; preds = %Vec_IntPush.exit, %._crit_edge105
  %i.cj = trunc nsw i64 %indvars.iv.next125 to i32 ; 5 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !25
  store i32 %spec.select.sink.i107, ptr %i.a, align 8
  store ptr %storemerge111, ptr %i.d, align 8
  %i.ck = icmp eq i32 %spec.select.sink.i107, %i.cj
  br i1 %i.ck, label %bb.t, label %Vec_IntPush.exit94

bb.t:                                             ; preds = %._crit_edge105.thread
  %i.cl = icmp slt i32 %spec.select.sink.i107, 16
  br i1 %i.cl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i92 = icmp eq ptr %storemerge111, null
  br i1 %.not9.i.i92, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge111, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i90

bb.w:                                             ; preds = %bb.u
  %i.cn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i90

bb.x:                                             ; preds = %bb.t
  %i.co = icmp samesign ult i32 %spec.select.sink.i107, 1073741823
  %i.cp = shl nuw nsw i32 %spec.select.sink.i107, 1
  %spec.select.i87 = select i1 %i.co, i32 %i.cp, i32 2147483647 ; 4 uses
  %.not.i9.i88 = icmp samesign ult i32 %spec.select.sink.i107, %spec.select.i87
  br i1 %.not.i9.i88, label %bb.y, label %Vec_IntPush.exit94

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i89 = icmp eq ptr %storemerge111, null
  %i.cq = zext nneg i32 %spec.select.i87 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  br i1 %.not9.i10.i89, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call ptr @realloc(ptr noundef nonnull %storemerge111, i64 noundef %i.cr) #30
  br label %Vec_IntGrow.exit11.sink.split.i90

bb.aa:                                            ; preds = %bb.y
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.cr) #28
  br label %Vec_IntGrow.exit11.sink.split.i90

Vec_IntGrow.exit11.sink.split.i90:                ; preds = %bb.z, %bb.aa, %bb.v, %bb.w
  %storemerge97 = phi ptr [ %i.cn, %bb.w ], [ %i.cm, %bb.v ], [ %i.cs, %bb.z ], [ %i.ct, %bb.aa ] ; 2 uses
  %spec.select.sink.i91 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i87, %bb.z ], [ %spec.select.i87, %bb.aa ]
  store ptr %storemerge97, ptr %i.d, align 8, !tbaa !27
  store i32 %spec.select.sink.i91, ptr %i.a, align 8, !tbaa !26
  br label %Vec_IntPush.exit94

Vec_IntPush.exit94:                               ; preds = %._crit_edge, %._crit_edge105.thread, %bb.x, %Vec_IntGrow.exit11.sink.split.i90
  %i.cu = phi i32 [ %i.cj, %._crit_edge105.thread ], [ %i.cj, %bb.x ], [ %i.cj, %Vec_IntGrow.exit11.sink.split.i90 ], [ 0, %._crit_edge ] ; 2 uses
  %i.cv = phi ptr [ %storemerge111, %._crit_edge105.thread ], [ %storemerge111, %bb.x ], [ %storemerge97, %Vec_IntGrow.exit11.sink.split.i90 ], [ %i.c, %._crit_edge ]
  %i.cw = add nsw i32 %i.cu, 1
  store i32 %i.cw, ptr %i.b, align 4, !tbaa !25
  %i.cx = sext i32 %i.cu to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cx
  store i32 0, ptr %i.cy, align 4, !tbaa !42
  tail call void @free(ptr noundef %i.h) #29
  tail call void @free(ptr noundef %i.g) #29
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define noundef i32 @Ifd_ManDsdTest4() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.Ifd_ManDsdTest4.pPerm, i64 24, i1 false)
  %i.b = tail call ptr @Ifd_ManDsdPermJT(i32 noundef 6) ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !25  ; 2 uses
  %i.d = icmp sgt i32 %.val, 0
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val10 = load ptr, ptr %i.e, align 8, !tbaa !27 ; 3 uses
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !42
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.p, ptr %i.n, align 4, !tbaa !42
  %i.q = load i32, ptr %i.a, align 16, !tbaa !42
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.q) ; 0 uses
  %i.s = load i32, ptr %i.f, align 4, !tbaa !42
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.s) ; 0 uses
  %i.u = load i32, ptr %i.g, align 8, !tbaa !42
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.u) ; 0 uses
  %i.w = load i32, ptr %i.h, align 4, !tbaa !42
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.w) ; 0 uses
  %i.y = load i32, ptr %i.i, align 16, !tbaa !42
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.y) ; 0 uses
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !42
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.aa) ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph.i, !llvm.loop !95

.critedge:                                        ; preds = %bb.a
  %.not.i = icmp eq ptr %.val10, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph.i, %.critedge
  tail call void @free(ptr noundef nonnull %.val10) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 1
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Extra_Truth6AllConfigs2(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @Extra_Factorial(i32 noundef %3) #29 ; 3 uses
  %i.b = shl nuw i32 1, %3                        ; 3 uses
  %i.c = add nsw i32 %3, 1                        ; 3 uses
  %i.d = shl i32 %i.a, %i.c                       ; 4 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.f = add i32 %i.d, -1
  %or.cond.i.i = icmp ult i32 %i.f, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.d ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.e, align 8, !tbaa !37
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #28
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !38
  store i32 %i.d, ptr %i.k, align 4, !tbaa !36
  %i.m = sext i32 %i.d to i64
  %i.n = shl nsw i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.n, i1 false)
  %i.o = icmp slt i32 %i.a, 1
  %.not53 = icmp eq i32 %3, 31
  %brmerge = or i1 %i.o, %.not53
  br i1 %brmerge, label %.critedge, label %.preheader43.lr.ph.preheader

.preheader43.lr.ph.preheader:                     ; preds = %Vec_WrdStart.exit
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.p = xor i64 %0, -1
  %wide.trip.count58 = zext nneg i32 %i.a to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp slt i32 %i.b, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod68 = trunc i32 %smax to i1
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.lr.ph.preheader, %._crit_edge
  %indvars.iv55 = phi i64 [ 0, %.preheader43.lr.ph.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 3 uses
  %.03946 = phi i64 [ %i.p, %.preheader43.lr.ph.preheader ], [ %i.ce, %._crit_edge ] ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv55 to i32
  %i.s = shl i32 %i.r, %i.c
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader43.new

.preheader43.new:                                 ; preds = %.preheader43, %.preheader43.new
  %indvars.iv = phi i64 [ %indvars.iv.next.171, %.preheader43.new ], [ 0, %.preheader43 ] ; 4 uses
  %.144 = phi i64 [ %i.ax, %.preheader43.new ], [ %.03946, %.preheader43 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader43.new ], [ 0, %.preheader43 ]
  %i.u = or i64 %indvars.iv, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.u
  store i64 %.144, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr @Extra_Truth6ChangePhase.Truth6, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49  ; 2 uses
  %i.ab = xor i64 %i.aa, -1
  %i.ac = and i64 %.144, %i.ab
  %i.ad = shl nuw i32 1, %i.x
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = shl i64 %i.ac, %i.ae
  %i.ag = and i64 %i.aa, %.144
  %i.ah = lshr i64 %i.ag, %i.ae
  %i.ai = or i64 %i.af, %i.ah                     ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aj = or i64 %indvars.iv.next, %i.t
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.aj
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @Extra_Truth6ChangePhase.Truth6, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.ai, %i.aq
  %i.as = shl nuw i32 1, %i.am
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = shl i64 %i.ar, %i.at
  %i.av = and i64 %i.ap, %i.ai
  %i.aw = lshr i64 %i.av, %i.at
  %i.ax = or i64 %i.au, %i.aw                     ; 3 uses
  %indvars.iv.next.171 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader43.new, !llvm.loop !96

._crit_edge.unr-lcssa:                            ; preds = %.preheader43.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader43
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader43 ], [ %indvars.iv.next.171, %._crit_edge.unr-lcssa ] ; 2 uses
  %.144.epil.init = phi i64 [ %.03946, %.preheader43 ], [ %i.ax, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ay = or i64 %indvars.iv.epil.init, %i.t
  %i.az = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ay
  store i64 %.144.epil.init, ptr %i.az, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !42 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr @Extra_Truth6ChangePhase.Truth6, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %i.bf = xor i64 %i.be, -1
  %i.bg = and i64 %.144.epil.init, %i.bf
  %i.bh = shl nuw i32 1, %i.bb
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = shl i64 %i.bg, %i.bi
  %i.bk = and i64 %i.be, %.144.epil.init
  %i.bl = lshr i64 %i.bk, %i.bi
  %i.bm = or i64 %i.bj, %i.bl
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa66 = phi i64 [ %i.ax, %._crit_edge.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv55
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr @Extra_Truth6SwapAdjacent.PMasks, i64 %i.bp ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !49
  %i.bs = and i64 %i.br, %.lcssa66
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !49
  %i.bv = and i64 %i.bu, %.lcssa66
  %i.bw = shl nuw i32 1, %i.bo
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = shl i64 %i.bv, %i.bx
  %i.bz = or i64 %i.by, %i.bs
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !49
  %i.cc = and i64 %i.cb, %.lcssa66
  %i.cd = lshr i64 %i.cc, %i.bx
  %i.ce = or i64 %i.bz, %i.cd
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.preheader43.1, label %.preheader43, !llvm.loop !97

.preheader43.1:                                   ; preds = %._crit_edge, %._crit_edge.1
  %indvars.iv55.1 = phi i64 [ %indvars.iv.next56.1, %._crit_edge.1 ], [ 0, %._crit_edge ] ; 3 uses
  %.03946.1 = phi i64 [ %i.do, %._crit_edge.1 ], [ %0, %._crit_edge ]
  %i.cf = trunc nuw nsw i64 %indvars.iv55.1 to i32
  %i.cg = shl i32 %i.cf, %i.c
  %invariant.op = or i32 %i.cg, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader43.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader43.1 ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.144.1 = phi i64 [ %.03946.1, %.preheader43.1 ], [ %i.cw, %bb.c ] ; 3 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.1 to i32
  %.reass.reass = or i32 %i.ch, %invariant.op
  %i.ci = sext i32 %.reass.reass to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ci
  store i64 %.144.1, ptr %i.cj, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.1
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !42 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr @Extra_Truth6ChangePhase.Truth6, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !49 ; 2 uses
  %i.cp = xor i64 %i.co, -1
  %i.cq = and i64 %.144.1, %i.cp
  %i.cr = shl nuw i32 1, %i.cl
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = shl i64 %i.cq, %i.cs
  %i.cu = and i64 %i.co, %.144.1
  %i.cv = lshr i64 %i.cu, %i.cs
  %i.cw = or i64 %i.ct, %i.cv                     ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.1, label %bb.c, !llvm.loop !96

._crit_edge.1:                                    ; preds = %bb.c
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv55.1
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !42 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [24 x i8], ptr @Extra_Truth6SwapAdjacent.PMasks, i64 %i.cz ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !49
  %i.dc = and i64 %i.db, %i.cw
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.df = and i64 %i.de, %i.cw
  %i.dg = shl nuw i32 1, %i.cy
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = shl i64 %i.df, %i.dh
  %i.dj = or i64 %i.di, %i.dc
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !49
  %i.dm = and i64 %i.dl, %i.cw
  %i.dn = lshr i64 %i.dm, %i.dh
  %i.do = or i64 %i.dj, %i.dn
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55.1, 1 ; 2 uses
  %exitcond59.1.not = icmp eq i64 %indvars.iv.next56.1, %wide.trip.count58
  br i1 %exitcond59.1.not, label %.critedge, label %.preheader43.1, !llvm.loop !97

.critedge:                                        ; preds = %._crit_edge.1, %Vec_WrdStart.exit
  ret ptr %i.e
}

declare i32 @Extra_Factorial(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Extra_Truth6AllConfigs(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @Extra_Factorial(i32 noundef %3) #29 ; 3 uses
  %i.b = shl nuw nsw i32 1, %3
  %i.c = shl i32 %i.a, %3                         ; 4 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i.i = icmp ult i32 %i.e, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.c ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.d, align 8, !tbaa !37
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #28
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !38
  store i32 %i.c, ptr %i.j, align 4, !tbaa !36
  %i.l = sext i32 %i.c to i64
  %i.m = shl nsw i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = icmp sgt i32 %i.a, 0
  %i.o = icmp ne i32 %3, 31
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %Vec_WrdStart.exit
  %wide.trip.count50 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv47 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next48, %._crit_edge ] ; 3 uses
  %.03642 = phi i64 [ %0, %.lr.ph.preheader ], [ %i.ay, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv47
  %i.q = load i32, ptr %i.p, align 4, !tbaa !42   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [24 x i8], ptr @Extra_Truth6SwapAdjacent.PMasks, i64 %i.r ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49
  %i.u = and i64 %i.t, %.03642
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = and i64 %i.w, %.03642
  %i.y = shl nuw i32 1, %i.q
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = shl i64 %i.x, %i.z
  %i.ab = or i64 %i.aa, %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = and i64 %i.ad, %.03642
  %i.af = lshr i64 %i.ae, %i.z
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.ai = shl i32 %i.ah, %3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.03341 = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.c ] ; 2 uses
  %.139 = phi i64 [ %i.ag, %.lr.ph ], [ %i.ay, %bb.c ] ; 3 uses
  %i.aj = or i32 %.03341, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ak
  store i64 %.139, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr @Extra_Truth6ChangePhase.Truth6, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !49 ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = and i64 %.139, %i.ar
  %i.at = shl nuw i32 1, %i.an                    ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = shl i64 %i.as, %i.au
  %i.aw = and i64 %i.aq, %.139
  %i.ax = lshr i64 %i.aw, %i.au
  %i.ay = or i64 %i.av, %i.ax                     ; 2 uses
  %i.az = xor i32 %i.at, %.03341
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %.critedge, label %.lr.ph, !llvm.loop !99

.critedge:                                        ; preds = %._crit_edge, %Vec_WrdStart.exit
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Ifd_ComputeSignature(i64 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #15 {
vector.ph:
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.a = and <2 x i64> %broadcast.splat, <i64 6148914691236517205, i64 3689348814741910323> ; 2 uses
  %i.b = shl <2 x i64> %i.a, <i64 1, i64 2>
  %i.c = or <2 x i64> %i.b, %i.a                  ; 2 uses
  %i.d = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.c)
  %i.e = trunc nuw nsw <2 x i64> %i.d to <2 x i32>
  %i.f = lshr <2 x i32> %i.e, splat (i32 1)       ; 3 uses
  %i.g = and <2 x i64> %broadcast.splat, <i64 -6148914691236517206, i64 -3689348814741910324> ; 2 uses
  %i.h = lshr <2 x i64> %i.g, <i64 1, i64 2>
  %i.i = or <2 x i64> %i.h, %i.g                  ; 2 uses
  %i.j = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.i)
  %i.k = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.l = lshr <2 x i32> %i.k, splat (i32 1)       ; 3 uses
  %i.m = xor <2 x i64> %i.i, %i.c
  %i.n = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.m)
  %i.o = trunc nuw nsw <2 x i64> %i.n to <2 x i32>
  %i.p = lshr <2 x i32> %i.o, splat (i32 1)
  %i.q = icmp samesign ugt <2 x i32> %i.l, %i.f
  %i.r = shl nuw nsw <2 x i32> %i.l, splat (i32 20)
  %i.s = shl nuw nsw <2 x i32> %i.f, splat (i32 10)
  %i.t = or disjoint <2 x i32> %i.r, %i.s
  %i.u = shl nuw nsw <2 x i32> %i.f, splat (i32 20)
  %i.v = shl nuw nsw <2 x i32> %i.l, splat (i32 10)
  %i.w = or disjoint <2 x i32> %i.v, %i.u
  %predphi = select <2 x i1> %i.q, <2 x i32> %i.w, <2 x i32> %i.t
  %i.x = or disjoint <2 x i32> %predphi, %i.p
  store <2 x i32> %i.x, ptr %1, align 4, !tbaa !42
  %i.y = and <2 x i64> %broadcast.splat, <i64 1085102592571150095, i64 71777214294589695> ; 2 uses
  %i.z = shl <2 x i64> %i.y, <i64 4, i64 8>
  %i.aa = or <2 x i64> %i.z, %i.y                 ; 2 uses
  %i.ab = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.aa)
  %i.ac = trunc nuw nsw <2 x i64> %i.ab to <2 x i32>
  %i.ad = lshr <2 x i32> %i.ac, splat (i32 1)     ; 3 uses
  %i.ae = and <2 x i64> %broadcast.splat, <i64 -1085102592571150096, i64 -71777214294589696> ; 2 uses
  %i.af = lshr <2 x i64> %i.ae, <i64 4, i64 8>
  %i.ag = or <2 x i64> %i.af, %i.ae               ; 2 uses
  %i.ah = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ag)
  %i.ai = trunc nuw nsw <2 x i64> %i.ah to <2 x i32>
  %i.aj = lshr <2 x i32> %i.ai, splat (i32 1)     ; 3 uses
  %i.ak = xor <2 x i64> %i.ag, %i.aa
  %i.al = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ak)
  %i.am = trunc nuw nsw <2 x i64> %i.al to <2 x i32>
  %i.an = lshr <2 x i32> %i.am, splat (i32 1)
  %i.ao = icmp samesign ugt <2 x i32> %i.aj, %i.ad
  %i.ap = shl nuw nsw <2 x i32> %i.aj, splat (i32 20)
  %i.aq = shl nuw nsw <2 x i32> %i.ad, splat (i32 10)
  %i.ar = or disjoint <2 x i32> %i.ap, %i.aq
  %i.as = shl nuw nsw <2 x i32> %i.ad, splat (i32 20)
  %i.at = shl nuw nsw <2 x i32> %i.aj, splat (i32 10)
  %i.au = or disjoint <2 x i32> %i.at, %i.as
  %predphi.1 = select <2 x i1> %i.ao, <2 x i32> %i.au, <2 x i32> %i.ar
  %i.av = or disjoint <2 x i32> %predphi.1, %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x i32> %i.av, ptr %i.aw, align 4, !tbaa !42
  %i.ax = and <2 x i64> %broadcast.splat, <i64 281470681808895, i64 4294967295> ; 2 uses
  %i.ay = shl <2 x i64> %i.ax, <i64 16, i64 32>
  %i.az = or <2 x i64> %i.ay, %i.ax               ; 2 uses
  %i.ba = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.az)
  %i.bb = trunc nuw nsw <2 x i64> %i.ba to <2 x i32>
  %i.bc = lshr <2 x i32> %i.bb, splat (i32 1)     ; 3 uses
  %i.bd = and <2 x i64> %broadcast.splat, <i64 -281470681808896, i64 -4294967296> ; 2 uses
  %i.be = lshr <2 x i64> %i.bd, <i64 16, i64 32>
  %i.bf = or <2 x i64> %i.be, %i.bd               ; 2 uses
  %i.bg = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bf)
  %i.bh = trunc nuw nsw <2 x i64> %i.bg to <2 x i32>
  %i.bi = lshr <2 x i32> %i.bh, splat (i32 1)     ; 3 uses
  %i.bj = xor <2 x i64> %i.bf, %i.az
  %i.bk = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bj)
  %i.bl = trunc nuw nsw <2 x i64> %i.bk to <2 x i32>
  %i.bm = lshr <2 x i32> %i.bl, splat (i32 1)
  %i.bn = icmp samesign ugt <2 x i32> %i.bi, %i.bc
  %i.bo = shl nuw nsw <2 x i32> %i.bi, splat (i32 20)
  %i.bp = shl nuw nsw <2 x i32> %i.bc, splat (i32 10)
  %i.bq = or disjoint <2 x i32> %i.bo, %i.bp
  %i.br = shl nuw nsw <2 x i32> %i.bc, splat (i32 20)
  %i.bs = shl nuw nsw <2 x i32> %i.bi, splat (i32 10)
  %i.bt = or disjoint <2 x i32> %i.bs, %i.br
  %predphi.2 = select <2 x i1> %i.bn, <2 x i32> %i.bt, <2 x i32> %i.bq
  %i.bu = or disjoint <2 x i32> %predphi.2, %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x i32> %i.bu, ptr %i.bv, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !42
  %i.cg = load i32, ptr %1, align 4, !tbaa !42    ; 2 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg               ; 2 uses
  %i.ci = zext i1 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !42
  %i.cl = icmp slt i32 %i.cd, %i.ck
  %spec.select.i = zext i1 %i.ch to i32
  %spec.select.133.i = select i1 %i.cl, i32 2, i32 %spec.select.i ; 2 uses
  %i.cm = zext nneg i32 %spec.select.133.i to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !42
  %i.cp = icmp slt i32 %i.cb, %i.co
  %spec.select.235.i = select i1 %i.cp, i32 3, i32 %spec.select.133.i ; 2 uses
  %i.cq = zext nneg i32 %spec.select.235.i to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42
  %i.ct = icmp slt i32 %i.bz, %i.cs
  %spec.select.337.i = select i1 %i.ct, i32 4, i32 %spec.select.235.i ; 2 uses
  %i.cu = zext nneg i32 %spec.select.337.i to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !42 ; 2 uses
  %i.cx = icmp slt i32 %i.bx, %i.cw
  %i.cy = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.cw)
  %spec.select.439.i = select i1 %i.cx, i32 5, i32 %spec.select.337.i
  %i.cz = zext nneg i32 %spec.select.439.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  store i32 %i.cy, ptr %1, align 4, !tbaa !42
  store i32 %i.cg, ptr %i.da, align 4, !tbaa !42
  %i.db = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  %i.dc = load i32, ptr %i.by, align 4, !tbaa !42
  %i.dd = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.de = load i32, ptr %i.cc, align 4, !tbaa !42
  %i.df = load i32, ptr %i.ce, align 4, !tbaa !42 ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  %spec.select.1.i = select i1 %i.dg, i32 2, i32 1 ; 2 uses
  %i.dh = zext nneg i32 %spec.select.1.i to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !42
  %i.dk = icmp slt i32 %i.dd, %i.dj
  %spec.select.1.1.i = select i1 %i.dk, i32 3, i32 %spec.select.1.i ; 2 uses
  %i.dl = zext nneg i32 %spec.select.1.1.i to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !42
  %i.do = icmp slt i32 %i.dc, %i.dn
  %spec.select.1.2.i = select i1 %i.do, i32 4, i32 %spec.select.1.1.i ; 2 uses
  %i.dp = zext nneg i32 %spec.select.1.2.i to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !42 ; 2 uses
  %i.ds = icmp slt i32 %i.db, %i.dr
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.dr)
  %spec.select.1.3.i = select i1 %i.ds, i32 5, i32 %spec.select.1.2.i
  %i.du = zext nneg i32 %spec.select.1.3.i to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.du
  store i32 %i.dt, ptr %i.ce, align 4, !tbaa !42
  store i32 %i.df, ptr %i.dv, align 4, !tbaa !42
  %i.dw = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  %i.dx = load i32, ptr %i.by, align 4, !tbaa !42
  %i.dy = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.dz = load i32, ptr %i.cc, align 4, !tbaa !42 ; 2 uses
  %i.ea = icmp slt i32 %i.dy, %i.dz
  %spec.select.2.i = select i1 %i.ea, i32 3, i32 2 ; 2 uses
  %i.eb = zext nneg i32 %spec.select.2.i to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !42
  %i.ee = icmp slt i32 %i.dx, %i.ed
  %spec.select.2.1.i = select i1 %i.ee, i32 4, i32 %spec.select.2.i ; 2 uses
  %i.ef = zext nneg i32 %spec.select.2.1.i to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !42 ; 2 uses
  %i.ei = icmp slt i32 %i.dw, %i.eh
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.eh)
  %spec.select.2.2.i = select i1 %i.ei, i32 5, i32 %spec.select.2.1.i
  %i.ek = zext nneg i32 %spec.select.2.2.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ek
  store i32 %i.ej, ptr %i.cc, align 4, !tbaa !42
  store i32 %i.dz, ptr %i.el, align 4, !tbaa !42
  %i.em = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  %i.en = load i32, ptr %i.by, align 4, !tbaa !42
  %i.eo = load i32, ptr %i.ca, align 4, !tbaa !42 ; 2 uses
  %i.ep = icmp slt i32 %i.en, %i.eo
  %spec.select.3.i = select i1 %i.ep, i32 4, i32 3 ; 2 uses
  %i.eq = zext nneg i32 %spec.select.3.i to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !42 ; 2 uses
  %i.et = icmp slt i32 %i.em, %i.es
  %i.eu = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %i.es)
  %spec.select.3.1.i = select i1 %i.et, i32 5, i32 %spec.select.3.i
  %i.ev = zext nneg i32 %spec.select.3.1.i to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ev
  store i32 %i.eu, ptr %i.ca, align 4, !tbaa !42
  store i32 %i.eo, ptr %i.ew, align 4, !tbaa !42
  %i.ex = load i32, ptr %i.bw, align 4, !tbaa !42 ; 2 uses
  %i.ey = load i32, ptr %i.by, align 4, !tbaa !42 ; 3 uses
  %i.ez = icmp slt i32 %i.ex, %i.ey
  %i.fa = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.ey)
  %spec.select.4.i = select i1 %i.ez, i64 5, i64 4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %spec.select.4.i
  store i32 %i.fa, ptr %i.by, align 4, !tbaa !42
  store i32 %i.ey, ptr %i.fb, align 4, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Ifd_ManDsdTest33() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call ptr @Ifd_ManDsdTruths(i32 noundef 6) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val1416 = load i32, ptr %i.d, align 4, !tbaa !36
  %i.e = icmp sgt i32 %.val1416, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !49
  call void @Ifd_ComputeSignature(i64 noundef %i.m, ptr noundef nonnull %i.a)
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.n) ; 0 uses
  %i.p = load i32, ptr %i.a, align 16, !tbaa !42  ; 3 uses
  %i.q = lshr i32 %i.p, 20
  %i.r = and i32 %i.q, 255
  %i.s = lshr i32 %i.p, 10
  %i.t = and i32 %i.s, 255
  %i.u = and i32 %i.p, 255
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.u) ; 0 uses
  %i.w = load i32, ptr %i.g, align 4, !tbaa !42   ; 3 uses
  %i.x = lshr i32 %i.w, 20
  %i.y = and i32 %i.x, 255
  %i.z = lshr i32 %i.w, 10
  %i.aa = and i32 %i.z, 255
  %i.ab = and i32 %i.w, 255
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ab) ; 0 uses
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !42  ; 3 uses
  %i.ae = lshr i32 %i.ad, 20
  %i.af = and i32 %i.ae, 255
  %i.ag = lshr i32 %i.ad, 10
  %i.ah = and i32 %i.ag, 255
  %i.ai = and i32 %i.ad, 255
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr %i.i, align 4, !tbaa !42  ; 3 uses
  %i.al = lshr i32 %i.ak, 20
  %i.am = and i32 %i.al, 255
  %i.an = lshr i32 %i.ak, 10
  %i.ao = and i32 %i.an, 255
  %i.ap = and i32 %i.ak, 255
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ap) ; 0 uses
  %i.ar = load i32, ptr %i.j, align 16, !tbaa !42 ; 3 uses
  %i.as = lshr i32 %i.ar, 20
  %i.at = and i32 %i.as, 255
  %i.au = lshr i32 %i.ar, 10
  %i.av = and i32 %i.au, 255
  %i.aw = and i32 %i.ar, 255
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.aw) ; 0 uses
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !42  ; 3 uses
  %i.az = lshr i32 %i.ay, 20
  %i.ba = and i32 %i.az, 255
  %i.bb = lshr i32 %i.ay, 10
  %i.bc = and i32 %i.bb, 255
  %i.bd = and i32 %i.ay, 255
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ba, i32 noundef %i.bc, i32 noundef %i.bd) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef 6) #29
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val14 = load i32, ptr %i.d, align 4, !tbaa !36
  %i.bg = sext i32 %.val14 to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.b, label %.critedge, !llvm.loop !100

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.bj) #29
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge, %bb.c
  call void @free(ptr noundef nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 1
}

declare void @Kit_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef i32 @Ifd_ManDsdTest() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.Vec_Int_t_, align 8         ; 6 uses
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call ptr @Ifd_ManDsdTruths(i32 noundef 6) ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !36
  store i32 4000000, ptr %i.c, align 8, !tbaa !37
  %i.e = tail call noalias dereferenceable_or_null(32000000) ptr @malloc(i64 noundef 32000000) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !38
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !25
  store i32 4000000, ptr %i.g, align 8, !tbaa !26
  %i.i = tail call noalias dereferenceable_or_null(16000000) ptr @malloc(i64 noundef 16000000) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !27
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 46080, ptr %i.k, align 8, !tbaa !26
  %i.m = tail call noalias dereferenceable_or_null(184320) ptr @malloc(i64 noundef 184320) #28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = tail call ptr @Extra_GreyCodeSchedule(i32 noundef 6) #29 ; 3 uses
  %i.p = tail call ptr @Extra_PermSchedule(i32 noundef 6) #29 ; 3 uses
  %i.q = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val87135 = load i32, ptr %i.q, align 4, !tbaa !36
  %i.r = icmp sgt i32 %.val87135, 0
  br i1 %i.r, label %.lr.ph138, label %.critedge

.lr.ph138:                                        ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph138, %Vec_WrdFree.exit
  %indvars.iv163 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next164, %Vec_WrdFree.exit ] ; 3 uses
  %.0137 = phi i32 [ 0, %.lr.ph138 ], [ %i.fu, %Vec_WrdFree.exit ]
  %.val84 = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val84, i64 %indvars.iv163
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = call ptr @Extra_Truth6AllConfigs(i64 noundef %i.w, ptr noundef %i.o, ptr noundef %i.p, i32 noundef 6) ; 5 uses
  store i32 0, ptr %i.l, align 4, !tbaa !25
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val86 = load i32, ptr %i.y, align 4, !tbaa !36 ; 6 uses
  %i.z = icmp sgt i32 %.val86, 0                  ; 2 uses
  br i1 %i.z, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.val83 = load ptr, ptr %i.aa, align 8, !tbaa !38
  %.promoted125 = load i32, ptr %i.k, align 8, !tbaa !26
  %.promoted128 = load ptr, ptr %i.n, align 8, !tbaa !27
  %wide.trip.count = zext nneg i32 %.val86 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv145 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next146, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge118129 = phi ptr [ %.promoted128, %.lr.ph ], [ %storemerge118130, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i127 = phi i32 [ %.promoted125, %.lr.ph ], [ %spec.select.sink.i126, %Vec_IntPush.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val83, i64 %indvars.iv145 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49 ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = icmp eq i32 %spec.select.sink.i127, %i.af
  br i1 %i.ag, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge118129, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge118129, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ak = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.al = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %i.am = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge118129, null
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call ptr @realloc(ptr noundef nonnull %storemerge118129, i64 noundef %i.ao) #30
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ao) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge118130 = phi ptr [ %storemerge118129, %bb.c ], [ %storemerge118129, %bb.h ], [ %i.aj, %bb.g ], [ %i.ai, %bb.f ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 3 uses
  %spec.select.sink.i126 = phi i32 [ %spec.select.sink.i127, %bb.c ], [ %spec.select.sink.i127, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %storemerge118130, i64 %indvars.iv
  store i32 %i.ae, ptr %i.ar, align 4, !tbaa !42
  %i.as = and i64 %i.ac, 1
  %sext = sub nsw i64 0, %i.as
  %i.at = xor i64 %i.ac, %sext
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !49
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.c, !llvm.loop !101

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.au = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.au, ptr %i.l, align 4, !tbaa !25
  store i32 %spec.select.sink.i126, ptr %i.k, align 8
  store ptr %storemerge118130, ptr %i.n, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %.val17.i = load i32, ptr %i.x, align 8, !tbaa !37
  %i.av = shl nsw i32 %.val17.i, 1
  store i32 %i.av, ptr %0, align 8, !tbaa !26
  %i.aw = shl nsw i32 %.val86, 1
  store i32 %i.aw, ptr %i.t, align 4, !tbaa !25
  %i.ax = getelementptr i8, ptr %i.x, i64 8       ; 3 uses
  %.val16.i = load ptr, ptr %i.ax, align 8, !tbaa !38
  store ptr %.val16.i, ptr %i.u, align 8, !tbaa !27
  %i.ay = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 5 uses
  store i32 0, ptr %i.az, align 4, !tbaa !25
  store i32 100, ptr %i.ay, align 8, !tbaa !26
  %i.ba = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !27
  %i.bc = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #27 ; 6 uses
  store i32 2, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %0, ptr %i.bd, align 8, !tbaa !32
  %i.be = add nsw i32 %.val86, -1                 ; 2 uses
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.backedge, %.critedge2
  %.012.i.i.i = phi i32 [ %i.be, %.critedge2 ], [ %i.bf, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.bf = add i32 %.012.i.i.i, 1                  ; 7 uses
  %i.bg = and i32 %.012.i.i.i, 1
  %.not.not.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.not.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i.backedge

.critedge.i.i.i.backedge:                         ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i
  %.not15.i.i.i = icmp ult i32 %i.bf, 9
  br i1 %.not15.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = add nuw nsw i32 %.01116.i.i.i, 2        ; 3 uses
  %i.bi = mul nuw nsw i32 %i.bh, %i.bh
  %.not.i.i.i = icmp ugt i32 %i.bi, %i.bf
  br i1 %.not.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.l
  %.01116.i.i.i = phi i32 [ %i.bh, %bb.l ], [ 3, %.preheader.i.i.i ] ; 2 uses
  %i.bj = urem i32 %i.bf, %.01116.i.i.i
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.critedge.i.i.i.backedge, label %bb.l

Abc_PrimeCudd.exit.i.i:                           ; preds = %.preheader.i.i.i, %bb.l
  %i.bl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %or.cond.i.i.i.i = icmp samesign ult i32 %.012.i.i.i, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.bf ; 2 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = zext nneg i32 %spec.store.select.i.i.i.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = call noalias ptr @malloc(i64 noundef %i.bo) #28 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !27
  store i32 %i.bf, ptr %i.bm, align 4, !tbaa !25
  %.not.i8.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i8.i.i, label %Vec_IntStartFull.exit.i.i, label %bb.m

bb.m:                                             ; preds = %Abc_PrimeCudd.exit.i.i
  %i.br = zext nneg i32 %i.bf to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bp, i8 -1, i64 %i.bs, i1 false)
  br label %Vec_IntStartFull.exit.i.i

Vec_IntStartFull.exit.i.i:                        ; preds = %bb.m, %Abc_PrimeCudd.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bl, ptr %i.bt, align 8, !tbaa !33
  %i.bu = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %or.cond.i.i.i = icmp ult i32 %i.be, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val86 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 0, ptr %i.bv, align 4, !tbaa !36
  store i32 %spec.store.select.i.i.i, ptr %i.bu, align 8, !tbaa !37
  %.not.i9.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i9.i.i, label %Hsh_IntManStart.exit.i, label %bb.n

bb.n:                                             ; preds = %Vec_IntStartFull.exit.i.i
  %i.bw = sext i32 %spec.store.select.i.i.i to i64
  %i.bx = shl nsw i64 %i.bw, 3
  %i.by = call noalias ptr @malloc(i64 noundef %i.bx) #28
  br label %Hsh_IntManStart.exit.i

Hsh_IntManStart.exit.i:                           ; preds = %bb.n, %Vec_IntStartFull.exit.i.i
  %i.bz = phi ptr [ %i.by, %bb.n ], [ null, %Vec_IntStartFull.exit.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.bu, ptr %i.cb, align 8, !tbaa !39
  br i1 %i.z, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %Hsh_IntManStart.exit.i
  %wide.trip.count155 = zext nneg i32 %.val86 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %Vec_IntPush.exit.i
  %indvars.iv150 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next151, %Vec_IntPush.exit.i ] ; 4 uses
  %i.cc = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.cq, %Vec_IntPush.exit.i ] ; 6 uses
  %i.cd = phi i32 [ 100, %.lr.ph.i.preheader ], [ %i.cr, %Vec_IntPush.exit.i ] ; 7 uses
  %indvars154 = trunc i64 %indvars.iv150 to i32
  %i.ce = call fastcc i32 @Hsh_IntManAdd(ptr noundef nonnull %i.bc, i32 noundef %indvars154)
  %i.cf = zext i32 %i.cd to i64
  %i.cg = icmp eq i64 %indvars.iv150, %i.cf
  br i1 %i.cg, label %bb.o, label %Vec_IntPush.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ch = icmp slt i32 %i.cd, 16
  br i1 %i.ch, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not9.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.p
  %i.cj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.s:                                             ; preds = %bb.o
  %i.ck = icmp samesign ult i32 %i.cd, 1073741823
  %i.cl = shl nuw nsw i32 %i.cd, 1
  %spec.select.i.i = select i1 %i.ck, i32 %i.cl, i32 2147483647 ; 4 uses
  %.not.i9.i18.i = icmp samesign ult i32 %i.cd, %spec.select.i.i
  br i1 %.not.i9.i18.i, label %bb.t, label %Vec_IntPush.exit.i

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i.i = icmp eq ptr %i.cc, null
  %i.cm = zext nneg i32 %spec.select.i.i to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.cn) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.cp = call noalias ptr @malloc(i64 noundef %i.cn) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %storemerge.i = phi ptr [ %i.cj, %bb.r ], [ %i.ci, %bb.q ], [ %i.co, %bb.u ], [ %i.cp, %bb.v ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i.i, %bb.u ], [ %spec.select.i.i, %bb.v ] ; 2 uses
  store ptr %storemerge.i, ptr %i.bb, align 8, !tbaa !27
  store i32 %spec.select.sink.i.i, ptr %i.ay, align 8, !tbaa !26
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.s, %.lr.ph.i
  %i.cq = phi ptr [ %i.cc, %.lr.ph.i ], [ %i.cc, %bb.s ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.cr = phi i32 [ %i.cd, %.lr.ph.i ], [ %i.cd, %bb.s ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 3 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv.next151 to i32
  store i32 %i.cs, ptr %i.az, align 4, !tbaa !25
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv150
  store i32 %i.ce, ptr %i.ct, align 4, !tbaa !42
  %exitcond156 = icmp eq i64 %indvars.iv.next151, %wide.trip.count155
  br i1 %exitcond156, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !102

._crit_edge.loopexit.i:                           ; preds = %Vec_IntPush.exit.i
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %Hsh_IntManStart.exit.i
  %i.cu = phi ptr [ %i.cq, %._crit_edge.loopexit.i ], [ %i.ba, %Hsh_IntManStart.exit.i ] ; 9 uses
  %i.cv = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.bp, %Hsh_IntManStart.exit.i ] ; 2 uses
  %.not.i.i19.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i19.i, label %Vec_IntFree.exit.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef nonnull %i.cv) #29
  br label %Vec_IntFree.exit.i.i

Vec_IntFree.exit.i.i:                             ; preds = %bb.w, %._crit_edge.i
  call void @free(ptr noundef nonnull %i.bl) #29
  %i.cw = load ptr, ptr %i.ca, align 8, !tbaa !38 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i4.i.i, label %Hsh_WrdManHashArray.exit, label %bb.x

bb.x:                                             ; preds = %Vec_IntFree.exit.i.i
  call void @free(ptr noundef nonnull %i.cw) #29
  br label %Hsh_WrdManHashArray.exit

Hsh_WrdManHashArray.exit:                         ; preds = %Vec_IntFree.exit.i.i, %bb.x
  call void @free(ptr noundef nonnull %i.bu) #29
  call void @free(ptr noundef nonnull %i.bc) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %.val79 = load i32, ptr %i.az, align 4, !tbaa !25 ; 5 uses
  %i.cx = icmp sgt i32 %.val79, 0
  br i1 %i.cx, label %.lr.ph133, label %.critedge4.Vec_IntUniqify.exit_crit_edge

.lr.ph133:                                        ; preds = %Hsh_WrdManHashArray.exit
  %i.cy = trunc nuw nsw i64 %indvars.iv163 to i32
  %i.cz = shl i32 %i.cy, 17
  %wide.trip.count160 = zext nneg i32 %.val79 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph133, %bb.aq
  %indvars.iv157 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next158, %bb.aq ] ; 5 uses
  %.069132 = phi i32 [ 0, %.lr.ph133 ], [ %.1, %bb.aq ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv157
  %i.db = load i32, ptr %i.da, align 4, !tbaa !42
  %i.dc = icmp eq i32 %.069132, %i.db
  br i1 %i.dc, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %bb.y
  %.val82 = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val82, i64 %indvars.iv157
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.df = load i32, ptr %i.d, align 4, !tbaa !36  ; 7 uses
  %i.dg = load i32, ptr %i.c, align 8, !tbaa !37
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.aa, label %.Vec_WrdPush.exit_crit_edge

.Vec_WrdPush.exit_crit_edge:                      ; preds = %bb.z
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !38
  br label %Vec_WrdPush.exit

bb.aa:                                            ; preds = %bb.z
  %i.di = icmp slt i32 %i.df, 16
  br i1 %i.di, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !38  ; 2 uses
  %.not9.i.i95 = icmp eq ptr %i.dj, null
  br i1 %.not9.i.i95, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dj, i64 noundef 128) #30
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.ad:                                            ; preds = %bb.ab
  %i.dl = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.ae:                                            ; preds = %bb.aa
  %i.dm = icmp samesign ult i32 %i.df, 1073741823
  %i.dn = shl nuw nsw i32 %i.df, 1
  %spec.select.i91 = select i1 %i.dm, i32 %i.dn, i32 2147483647 ; 4 uses
  %.not.i9.i92 = icmp samesign ult i32 %i.df, %spec.select.i91
  %.pre167 = load ptr, ptr %i.f, align 8, !tbaa !38 ; 3 uses
  br i1 %.not.i9.i92, label %bb.af, label %Vec_WrdPush.exit

bb.af:                                            ; preds = %bb.ae
  %.not9.i10.i93 = icmp eq ptr %.pre167, null
  %i.do = zext nneg i32 %spec.select.i91 to i64
  %i.dp = shl nuw nsw i64 %i.do, 3                ; 2 uses
  br i1 %.not9.i10.i93, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = call ptr @realloc(ptr noundef nonnull %.pre167, i64 noundef %i.dp) #30
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.ah:                                            ; preds = %bb.af
  %i.dr = call noalias ptr @malloc(i64 noundef %i.dp) #28
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.ad
  %storemerge = phi ptr [ %i.dl, %bb.ad ], [ %i.dk, %bb.ac ], [ %i.dq, %bb.ag ], [ %i.dr, %bb.ah ] ; 2 uses
  %spec.select.sink.i94 = phi i32 [ 16, %bb.ad ], [ 16, %bb.ac ], [ %spec.select.i91, %bb.ag ], [ %spec.select.i91, %bb.ah ]
  store ptr %storemerge, ptr %i.f, align 8, !tbaa !38
  store i32 %spec.select.sink.i94, ptr %i.c, align 8, !tbaa !37
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.Vec_WrdPush.exit_crit_edge, %bb.ae, %Vec_WrdGrow.exit11.sink.split.i
  %i.ds = phi ptr [ %.pre, %.Vec_WrdPush.exit_crit_edge ], [ %.pre167, %bb.ae ], [ %storemerge, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.dt = add nsw i32 %i.df, 1
  store i32 %i.dt, ptr %i.d, align 4, !tbaa !36
  %i.du = sext i32 %i.df to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.du
  store i64 %i.de, ptr %i.dv, align 8, !tbaa !49
  %.val80 = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val80, i64 %indvars.iv157
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !42
  %i.dy = shl i32 %i.dx, 16
  %i.dz = or i32 %i.cz, %i.dy
  %i.ea = trunc nuw nsw i64 %indvars.iv157 to i32
  %i.eb = or i32 %i.dz, %i.ea
  %i.ec = load i32, ptr %i.h, align 4, !tbaa !25  ; 7 uses
  %i.ed = load i32, ptr %i.g, align 8, !tbaa !26
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ai, label %Vec_WrdPush.exit.Vec_IntPush.exit103_crit_edge

Vec_WrdPush.exit.Vec_IntPush.exit103_crit_edge:   ; preds = %Vec_WrdPush.exit
  %.pre168 = load ptr, ptr %i.j, align 8, !tbaa !27
  br label %Vec_IntPush.exit103

bb.ai:                                            ; preds = %Vec_WrdPush.exit
  %i.ef = icmp slt i32 %i.ec, 16
  br i1 %i.ef, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %.not9.i.i101 = icmp eq ptr %i.eg, null
  br i1 %.not9.i.i101, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eg, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i99

bb.al:                                            ; preds = %bb.aj
  %i.ei = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i99

bb.am:                                            ; preds = %bb.ai
  %i.ej = icmp samesign ult i32 %i.ec, 1073741823
  %i.ek = shl nuw nsw i32 %i.ec, 1
  %spec.select.i96 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 4 uses
  %.not.i9.i97 = icmp samesign ult i32 %i.ec, %spec.select.i96
  %.pre169 = load ptr, ptr %i.j, align 8, !tbaa !27 ; 3 uses
  br i1 %.not.i9.i97, label %bb.an, label %Vec_IntPush.exit103

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i98 = icmp eq ptr %.pre169, null
  %i.el = zext nneg i32 %spec.select.i96 to i64
  %i.em = shl nuw nsw i64 %i.el, 2                ; 2 uses
  br i1 %.not9.i10.i98, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = call ptr @realloc(ptr noundef nonnull %.pre169, i64 noundef %i.em) #30
  br label %Vec_IntGrow.exit11.sink.split.i99

bb.ap:                                            ; preds = %bb.an
  %i.eo = call noalias ptr @malloc(i64 noundef %i.em) #28
  br label %Vec_IntGrow.exit11.sink.split.i99

Vec_IntGrow.exit11.sink.split.i99:                ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.al
  %storemerge117 = phi ptr [ %i.ei, %bb.al ], [ %i.eh, %bb.ak ], [ %i.en, %bb.ao ], [ %i.eo, %bb.ap ] ; 2 uses
  %spec.select.sink.i100 = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i96, %bb.ao ], [ %spec.select.i96, %bb.ap ]
  store ptr %storemerge117, ptr %i.j, align 8, !tbaa !27
  store i32 %spec.select.sink.i100, ptr %i.g, align 8, !tbaa !26
  br label %Vec_IntPush.exit103

Vec_IntPush.exit103:                              ; preds = %Vec_WrdPush.exit.Vec_IntPush.exit103_crit_edge, %bb.am, %Vec_IntGrow.exit11.sink.split.i99
  %i.ep = phi ptr [ %.pre168, %Vec_WrdPush.exit.Vec_IntPush.exit103_crit_edge ], [ %.pre169, %bb.am ], [ %storemerge117, %Vec_IntGrow.exit11.sink.split.i99 ]
  %i.eq = add nsw i32 %i.ec, 1
  store i32 %i.eq, ptr %i.h, align 4, !tbaa !25
  %i.er = sext i32 %i.ec to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.er
  store i32 %i.eb, ptr %i.es, align 4, !tbaa !42
  %i.et = add nsw i32 %.069132, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.y, %Vec_IntPush.exit103
  %.1 = phi i32 [ %i.et, %Vec_IntPush.exit103 ], [ %.069132, %bb.y ]
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %.critedge4, label %bb.y, !llvm.loop !103

.critedge4:                                       ; preds = %bb.aq
  %i.eu = icmp eq i32 %.val79, 1
  br i1 %i.eu, label %.critedge4.Vec_IntUniqify.exit_crit_edge, label %.lr.ph.i105

.critedge4.Vec_IntUniqify.exit_crit_edge:         ; preds = %Hsh_WrdManHashArray.exit, %.critedge4
  %.val78.pre = load i32, ptr %i.az, align 4, !tbaa !25
  br label %Vec_IntUniqify.exit

.lr.ph.i105:                                      ; preds = %.critedge4
  %i.ev = zext nneg i32 %.val79 to i64            ; 2 uses
  call void @qsort(ptr noundef nonnull %i.cu, i64 noundef %i.ev, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #29
  %i.ew = add nsw i64 %i.ev, -1                   ; 3 uses
  %xtraiter = and i64 %i.ew, 1
  %i.ex = icmp eq i32 %.val79, 2
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph.i105.new

.lr.ph.i105.new:                                  ; preds = %.lr.ph.i105
  %unroll_iter = and i64 %i.ew, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph.i105.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i105.new ], [ %indvars.iv.next.i.1, %bb.av ] ; 3 uses
  %.023.i = phi i32 [ 1, %.lr.ph.i105.new ], [ %.1.i.1, %bb.av ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i105.new ], [ %niter.next.1, %bb.av ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !42 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ey, i64 -4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.ez, %i.fb
  br i1 %.not.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = add nsw i32 %.023.i, 1
  %i.fd = sext i32 %.023.i to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.fd
  store i32 %i.ez, ptr %i.fe, align 4, !tbaa !42
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1.i = phi i32 [ %i.fc, %bb.as ], [ %.023.i, %bb.ar ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  %i.fi = load i32, ptr %i.ff, align 4, !tbaa !42
  %.not.i.1 = icmp eq i32 %i.fh, %i.fi
  br i1 %.not.i.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fj = add nsw i32 %.1.i, 1
  %i.fk = sext i32 %.1.i to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.fk
  store i32 %i.fh, ptr %i.fl, align 4, !tbaa !42
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1.i.1 = phi i32 [ %i.fj, %bb.au ], [ %.1.i, %bb.at ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i104.unr-lcssa, label %bb.ar, !llvm.loop !104

._crit_edge.i104.unr-lcssa:                       ; preds = %bb.av
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i104, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i104.unr-lcssa, %.lr.ph.i105
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i105 ], [ %indvars.iv.next.i.1, %._crit_edge.i104.unr-lcssa ]
  %.023.i.epil.init = phi i32 [ 1, %.lr.ph.i105 ], [ %.1.i.1, %._crit_edge.i104.unr-lcssa ] ; 3 uses
  %lcmp.mod209 = trunc i64 %i.ew to i1
  call void @llvm.assume(i1 %lcmp.mod209)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !42 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fm, i64 -4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !42
  %.not.i.epil = icmp eq i32 %i.fn, %i.fp
  br i1 %.not.i.epil, label %._crit_edge.i104, label %bb.aw

bb.aw:                                            ; preds = %.epil.preheader
  %i.fq = add nsw i32 %.023.i.epil.init, 1
  %i.fr = sext i32 %.023.i.epil.init to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.fr
  store i32 %i.fn, ptr %i.fs, align 4, !tbaa !42
  br label %._crit_edge.i104

._crit_edge.i104:                                 ; preds = %.epil.preheader, %bb.aw, %._crit_edge.i104.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i104.unr-lcssa ], [ %i.fq, %bb.aw ], [ %.023.i.epil.init, %.epil.preheader ] ; 2 uses
  store i32 %.1.i.lcssa, ptr %i.az, align 4, !tbaa !25
  %.pre171 = load ptr, ptr %i.bb, align 8, !tbaa !27
  br label %Vec_IntUniqify.exit

Vec_IntUniqify.exit:                              ; preds = %.critedge4.Vec_IntUniqify.exit_crit_edge, %._crit_edge.i104
  %i.ft = phi ptr [ %i.cu, %.critedge4.Vec_IntUniqify.exit_crit_edge ], [ %.pre171, %._crit_edge.i104 ] ; 2 uses
  %.val78 = phi i32 [ %.val78.pre, %.critedge4.Vec_IntUniqify.exit_crit_edge ], [ %.1.i.lcssa, %._crit_edge.i104 ]
  %i.fu = add nsw i32 %.val78, %.0137             ; 2 uses
  %.not.i107 = icmp eq ptr %i.ft, null
  br i1 %.not.i107, label %Vec_IntFree.exit, label %bb.ax

bb.ax:                                            ; preds = %Vec_IntUniqify.exit
  call void @free(ptr noundef nonnull %i.ft) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntUniqify.exit, %bb.ax
  call void @free(ptr noundef nonnull %i.ay) #29
  %i.fv = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  %.not.i108 = icmp eq ptr %i.fv, null
  br i1 %.not.i108, label %Vec_WrdFree.exit, label %bb.ay

bb.ay:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.fv) #29
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_IntFree.exit, %bb.ay
  call void @free(ptr noundef nonnull %i.x) #29
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %.val87 = load i32, ptr %i.q, align 4, !tbaa !36
  %i.fw = sext i32 %.val87 to i64
  %i.fx = icmp slt i64 %indvars.iv.next164, %i.fw
  br i1 %i.fx, label %bb.b, label %.critedge.loopexit, !llvm.loop !105

.critedge.loopexit:                               ; preds = %Vec_WrdFree.exit
  %.pre172 = load ptr, ptr %i.n, align 8, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.fy = phi ptr [ %i.m, %bb.a ], [ %.pre172, %.critedge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.fu, %.critedge.loopexit ]
  %.not.i109 = icmp eq ptr %i.fy, null
  br i1 %.not.i109, label %Vec_IntFree.exit110, label %bb.az

bb.az:                                            ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.fy) #29
  br label %Vec_IntFree.exit110

Vec_IntFree.exit110:                              ; preds = %.critedge, %bb.az
  call void @free(ptr noundef nonnull %i.k) #29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !38 ; 2 uses
  %.not.i111 = icmp eq ptr %i.ga, null
  br i1 %.not.i111, label %Vec_WrdFree.exit112, label %bb.ba

bb.ba:                                            ; preds = %Vec_IntFree.exit110
  call void @free(ptr noundef nonnull %i.ga) #29
  br label %Vec_WrdFree.exit112

Vec_WrdFree.exit112:                              ; preds = %Vec_IntFree.exit110, %bb.ba
  call void @free(ptr noundef nonnull %i.b) #29
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %Vec_WrdFree.exit112
  call void @free(ptr noundef nonnull %i.p) #29
  br label %bb.bc

bb.bc:                                            ; preds = %Vec_WrdFree.exit112, %bb.bb
  %.not75 = icmp eq ptr %i.o, null
  br i1 %.not75, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.o) #29
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.0.lcssa) ; 0 uses
  %i.gc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 6) #29 ; 0 uses
  %i.gd = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21) ; 3 uses
  %.val88 = load ptr, ptr %i.f, align 8, !tbaa !38 ; 3 uses
  %.val85 = load i32, ptr %i.d, align 4, !tbaa !36
  %i.ge = sext i32 %.val85 to i64
  %i.gf = call i64 @fwrite(ptr noundef %.val88, i64 noundef 8, i64 noundef %i.ge, ptr noundef %i.gd) ; 0 uses
  %.val90 = load ptr, ptr %i.j, align 8, !tbaa !27 ; 3 uses
  %.val77 = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.gg = sext i32 %.val77 to i64
  %i.gh = call i64 @fwrite(ptr noundef %.val90, i64 noundef 4, i64 noundef %i.gg, ptr noundef %i.gd) ; 0 uses
  %i.gi = call i32 @fclose(ptr noundef %i.gd)     ; 0 uses
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %i.a, i32 noundef %.val77) ; 0 uses
  %.not.i113 = icmp eq ptr %.val88, null
  br i1 %.not.i113, label %Vec_WrdFree.exit114, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %.val88) #29
  br label %Vec_WrdFree.exit114

Vec_WrdFree.exit114:                              ; preds = %bb.be, %bb.bf
  call void @free(ptr noundef nonnull %i.c) #29
  %.not.i115 = icmp eq ptr %.val90, null
  br i1 %.not.i115, label %Vec_IntFree.exit116, label %bb.bg

bb.bg:                                            ; preds = %Vec_WrdFree.exit114
  call void @free(ptr noundef nonnull %.val90) #29
  br label %Vec_IntFree.exit116

Vec_IntFree.exit116:                              ; preds = %Vec_WrdFree.exit114, %bb.bg
  call void @free(ptr noundef nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 1
}

declare ptr @Extra_GreyCodeSchedule(i32 noundef) local_unnamed_addr #8

declare ptr @Extra_PermSchedule(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef i32 @Ifd_ManDsdTest55() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !108
  %.neg27 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109
  %.neg = sdiv i64 %i.e, -1000
  %.neg28 = add i64 %.neg, %.neg27
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg28, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.f = call i32 @Extra_FileSize(ptr noundef nonnull @.str.23) #29 ; 2 uses
  %i.g = sdiv i32 %i.f, 12                        ; 6 uses
  %i.h = call i32 @llvm.umax.i32(i32 %i.g, i32 15)
  %spec.store.select.i = add nsw i32 %i.h, 1      ; 2 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = sext i32 %spec.store.select.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = call noalias ptr @malloc(i64 noundef %i.j) #28
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %Abc_Clock.exit ] ; 4 uses
  %i.m = add nsw i32 %i.g, -1                     ; 2 uses
  %or.cond.i19 = icmp ult i32 %i.m, 15
  %spec.store.select.i20 = select i1 %or.cond.i19, i32 16, i32 %i.g ; 4 uses
  %.not.i21 = icmp eq i32 %spec.store.select.i20, 0 ; 2 uses
  br i1 %.not.i21, label %Vec_IntAlloc.exit, label %bb.d

bb.d:                                             ; preds = %Vec_WrdAlloc.exit
  %i.n = sext i32 %spec.store.select.i20 to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Vec_WrdAlloc.exit, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ null, %Vec_WrdAlloc.exit ] ; 3 uses
  %i.r = call noalias ptr @fopen(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) ; 2 uses
  %i.s = sext i32 %i.g to i64                     ; 3 uses
  %i.t = call i64 @fread(ptr noundef %i.l, i64 noundef 8, i64 noundef %i.s, ptr noundef %i.r) ; 0 uses
  %i.u = call i64 @fread(ptr noundef %i.q, i64 noundef 4, i64 noundef %i.s, ptr noundef %i.r) ; 0 uses
  %i.v = shl nsw i32 %i.g, 1                      ; 3 uses
  %i.w = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.x = add nsw i32 %i.v, -1
  %or.cond.i.i = icmp ult i32 %i.x, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.v ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %spec.store.select.i.i, ptr %i.w, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit
  %i.z = sext i32 %spec.store.select.i.i to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = call noalias ptr @malloc(i64 noundef %i.aa) #28
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.e, %Vec_IntAlloc.exit
  %i.ac = phi ptr [ %i.ab, %bb.e ], [ null, %Vec_IntAlloc.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !27
  %i.ae = shl nsw i64 %i.s, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr align 8 %i.l, i64 %i.ae, i1 false)
  store i32 %i.v, ptr %i.y, align 4, !tbaa !25
  %i.af = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #27 ; 6 uses
  store i32 2, ptr %i.af, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.backedge, %Vec_IntAlloc.exit.i
  %.012.i.i.i = phi i32 [ %i.m, %Vec_IntAlloc.exit.i ], [ %i.ah, %.critedge.i.i.i.backedge ] ; 3 uses
  %i.ah = add i32 %.012.i.i.i, 1                  ; 7 uses
  %i.ai = and i32 %.012.i.i.i, 1
  %.not.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.not.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i.backedge

.critedge.i.i.i.backedge:                         ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i.i
  %.not15.i.i.i = icmp ult i32 %i.ah, 9
  br i1 %.not15.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nuw nsw i32 %.01116.i.i.i, 2        ; 3 uses
  %i.ak = mul nuw nsw i32 %i.aj, %i.aj
  %.not.i.i.i = icmp ugt i32 %i.ak, %i.ah
  br i1 %.not.i.i.i, label %Abc_PrimeCudd.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.f
  %.01116.i.i.i = phi i32 [ %i.aj, %bb.f ], [ 3, %.preheader.i.i.i ] ; 2 uses
  %i.al = urem i32 %i.ah, %.01116.i.i.i
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.critedge.i.i.i.backedge, label %bb.f

Abc_PrimeCudd.exit.i.i:                           ; preds = %.preheader.i.i.i, %bb.f
  %i.an = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %or.cond.i.i.i.i = icmp samesign ult i32 %.012.i.i.i, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.ah ; 2 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.an, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = zext nneg i32 %spec.store.select.i.i.i.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = call noalias ptr @malloc(i64 noundef %i.aq) #28 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !27
  store i32 %i.ah, ptr %i.ao, align 4, !tbaa !25
  %.not.i8.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i.i, label %Vec_IntStartFull.exit.i.i, label %bb.g

bb.g:                                             ; preds = %Abc_PrimeCudd.exit.i.i
  %i.at = zext nneg i32 %i.ah to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 -1, i64 %i.au, i1 false)
  br label %Vec_IntStartFull.exit.i.i

Vec_IntStartFull.exit.i.i:                        ; preds = %bb.g, %Abc_PrimeCudd.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.an, ptr %i.av, align 8, !tbaa !33
  %i.aw = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !36
  store i32 %spec.store.select.i20, ptr %i.aw, align 8, !tbaa !37
  br i1 %.not.i21, label %Hsh_IntManStart.exit.i, label %bb.h

bb.h:                                             ; preds = %Vec_IntStartFull.exit.i.i
  %i.ay = sext i32 %spec.store.select.i20 to i64
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = call noalias ptr @malloc(i64 noundef %i.az) #28
  br label %Hsh_IntManStart.exit.i

Hsh_IntManStart.exit.i:                           ; preds = %bb.h, %Vec_IntStartFull.exit.i.i
  %i.bb = phi ptr [ %i.ba, %bb.h ], [ null, %Vec_IntStartFull.exit.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.aw, ptr %i.bd, align 8, !tbaa !39
  %i.be = icmp sgt i32 %i.f, 11
  br i1 %i.be, label %.lr.ph.i, label %Hsh_WrdManHashArrayStart.exit

.lr.ph.i:                                         ; preds = %Hsh_IntManStart.exit.i, %.lr.ph.i
  %.025.i = phi i32 [ %i.bg, %.lr.ph.i ], [ 0, %Hsh_IntManStart.exit.i ] ; 2 uses
  %i.bf = call fastcc i32 @Hsh_IntManAdd(ptr noundef nonnull %i.af, i32 noundef %.025.i) ; 0 uses
  %i.bg = add nuw nsw i32 %.025.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bg, %i.g
  br i1 %exitcond.not.i, label %Hsh_WrdManHashArrayStart.exit.loopexit, label %.lr.ph.i, !llvm.loop !106

Hsh_WrdManHashArrayStart.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !27
  br label %Hsh_WrdManHashArrayStart.exit

Hsh_WrdManHashArrayStart.exit:                    ; preds = %Hsh_WrdManHashArrayStart.exit.loopexit, %Hsh_IntManStart.exit.i
  %i.bh = phi ptr [ %.pre, %Hsh_WrdManHashArrayStart.exit.loopexit ], [ %i.ar, %Hsh_IntManStart.exit.i ] ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i22, label %Vec_IntFree.exit.i, label %bb.i

bb.i:                                             ; preds = %Hsh_WrdManHashArrayStart.exit
  call void @free(ptr noundef nonnull %i.bh) #29
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.i, %Hsh_WrdManHashArrayStart.exit
  call void @free(ptr noundef nonnull %i.an) #29
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !38 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bi, null
  br i1 %.not.i4.i, label %Hsh_IntManStop.exit, label %bb.j

bb.j:                                             ; preds = %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.bi) #29
  br label %Hsh_IntManStop.exit

Hsh_IntManStop.exit:                              ; preds = %Vec_IntFree.exit.i, %bb.j
  call void @free(ptr noundef nonnull %i.aw) #29
  call void @free(ptr noundef nonnull %i.af) #29
  %.not.i23 = icmp eq ptr %i.l, null
  br i1 %.not.i23, label %Vec_WrdFree.exit, label %bb.k

bb.k:                                             ; preds = %Hsh_IntManStop.exit
  call void @free(ptr noundef nonnull %i.l) #29
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Hsh_IntManStop.exit, %bb.k
  %.not.i24 = icmp eq ptr %i.q, null
  br i1 %.not.i24, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %Vec_WrdFree.exit
  call void @free(ptr noundef nonnull %i.q) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WrdFree.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.bj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #29
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %Abc_Clock.exit26, label %bb.m

bb.m:                                             ; preds = %Vec_IntFree.exit
  %i.bl = load i64, ptr %0, align 8, !tbaa !108
  %i.bm = mul nsw i64 %i.bl, 1000000
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !109
  %i.bp = sdiv i64 %i.bo, 1000
  %i.bq = add nsw i64 %i.bp, %i.bm
  br label %Abc_Clock.exit26

Abc_Clock.exit26:                                 ; preds = %Vec_IntFree.exit, %bb.m
  %.0.i25 = phi i64 [ %i.bq, %bb.m ], [ -1, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  %i.br = add i64 %.0.i25, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25)
  %i.bs = sitofp i64 %i.br to double
  %i.bt = fdiv double %i.bs, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, double noundef %i.bt)
  ret i32 1
}

declare i32 @Extra_FileSize(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !42
  %i.b = load i32, ptr %1, align 4, !tbaa !42
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.a)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !42
  %i.b = load i32, ptr %1, align 4, !tbaa !42
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #20 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !42
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #29 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #29
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #29 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !51
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #31
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #29 ; 0 uses
  call void @free(ptr noundef %i.d) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !51, !noalias !113
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #29, !inline_history !112 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #8

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #25

attributes #0 = { nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS10Ifd_Obj_t_", !14, i64 0}
!16 = !{!"p1 _ZTS10Vec_Int_t_", !14, i64 0}
!17 = !{!"p1 _ZTS13Hsh_IntMan_t_", !14, i64 0}
!18 = !{!"p1 _ZTS10Vec_Wrd_t_", !14, i64 0}
!19 = !{!"Ifd_Man_t_", !15, i64 0, !10, i64 8, !10, i64 12, !16, i64 16, !16, i64 24, !17, i64 32, !16, i64 40, !18, i64 48, !16, i64 56, !16, i64 64}
!20 = !{!19, !10, i64 12}
!21 = !{!19, !10, i64 8}
!22 = !{!19, !15, i64 0}
!23 = !{!"p1 int", !14, i64 0}
!24 = !{!"Vec_Int_t_", !10, i64 0, !10, i64 4, !23, i64 8}
!25 = !{!24, !10, i64 4}
!26 = !{!24, !10, i64 0}
!27 = !{!24, !23, i64 8}
!28 = !{!19, !16, i64 16}
!29 = !{!19, !16, i64 24}
!30 = !{!"Hsh_IntMan_t_", !10, i64 0, !16, i64 8, !16, i64 16, !18, i64 24}
!31 = !{!30, !10, i64 0}
!32 = !{!30, !16, i64 8}
!33 = !{!30, !16, i64 16}
!34 = !{!"p1 long", !14, i64 0}
!35 = !{!"Vec_Wrd_t_", !10, i64 0, !10, i64 4, !34, i64 8}
!36 = !{!35, !10, i64 4}
!37 = !{!35, !10, i64 0}
!38 = !{!35, !34, i64 8}
!39 = !{!30, !18, i64 24}
!40 = !{!19, !17, i64 32}
!41 = !{!19, !16, i64 40}
!42 = !{!10, !10, i64 0}
!43 = !{!19, !16, i64 64}
!44 = !{!19, !18, i64 48}
!45 = !{!19, !16, i64 56}
!46 = !{!9, !9, i64 0}
!47 = !{!"llvm.loop.peeled.count", i32 1}
!48 = !{!"long", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 omnipotent char", !14, i64 0}
!53 = !{!"Vec_Str_t_", !10, i64 0, !10, i64 4, !52, i64 8}
!54 = !{!53, !10, i64 4}
!55 = !{!53, !10, i64 0}
!56 = !{!53, !52, i64 8}
!57 = !{!"Hsh_IntObj_t_", !10, i64 0, !10, i64 4}
!58 = !{!57, !10, i64 0}
!59 = !{!52, !52, i64 0}
!60 = distinct !{!60, !13}
!61 = !{!16, !16, i64 0}
!62 = !{!18, !18, i64 0}
!63 = distinct !{!63, !13, !47}
!64 = distinct !{!64, !13, !47}
!65 = distinct !{!65, !13, !47}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = !{!57, !10, i64 4}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13, !92, !93}
!88 = distinct !{!88, !13, !93, !92}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13, !94}
!91 = distinct !{!91, !13}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"llvm.loop.peeled.count", i32 2}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = !{!"timespec", !48, i64 0, !48, i64 8}
!108 = !{!107, !48, i64 0}
!109 = !{!107, !48, i64 8}
!110 = distinct !{!110, i1 true, !"vprintf"}
!111 = distinct !{!111, !110, !"vprintf: argument 0"}
!112 = distinct !{null}
!113 = !{!111}
end_hunk_0
