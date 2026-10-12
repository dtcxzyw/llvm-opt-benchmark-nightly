Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFx?download=true
inline.NumInlined: 258
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ManFxTopoOrder_rec:bb.a
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph36, %.critedge
  %indvars.iv38 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next39, %.critedge ] ; 2 uses
  %.val32 = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr [16 x i8], ptr %.val32, i64 %indvars.iv38
  %i.n = getelementptr [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val3133 = load i32, ptr %i.o, align 4, !tbaa !50 ; 2 uses
  %i.p = icmp sgt i32 %.val3133, 1
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.val3141 = phi i32 [ %.val3133, %.lr.ph ], [ %.val31, %bb.e ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.val27 = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = ashr i32 %i.s, 1                         ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @Gia_ManFxTopoOrder_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %i.t)
  %.val31.pre = load i32, ptr %i.o, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.val31 = phi i32 [ %.val3141, %bb.c ], [ %.val31.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = sext i32 %.val31 to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %.critedge, !llvm.loop !88

.critedge:                                        ; preds = %bb.e, %bb.b
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !89

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50  ; 7 uses
  %i.ab = load i32, ptr %4, align 8, !tbaa !51
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ad = icmp slt i32 %i.aa, 16
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.af, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.af, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ah = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.aj = icmp samesign ult i32 %i.aa, 1073741823
  %i.ak = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.am, null
  %i.an = zext nneg i32 %spec.select.i to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.ao) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.ap, %bb.l ], [ %i.aq, %bb.m ]
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !51
  %.pre = load i32, ptr %i.z, align 4, !tbaa !50
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.as = phi i32 [ %i.aa, %._crit_edge ], [ %i.aa, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = add nsw i32 %i.as, 1
  store i32 %i.av, ptr %i.z, align 4, !tbaa !50
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %5, ptr %i.ax, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManFxTopoOrder(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val65 = load i32, ptr %i.a, align 4, !tbaa !59 ; 4 uses
  %i.b = icmp sgt i32 %.val65, 0                  ; 2 uses
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val63 = load ptr, ptr %i.c, align 8, !tbaa !61 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val65 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %.val65, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.090 = phi i32 [ -1, %.lr.ph.new ], [ %i.t, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.val63, i64 %indvars.iv
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val59 = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.g = load i32, ptr %.val59, align 4, !tbaa !26
  %i.h = tail call noundef i32 @llvm.smax.i32(i32 %.090, i32 %i.g)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val63, i64 %indvars.iv
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val59.1 = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.k = load i32, ptr %.val59.1, align 4, !tbaa !26
  %i.l = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.k)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val63, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %.val59.2 = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.o = load i32, ptr %.val59.2, align 4, !tbaa !26
  %i.p = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 %i.o)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val63, i64 %indvars.iv
  %i.r = getelementptr i8, ptr %i.q, i64 56
  %.val59.3 = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.s = load i32, ptr %.val59.3, align 4, !tbaa !26
  %i.t = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %i.s) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !90

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %.090.epil.init = phi i32 [ -1, %.lr.ph ], [ %i.t, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod124)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.090.epil = phi i32 [ %.090.epil.init, %.epil.preheader ], [ %i.x, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.val63, i64 %indvars.iv.epil
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val59.epil = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.w = load i32, ptr %.val59.epil, align 4, !tbaa !26
  %i.x = tail call noundef i32 @llvm.smax.i32(i32 %.090.epil, i32 %i.w) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !91

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %i.t, %.critedge.loopexit.unr-lcssa ], [ %i.x, %bb.c ] ; 3 uses
  %i.y = add nsw i32 %.0.lcssa, 1                 ; 12 uses
  %i.z = icmp eq i32 %i.y, %2
  br i1 %i.z, label %bb.o, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %or.cond.i.i = icmp ult i32 %.0.lcssa, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.y ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.aa, align 8, !tbaa !51
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0 ; 2 uses
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i72, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.d
  %5 = zext nneg i32 %spec.store.select.i.i to i64
  %i.ac = shl nuw nsw i64 %5, 2                   ; 2 uses
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #20 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !25
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !50
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i70, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit.i
  %6 = zext nneg i32 %i.y to i64
  %i.af = shl nuw nsw i64 %6, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ad, i8 0, i64 %i.af, i1 false)
  br label %Vec_IntAlloc.exit.i70

