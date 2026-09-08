Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmPre?download=true
inline.NumInlined: 303
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Ifd_ManDsdTruths:bb.a
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
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #28 ; 13 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #27 ; 8 uses
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
  %i.o = add nsw i32 %0, -1                       ; 2 uses
  %i.p = zext i32 %i.o to i64
  %wide.trip.count121 = zext i32 %0 to i64        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %xtraiter = and i64 %wide.trip.count121, 1
  %i.r = icmp eq i32 %0, 1
  %unroll_iter = and i64 %wide.trip.count121, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod141 = trunc i32 %0 to i1
  br label %bb.b

bb.b:                                             ; preds = %.preheader98, %._crit_edge105
  %indvars.iv124 = phi i64 [ 0, %.preheader98 ], [ %indvars.iv.next125, %._crit_edge105 ] ; 7 uses
  %storemerge110 = phi ptr [ %i.c, %.preheader98 ], [ %storemerge111, %._crit_edge105 ] ; 6 uses
  %spec.select.sink.i108 = phi i32 [ 100, %.preheader98 ], [ %spec.select.sink.i107, %._crit_edge105 ] ; 3 uses
  %.0 = phi i32 [ %i.o, %.preheader98 ], [ %.2, %._crit_edge105 ] ; 3 uses
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
  br i1 %i.ay, label %.lr.ph104.preheader, label %bb.l

.lr.ph104.preheader:                              ; preds = %bb.l, %.preheader
  %.1103.ph = phi i32 [ %0, %.preheader ], [ %spec.select139, %bb.l ]
  br label %.lr.ph104

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
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.thread ], [ 1, %.lr.ph104.preheader ] ; 6 uses
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
  %.2 = phi i32 [ %.1103, %bb.q ], [ %spec.select, %bb.s ], [ %.1103, %bb.r ], [ %.1103, %bb.p ] ; 3 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !90

._crit_edge105:                                   ; preds = %.thread
  %i.ci = icmp slt i32 %.2, %0
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
end_hunk_0
