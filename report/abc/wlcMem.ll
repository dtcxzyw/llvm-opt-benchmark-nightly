Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcMem?download=true
inline.NumInlined: 785
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Wlc_NtkExploreMem2_rec:bb.a

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %tailrecurse, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.tr4047, i64 4    ; 2 uses
  %.val3349 = load i32, ptr %i.m, align 4, !tbaa !29 ; 2 uses
  %i.n = icmp sgt i32 %.val3349, 0
  br i1 %i.n, label %.lr.ph53, label %.loopexit.sink.split

.lr.ph53:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.tr4047, i64 16 ; 2 uses
  br label %bb.e

tailrecurse:                                      ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.tr4047, i64 20
  %.val39 = load i32, ptr %i.p, align 4, !tbaa !30
  %.val5.i = load i32, ptr %i.d, align 4, !tbaa !33
  %i.q = add nsw i32 %.val5.i, %.val39
  %.val7.i = load i32, ptr %i.e, align 4, !tbaa !33
  %i.r = sub i32 %i.q, %.val7.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !17
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [24 x i8], ptr %.val4.i, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %.tr4248, -1
  %i.y = load i16, ptr %i.w, align 8              ; 2 uses
  %i.z = and i16 %i.y, 128
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.b

bb.e:                                             ; preds = %.lr.ph53, %Wlc_ObjFaninId.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next, %Wlc_ObjFaninId.exit ] ; 2 uses
  %.val3352 = phi i32 [ %.val3349, %.lr.ph53 ], [ %.val33, %Wlc_ObjFaninId.exit ]
  %.051 = phi i32 [ 0, %.lr.ph53 ], [ %i.al, %Wlc_ObjFaninId.exit ]
  %i.ab = icmp ugt i32 %.val3352, 2
  br i1 %i.ab, label %Wlc_ObjHasArray.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i16, ptr %.tr4047, align 8
  %i.ad = and i16 %i.ac, 63
  switch i16 %i.ad, label %Wlc_ObjFaninId.exit [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i
  ]

Wlc_ObjHasArray.exit.thread.i.i:                  ; preds = %bb.f, %bb.f, %bb.e
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !30
  br label %Wlc_ObjFaninId.exit