Vec_IntAlloc.exit.thread.i72:                     ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !25
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !50
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.ah, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !25
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !50
  br label %Vec_IntStart.exit73

Vec_IntAlloc.exit.i70:                            ; preds = %Vec_IntAlloc.exit.i, %bb.e
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %spec.store.select.i.i, ptr %i.ak, align 8, !tbaa !51
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ac) #20 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !25
  store i32 %i.y, ptr %i.al, align 4, !tbaa !50
  %.not.i71 = icmp eq ptr %i.am, null
  br i1 %.not.i71, label %Vec_IntStart.exit73, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i70
  %7 = zext nneg i32 %i.y to i64
  %i.ao = shl nuw nsw i64 %7, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.am, i8 0, i64 %i.ao, i1 false)
  br label %Vec_IntStart.exit73

Vec_IntStart.exit73:                              ; preds = %Vec_IntAlloc.exit.thread.i72, %Vec_IntAlloc.exit.i70, %bb.f
  %.val61 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i72 ], [ %i.ad, %Vec_IntAlloc.exit.i70 ], [ %i.ad, %bb.f ]
  %.val57 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i72 ], [ null, %Vec_IntAlloc.exit.i70 ], [ %i.am, %bb.f ]
  %i.ap = phi ptr [ %i.ah, %Vec_IntAlloc.exit.thread.i72 ], [ %i.ak, %Vec_IntAlloc.exit.i70 ], [ %i.ak, %bb.f ] ; 2 uses
  br i1 %i.b, label %.lr.ph93, label %.critedge2

.lr.ph93:                                         ; preds = %Vec_IntStart.exit73
  %i.aq = getelementptr i8, ptr %0, i64 8
  %.val62 = load ptr, ptr %i.aq, align 8, !tbaa !61
  %i.ar = zext nneg i32 %.val65 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph93, %bb.i
  %indvars.iv100 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next101, %bb.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %indvars.iv100
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val58 = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.au = load i32, ptr %.val58, align 4, !tbaa !26
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val57, i64 %i.av ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds [4 x i8], ptr %.val61, i64 %i.av
  %i.ba = trunc nuw nsw i64 %indvars.iv100 to i32
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !26
  %.pre = load i32, ptr %i.aw, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = phi i32 [ %.pre, %bb.h ], [ %i.ax, %bb.g ]
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.aw, align 4, !tbaa !26
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.bd = icmp samesign ult i64 %indvars.iv.next101, %i.ar
  br i1 %i.bd, label %bb.g, label %.critedge2, !llvm.loop !92

.critedge2:                                       ; preds = %bb.i, %Vec_IntStart.exit73
  %i.be = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.bf = add i32 %1, -1
  %or.cond.i.i74 = icmp ult i32 %i.bf, 15
  %spec.store.select.i.i75 = select i1 %or.cond.i.i74, i32 16, i32 %1 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i75, ptr %i.be, align 8, !tbaa !51
  %.not.i.i76 = icmp eq i32 %spec.store.select.i.i75, 0
  br i1 %.not.i.i76, label %Vec_IntAlloc.exit.thread.i79, label %Vec_IntAlloc.exit.i77

Vec_IntAlloc.exit.thread.i79:                     ; preds = %.critedge2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !25
  store i32 %1, ptr %i.bg, align 4, !tbaa !50
  br label %Vec_IntStart.exit80

Vec_IntAlloc.exit.i77:                            ; preds = %.critedge2
  %i.bi = sext i32 %spec.store.select.i.i75 to i64
  %i.bj = shl nsw i64 %i.bi, 2
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bj) #20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !25
  store i32 %1, ptr %i.bg, align 4, !tbaa !50
  %.not.i78 = icmp eq ptr %i.bk, null
  br i1 %.not.i78, label %Vec_IntStart.exit80, label %bb.j

bb.j:                                             ; preds = %Vec_IntAlloc.exit.i77
  %i.bm = sext i32 %1 to i64
  %i.bn = shl nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bn, i1 false)
  br label %Vec_IntStart.exit80

Vec_IntStart.exit80:                              ; preds = %Vec_IntAlloc.exit.thread.i79, %Vec_IntAlloc.exit.i77, %bb.j
  %i.bo = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.bo, align 8, !tbaa !51
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i86, label %Vec_IntAlloc.exit.i84

Vec_IntAlloc.exit.thread.i86:                     ; preds = %Vec_IntStart.exit80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr null, ptr %i.bq, align 8, !tbaa !25
  store i32 %i.y, ptr %i.bp, align 4, !tbaa !50
  br label %Vec_IntStart.exit87

Vec_IntAlloc.exit.i84:                            ; preds = %Vec_IntStart.exit80
  %8 = zext nneg i32 %spec.store.select.i.i to i64
  %i.br = shl nuw nsw i64 %8, 2
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.br) #20 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !25
  store i32 %i.y, ptr %i.bp, align 4, !tbaa !50
  %.not.i85 = icmp eq ptr %i.bs, null
  br i1 %.not.i85, label %Vec_IntStart.exit87, label %bb.k

bb.k:                                             ; preds = %Vec_IntAlloc.exit.i84
  %9 = zext nneg i32 %i.y to i64
  %i.bu = shl nuw nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bs, i8 0, i64 %i.bu, i1 false)
  br label %Vec_IntStart.exit87

Vec_IntStart.exit87:                              ; preds = %Vec_IntAlloc.exit.thread.i86, %Vec_IntAlloc.exit.i84, %bb.k
  %i.bv = phi ptr [ null, %Vec_IntAlloc.exit.thread.i86 ], [ null, %Vec_IntAlloc.exit.i84 ], [ %i.bs, %bb.k ] ; 5 uses
  %i.bw = icmp sgt i32 %1, 0
  br i1 %i.bw, label %.lr.ph95, label %.preheader