Wlc_ObjFaninId.exit:                              ; preds = %bb.f, %Wlc_ObjHasArray.exit.thread.i.i
  %i.af = phi ptr [ %i.ae, %Wlc_ObjHasArray.exit.thread.i.i ], [ %i.o, %bb.f ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %.val = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [24 x i8], ptr %.val, i64 %i.ai
  %i.ak = tail call i32 @Wlc_NtkExploreMem2_rec(ptr noundef %0, ptr noundef %i.aj, ptr noundef %2, i32 noundef %.tr4248)
  %i.al = add nsw i32 %i.ak, %.051                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val33 = load i32, ptr %i.m, align 4, !tbaa !29 ; 2 uses
  %i.am = sext i32 %.val33 to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.e, label %.critedge.loopexit, !llvm.loop !149

.critedge.loopexit:                               ; preds = %Wlc_ObjFaninId.exit
  %i.ao = add nsw i32 %i.al, 1
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.b, %bb.c, %.preheader, %.critedge.loopexit
  %.tr4248.lcssa62.sink = phi i32 [ %.tr4248, %.critedge.loopexit ], [ %.tr4248, %.preheader ], [ %.tr4248, %bb.b ], [ 0, %bb.c ]
  %.032.ph = phi i32 [ %i.ao, %.critedge.loopexit ], [ 1, %.preheader ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.val34 = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.ap = ptrtoint ptr %.tr4047 to i64
  %i.aq = ptrtoint ptr %.val34 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 24
  %i.at = trunc i64 %i.as to i32
  tail call fastcc void @Vec_IntPushTwo(ptr noundef %2, i32 noundef %i.at, i32 noundef %.tr4248.lcssa62.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %.loopexit.sink.split, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ %.032.ph, %.loopexit.sink.split ], [ 0, %tailrecurse ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define void @Wlc_NtkExploreMem2(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
Vec_IntStart.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 1000, ptr %i.a, align 8, !tbaa !32
  %calloc = tail call dereferenceable_or_null(4000) ptr @calloc(i64 1, i64 4000)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %calloc, ptr %i.c, align 8, !tbaa !17
  %i.d = tail call ptr @Wlc_NtkCollectMemory(ptr noundef %0, i32 noundef 1) ; 4 uses
  tail call void @Wlc_NtkCleanMarks(ptr noundef %0) #29
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val53 = load i32, ptr %i.e, align 4, !tbaa !33 ; 5 uses
  %i.f = icmp sgt i32 %.val53, 0
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val45 = load ptr, ptr %i.g, align 8, !tbaa !17 ; 5 uses
  br i1 %i.f, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.h = getelementptr i8, ptr %0, i64 640        ; 3 uses
  %wide.trip.count = zext nneg i32 %.val53 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %.val53, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.a

.lr.ph61.unr-lcssa:                               ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph61, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph61.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph61.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %.val53 to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv.epil.init
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %.val47.epil = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [24 x i8], ptr %.val47.epil, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 8
  %i.o = or i16 %i.n, 128
  store i16 %i.o, ptr %i.m, align 8
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.unr-lcssa, %.epil.preheader
  %i.p = getelementptr i8, ptr %i.d, i64 8
  %.val44 = load ptr, ptr %i.p, align 8, !tbaa !17 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 640        ; 2 uses
  %wide.trip.count69 = zext nneg i32 %.val53 to i64
  br label %bb.b

bb.a:                                             ; preds = %bb.a, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.a ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.a ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  %.val47 = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %.val47, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = or i16 %i.v, 128
  store i16 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  %.val47.1 = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [24 x i8], ptr %.val47.1, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = or i16 %i.ac, 128
  store i16 %i.ad, ptr %i.ab, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph61.unr-lcssa, label %bb.a, !llvm.loop !150

bb.b:                                             ; preds = %.lr.ph61, %.critedge
  %indvars.iv66 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next67, %.critedge ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv66
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18
  %.val46 = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [24 x i8], ptr %.val46, i64 %i.ag ; 3 uses
  %.val54 = load i16, ptr %i.ah, align 8
  %i.ai = and i16 %.val54, 63
  %.not = icmp eq i16 %i.ai, 54
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !33
  %i.aj = tail call i32 @Wlc_NtkExploreMem2_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a, i32 noundef %1)
  %.val48 = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %.val48 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 24
  %i.ao = trunc i64 %i.an to i32
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ao) ; 0 uses
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.aj) ; 0 uses
  %.val51 = load i32, ptr %i.b, align 4, !tbaa !33 ; 3 uses
  %i.ar = sdiv i32 %.val51, 2
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ar) ; 0 uses
  %i.at = add i32 %.val51, -2
  %or.cond = icmp ult i32 %i.at, 18
  br i1 %or.cond, label %.critedge4.lr.ph, label %.loopexit

.critedge4.lr.ph:                                 ; preds = %bb.c
  %.val43 = load ptr, ptr %i.c, align 8, !tbaa !17
  %2 = zext nneg i32 %.val51 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.lr.ph, %.critedge4
  %indvars.iv63 = phi i64 [ 0, %.critedge4.lr.ph ], [ %indvars.iv.next64, %.critedge4 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val43, i64 %indvars.iv63 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.av, i32 noundef %i.ax) ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 2 ; 2 uses
  %3 = or disjoint i64 %indvars.iv.next64, 1
  %4 = icmp samesign ult i64 %3, %2
  br i1 %4, label %.critedge4, label %.loopexit, !llvm.loop !151

.loopexit:                                        ; preds = %.critedge4, %bb.c
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.loopexit
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %.critedge2.thread, label %bb.b, !llvm.loop !152