.lr.ph95:                                         ; preds = %Vec_IntStart.exit87
  %wide.trip.count106 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95
  %n.vec = and i64 %wide.trip.count106, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x i32> splat (i32 1), ptr %i.bx, align 4, !tbaa !26
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count106
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph95, %middle.block
  %indvars.iv103.ph = phi i64 [ 0, %.lr.ph95 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %Vec_IntStart.exit87
  %.not96 = icmp sgt i32 %1, %.0.lcssa
  br i1 %.not96, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %.preheader
  %i.ca = sext i32 %1 to i64
  br label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph ], [ %indvars.iv103.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv103
  store i32 1, ptr %i.cb, align 4, !tbaa !26
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.preheader, label %scalar.ph, !llvm.loop !94

bb.l:                                             ; preds = %.lr.ph98, %bb.n
  %indvars.iv108 = phi i64 [ %i.ca, %.lr.ph98 ], [ %indvars.iv.next109, %bb.n ] ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %indvars.iv108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !26
  %.not56 = icmp eq i32 %i.cd, 0
  br i1 %.not56, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = trunc nsw i64 %indvars.iv108 to i32
  tail call void @Gia_ManFxTopoOrder_rec(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.be, i32 noundef %i.ce)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next109 to i32
  %exitcond111.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond111.not, label %._crit_edge.thread, label %bb.l, !llvm.loop !95

._crit_edge:                                      ; preds = %.preheader
  %.not.i88 = icmp eq ptr %i.bv, null
  br i1 %.not.i88, label %Vec_IntFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.n, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bv) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %._crit_edge.thread
  tail call void @free(ptr noundef nonnull %i.bo) #19
  store ptr %i.aa, ptr %3, align 8, !tbaa !67
  store ptr %i.ap, ptr %4, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %Vec_IntFree.exit
  %.053 = phi ptr [ %i.be, %Vec_IntFree.exit ], [ null, %.critedge ]
  ret ptr %.053
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManFxInsert(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.d = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val228 = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.e = getelementptr i8, ptr %.val228, i64 4
  %.val228.val = load i32, ptr %i.e, align 4, !tbaa !50
  %i.f = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val235 = load i32, ptr %i.f, align 4, !tbaa !65
  %i.g = call ptr @Gia_ManFxTopoOrder(ptr noundef %1, i32 noundef %.val228.val, i32 noundef %.val235, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #19
  br label %bb.dg

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val201 = load i32, ptr %i.j, align 8, !tbaa !48
  %i.k = tail call ptr @Gia_ManStart(i32 noundef %.val201) #19 ; 18 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.l) #23
  %i.n = add i64 %i.m, 1
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #20 ; 2 uses
  %i.p = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull readonly dereferenceable(1) %i.l) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ]
  store ptr %i.q, ptr %i.k, align 8, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111  ; 3 uses
  %.not.i243 = icmp eq ptr %i.s, null
  br i1 %.not.i243, label %Abc_UtilStrsav.exit244, label %bb.e

bb.e:                                             ; preds = %Abc_UtilStrsav.exit
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.s) #23
  %i.u = add i64 %i.t, 1
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #20 ; 2 uses
  %i.w = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(1) %i.s) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit244

Abc_UtilStrsav.exit244:                           ; preds = %Abc_UtilStrsav.exit, %bb.e
  %i.x = phi ptr [ %i.v, %bb.e ], [ null, %Abc_UtilStrsav.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !111
  %.val200 = load i32, ptr %i.j, align 8, !tbaa !48
  %i.z = mul nsw i32 %.val200, 6
  %i.aa = sdiv i32 %i.z, 5                        ; 2 uses
  %i.ab = add nsw i32 %i.aa, 100                  ; 4 uses
  %i.ac = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.ad = add nsw i32 %i.aa, 99
  %or.cond.i.i = icmp ult i32 %i.ad, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.ac, align 8, !tbaa !51
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Abc_UtilStrsav.exit244
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !25
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !50
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Abc_UtilStrsav.exit244
  %i.ag = sext i32 %spec.store.select.i.i to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #20 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !25
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !50
  %.not.i245 = icmp eq ptr %i.ai, null
  br i1 %.not.i245, label %Vec_IntStart.exit, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.ak = sext i32 %i.ab to i64
  %i.al = shl nsw i64 %i.ak, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.al, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !112
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.k) #19
  %i.an = getelementptr i8, ptr %i.g, i64 4       ; 3 uses
  %.val224 = load i32, ptr %i.an, align 4, !tbaa !50 ; 13 uses
  %i.ao = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 7 uses
  %i.ap = add i32 %.val224, -1
  %or.cond.i.i246 = icmp ult i32 %i.ap, 15
  %spec.store.select.i.i247 = select i1 %or.cond.i.i246, i32 16, i32 %.val224 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i247, ptr %i.ao, align 8, !tbaa !51
  %.not.i.i248 = icmp eq i32 %spec.store.select.i.i247, 0
  br i1 %.not.i.i248, label %Vec_IntStartFull.exit, label %Vec_IntAlloc.exit.i249

Vec_IntAlloc.exit.i249:                           ; preds = %Vec_IntStart.exit
  %i.ar = sext i32 %spec.store.select.i.i247 to i64
  %i.as = shl nsw i64 %i.ar, 2                    ; 2 uses
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #20 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !25
end_hunk_0