.critedge2:                                       ; preds = %Vec_IntStart.exit
  %.not.i55 = icmp eq ptr %.val45, null
  br i1 %.not.i55, label %Vec_IntFree.exit, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge, %.critedge2
  %i.az = phi ptr [ %.val45, %.critedge2 ], [ %.val44, %.critedge ]
  tail call void @free(ptr noundef nonnull %i.az) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %.critedge2.thread
  tail call void @free(ptr noundef nonnull %i.d) #29
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %.not.i56 = icmp eq ptr %i.ba, null
  br i1 %.not.i56, label %Vec_IntFree.exit57, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ba) #29
  br label %Vec_IntFree.exit57

Vec_IntFree.exit57:                               ; preds = %Vec_IntFree.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #29
  tail call void @Wlc_NtkCleanMarks(ptr noundef %0) #29
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Wlc_NtkExploreMem_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 2 uses
  %i.b = and i16 %i.a, 128
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 36
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = getelementptr i8, ptr %0, i64 640        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.h = phi i16 [ %i.a, %.lr.ph ], [ %i.bi, %tailrecurse ]
  %.tr3139 = phi i32 [ %3, %.lr.ph ], [ %i.bh, %tailrecurse ] ; 3 uses
  %.tr2938 = phi ptr [ %1, %.lr.ph ], [ %i.bg, %tailrecurse ] ; 5 uses
  %i.i = and i16 %i.h, 63                         ; 2 uses
  %i.j = icmp eq i16 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i16 %i.i, 3                      ; 2 uses
  %i.l = icmp eq i32 %.tr3139, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val24 = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.m = ptrtoint ptr %.tr2938 to i64
  %i.n = ptrtoint ptr %.val24 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 9 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = icmp eq i32 %i.x, %i.q
  br i1 %i.y, label %.critedge, label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %i.z = load i32, ptr %2, align 8, !tbaa !32
  %i.aa = icmp eq i32 %i.s, %i.z
  br i1 %i.aa, label %bb.g, label %Vec_IntPush.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ab = icmp slt i32 %i.s, 16
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.j, %bb.i
  %i.ag = phi ptr [ %i.ae, %bb.i ], [ %i.af, %bb.j ]
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !17
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.k:                                             ; preds = %bb.g
  %i.ah = icmp samesign ult i32 %i.s, 1073741823
  %i.ai = shl nuw nsw i32 %i.s, 1
  %spec.select.i.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.s, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ak, null
  %i.al = zext nneg i32 %spec.select.i.i to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef %i.am) #30
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = phi ptr [ %i.an, %bb.m ], [ %i.ao, %bb.n ]
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !17
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.o, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.o ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %2, align 8, !tbaa !32
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !33
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.k, %._crit_edge.i
  %i.aq = phi i32 [ %i.s, %._crit_edge.i ], [ %i.s, %bb.k ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17
  %i.at = add nsw i32 %i.aq, 1
  store i32 %i.at, ptr %i.r, align 4, !tbaa !33
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %i.q, ptr %i.av, align 4, !tbaa !18
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  br i1 %i.k, label %tailrecurse, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %.tr2938, i64 4   ; 2 uses
  %.val2340 = load i32, ptr %i.aw, align 4, !tbaa !29 ; 2 uses
  %i.ax = icmp sgt i32 %.val2340, 0
  br i1 %i.ax, label %.lr.ph43, label %.critedge

.lr.ph43:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr2938, i64 16 ; 2 uses
  br label %bb.q

tailrecurse:                                      ; preds = %bb.p
  %i.az = getelementptr i8, ptr %.tr2938, i64 20
  %.val28 = load i32, ptr %i.az, align 4, !tbaa !30
  %.val5.i = load i32, ptr %i.d, align 4, !tbaa !33
  %i.ba = add nsw i32 %.val5.i, %.val28
  %.val7.i = load i32, ptr %i.e, align 4, !tbaa !33
  %i.bb = sub i32 %i.ba, %.val7.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !17
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [24 x i8], ptr %.val4.i, i64 %i.bf ; 2 uses
  %i.bh = add nsw i32 %.tr3139, -1
  %i.bi = load i16, ptr %i.bg, align 8            ; 2 uses
  %i.bj = and i16 %i.bi, 128
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %.critedge, label %bb.b
end_hunk_0
