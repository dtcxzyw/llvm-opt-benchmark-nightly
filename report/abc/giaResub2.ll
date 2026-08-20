inline.NumInlined: 695
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_RsbAddSideInputs:bb.a
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !8
  %i.gb = add nsw i32 %i.fy, 1
  store i32 %i.gb, ptr %i.ff, align 4, !tbaa !12
  %i.gc = sext i32 %i.fy to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gc
  store i32 %i.el, ptr %i.gd, align 4, !tbaa !33
  %.val71 = load ptr, ptr %i.h, align 8, !tbaa !100 ; 3 uses
  %i.ge = ptrtoint ptr %.val71 to i64
  %i.gf = sub i64 %i.cp, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 12
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !12  ; 7 uses
  %i.gj = load i32, ptr %2, align 8, !tbaa !13
  %i.gk = icmp eq i32 %i.gi, %i.gj
  br i1 %i.gk, label %bb.av, label %Vec_WecPush.exit.Vec_IntPush.exit_crit_edge

Vec_WecPush.exit.Vec_IntPush.exit_crit_edge:      ; preds = %Vec_WecPush.exit
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !8
  br label %Vec_IntPush.exit

bb.av:                                            ; preds = %Vec_WecPush.exit
  %i.gl = icmp slt i32 %i.gi, 16
  br i1 %i.gl, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gm = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.gm, null
  br i1 %.not9.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gm, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ay:                                            ; preds = %bb.aw
  %i.go = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.az:                                            ; preds = %bb.av
  %i.gp = icmp samesign ult i32 %i.gi, 1073741823
  %i.gq = shl nuw nsw i32 %i.gi, 1
  %spec.select.i = select i1 %i.gp, i32 %i.gq, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.gi, %spec.select.i
  %.pre145 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i, label %bb.ba, label %Vec_IntPush.exit

bb.ba:                                            ; preds = %bb.az
  %.not9.i10.i = icmp eq ptr %.pre145, null
  %i.gr = zext nneg i32 %spec.select.i to i64
  %i.gs = shl nuw nsw i64 %i.gr, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = tail call ptr @realloc(ptr noundef nonnull %.pre145, i64 noundef %i.gs) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.bc:                                            ; preds = %bb.ba
  %i.gu = tail call noalias ptr @malloc(i64 noundef %i.gs) #36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.bb, %bb.bc, %bb.ax, %bb.ay
  %i.gv = phi ptr [ %i.go, %bb.ay ], [ %i.gn, %bb.ax ], [ %i.gt, %bb.bb ], [ %i.gu, %bb.bc ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.ay ], [ 16, %bb.ax ], [ %spec.select.i, %bb.bb ], [ %spec.select.i, %bb.bc ]
  store ptr %i.gv, ptr %i.n, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !13
  %.pre146 = load i32, ptr %i.a, align 4, !tbaa !12
  %.val78.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !100
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_WecPush.exit.Vec_IntPush.exit_crit_edge, %bb.az, %Vec_IntGrow.exit11.sink.split.i
  %.val78.pre = phi ptr [ %.val71, %Vec_WecPush.exit.Vec_IntPush.exit_crit_edge ], [ %.val71, %bb.az ], [ %.val78.pre.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.gw = phi i32 [ %i.gi, %Vec_WecPush.exit.Vec_IntPush.exit_crit_edge ], [ %i.gi, %bb.az ], [ %.pre146, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.gx = phi ptr [ %.pre, %Vec_WecPush.exit.Vec_IntPush.exit_crit_edge ], [ %.pre145, %bb.az ], [ %i.gv, %Vec_IntGrow.exit11.sink.split.i ]
  %i.gy = add nsw i32 %i.gw, 1
  store i32 %i.gy, ptr %i.a, align 4, !tbaa !12
  %i.gz = sext i32 %i.gw to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gz
  store i32 %i.gh, ptr %i.ha, align 4, !tbaa !33
  %.val79.pre = load ptr, ptr %i.j, align 8, !tbaa !118
  br label %bb.bd

bb.bd:                                            ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %Vec_IntPush.exit
  %.val79 = phi ptr [ %.val79152188, %bb.p ], [ %.val79152188, %bb.q ], [ %.val79152188, %bb.r ], [ %.val79152188, %bb.s ], [ %.val79.pre, %Vec_IntPush.exit ] ; 2 uses
  %.val78 = phi ptr [ %.val78150189, %bb.p ], [ %.val78150189, %bb.q ], [ %.val78150189, %bb.r ], [ %.val78150189, %bb.s ], [ %.val78.pre, %Vec_IntPush.exit ] ; 6 uses
  %i.hb = add nuw nsw i32 %.0113191, 1            ; 4 uses
  %i.hc = getelementptr i8, ptr %.val79, i64 8
  %.val79.val = load ptr, ptr %i.hc, align 8, !tbaa !8
  %i.hd = ptrtoint ptr %.val78 to i64
  %i.he = sub i64 %i.bk, %i.hd
  %i.hf = sdiv exact i64 %i.he, 12
  %sext.i = shl i64 %i.hf, 32
  %i.hg = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.val79.val, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !33
  %i.hj = icmp slt i32 %i.hb, %i.hi
  br i1 %i.hj, label %.lr.ph115, label %.critedge6.loopexit, !llvm.loop !138

.critedge6.loopexit:                              ; preds = %.lr.ph115, %bb.bd
  %.val67.pre = load i32, ptr %i.be, align 4, !tbaa !12
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.preheader
  %.val67 = phi i32 [ %.val67.pre, %.critedge6.loopexit ], [ %.val67154, %.preheader ] ; 2 uses
  %.val78148 = phi ptr [ %.val78, %.critedge6.loopexit ], [ %.val78147, %.preheader ]
  %.val78109140 = phi ptr [ %.val78, %.critedge6.loopexit ], [ %.val78109, %.preheader ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.hk = sext i32 %.val67 to i64
  %i.hl = icmp slt i64 %indvars.iv.next129, %i.hk
  br i1 %i.hl, label %.lr.ph119, label %.critedge4.loopexit, !llvm.loop !139

.critedge4.loopexit:                              ; preds = %.lr.ph119, %.critedge6
  %.val77.pre = load i32, ptr %i.e, align 4, !tbaa !113
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.o
  %.val77 = phi i32 [ %.val77.pre, %.critedge4.loopexit ], [ %.val77156, %bb.o ] ; 5 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.hm = sext i32 %.val77 to i64
  %i.hn = icmp slt i64 %indvars.iv.next132, %i.hm
  br i1 %i.hn, label %bb.o, label %.critedge2.preheader, !llvm.loop !140

.critedge2:                                       ; preds = %.critedge2, %.lr.ph125.new
  %indvars.iv134 = phi i64 [ 0, %.lr.ph125.new ], [ %indvars.iv.next135.7, %.critedge2 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph125.new ], [ %niter.next.7, %.critedge2 ]
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 0, ptr %i.hp, align 4, !tbaa !12
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  store i32 0, ptr %i.hr, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  store i32 0, ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 52
  store i32 0, ptr %i.hv, align 4, !tbaa !12
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 68
  store i32 0, ptr %i.hx, align 4, !tbaa !12
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 84
  store i32 0, ptr %i.hz, align 4, !tbaa !12
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 100
  store i32 0, ptr %i.ib, align 4, !tbaa !12
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 116
  store i32 0, ptr %i.id, align 4, !tbaa !12
  %indvars.iv.next135.7 = add nuw nsw i64 %indvars.iv134, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.critedge8.loopexit.unr-lcssa, label %.critedge2, !llvm.loop !141

.critedge8.loopexit.unr-lcssa:                    ; preds = %.critedge2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge8, label %.critedge2.epil.preheader

.critedge2.epil.preheader:                        ; preds = %.critedge8.loopexit.unr-lcssa, %.lr.ph125
  %indvars.iv134.epil.init = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next135.7, %.critedge8.loopexit.unr-lcssa ]
  %lcmp.mod192 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.critedge2.epil

.critedge2.epil:                                  ; preds = %.critedge2.epil, %.critedge2.epil.preheader
  %indvars.iv134.epil = phi i64 [ %indvars.iv134.epil.init, %.critedge2.epil.preheader ], [ %indvars.iv.next135.epil, %.critedge2.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.critedge2.epil.preheader ], [ %epil.iter.next, %.critedge2.epil ]
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.val74, i64 %indvars.iv134.epil
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 0, ptr %i.if, align 4, !tbaa !12
  %indvars.iv.next135.epil = add nuw nsw i64 %indvars.iv134.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge8, label %.critedge2.epil, !llvm.loop !142

.critedge8:                                       ; preds = %.critedge8.loopexit.unr-lcssa, %.critedge2.epil, %.critedge.preheader, %.critedge2.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_RsbExpandInputs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8          ; 6 uses
  %i.b = getelementptr i8, ptr %3, i64 4          ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = getelementptr i8, ptr %0, i64 176        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 624        ; 2 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !12   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %.split60.us

.preheader:                                       ; preds = %bb.a, %.critedge
  %.val34.pre.pre8183 = phi i32 [ %.val34.pre.pre8185, %.critedge ], [ %i.f, %bb.a ]
  %.val3475 = phi i32 [ %.val3477, %.critedge ], [ %i.f, %bb.a ]
  %.val3453 = phi i32 [ %.val345366, %.critedge ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = icmp sgt i32 %.val3453, 0
  br i1 %i.h, label %.lr.ph, label %.split60.us

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.val34.pre.pre8187 = phi i32 [ %.val34.pre.pre8188, %.loopexit ], [ %.val34.pre.pre8183, %.preheader ] ; 5 uses
  %.val3478 = phi i32 [ %.val34, %.loopexit ], [ %.val3475, %.preheader ] ; 3 uses
  %.val345367 = phi i32 [ %.val34, %.loopexit ], [ %.val3453, %.preheader ] ; 11 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader ] ; 2 uses
  %.155 = phi i32 [ %.2, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 17 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 4 uses
  %.val35 = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.not29 = icmp eq ptr %.val35, null
  br i1 %.not29, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [12 x i8], ptr %.val35, i64 %i.k
  %.val36 = load i64, ptr %i.l, align 4           ; 4 uses
  %i.m = and i64 %.val36, 2147483648
  %.not.i = icmp ne i64 %i.m, 0
  %i.n = and i64 %.val36, 536870911
  %i.o = icmp eq i64 %i.n, 536870911
  %narrow.i.not = or i1 %.not.i, %i.o
  br i1 %narrow.i.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %.val36 to i32
  %i.q = and i32 %i.p, 536870911
  %i.r = sub nsw i32 %i.j, %i.q                   ; 3 uses
  %i.s = lshr i64 %.val36, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 536870911
  %i.v = sub nsw i32 %i.j, %i.u                   ; 4 uses
  %.val42 = load i32, ptr %i.d, align 8, !tbaa !110 ; 5 uses
  %.val43 = load ptr, ptr %i.e, align 8, !tbaa !111 ; 3 uses
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 3 uses
  %.not48 = icmp eq i32 %i.y, %.val42
  br i1 %.not48, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %.not49 = icmp eq i32 %i.ab, %.val42
  br i1 %.not49, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %wide.trip.count.i = zext nneg i32 %.val345367 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 9 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = icmp eq i32 %i.ad, %i.j
  br i1 %i.ae, label %._crit_edge.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntRemove.exit, label %bb.e, !llvm.loop !143

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ag = icmp eq i32 %.val345367, %i.af
  br i1 %i.ag, label %Vec_IntRemove.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.loopexit.i
  %.123.i = add nuw nsw i32 %i.af, 1              ; 2 uses
  %i.ah = icmp slt i32 %.123.i, %.val345367
  br i1 %i.ah, label %.lr.ph26.i, label %._crit_edge27.i

.lr.ph26.i:                                       ; preds = %.preheader.i
  %4 = zext i32 %.123.i to i64                    ; 5 uses
  %5 = add nsw i32 %.val345367, -1
  %6 = add i32 %.val345367, -2
  %7 = trunc i64 %indvars.iv.i to i32
  %8 = sub i32 %6, %7                             ; 2 uses
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check = icmp ult i32 %8, 7
  br i1 %min.iters.check, label %.lr.ph26.i.a, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph26.i
  %11 = sub nsw i64 %indvars.iv.i, %4
  %12 = shl i64 %11, 2
  %13 = add i64 %12, -1
  %diff.check = icmp ult i64 %13, 31
  br i1 %diff.check, label %.lr.ph26.i.a, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %10, 8589934584                ; 4 uses
  %14 = add nuw i64 %indvars.iv.i, %n.vec
  %15 = add nuw nsw i64 %n.vec, %4
  %invariant.gep = getelementptr [4 x i8], ptr %.val, i64 %4
  %16 = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !33
  %wide.load104 = load <4 x i32>, ptr %17, align 4, !tbaa !33
  %18 = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %index ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <4 x i32> %wide.load, ptr %18, align 4, !tbaa !33
  store <4 x i32> %wide.load104, ptr %19, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %._crit_edge27.loopexit.i, label %.lr.ph26.i.a

.lr.ph26.i.a:                                     ; preds = %vector.memcheck, %.lr.ph26.i, %middle.block
  %indvars.iv31.i.ph = phi i64 [ %indvars.iv.i, %vector.memcheck ], [ %indvars.iv.i, %.lr.ph26.i ], [ %14, %middle.block ] ; 3 uses
  %indvars.iv29.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph26.i ], [ %15, %middle.block ] ; 2 uses
  %i.ai = trunc i64 %indvars.iv31.i.ph to i32     ; 2 uses
  %i.aj = xor i32 %i.ai, -1
  %i.ak = add i32 %.val345367, %i.aj
  %i.al = add i32 %.val345367, -2
  %i.am = sub i32 %i.al, %i.ai
  %xtraiter = and i32 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph26.i.a, %.prol.preheader
  %indvars.iv29.i.prol.a = phi i64 [ %indvars.iv.next30.i.prol.a, %.prol.preheader ], [ %indvars.iv31.i.ph, %.lr.ph26.i.a ] ; 2 uses
  %.1.in24.i.prol = phi i64 [ %indvars.iv.next30.i.prol, %.prol.preheader ], [ %indvars.iv29.i.ph, %.lr.ph26.i.a ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph26.i.a ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.1.in24.i.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv29.i.prol.a
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !33
  %indvars.iv.next30.i.prol = add nuw nsw i64 %.1.in24.i.prol, 1 ; 2 uses
  %indvars.iv.next30.i.prol.a = add nuw i64 %indvars.iv29.i.prol.a, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !145

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph26.i.a
  %indvars.iv29.i.unr.a = phi i64 [ %indvars.iv31.i.ph, %.lr.ph26.i.a ], [ %indvars.iv.next30.i.prol.a, %.prol.preheader ]
  %.1.in24.i.unr = phi i64 [ %indvars.iv29.i.ph, %.lr.ph26.i.a ], [ %indvars.iv.next30.i.prol, %.prol.preheader ]
  %i.aq = icmp ult i32 %i.am, 3
  br i1 %i.aq, label %._crit_edge27.loopexit.i, label %.lr.ph26.i.new

.lr.ph26.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph26.i.new
  %indvars.iv29.i.a = phi i64 [ %indvars.iv.next30.i.3.a, %.lr.ph26.i.new ], [ %indvars.iv29.i.unr.a, %.prol.loopexit ] ; 5 uses
  %.1.in24.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph26.i.new ], [ %.1.in24.i.unr, %.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.1.in24.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv29.i.a
  store i32 %i.as, ptr %i.at, align 4, !tbaa !33
  %21 = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.1.in24.i
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.au = load i32, ptr %22, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv29.i.a
  %23 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.au, ptr %23, align 4, !tbaa !33
  %24 = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.1.in24.i
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.aw = load i32, ptr %25, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv29.i.a
  %26 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.aw, ptr %26, align 4, !tbaa !33
  %27 = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.1.in24.i
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.ay = load i32, ptr %28, align 4, !tbaa !33
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv29.i.a
  %29 = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 %i.ay, ptr %29, align 4, !tbaa !33
  %indvars.iv.next30.i.3 = add nuw nsw i64 %.1.in24.i, 4
  %indvars.iv.next30.i.3.a = add nuw i64 %indvars.iv29.i.a, 4 ; 2 uses
  %i.ba = trunc i64 %indvars.iv.next30.i.3.a to i32
  %exitcond.not.3 = icmp eq i32 %5, %i.ba
  br i1 %exitcond.not.3, label %._crit_edge27.loopexit.i, label %.lr.ph26.i.new, !llvm.loop !146

._crit_edge27.loopexit.i:                         ; preds = %.prol.loopexit, %.lr.ph26.i.new, %middle.block
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !12
  %.val38.pre.pre = load i32, ptr %i.d, align 8, !tbaa !110
  br label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %._crit_edge27.loopexit.i, %.preheader.i
  %.val38.pre = phi i32 [ %.val38.pre.pre, %._crit_edge27.loopexit.i ], [ %.val42, %.preheader.i ]
  %i.bb = phi i32 [ %.pre.i, %._crit_edge27.loopexit.i ], [ %.val345367, %.preheader.i ]
  %i.bc = add nsw i32 %i.bb, -1                   ; 3 uses
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !12
  %.pre = load i32, ptr %i.x, align 4, !tbaa !33
  br label %Vec_IntRemove.exit

Vec_IntRemove.exit:                               ; preds = %bb.f, %._crit_edge.loopexit.i, %._crit_edge27.i
  %.val34.pre.pre8186 = phi i32 [ %i.bc, %._crit_edge27.i ], [ %.val34.pre.pre8187, %._crit_edge.loopexit.i ], [ %.val34.pre.pre8187, %bb.f ]
  %i.bd = phi i32 [ %i.bc, %._crit_edge27.i ], [ %.val345367, %._crit_edge.loopexit.i ], [ %.val345367, %bb.f ] ; 7 uses
  %i.be = phi i32 [ %.pre, %._crit_edge27.i ], [ %i.y, %._crit_edge.loopexit.i ], [ %i.y, %bb.f ] ; 2 uses
  %.val38 = phi i32 [ %.val38.pre, %._crit_edge27.i ], [ %.val42, %._crit_edge.loopexit.i ], [ %.val42, %bb.f ]
  %.not50 = icmp eq i32 %i.be, %.val38
  br i1 %.not50, label %bb.k, label %bb.g

bb.g:                                             ; preds = %Vec_IntRemove.exit
  %i.bf = load i32, ptr %3, align 8, !tbaa !13
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp slt i32 %i.bd, 16
  br i1 %i.bh, label %Vec_IntGrow.exit11.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp samesign ult i32 %i.bd, 1073741823
  %i.bj = shl nuw nsw i32 %i.bd, 1
  %spec.select.i = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bd, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = zext nneg i32 %spec.select.i to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.bl, %bb.j ], [ 64, %bb.h ]
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %bb.h ]
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %.val, i64 noundef %.sink) #35 ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !13
  %.pre69 = load i32, ptr %i.b, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.i, %Vec_IntGrow.exit11.sink.split.i
  %i.bn = phi i32 [ %i.bd, %bb.g ], [ %i.bd, %bb.i ], [ %.pre69, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bo = phi ptr [ %.val, %bb.g ], [ %.val, %bb.i ], [ %i.bm, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bp = add nsw i32 %i.bn, 1
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !12
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.r, ptr %i.br, align 4, !tbaa !33
  %i.bs = tail call i32 @Gia_WinTryAddingNode(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef -1, ptr noundef %1, ptr noundef %2) ; 0 uses
  %.val38.1.pre = load i32, ptr %i.d, align 8, !tbaa !110
  %.val39.1.pre = load ptr, ptr %i.e, align 8, !tbaa !111
  %.val34.pre.pre81.pre = load i32, ptr %i.b, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntRemove.exit, %Vec_IntPush.exit
  %.val34.pre.pre81 = phi i32 [ %.val34.pre.pre8186, %Vec_IntRemove.exit ], [ %.val34.pre.pre81.pre, %Vec_IntPush.exit ] ; 9 uses
  %.val39.1 = phi ptr [ %.val43, %Vec_IntRemove.exit ], [ %.val39.1.pre, %Vec_IntPush.exit ]
  %.val38.1 = phi i32 [ %i.be, %Vec_IntRemove.exit ], [ %.val38.1.pre, %Vec_IntPush.exit ]
  %i.bt = sext i32 %i.v to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val39.1, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33
  %.not50.1 = icmp eq i32 %i.bv, %.val38.1
  br i1 %.not50.1, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = load i32, ptr %3, align 8, !tbaa !13
  %i.bx = icmp eq i32 %.val34.pre.pre81, %i.bw
  br i1 %i.bx, label %bb.m, label %.Vec_IntPush.exit.1_crit_edge

.Vec_IntPush.exit.1_crit_edge:                    ; preds = %bb.l
  %.pre72 = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %Vec_IntPush.exit.1

bb.m:                                             ; preds = %bb.l
  %i.by = icmp slt i32 %.val34.pre.pre81, 16
  br i1 %i.by, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp samesign ult i32 %.val34.pre.pre81, 1073741823
  %i.ca = shl nuw nsw i32 %.val34.pre.pre81, 1
  %spec.select.i.1 = select i1 %i.bz, i32 %i.ca, i32 2147483647 ; 4 uses
  %.not.i9.i.1 = icmp samesign ult i32 %.val34.pre.pre81, %spec.select.i.1
  %.pre73 = load ptr, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i.1, label %bb.o, label %Vec_IntPush.exit.1

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i.1 = icmp eq ptr %.pre73, null
  %i.cb = zext nneg i32 %spec.select.i.1 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  br i1 %.not9.i10.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = tail call ptr @realloc(ptr noundef nonnull %.pre73, i64 noundef %i.cc) #35
  br label %Vec_IntGrow.exit11.sink.split.i.1

bb.q:                                             ; preds = %bb.o
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cc) #36
  br label %Vec_IntGrow.exit11.sink.split.i.1

bb.r:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i.1 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.1

bb.t:                                             ; preds = %bb.r
  %i.ch = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i.1

Vec_IntGrow.exit11.sink.split.i.1:                ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %storemerge.1 = phi ptr [ %i.ch, %bb.t ], [ %i.cg, %bb.s ], [ %i.cd, %bb.p ], [ %i.ce, %bb.q ] ; 2 uses
  %spec.select.sink.i.1 = phi i32 [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i.1, %bb.p ], [ %spec.select.i.1, %bb.q ]
  store ptr %storemerge.1, ptr %i.a, align 8, !tbaa !8
  store i32 %spec.select.sink.i.1, ptr %3, align 8, !tbaa !13
  %.pre74 = load i32, ptr %i.b, align 4, !tbaa !12
  br label %Vec_IntPush.exit.1

Vec_IntPush.exit.1:                               ; preds = %.Vec_IntPush.exit.1_crit_edge, %Vec_IntGrow.exit11.sink.split.i.1, %bb.n
  %i.ci = phi i32 [ %.val34.pre.pre81, %.Vec_IntPush.exit.1_crit_edge ], [ %.pre74, %Vec_IntGrow.exit11.sink.split.i.1 ], [ %.val34.pre.pre81, %bb.n ] ; 2 uses
  %i.cj = phi ptr [ %.pre72, %.Vec_IntPush.exit.1_crit_edge ], [ %storemerge.1, %Vec_IntGrow.exit11.sink.split.i.1 ], [ %.pre73, %bb.n ]
  %i.ck = add nsw i32 %i.ci, 1
  store i32 %i.ck, ptr %i.b, align 4, !tbaa !12
  %i.cl = sext i32 %i.ci to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cl
  store i32 %i.v, ptr %i.cm, align 4, !tbaa !33
  %i.cn = tail call i32 @Gia_WinTryAddingNode(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef -1, ptr noundef %1, ptr noundef %2) ; 0 uses
  %.val34.pre.pre = load i32, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %Vec_IntPush.exit.1, %bb.d, %bb.b
  %.val34.pre.pre8188 = phi i32 [ %.val34.pre.pre8187, %bb.b ], [ %.val34.pre.pre8187, %bb.d ], [ %.val34.pre.pre, %Vec_IntPush.exit.1 ], [ %.val34.pre.pre81, %bb.k ] ; 2 uses
  %.val34 = phi i32 [ %.val3478, %bb.b ], [ %.val3478, %bb.d ], [ %.val34.pre.pre, %Vec_IntPush.exit.1 ], [ %.val34.pre.pre81, %bb.k ] ; 5 uses
  %.2 = phi i32 [ %.155, %bb.b ], [ %.155, %bb.d ], [ 1, %Vec_IntPush.exit.1 ], [ 1, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = sext i32 %.val34 to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %.lr.ph, label %.critedge, !llvm.loop !147

.critedge:                                        ; preds = %.lr.ph, %.loopexit
  %.val34.pre.pre8185 = phi i32 [ %.val34.pre.pre8187, %.lr.ph ], [ %.val34.pre.pre8188, %.loopexit ]
  %.val3477 = phi i32 [ %.val3478, %.lr.ph ], [ %.val34, %.loopexit ]
  %.val345366 = phi i32 [ %.val345367, %.lr.ph ], [ %.val34, %.loopexit ]
  %.1.lcssa.ph = phi i32 [ %.155, %.lr.ph ], [ %.2, %.loopexit ]
  %i.cq = icmp eq i32 %.1.lcssa.ph, 0
  br i1 %i.cq, label %.split60.us, label %.preheader, !llvm.loop !148

.split60.us:                                      ; preds = %.preheader, %.critedge, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Gia_RsbSelectOneInput(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val2735 = load i32, ptr %i.b, align 4, !tbaa !12
  %i.c = icmp sgt i32 %.val2735, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.038 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.f ] ; 3 uses
  %.02037 = phi i32 [ 0, %.lr.ph ], [ %.222, %bb.f ] ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 3 uses
  %.val28 = load ptr, ptr %i.d, align 8, !tbaa !100 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [12 x i8], ptr %.val28, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %.val28, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val29 = load i64, ptr %i.h, align 4           ; 4 uses
  %i.i = and i64 %.val29, 2147483648
  %.not.i = icmp ne i64 %i.i, 0
  %i.j = and i64 %.val29, 536870911
  %i.k = icmp eq i64 %i.j, 536870911
  %narrow.i.not = or i1 %.not.i, %i.k
  br i1 %narrow.i.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc i64 %.val29 to i32
  %i.m = and i32 %i.l, 536870911
  %i.n = sub nsw i32 %i.f, %i.m
  %i.o = lshr i64 %.val29, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i32 %i.p, 536870911
  %i.r = sub nsw i32 %i.f, %i.q
  %i.s = tail call i32 @Gia_WinTryAddingNode(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.r, ptr noundef %1, ptr noundef null) ; 2 uses
  %i.t = icmp slt i32 %.038, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.h to i64
  %.val30 = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.v = ptrtoint ptr %.val30 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 12
  %i.y = trunc i64 %i.x to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.222 = phi i32 [ %.02037, %bb.c ], [ %i.y, %bb.e ], [ %.02037, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.038, %bb.c ], [ %i.s, %bb.e ], [ %.038, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val27 = load i32, ptr %i.b, align 4, !tbaa !12
  %i.z = sext i32 %.val27 to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.b, label %.critedge, !llvm.loop !150

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.a
  %.020.lcssa = phi i32 [ 0, %bb.a ], [ %.222, %bb.f ], [ %.02037, %bb.b ]
  ret i32 %.020.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_RsbWindowGrow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  tail call void @Gia_RsbAddSideInputs(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @Gia_RsbExpandInputs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.b = getelementptr i8, ptr %3, i64 4          ; 6 uses
  %.val43 = load i32, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp slt i32 %.val43, %4
  %i.d = icmp sgt i32 %.val43, 0
  %or.cond44 = and i1 %i.c, %i.d
  br i1 %or.cond44, label %.lr.ph.i.lr.ph, label %.critedge

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32         ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.lr.ph
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %indvars.iv.i.be, %.lr.ph.i.backedge ] ; 2 uses
  %.038.i = phi i32 [ -1, %.lr.ph.i.lr.ph ], [ %.038.i.be, %.lr.ph.i.backedge ] ; 3 uses
  %.02037.i = phi i32 [ 0, %.lr.ph.i.lr.ph ], [ %.02037.i.be, %.lr.ph.i.backedge ] ; 3 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33   ; 3 uses
  %.val28.i = load ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %.val28.i, i64 %i.h ; 2 uses
  %.not.i = icmp eq ptr %.val28.i, null
  br i1 %.not.i, label %Gia_RsbSelectOneInput.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.val29.i = load i64, ptr %i.i, align 4         ; 4 uses
  %i.j = and i64 %.val29.i, 2147483648
  %.not.i.i = icmp ne i64 %i.j, 0
  %i.k = and i64 %.val29.i, 536870911
  %i.l = icmp eq i64 %i.k, 536870911
  %narrow.i.not.i = or i1 %.not.i.i, %i.l
  br i1 %narrow.i.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i64 %.val29.i to i32
  %i.n = and i32 %i.m, 536870911
  %i.o = sub nsw i32 %i.g, %i.n
  %i.p = lshr i64 %.val29.i, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = and i32 %i.q, 536870911
  %i.s = sub nsw i32 %i.g, %i.r
  %i.t = tail call i32 @Gia_WinTryAddingNode(ptr noundef nonnull readonly %0, i32 noundef %i.o, i32 noundef %i.s, ptr noundef %1, ptr noundef null) ; 2 uses
  %i.u = icmp slt i32 %.038.i, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %i.i to i64
  %.val30.i = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.w = ptrtoint ptr %.val30.i to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 12
  %i.z = trunc i64 %i.y to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.222.i = phi i32 [ %.02037.i, %bb.b ], [ %i.z, %bb.d ], [ %.02037.i, %bb.c ] ; 2 uses
  %.2.i = phi i32 [ %.038.i, %bb.b ], [ %i.t, %bb.d ], [ %.038.i, %bb.c ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val27.i = load i32, ptr %i.b, align 4, !tbaa !12
  %i.aa = sext i32 %.val27.i to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.backedge, label %Gia_RsbSelectOneInput.exit

.lr.ph.i.backedge:                                ; preds = %bb.e, %Vec_IntRemove.exit
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %Vec_IntRemove.exit ]
  %.038.i.be = phi i32 [ %.2.i, %bb.e ], [ -1, %Vec_IntRemove.exit ]
  %.02037.i.be = phi i32 [ %.222.i, %bb.e ], [ 0, %Vec_IntRemove.exit ]
  br label %.lr.ph.i, !llvm.loop !151

Gia_RsbSelectOneInput.exit:                       ; preds = %.lr.ph.i, %bb.e
  %.020.lcssa.i = phi i32 [ %.02037.i, %.lr.ph.i ], [ %.222.i, %bb.e ] ; 5 uses
  %.not = icmp eq i32 %.020.lcssa.i, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %Gia_RsbSelectOneInput.exit
  %.val32 = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.ac = sext i32 %.020.lcssa.i to i64
  %i.ad = getelementptr inbounds [12 x i8], ptr %.val32, i64 %i.ac
  %.val.i35 = load i64, ptr %i.ad, align 4        ; 2 uses
  %i.ae = trunc i64 %.val.i35 to i32
  %i.af = and i32 %i.ae, 536870911
  %i.ag = sub nsw i32 %.020.lcssa.i, %i.af        ; 2 uses
  %i.ah = lshr i64 %.val.i35, 32
  %i.ai = trunc nuw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 536870911
  %i.ak = sub nsw i32 %.020.lcssa.i, %i.aj        ; 2 uses
  %i.al = tail call i32 @Gia_WinTryAddingNode(ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.ak, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.am = load i32, ptr %i.b, align 4, !tbaa !12  ; 6 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i37, label %._crit_edge.i

.lr.ph.i37:                                       ; preds = %bb.f
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !8
  %wide.trip.count.i = zext nneg i32 %i.am to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i37
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i39, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i38
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33
  %i.ar = icmp eq i32 %i.aq, %.020.lcssa.i
  br i1 %i.ar, label %._crit_edge.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntRemove.exit, label %bb.g, !llvm.loop !143

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.as = trunc nuw nsw i64 %indvars.iv.i38 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.f
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.as, %._crit_edge.loopexit.i ] ; 4 uses
  %i.at = icmp eq i32 %.0.lcssa.i, %i.am
  br i1 %i.at, label %Vec_IntRemove.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.123.i = add nuw nsw i32 %.0.lcssa.i, 1
  %i.au = icmp slt i32 %.123.i, %i.am
  br i1 %i.au, label %.lr.ph26.i, label %._crit_edge27.i

.lr.ph26.i:                                       ; preds = %.preheader.i
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.aw = zext i32 %.0.lcssa.i to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.av, i64 %i.ax
  %scevgep46 = getelementptr nuw i8, ptr %i.av, i64 4
  %scevgep47 = getelementptr nuw i8, ptr %scevgep46, i64 %i.ax
  %i.ay = add i32 %i.am, -2
  %i.az = sub i32 %i.ay, %.0.lcssa.i
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep47, i64 %i.bc, i1 false), !tbaa !33
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !12
  br label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.lr.ph26.i, %.preheader.i
  %i.bd = phi i32 [ %.pre.i, %.lr.ph26.i ], [ %i.am, %.preheader.i ]
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.b, align 4, !tbaa !12
  br label %Vec_IntRemove.exit

Vec_IntRemove.exit:                               ; preds = %bb.h, %._crit_edge.i, %._crit_edge27.i
  tail call fastcc void @Vec_IntPushTwo(ptr noundef %3, i32 noundef %i.ag, i32 noundef %i.ak)
  tail call void @Gia_RsbExpandInputs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %.val = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.bf = icmp slt i32 %.val, %4
  %i.bg = icmp sgt i32 %.val, 0
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %.lr.ph.i.backedge, label %.critedge

.critedge:                                        ; preds = %Gia_RsbSelectOneInput.exit, %Vec_IntRemove.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_WinCreateFromCut_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %.val19 = load i32, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 624
  %.val20 = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val20, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %.not = icmp eq i32 %i.e, %.val19
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val19, ptr %i.d, align 4, !tbaa !33
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.g = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.c ; 2 uses
  %.val15 = load i64, ptr %i.g, align 4
  %i.h = trunc i64 %.val15 to i32
  %i.i = and i32 %i.h, 536870911
  %i.j = sub nsw i32 %1, %i.i
  tail call void @Gia_WinCreateFromCut_rec(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef %2)
  %.val16 = load i64, ptr %i.g, align 4
  %i.k = lshr i64 %.val16, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = and i32 %i.l, 536870911
  %i.n = sub nsw i32 %1, %i.m
  tail call void @Gia_WinCreateFromCut_rec(ptr noundef nonnull %0, i32 noundef %i.n, ptr noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 7 uses
  %i.q = load i32, ptr %2, align 8, !tbaa !13
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.x = phi ptr [ %i.v, %bb.e ], [ %i.w, %bb.f ]
  store ptr %i.x, ptr %i.t, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i32 %i.p, 1073741823
  %i.z = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ab, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #35
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = phi ptr [ %i.ae, %bb.i ], [ %i.af, %bb.j ]
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !13
  %.pre = load i32, ptr %i.o, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ah = phi i32 [ %i.p, %bb.b ], [ %i.p, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !12
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  store i32 %1, ptr %i.am, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_WinCreateFromCut(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef initializes((4, 8)) %4) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 6 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 100, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 10 uses
  store i32 0, ptr %i.e, align 4, !tbaa !12
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #34
  %i.f = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val90181 = load i32, ptr %i.f, align 4, !tbaa !12
  %i.g = icmp sgt i32 %.val90181, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 8
  %i.i = getelementptr i8, ptr %0, i64 176
  %i.j = getelementptr i8, ptr %0, i64 624
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.val86 = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 2 uses
  %.val95 = load i32, ptr %i.i, align 8, !tbaa !110
  %.val96 = load ptr, ptr %i.j, align 8, !tbaa !111
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.val96, i64 %i.n
  store i32 %.val95, ptr %i.o, align 4, !tbaa !33
  %i.p = load i32, ptr %i.e, align 4, !tbaa !12   ; 7 uses
  %i.q = load i32, ptr %4, align 8, !tbaa !13
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !8
  br label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.w = icmp samesign ult i32 %i.p, 1073741823
  %i.x = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  %.pre223 = load ptr, ptr %i.k, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre223, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %.pre223, i64 noundef %i.z) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.ac = phi ptr [ %i.v, %bb.f ], [ %i.u, %bb.e ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !13
  %.pre224 = load i32, ptr %i.e, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ad = phi i32 [ %i.p, %.Vec_IntPush.exit_crit_edge ], [ %i.p, %bb.g ], [ %.pre224, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre223, %bb.g ], [ %i.ac, %Vec_IntGrow.exit11.sink.split.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.e, align 4, !tbaa !12
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  store i32 %i.m, ptr %i.ah, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val90 = load i32, ptr %i.f, align 4, !tbaa !12
  %i.ai = sext i32 %.val90 to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %.critedge, !llvm.loop !152

.critedge:                                        ; preds = %Vec_IntPush.exit, %bb.a
  tail call void @Gia_WinCreateFromCut_rec(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %.val89183 = load i32, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %i.ak = icmp sgt i32 %.val89183, 0
  br i1 %i.ak, label %.lr.ph185, label %.critedge2.preheader

.lr.ph185:                                        ; preds = %.critedge
  %i.al = getelementptr i8, ptr %4, i64 8
  %i.am = getelementptr i8, ptr %0, i64 160       ; 2 uses
  br label %bb.k

.critedge2.preheader:                             ; preds = %Gia_ObjLevelId.exit126, %.critedge
  %.val108242 = phi i32 [ %.val89183, %.critedge ], [ %.val89, %Gia_ObjLevelId.exit126 ]
  %.val88198 = load i32, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.an = icmp sgt i32 %.val88198, 0
  br i1 %i.an, label %.lr.ph200, label %.critedge4

.lr.ph200:                                        ; preds = %.critedge2.preheader
  %i.ao = getelementptr i8, ptr %3, i64 8         ; 4 uses
  %i.ap = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %i.aq = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 248       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !8
  br label %bb.aj

bb.k:                                             ; preds = %.lr.ph185, %Gia_ObjLevelId.exit126
  %indvars.iv214 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next215, %Gia_ObjLevelId.exit126 ] ; 2 uses
  %.val85 = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val85, i64 %indvars.iv214
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33 ; 13 uses
  %.val98 = load ptr, ptr %i.am, align 8, !tbaa !112 ; 7 uses
  %i.az = add nsw i32 %i.ay, 1                    ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val98, i64 4 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.ay, %i.bb
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %.val98, align 8, !tbaa !13 ; 4 uses
  %i.bd = shl nsw i32 %i.bc, 1                    ; 2 uses
  %.not.i.i = icmp slt i32 %i.ay, %i.bd
  %.not.i.i.not.i.i = icmp sgt i32 %i.bc, %i.ay   ; 2 uses
  br i1 %.not.i.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.val98, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, null
  %i.bg = sext i32 %i.az to i64
  %i.bh = shl nsw i64 %i.bg, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef %i.bh) #35
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bh) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = phi ptr [ %i.bi, %bb.o ], [ %i.bj, %bb.p ]
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.r:                                             ; preds = %bb.l
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp slt i32 %i.bc, 1073741823
  %spec.select.i.i.i = select i1 %i.bl, i32 %i.bd, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.bc, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.t, label %Vec_IntGrow.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %.val98, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = sext i32 %spec.select.i.i.i to i64
  %i.bp = shl nsw i64 %i.bo, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef %i.bp) #35
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bs = phi ptr [ %i.bq, %bb.u ], [ %i.br, %bb.v ]
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.w, %bb.q
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.w ], [ %i.az, %bb.q ]
  store i32 %spec.select.sink.i.i.i, ptr %.val98, align 8, !tbaa !13
  %.pre.i.i = load i32, ptr %i.ba, align 4, !tbaa !12
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.s, %bb.r, %bb.m
  %i.bt = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.bb, %bb.s ], [ %i.bb, %bb.r ], [ %i.bb, %bb.m ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.bt, %i.ay
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val98, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8
  %i.bw = sext i32 %i.bt to i64
  %i.bx = shl nsw i64 %i.bw, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.bv, i64 %i.bx
  %i.by = sub i32 %i.ay, %i.bt
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.cb, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !12
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.k, %._crit_edge.i.i.i
  %i.cc = getelementptr i8, ptr %.val98, i64 8
  %.val.i.i = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.cd = sext i32 %i.ay to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33
  tail call fastcc void @Vec_WecPush(ptr noundef %3, i32 noundef %i.cf, i32 noundef %i.ay)
  %.val97 = load ptr, ptr %i.am, align 8, !tbaa !112 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val97, i64 4 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12 ; 4 uses
  %.not.i.not.i.i110 = icmp slt i32 %i.ay, %i.ch
  br i1 %.not.i.not.i.i110, label %Gia_ObjLevelId.exit126, label %bb.x

bb.x:                                             ; preds = %Gia_ObjLevelId.exit
  %i.ci = load i32, ptr %.val97, align 8, !tbaa !13 ; 4 uses
  %i.cj = shl nsw i32 %i.ci, 1                    ; 2 uses
  %.not.i.i111 = icmp slt i32 %i.ay, %i.cj
  %.not.i.i.not.i.i112 = icmp sgt i32 %i.ci, %i.ay ; 2 uses
  br i1 %.not.i.i111, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i.i.not.i.i112, label %Vec_IntGrow.exit.i.i.i117, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.val97, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i113 = icmp eq ptr %i.cl, null
  %i.cm = sext i32 %i.az to i64
  %i.cn = shl nsw i64 %i.cm, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i113, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = tail call ptr @realloc(ptr noundef nonnull %i.cl, i64 noundef %i.cn) #35
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.cn) #36
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cq = phi ptr [ %i.co, %bb.aa ], [ %i.cp, %bb.ab ]
  store ptr %i.cq, ptr %i.ck, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i114

bb.ad:                                            ; preds = %bb.x
  br i1 %.not.i.i.not.i.i112, label %Vec_IntGrow.exit.i.i.i117, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = icmp slt i32 %i.ci, 1073741823
  %spec.select.i.i.i123 = select i1 %i.cr, i32 %i.cj, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i124 = icmp slt i32 %i.ci, %spec.select.i.i.i123
  br i1 %.not.i22.i.i.i124, label %bb.af, label %Vec_IntGrow.exit.i.i.i117

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %.val97, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i125 = icmp eq ptr %i.ct, null
  %i.cu = sext i32 %spec.select.i.i.i123 to i64
  %i.cv = shl nsw i64 %i.cu, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i125, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = tail call ptr @realloc(ptr noundef nonnull %i.ct, i64 noundef %i.cv) #35
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cx = tail call noalias ptr @malloc(i64 noundef %i.cv) #36
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cy = phi ptr [ %i.cw, %bb.ag ], [ %i.cx, %bb.ah ]
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i114

Vec_IntGrow.exit.sink.split.i.i.i114:             ; preds = %bb.ai, %bb.ac
  %spec.select.sink.i.i.i115 = phi i32 [ %spec.select.i.i.i123, %bb.ai ], [ %i.az, %bb.ac ]
  store i32 %spec.select.sink.i.i.i115, ptr %.val97, align 8, !tbaa !13
  %.pre.i.i116 = load i32, ptr %i.cg, align 4, !tbaa !12
  br label %Vec_IntGrow.exit.i.i.i117

Vec_IntGrow.exit.i.i.i117:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i114, %bb.ae, %bb.ad, %bb.y
  %i.cz = phi i32 [ %.pre.i.i116, %Vec_IntGrow.exit.sink.split.i.i.i114 ], [ %i.ch, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.ch, %bb.y ] ; 3 uses
  %.not3.i.i118 = icmp sgt i32 %i.cz, %i.ay
  br i1 %.not3.i.i118, label %._crit_edge.i.i.i121, label %.lr.ph.i.i.i119

.lr.ph.i.i.i119:                                  ; preds = %Vec_IntGrow.exit.i.i.i117
  %i.da = getelementptr inbounds nuw i8, ptr %.val97, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dc = sext i32 %i.cz to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %scevgep.i.i.i120 = getelementptr i8, ptr %i.db, i64 %i.dd
  %i.de = sub i32 %i.ay, %i.cz
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i120, i8 0, i64 %i.dh, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i121

._crit_edge.i.i.i121:                             ; preds = %.lr.ph.i.i.i119, %Vec_IntGrow.exit.i.i.i117
  store i32 %i.az, ptr %i.cg, align 4, !tbaa !12
  br label %Gia_ObjLevelId.exit126

Gia_ObjLevelId.exit126:                           ; preds = %Gia_ObjLevelId.exit, %._crit_edge.i.i.i121
  %i.di = getelementptr i8, ptr %.val97, i64 8
  %.val.i.i122 = load ptr, ptr %i.di, align 8, !tbaa !8
  %i.dj = getelementptr inbounds [4 x i8], ptr %.val.i.i122, i64 %i.cd
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !33
  tail call fastcc void @Vec_IntPushUniqueOrder(ptr noundef nonnull %i.a, i32 noundef %i.dk)
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %.val89 = load i32, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %i.dl = sext i32 %.val89 to i64
  %i.dm = icmp slt i64 %indvars.iv.next215, %i.dl
  br i1 %i.dm, label %bb.k, label %.critedge2.preheader, !llvm.loop !153

bb.aj:                                            ; preds = %.lr.ph200, %.critedge6
  %.val88239 = phi i32 [ %.val88198, %.lr.ph200 ], [ %.val88, %.critedge6 ]
  %indvars.iv220 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next221, %.critedge6 ] ; 2 uses
  %storemerge201 = phi ptr [ %.promoted, %.lr.ph200 ], [ %storemerge202, %.critedge6 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %storemerge201, i64 %indvars.iv220
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !33
  %.val99 = load ptr, ptr %i.ao, align 8, !tbaa !115
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %.val99, i64 %i.dp ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = getelementptr i8, ptr %i.dq, i64 4      ; 3 uses
  %.val87194 = load i32, ptr %i.ds, align 4, !tbaa !12 ; 2 uses
  %i.dt = icmp sgt i32 %.val87194, 0
  br i1 %i.dt, label %.lr.ph196.preheader, label %.critedge6

.lr.ph196.preheader:                              ; preds = %bb.aj
  %.val91.pre = load ptr, ptr %i.ap, align 8, !tbaa !100
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %.critedge8
  %.val87237 = phi i32 [ %.val87194, %.lr.ph196.preheader ], [ %.val87, %.critedge8 ]
  %.val100186 = phi ptr [ %.val91.pre, %.lr.ph196.preheader ], [ %.val100186228, %.critedge8 ] ; 5 uses
  %indvars.iv217 = phi i64 [ 0, %.lr.ph196.preheader ], [ %indvars.iv.next218, %.critedge8 ] ; 2 uses
  %storemerge203 = phi ptr [ %storemerge201, %.lr.ph196.preheader ], [ %storemerge204, %.critedge8 ] ; 3 uses
  %.not = icmp eq ptr %.val100186, null
  br i1 %.not, label %.critedge6.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph196
  %.val = load ptr, ptr %i.dr, align 8, !tbaa !8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv217
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !33
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds [12 x i8], ptr %.val100186, i64 %i.dw
  %i.dy = ptrtoint ptr %i.dx to i64
  %.val101187 = load ptr, ptr %i.ar, align 8, !tbaa !118
  %i.dz = getelementptr i8, ptr %.val101187, i64 8
  %.val101.val188 = load ptr, ptr %i.dz, align 8, !tbaa !8
  %i.ea = shl nsw i64 %i.dw, 2                    ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.val101.val188, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph192.preheader, label %.critedge8

.lr.ph192.preheader:                              ; preds = %.preheader
  %.val103299 = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.ee = getelementptr i8, ptr %.val103299, i64 8
  %.val103.val300 = load ptr, ptr %i.ee, align 8, !tbaa !8 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.val103.val300, i64 %i.ea
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !33
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val103.val300, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !33 ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [12 x i8], ptr %.val100186, i64 %i.ek
  br label %bb.ak

.lr.ph192:                                        ; preds = %Vec_IntPushUniqueOrder.exit
  %.val103 = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.em = getelementptr i8, ptr %.val103, i64 8
  %.val103.val = load ptr, ptr %i.em, align 8, !tbaa !8 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.val103.val, i64 %i.mc
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !33
  %i.ep = add nsw i32 %i.eo, %i.lx
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %.val103.val, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !33 ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds [12 x i8], ptr %.val100, i64 %i.et
  %i.ev = icmp eq i32 %i.lx, 5
  br i1 %i.ev, label %.critedge8.loopexit, label %bb.ak, !llvm.loop !154

bb.ak:                                            ; preds = %.lr.ph192.preheader, %.lr.ph192
  %i.ew = phi ptr [ %i.el, %.lr.ph192.preheader ], [ %i.eu, %.lr.ph192 ] ; 2 uses
  %i.ex = phi i64 [ %i.ek, %.lr.ph192.preheader ], [ %i.et, %.lr.ph192 ] ; 3 uses
  %i.ey = phi i32 [ %i.ej, %.lr.ph192.preheader ], [ %i.es, %.lr.ph192 ] ; 6 uses
  %.0190303 = phi i32 [ 0, %.lr.ph192.preheader ], [ %i.lx, %.lr.ph192 ]
  %storemerge205302 = phi ptr [ %storemerge203, %.lr.ph192.preheader ], [ %storemerge206, %.lr.ph192 ] ; 12 uses
  %.val100186230301 = phi ptr [ %.val100186, %.lr.ph192.preheader ], [ %.val100, %.lr.ph192 ]
  %.val92 = load i64, ptr %i.ew, align 4          ; 3 uses
  %i.ez = and i64 %.val92, 2147483648
  %.not.i = icmp ne i64 %i.ez, 0
  %i.fa = and i64 %.val92, 536870911              ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 536870911
  %narrow.i.not = or i1 %.not.i, %i.fb
  br i1 %narrow.i.not, label %Vec_IntPushUniqueOrder.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = load ptr, ptr %i.as, align 8, !tbaa !111 ; 3 uses
  %i.fd = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.fe = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !33
  %i.fh = load i32, ptr %i.at, align 8, !tbaa !110 ; 4 uses
  %.not171 = icmp eq i32 %i.fg, %i.fh
  br i1 %.not171, label %Vec_IntPushUniqueOrder.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %reass.add = sub nsw i64 %i.ex, %i.fa
  %sext.i130 = shl i64 %reass.add, 32
  %i.fi = ashr exact i64 %sext.i130, 30
  %i.fj = getelementptr inbounds i8, ptr %i.fc, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !33
  %.not173 = icmp eq i32 %i.fk, %i.fh
  br i1 %.not173, label %bb.an, label %Vec_IntPushUniqueOrder.exit

bb.an:                                            ; preds = %bb.am
  %i.fl = lshr i64 %.val92, 32
  %i.fm = and i64 %i.fl, 536870911
  %reass.add178 = sub nsw i64 %i.ex, %i.fm
  %sext.i132 = shl i64 %reass.add178, 32
  %i.fn = ashr exact i64 %sext.i132, 30
  %i.fo = getelementptr inbounds i8, ptr %i.fc, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !33
  %.not176 = icmp eq i32 %i.fp, %i.fh
  br i1 %.not176, label %bb.ao, label %Vec_IntPushUniqueOrder.exit

bb.ao:                                            ; preds = %bb.an
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !33
  %.val107 = load ptr, ptr %i.au, align 8, !tbaa !112 ; 7 uses
  %i.fq = add nsw i32 %i.ey, 1                    ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val107, i64 4 ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12 ; 4 uses
  %.not.i.not.i.i.i = icmp sgt i32 %i.fs, %i.ey
  br i1 %.not.i.not.i.i.i, label %Gia_ObjLevel.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load i32, ptr %.val107, align 8, !tbaa !13 ; 4 uses
  %i.fu = shl nsw i32 %i.ft, 1                    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.fu, %i.ey
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.ft, %i.ey ; 2 uses
  br i1 %.not.i.i.i, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %.val107, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fw, null
  %i.fx = sext i32 %i.fq to i64
  %i.fy = shl nsw i64 %i.fx, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = tail call ptr @realloc(ptr noundef nonnull %i.fw, i64 noundef %i.fy) #35
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ga = tail call noalias ptr @malloc(i64 noundef %i.fy) #36
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gb = phi ptr [ %i.fz, %bb.as ], [ %i.ga, %bb.at ]
  store ptr %i.gb, ptr %i.fv, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.av:                                            ; preds = %bb.ap
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = icmp slt i32 %i.ft, 1073741823
  %spec.select.i.i.i.i = select i1 %i.gc, i32 %i.fu, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.ft, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.ax, label %Vec_IntGrow.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %.val107, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.ge, null
  %i.gf = sext i32 %spec.select.i.i.i.i to i64
  %i.gg = shl nsw i64 %i.gf, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gh = tail call ptr @realloc(ptr noundef nonnull %i.ge, i64 noundef %i.gg) #35
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.gi = tail call noalias ptr @malloc(i64 noundef %i.gg) #36
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gj = phi ptr [ %i.gh, %bb.ay ], [ %i.gi, %bb.az ]
  store ptr %i.gj, ptr %i.gd, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.ba, %bb.au
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.ba ], [ %i.fq, %bb.au ]
  store i32 %spec.select.sink.i.i.i.i, ptr %.val107, align 8, !tbaa !13
  %.pre.i.i.i = load i32, ptr %i.fr, align 4, !tbaa !12
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.aw, %bb.av, %bb.aq
  %i.gk = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.fs, %bb.aw ], [ %i.fs, %bb.av ], [ %i.fs, %bb.aq ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.gk, %i.ey
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.val107, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !8
  %i.gn = sext i32 %i.gk to i64
  %i.go = shl nsw i64 %i.gn, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.gm, i64 %i.go
  %i.gp = sub i32 %i.ey, %i.gk
  %i.gq = zext i32 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = add nuw nsw i64 %i.gr, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.gs, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !12
  %.val94.pre = load ptr, ptr %i.ap, align 8, !tbaa !100
  br label %Gia_ObjLevel.exit

Gia_ObjLevel.exit:                                ; preds = %bb.ao, %._crit_edge.i.i.i.i
  %.val94 = phi ptr [ %.val100186230301, %bb.ao ], [ %.val94.pre, %._crit_edge.i.i.i.i ]
  %i.gt = getelementptr i8, ptr %.val107, i64 8
  %.val.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !8
  %i.gu = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.fe
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !33 ; 3 uses
  %i.gw = ptrtoint ptr %.val94 to i64
  %i.gx = sub i64 %i.fd, %i.gw
  %i.gy = sdiv exact i64 %i.gx, 12
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load i32, ptr %i.av, align 4, !tbaa !113 ; 2 uses
  %.not.i136 = icmp sgt i32 %i.ha, %i.gv
  br i1 %.not.i136, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %Gia_ObjLevel.exit
  %i.hb = add nsw i32 %i.gv, 1                    ; 2 uses
  %i.hc = shl nsw i32 %i.ha, 1
  %i.hd = tail call noundef i32 @llvm.smax.i32(i32 %i.hc, i32 %i.hb) ; 4 uses
  %i.he = load i32, ptr %3, align 8, !tbaa !121   ; 2 uses
  %.not.i.i137 = icmp slt i32 %i.he, %i.hd
  br i1 %.not.i.i137, label %bb.bc, label %Vec_WecGrow.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.hf = load ptr, ptr %i.ao, align 8, !tbaa !115 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.hf, null
  %i.hg = sext i32 %i.hd to i64
  %i.hh = shl nsw i64 %i.hg, 4                    ; 2 uses
  br i1 %.not13.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = tail call ptr @realloc(ptr noundef nonnull %i.hf, i64 noundef %i.hh) #35
  %.pre.i.i139 = load i32, ptr %3, align 8, !tbaa !121
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.hj = tail call noalias ptr @malloc(i64 noundef %i.hh) #36
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hk = phi i32 [ %.pre.i.i139, %bb.bd ], [ %i.he, %bb.be ] ; 2 uses
  %i.hl = phi ptr [ %i.hi, %bb.bd ], [ %i.hj, %bb.be ] ; 2 uses
  store ptr %i.hl, ptr %i.ao, align 8, !tbaa !115
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [16 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = sub nsw i32 %i.hd, %i.hk
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hn, i8 0, i64 %i.hq, i1 false)
  store i32 %i.hd, ptr %3, align 8, !tbaa !121
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.bf, %bb.bb
  store i32 %i.hb, ptr %i.av, align 4, !tbaa !113
  br label %bb.bg

end_hunk_0
begin_hunk_1_@Gia_WinCreateFromCut:bb.a

Vec_WecPush.exit:                                 ; preds = %bb.bg, %bb.bl, %Vec_IntGrow.exit11.sink.split.i.i
  %i.im = phi i32 [ %i.hu, %bb.bg ], [ %i.hu, %bb.bl ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !8
  %i.ip = add nsw i32 %i.im, 1
  store i32 %i.ip, ptr %i.ht, align 4, !tbaa !12
  %i.iq = sext i32 %i.im to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.iq
  store i32 %i.gz, ptr %i.ir, align 4, !tbaa !33
  %.val93 = load ptr, ptr %i.ap, align 8, !tbaa !100
  %i.is = ptrtoint ptr %.val93 to i64
  %i.it = sub i64 %i.fd, %i.is
  %i.iu = sdiv exact i64 %i.it, 12                ; 3 uses
  %i.iv = trunc i64 %i.iu to i32                  ; 3 uses
  %i.iw = load i32, ptr %i.e, align 4, !tbaa !12  ; 7 uses
  %i.ix = load i32, ptr %4, align 8, !tbaa !13
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.bq, label %Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge

Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge:   ; preds = %Vec_WecPush.exit
  %.pre233 = load ptr, ptr %i.aw, align 8, !tbaa !8
  br label %Vec_IntPush.exit147

bb.bq:                                            ; preds = %Vec_WecPush.exit
  %i.iz = icmp slt i32 %i.iw, 16
  br i1 %i.iz, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ja = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i145 = icmp eq ptr %i.ja, null
  br i1 %.not9.i.i145, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ja, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i143

bb.bt:                                            ; preds = %bb.br
  %i.jc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i143

bb.bu:                                            ; preds = %bb.bq
  %i.jd = icmp samesign ult i32 %i.iw, 1073741823
  %i.je = shl nuw nsw i32 %i.iw, 1
  %spec.select.i140 = select i1 %i.jd, i32 %i.je, i32 2147483647 ; 4 uses
  %.not.i9.i141 = icmp samesign ult i32 %i.iw, %spec.select.i140
  %.pre234 = load ptr, ptr %i.aw, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i141, label %bb.bv, label %Vec_IntPush.exit147

bb.bv:                                            ; preds = %bb.bu
  %.not9.i10.i142 = icmp eq ptr %.pre234, null
  %i.jf = zext nneg i32 %spec.select.i140 to i64
  %i.jg = shl nuw nsw i64 %i.jf, 2                ; 2 uses
  br i1 %.not9.i10.i142, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %.pre234, i64 noundef %i.jg) #35
  br label %Vec_IntGrow.exit11.sink.split.i143

bb.bx:                                            ; preds = %bb.bv
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #36
  br label %Vec_IntGrow.exit11.sink.split.i143

Vec_IntGrow.exit11.sink.split.i143:               ; preds = %bb.bw, %bb.bx, %bb.bs, %bb.bt
  %i.jj = phi ptr [ %i.jc, %bb.bt ], [ %i.jb, %bb.bs ], [ %i.jh, %bb.bw ], [ %i.ji, %bb.bx ] ; 2 uses
  %spec.select.sink.i144 = phi i32 [ 16, %bb.bt ], [ 16, %bb.bs ], [ %spec.select.i140, %bb.bw ], [ %spec.select.i140, %bb.bx ]
  store ptr %i.jj, ptr %i.aw, align 8, !tbaa !8
  store i32 %spec.select.sink.i144, ptr %4, align 8, !tbaa !13
  %.pre235 = load i32, ptr %i.e, align 4, !tbaa !12
  %.val104.pre = load ptr, ptr %i.ap, align 8, !tbaa !100
  %.pre243 = ptrtoint ptr %.val104.pre to i64
  %.pre244 = sub i64 %i.fd, %.pre243
  %.pre246 = sdiv exact i64 %.pre244, 12          ; 2 uses
  %.pre248 = trunc i64 %.pre246 to i32
  br label %Vec_IntPush.exit147

Vec_IntPush.exit147:                              ; preds = %Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge, %bb.bu, %Vec_IntGrow.exit11.sink.split.i143
  %.pre-phi249 = phi i32 [ %i.iv, %Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge ], [ %i.iv, %bb.bu ], [ %.pre248, %Vec_IntGrow.exit11.sink.split.i143 ] ; 6 uses
  %.pre-phi247 = phi i64 [ %i.iu, %Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge ], [ %i.iu, %bb.bu ], [ %.pre246, %Vec_IntGrow.exit11.sink.split.i143 ]
  %i.jk = phi i32 [ %i.iw, %Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge ], [ %i.iw, %bb.bu ], [ %.pre235, %Vec_IntGrow.exit11.sink.split.i143 ] ; 2 uses
  %i.jl = phi ptr [ %.pre233, %Vec_WecPush.exit.Vec_IntPush.exit147_crit_edge ], [ %.pre234, %bb.bu ], [ %i.jj, %Vec_IntGrow.exit11.sink.split.i143 ]
  %i.jm = add nsw i32 %i.jk, 1
  store i32 %i.jm, ptr %i.e, align 4, !tbaa !12
  %i.jn = sext i32 %i.jk to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.jn
  store i32 %i.iv, ptr %i.jo, align 4, !tbaa !33
  %.val105 = load ptr, ptr %i.au, align 8, !tbaa !112 ; 7 uses
  %i.jp = add nsw i32 %.pre-phi249, 1             ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val105, i64 4 ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !12 ; 4 uses
  %.not.i.not.i.i.i148 = icmp sgt i32 %i.jr, %.pre-phi249
  br i1 %.not.i.not.i.i.i148, label %Gia_ObjLevel.exit165, label %bb.by

bb.by:                                            ; preds = %Vec_IntPush.exit147
  %i.js = load i32, ptr %.val105, align 8, !tbaa !13 ; 4 uses
  %i.jt = shl nsw i32 %i.js, 1                    ; 2 uses
  %.not.i.i.i149 = icmp sgt i32 %i.jt, %.pre-phi249
  %.not.i.i.not.i.i.i150 = icmp sgt i32 %i.js, %.pre-phi249 ; 2 uses
  br i1 %.not.i.i.i149, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %.not.i.i.not.i.i.i150, label %Vec_IntGrow.exit.i.i.i.i155, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ju = getelementptr inbounds nuw i8, ptr %.val105, i64 8 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i.i151 = icmp eq ptr %i.jv, null
  %i.jw = sext i32 %i.jp to i64
  %i.jx = shl nsw i64 %i.jw, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i151, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jy = tail call ptr @realloc(ptr noundef nonnull %i.jv, i64 noundef %i.jx) #35
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.jz = tail call noalias ptr @malloc(i64 noundef %i.jx) #36
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ka = phi ptr [ %i.jy, %bb.cb ], [ %i.jz, %bb.cc ]
  store ptr %i.ka, ptr %i.ju, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i152

bb.ce:                                            ; preds = %bb.by
  br i1 %.not.i.i.not.i.i.i150, label %Vec_IntGrow.exit.i.i.i.i155, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kb = icmp slt i32 %i.js, 1073741823
  %spec.select.i.i.i.i162 = select i1 %i.kb, i32 %i.jt, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i163 = icmp slt i32 %i.js, %spec.select.i.i.i.i162
  br i1 %.not.i22.i.i.i.i163, label %bb.cg, label %Vec_IntGrow.exit.i.i.i.i155

bb.cg:                                            ; preds = %bb.cf
  %i.kc = getelementptr inbounds nuw i8, ptr %.val105, i64 8 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i.i164 = icmp eq ptr %i.kd, null
  %i.ke = sext i32 %spec.select.i.i.i.i162 to i64
  %i.kf = shl nsw i64 %i.ke, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i164, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kg = tail call ptr @realloc(ptr noundef nonnull %i.kd, i64 noundef %i.kf) #35
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.kh = tail call noalias ptr @malloc(i64 noundef %i.kf) #36
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ki = phi ptr [ %i.kg, %bb.ch ], [ %i.kh, %bb.ci ]
  store ptr %i.ki, ptr %i.kc, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i152

Vec_IntGrow.exit.sink.split.i.i.i.i152:           ; preds = %bb.cj, %bb.cd
  %spec.select.sink.i.i.i.i153 = phi i32 [ %spec.select.i.i.i.i162, %bb.cj ], [ %i.jp, %bb.cd ]
  store i32 %spec.select.sink.i.i.i.i153, ptr %.val105, align 8, !tbaa !13
  %.pre.i.i.i154 = load i32, ptr %i.jq, align 4, !tbaa !12
  br label %Vec_IntGrow.exit.i.i.i.i155

Vec_IntGrow.exit.i.i.i.i155:                      ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i152, %bb.cf, %bb.ce, %bb.bz
  %i.kj = phi i32 [ %.pre.i.i.i154, %Vec_IntGrow.exit.sink.split.i.i.i.i152 ], [ %i.jr, %bb.cf ], [ %i.jr, %bb.ce ], [ %i.jr, %bb.bz ] ; 3 uses
  %.not3.i.i.i156 = icmp sgt i32 %i.kj, %.pre-phi249
  br i1 %.not3.i.i.i156, label %._crit_edge.i.i.i.i159, label %.lr.ph.i.i.i.i157

.lr.ph.i.i.i.i157:                                ; preds = %Vec_IntGrow.exit.i.i.i.i155
  %i.kk = getelementptr inbounds nuw i8, ptr %.val105, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !8
  %i.km = sext i32 %i.kj to i64
  %i.kn = shl nsw i64 %i.km, 2
  %scevgep.i.i.i.i158 = getelementptr i8, ptr %i.kl, i64 %i.kn
  %i.ko = sub i32 %.pre-phi249, %i.kj
  %i.kp = zext i32 %i.ko to i64
  %i.kq = shl nuw nsw i64 %i.kp, 2
  %i.kr = add nuw nsw i64 %i.kq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i158, i8 0, i64 %i.kr, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i.i159

._crit_edge.i.i.i.i159:                           ; preds = %.lr.ph.i.i.i.i157, %Vec_IntGrow.exit.i.i.i.i155
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !12
  br label %Gia_ObjLevel.exit165

Gia_ObjLevel.exit165:                             ; preds = %Vec_IntPush.exit147, %._crit_edge.i.i.i.i159
  %i.ks = getelementptr i8, ptr %.val105, i64 8
  %.val.i.i.i160 = load ptr, ptr %i.ks, align 8, !tbaa !8
  %sext.i161 = shl i64 %.pre-phi247, 32
  %i.kt = ashr exact i64 %sext.i161, 30
  %i.ku = getelementptr inbounds i8, ptr %.val.i.i.i160, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !33 ; 3 uses
  %i.kw = load i32, ptr %i.b, align 4, !tbaa !12  ; 11 uses
  %i.kx = icmp sgt i32 %i.kw, 0                   ; 2 uses
  br i1 %i.kx, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Gia_ObjLevel.exit165
  %wide.trip.count.i = zext nneg i32 %i.kw to i64
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cl, !llvm.loop !155

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ck ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %storemerge205302, i64 %indvars.iv.i
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !33
  %i.la = icmp eq i32 %i.kz, %i.kv
  br i1 %i.la, label %Vec_IntPushUniqueOrder.exit, label %bb.ck

._crit_edge.i:                                    ; preds = %bb.ck, %Gia_ObjLevel.exit165
  %i.lb = load i32, ptr %i.a, align 8, !tbaa !13
  %i.lc = icmp eq i32 %i.kw, %i.lb
  br i1 %i.lc, label %bb.cm, label %Vec_IntGrow.exit24.i.i

bb.cm:                                            ; preds = %._crit_edge.i
  %i.ld = icmp slt i32 %i.kw, 16
  br i1 %i.ld, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %.not9.i.i.i167 = icmp eq ptr %storemerge205302, null
  br i1 %.not9.i.i.i167, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.le = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge205302, i64 noundef 64) #35
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.lf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.cq:                                            ; preds = %bb.cm
  %i.lg = icmp samesign ult i32 %i.kw, 1073741823
  %i.lh = shl nuw nsw i32 %i.kw, 1
  %spec.select.i.i166 = select i1 %i.lg, i32 %i.lh, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp samesign ult i32 %i.kw, %spec.select.i.i166
  br i1 %.not.i22.i.i, label %bb.cr, label %Vec_IntGrow.exit24.i.thread.i

Vec_IntGrow.exit24.i.thread.i:                    ; preds = %bb.cq
  %i.li = add nuw nsw i32 %i.kw, 1
  store i32 %i.li, ptr %i.b, align 4, !tbaa !12
  br label %.lr.ph.i.i

bb.cr:                                            ; preds = %bb.cq
  %.not9.i23.i.i = icmp eq ptr %storemerge205302, null
  %i.lj = zext nneg i32 %spec.select.i.i166 to i64
  %i.lk = shl nuw nsw i64 %i.lj, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ll = tail call ptr @realloc(ptr noundef nonnull %storemerge205302, i64 noundef %i.lk) #35
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.lm = tail call noalias ptr @malloc(i64 noundef %i.lk) #36
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i.i: ; preds = %bb.cs, %bb.ct, %bb.co, %bb.cp
  %storemerge = phi ptr [ %i.lf, %bb.cp ], [ %i.le, %bb.co ], [ %i.ll, %bb.cs ], [ %i.lm, %bb.ct ]
  %.sink.i.i = phi i32 [ 16, %bb.cp ], [ 16, %bb.co ], [ %spec.select.i.i166, %bb.cs ], [ %spec.select.i.i166, %bb.ct ]
  store i32 %.sink.i.i, ptr %i.a, align 8, !tbaa !13
  br label %Vec_IntGrow.exit24.i.i

Vec_IntGrow.exit24.i.i:                           ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i, %._crit_edge.i
  %storemerge209 = phi ptr [ %storemerge, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i ], [ %storemerge205302, %._crit_edge.i ] ; 2 uses
  %i.ln = add nsw i32 %i.kw, 1
  store i32 %i.ln, ptr %i.b, align 4, !tbaa !12
  br i1 %i.kx, label %.lr.ph.i.i, label %Vec_IntPushOrder.exit.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit24.i.i, %Vec_IntGrow.exit24.i.thread.i
  %storemerge208 = phi ptr [ %storemerge205302, %Vec_IntGrow.exit24.i.thread.i ], [ %storemerge209, %Vec_IntGrow.exit24.i.i ] ; 4 uses
  %i.lo = zext nneg i32 %i.kw to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.lo, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %storemerge208, i64 %indvars.iv.next.i.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !33 ; 2 uses
  %i.lr = icmp sgt i32 %i.lq, %i.kv
  br i1 %i.lr, label %bb.cv, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %storemerge208, i64 %indvars.iv.i.i
  store i32 %i.lq, ptr %i.ls, align 4, !tbaa !33
  %i.lt = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.lt, label %bb.cu, label %Vec_IntPushOrder.exit.i, !llvm.loop !156

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.cu
  %i.lu = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %Vec_IntPushOrder.exit.i

Vec_IntPushOrder.exit.i:                          ; preds = %bb.cv, %._crit_edge.loopexit.split.loop.exit.i.i, %Vec_IntGrow.exit24.i.i
  %storemerge207 = phi ptr [ %storemerge209, %Vec_IntGrow.exit24.i.i ], [ %storemerge208, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %storemerge208, %bb.cv ] ; 2 uses
  %.0.in.lcssa.i.i = phi i32 [ %i.kw, %Vec_IntGrow.exit24.i.i ], [ %i.lu, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 0, %bb.cv ]
  %i.lv = sext i32 %.0.in.lcssa.i.i to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %storemerge207, i64 %i.lv
  store i32 %i.kv, ptr %i.lw, align 4, !tbaa !33
  br label %Vec_IntPushUniqueOrder.exit

Vec_IntPushUniqueOrder.exit:                      ; preds = %bb.cl, %Vec_IntPushOrder.exit.i, %bb.ak, %bb.al, %bb.am, %bb.an
  %storemerge206 = phi ptr [ %storemerge205302, %bb.an ], [ %storemerge207, %Vec_IntPushOrder.exit.i ], [ %storemerge205302, %bb.ak ], [ %storemerge205302, %bb.al ], [ %storemerge205302, %bb.am ], [ %storemerge205302, %bb.cl ] ; 2 uses
  %i.lx = add nuw nsw i32 %.0190303, 1            ; 4 uses
  %.val100 = load ptr, ptr %i.ap, align 8, !tbaa !100 ; 4 uses
  %.val101 = load ptr, ptr %i.ar, align 8, !tbaa !118
  %i.ly = getelementptr i8, ptr %.val101, i64 8
  %.val101.val = load ptr, ptr %i.ly, align 8, !tbaa !8
  %i.lz = ptrtoint ptr %.val100 to i64
  %i.ma = sub i64 %i.dy, %i.lz
  %i.mb = sdiv exact i64 %i.ma, 12
  %sext.i = shl i64 %i.mb, 32
  %i.mc = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.val101.val, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !33
  %i.mf = icmp slt i32 %i.lx, %i.me
  br i1 %i.mf, label %.lr.ph192, label %.critedge8.loopexit, !llvm.loop !154

.critedge8.loopexit:                              ; preds = %.lr.ph192, %Vec_IntPushUniqueOrder.exit
  %.val87.pre = load i32, ptr %i.ds, align 4, !tbaa !12
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.preheader
  %.val87 = phi i32 [ %.val87237, %.preheader ], [ %.val87.pre, %.critedge8.loopexit ] ; 2 uses
  %.val100186228 = phi ptr [ %.val100186, %.preheader ], [ %.val100, %.critedge8.loopexit ]
  %storemerge204 = phi ptr [ %storemerge203, %.preheader ], [ %storemerge206, %.critedge8.loopexit ] ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.mg = sext i32 %.val87 to i64
  %i.mh = icmp slt i64 %indvars.iv.next218, %i.mg
  br i1 %i.mh, label %.lr.ph196, label %.critedge6.loopexit, !llvm.loop !157

.critedge6.loopexit:                              ; preds = %.critedge8, %.lr.ph196
  %storemerge202.ph = phi ptr [ %storemerge203, %.lr.ph196 ], [ %storemerge204, %.critedge8 ]
  %.val88.pre = load i32, ptr %i.b, align 4, !tbaa !12
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %bb.aj
  %.val88 = phi i32 [ %.val88239, %bb.aj ], [ %.val88.pre, %.critedge6.loopexit ] ; 2 uses
  %storemerge202 = phi ptr [ %storemerge201, %bb.aj ], [ %storemerge202.ph, %.critedge6.loopexit ] ; 2 uses
  store i32 0, ptr %i.ds, align 4, !tbaa !12
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.mi = sext i32 %.val88 to i64
  %i.mj = icmp slt i64 %indvars.iv.next221, %i.mi
  br i1 %i.mj, label %bb.aj, label %.critedge2..critedge4_crit_edge, !llvm.loop !158

.critedge2..critedge4_crit_edge:                  ; preds = %.critedge6
  store ptr %storemerge202, ptr %i.d, align 8
  %.val108.pre = load i32, ptr %i.e, align 4, !tbaa !12
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge2..critedge4_crit_edge, %.critedge2.preheader
  %.val108 = phi i32 [ %.val108.pre, %.critedge2..critedge4_crit_edge ], [ %.val108242, %.critedge2.preheader ]
  %i.mk = getelementptr i8, ptr %4, i64 8
  %.val109 = load ptr, ptr %i.mk, align 8, !tbaa !8
  %i.ml = sext i32 %.val108 to i64
  tail call void @qsort(ptr noundef %.val109, i64 noundef %i.ml, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #34
  %i.mm = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %.not.i169 = icmp eq ptr %i.mm, null
  br i1 %.not.i169, label %Vec_IntFree.exit, label %bb.cw

bb.cw:                                            ; preds = %.critedge4
  tail call void @free(ptr noundef nonnull %i.mm) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.cw
  tail call void @free(ptr noundef nonnull %i.a) #34
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPushUniqueOrder(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 10 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !155

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !13
  %i.j = icmp eq i32 %i.b, %i.i
  br i1 %i.j, label %bb.d, label %Vec_IntGrow.exit24.i

bb.d:                                             ; preds = %._crit_edge
  %i.k = icmp slt i32 %i.b, 16
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  store ptr %i.p, ptr %i.l, align 8, !tbaa !8
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i32 %i.b, 1073741823
  %i.r = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.q, i32 %i.r, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i22.i, label %bb.i, label %Vec_IntGrow.exit24.i.thread

Vec_IntGrow.exit24.i.thread:                      ; preds = %bb.h
  %i.s = add nuw nsw i32 %i.b, 1
  store i32 %i.s, ptr %i.a, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.w, null
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @realloc(ptr noundef nonnull %i.w, i64 noundef %i.y) #35
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = phi ptr [ %i.z, %bb.j ], [ %i.aa, %bb.k ]
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !8
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i:  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %.sink.i = phi i32 [ 16, %Vec_IntGrow.exit.i ], [ %spec.select.i, %bb.l ]
  store i32 %.sink.i, ptr %0, align 8, !tbaa !13
  %.pr.i.pre = load i32, ptr %i.a, align 4, !tbaa !12
  br label %Vec_IntGrow.exit24.i

Vec_IntGrow.exit24.i:                             ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i, %._crit_edge
  %i.ac = phi i32 [ %i.b, %._crit_edge ], [ %.pr.i.pre, %Vec_IntGrow.exit24thread-pre-split.sink.split.i ] ; 4 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !12
  %i.ae = icmp sgt i32 %i.ac, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  br i1 %i.ae, label %.lr.ph.i, label %Vec_IntPushOrder.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit24.i.thread, %Vec_IntGrow.exit24.i
  %i.ah = phi ptr [ %i.u, %Vec_IntGrow.exit24.i.thread ], [ %i.ag, %Vec_IntGrow.exit24.i ] ; 4 uses
  %i.ai = phi i32 [ %i.b, %Vec_IntGrow.exit24.i.thread ], [ %i.ac, %Vec_IntGrow.exit24.i ]
  %i.aj = zext nneg i32 %i.ai to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33 ; 2 uses
  %i.am = icmp sgt i32 %i.al, %1
  br i1 %i.am, label %bb.n, label %._crit_edge.loopexit.split.loop.exit.i

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i32 %i.al, ptr %i.an, align 4, !tbaa !33
  %i.ao = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ao, label %bb.m, label %Vec_IntPushOrder.exit, !llvm.loop !156

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.m
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Vec_IntPushOrder.exit

Vec_IntPushOrder.exit:                            ; preds = %bb.n, %Vec_IntGrow.exit24.i, %._crit_edge.loopexit.split.loop.exit.i
  %i.aq = phi ptr [ %i.ag, %Vec_IntGrow.exit24.i ], [ %i.ah, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.ah, %bb.n ]
  %.0.in.lcssa.i = phi i32 [ %i.ac, %Vec_IntGrow.exit24.i ], [ %i.ap, %._crit_edge.loopexit.split.loop.exit.i ], [ 0, %bb.n ]
  %i.ar = sext i32 %.0.in.lcssa.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  store i32 %1, ptr %i.as, align 4, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %Vec_IntPushOrder.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_RsbExpandCut(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 9 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = getelementptr i8, ptr %0, i64 176        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 624        ; 3 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !12   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.split80.us

.preheaderthread-pre-split:                       ; preds = %Vec_IntPush.exit60, %bb.h
  %.val38.pr = load i32, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.h = icmp sgt i32 %.val38.pr, 0
  br i1 %i.h, label %.lr.ph, label %.split80.us

.lr.ph:                                           ; preds = %bb.a, %.preheaderthread-pre-split
  %.val38119 = phi i32 [ %.val38.pr, %.preheaderthread-pre-split ], [ %i.f, %bb.a ] ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !8   ; 7 uses
  %.val40 = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.not36 = icmp eq ptr %.val40, null
  br i1 %.not36, label %.split80.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val38119 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %.13475 = phi i32 [ 1, %.lr.ph.split.preheader ], [ %.2, %bb.m ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 3 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [12 x i8], ptr %.val40, i64 %i.k
  %.val41 = load i64, ptr %i.l, align 4           ; 4 uses
  %i.m = and i64 %.val41, 2147483648
  %.not.i = icmp ne i64 %i.m, 0
  %i.n = and i64 %.val41, 536870911
  %i.o = icmp eq i64 %i.n, 536870911
  %narrow.i.not = or i1 %.not.i, %i.o
  br i1 %narrow.i.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.p = trunc i64 %.val41 to i32
  %i.q = and i32 %i.p, 536870911
  %i.r = sub nsw i32 %i.j, %i.q                   ; 2 uses
  %i.s = lshr i64 %.val41, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 536870911
  %i.v = sub nsw i32 %i.j, %i.u                   ; 2 uses
  %.val48 = load i32, ptr %i.d, align 8, !tbaa !110 ; 2 uses
  %.val49 = load ptr, ptr %i.e, align 8, !tbaa !111 ; 5 uses
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.val49, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %i.z = icmp eq i32 %i.y, %.val48                ; 2 uses
  %i.aa = sext i32 %i.v to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val49, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = icmp eq i32 %i.ac, %.val48              ; 2 uses
  %or.cond = select i1 %i.z, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = add nsw i32 %.val38119, -1              ; 3 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !12
  %i.ag = icmp sgt i32 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i, label %Vec_IntDrop.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !33
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %Vec_IntDrop.exit, !llvm.loop !159

Vec_IntDrop.exit:                                 ; preds = %.lr.ph.i, %bb.c
  %i.an = phi i32 [ %i.af, %bb.c ], [ %i.ak, %.lr.ph.i ] ; 7 uses
  br i1 %i.z, label %bb.h, label %bb.d

bb.d:                                             ; preds = %Vec_IntDrop.exit
  %i.ao = load i32, ptr %1, align 8, !tbaa !13
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp slt i32 %i.an, 16
  br i1 %i.aq, label %Vec_IntGrow.exit11.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp samesign ult i32 %i.an, 1073741823
  %i.as = shl nuw nsw i32 %i.an, 1
  %spec.select.i = select i1 %i.ar, i32 %i.as, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.an, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %spec.select.i to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.e, %bb.g
  %.sink = phi i64 [ %i.au, %bb.g ], [ 64, %bb.e ]
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.g ], [ 16, %bb.e ]
  %i.av = tail call ptr @realloc(ptr noundef nonnull %.val, i64 noundef %.sink) #35 ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !13
  %.pre = load i32, ptr %i.a, align 4, !tbaa !12
  %.val45.pre = load ptr, ptr %i.e, align 8, !tbaa !111
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %.val45 = phi ptr [ %.val49, %bb.d ], [ %.val49, %bb.f ], [ %.val45.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aw = phi i32 [ %i.an, %bb.d ], [ %i.an, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ax = phi ptr [ %.val, %bb.d ], [ %.val, %bb.f ], [ %i.av, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ay = add nsw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !12
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.az
  store i32 %i.r, ptr %i.ba, align 4, !tbaa !33
  %.val44 = load i32, ptr %i.d, align 8, !tbaa !110
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val45, i64 %i.w
  store i32 %.val44, ptr %i.bb, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit, %Vec_IntDrop.exit
  %.val4393 = phi ptr [ %.val45, %Vec_IntPush.exit ], [ %.val49, %Vec_IntDrop.exit ] ; 2 uses
  %i.bc = phi ptr [ %i.ax, %Vec_IntPush.exit ], [ %.val, %Vec_IntDrop.exit ] ; 3 uses
  br i1 %i.ad, label %.preheaderthread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !12  ; 7 uses
  %i.be = load i32, ptr %1, align 8, !tbaa !13
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %Vec_IntPush.exit60

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp slt i32 %i.bd, 16
  br i1 %i.bg, label %Vec_IntGrow.exit11.sink.split.i56, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp samesign ult i32 %i.bd, 1073741823
  %i.bi = shl nuw nsw i32 %i.bd, 1
  %spec.select.i53 = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 3 uses
  %.not.i9.i54 = icmp samesign ult i32 %i.bd, %spec.select.i53
  br i1 %.not.i9.i54, label %bb.l, label %Vec_IntPush.exit60

bb.l:                                             ; preds = %bb.k
  %i.bj = zext nneg i32 %spec.select.i53 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  br label %Vec_IntGrow.exit11.sink.split.i56

Vec_IntGrow.exit11.sink.split.i56:                ; preds = %bb.j, %bb.l
  %.sink110 = phi i64 [ %i.bk, %bb.l ], [ 64, %bb.j ]
  %spec.select.sink.i57 = phi i32 [ %spec.select.i53, %bb.l ], [ 16, %bb.j ]
  %i.bl = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %.sink110) #35 ; 2 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !8
  store i32 %spec.select.sink.i57, ptr %1, align 8, !tbaa !13
  %.pre91 = load i32, ptr %i.a, align 4, !tbaa !12
  %.val43.pre = load ptr, ptr %i.e, align 8, !tbaa !111
  br label %Vec_IntPush.exit60

Vec_IntPush.exit60:                               ; preds = %bb.i, %bb.k, %Vec_IntGrow.exit11.sink.split.i56
  %.val43 = phi ptr [ %.val4393, %bb.i ], [ %.val4393, %bb.k ], [ %.val43.pre, %Vec_IntGrow.exit11.sink.split.i56 ]
  %i.bm = phi i32 [ %i.bd, %bb.i ], [ %i.bd, %bb.k ], [ %.pre91, %Vec_IntGrow.exit11.sink.split.i56 ] ; 2 uses
  %i.bn = phi ptr [ %i.bc, %bb.i ], [ %i.bc, %bb.k ], [ %i.bl, %Vec_IntGrow.exit11.sink.split.i56 ]
  %i.bo = add nsw i32 %i.bm, 1
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !12
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp
  store i32 %i.v, ptr %i.bq, align 4, !tbaa !33
  %.val42 = load i32, ptr %i.d, align 8, !tbaa !110
  %i.br = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.aa
  store i32 %.val42, ptr %i.br, align 4, !tbaa !33
  br label %.preheaderthread-pre-split

bb.m:                                             ; preds = %bb.b, %.lr.ph.split
  %.2 = phi i32 [ 0, %bb.b ], [ %.13475, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split80.us, label %.lr.ph.split, !llvm.loop !160

.split80.us:                                      ; preds = %.lr.ph, %.preheaderthread-pre-split, %bb.m, %bb.a
  %.us-phi = phi i32 [ 1, %bb.a ], [ %.2, %bb.m ], [ 1, %.preheaderthread-pre-split ], [ 1, %.lr.ph ]
  ret i32 %.us-phi
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Gia_RsbFindFaninAdd(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %._crit_edge.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !161

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %._crit_edge.loopexit.split.loop.exit ], [ %3, %bb.b ] ; 2 uses
  %i.f = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  store i32 %0, ptr %i.g, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !33
  %i.k = icmp eq i32 %.0.lcssa, %3
  %i.l = zext i1 %i.k to i32
  %i.m = add nsw i32 %3, %i.l
  ret i32 %i.m
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_RsbFindFaninToAddToCut(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 11 uses
  %i.b = alloca [64 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val56 = load i32, ptr %i.c, align 4, !tbaa !12 ; 2 uses
  %i.d = icmp sgt i32 %.val56, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val57 = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %.val57, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val56 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.04980 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.150, %bb.e ] ; 6 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33   ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [12 x i8], ptr %.val57, i64 %i.i
  %.val58 = load i64, ptr %i.j, align 4           ; 4 uses
  %i.k = and i64 %.val58, 2147483648
  %.not.i = icmp ne i64 %i.k, 0
  %i.l = and i64 %.val58, 536870911
  %i.m = icmp eq i64 %i.l, 536870911
  %narrow.i.not = or i1 %.not.i, %i.m
  br i1 %narrow.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.n = trunc i64 %.val58 to i32
  %i.o = and i32 %i.n, 536870911
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = lshr i64 %.val58, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 536870911
  %i.t = sub nsw i32 %i.h, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %.04980, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %Gia_RsbFindFaninAdd.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %.04980 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33
  %i.x = icmp eq i32 %i.w, %i.p
  br i1 %i.x, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_RsbFindFaninAdd.exit, label %.lr.ph.i, !llvm.loop !161

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Gia_RsbFindFaninAdd.exit

Gia_RsbFindFaninAdd.exit:                         ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.y, %._crit_edge.loopexit.split.loop.exit.i ], [ %.04980, %bb.c ] ; 2 uses
  %i.z = zext nneg i32 %.0.lcssa.i to i64         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z
  store i32 %i.p, ptr %i.aa, align 4, !tbaa !33
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !33
  %i.ae = icmp eq i32 %.0.lcssa.i, %.04980
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nsw i32 %.04980, %i.af              ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader.i67, label %Gia_RsbFindFaninAdd.exit74

.lr.ph.preheader.i67:                             ; preds = %Gia_RsbFindFaninAdd.exit
  %wide.trip.count.i68 = zext nneg i32 %i.ag to i64
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.d, %.lr.ph.preheader.i67
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i67 ], [ %indvars.iv.next.i71, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i70
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = icmp eq i32 %i.aj, %i.t
  br i1 %i.ak, label %._crit_edge.loopexit.split.loop.exit.i73, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i69
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i68
  br i1 %exitcond.not.i72, label %Gia_RsbFindFaninAdd.exit74, label %.lr.ph.i69, !llvm.loop !161

._crit_edge.loopexit.split.loop.exit.i73:         ; preds = %.lr.ph.i69
  %i.al = trunc nuw nsw i64 %indvars.iv.i70 to i32
  br label %Gia_RsbFindFaninAdd.exit74

Gia_RsbFindFaninAdd.exit74:                       ; preds = %bb.d, %Gia_RsbFindFaninAdd.exit, %._crit_edge.loopexit.split.loop.exit.i73
  %.0.lcssa.i66 = phi i32 [ 0, %Gia_RsbFindFaninAdd.exit ], [ %i.al, %._crit_edge.loopexit.split.loop.exit.i73 ], [ %i.ag, %bb.d ] ; 2 uses
  %i.am = zext nneg i32 %.0.lcssa.i66 to i64      ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am
  store i32 %i.t, ptr %i.an, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.am ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !33
  %i.ar = icmp eq i32 %.0.lcssa.i66, %i.ag
  %i.as = zext i1 %i.ar to i32
  %i.at = add nsw i32 %i.ag, %i.as
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %Gia_RsbFindFaninAdd.exit74
  %.150 = phi i32 [ %i.at, %Gia_RsbFindFaninAdd.exit74 ], [ %.04980, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !162

.critedge:                                        ; preds = %bb.e, %.lr.ph, %bb.a
  %.049.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.150, %bb.e ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !118 ; 2 uses
  %.not54 = icmp eq ptr %i.av, null
  %i.aw = icmp sgt i32 %.049.lcssa, 0             ; 2 uses
  br i1 %.not54, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %.critedge
  br i1 %i.aw, label %.lr.ph87, label %.loopexit

.lr.ph87:                                         ; preds = %.preheader76
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %wide.trip.count101 = zext nneg i32 %.049.lcssa to i64
  br label %bb.f

.preheader:                                       ; preds = %.critedge
  br i1 %i.aw, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %.preheader
  %i.ay = getelementptr i8, ptr %0, i64 144
  %wide.trip.count106 = zext nneg i32 %.049.lcssa to i64
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph87, %bb.i
  %indvars.iv98 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next99, %bb.i ] ; 4 uses
  %.086 = phi i32 [ 0, %.lr.ph87 ], [ %.1, %bb.i ] ; 4 uses
  %.04285 = phi i32 [ -1, %.lr.ph87 ], [ %.143, %bb.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv98
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33 ; 4 uses
  %i.bb = icmp slt i32 %.086, %i.ba
  br i1 %i.bb, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv98
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp eq i32 %.086, %i.ba
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val60.val = load ptr, ptr %i.ax, align 8, !tbaa !8 ; 2 uses
  %i.bd = sext i32 %.04285 to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.val60.val, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv98
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val60.val, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33
  %i.bl = icmp slt i32 %i.bf, %i.bk               ; 2 uses
  %spec.select = select i1 %i.bl, i32 %i.bh, i32 %.04285
  %spec.select117 = select i1 %i.bl, i32 %i.ba, i32 %.086
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge, %bb.g
  %.143 = phi i32 [ %.04285, %bb.g ], [ %spec.select, %bb.h ], [ %.pre, %._crit_edge ] ; 2 uses
  %.1 = phi i32 [ %.086, %bb.g ], [ %spec.select117, %bb.h ], [ %i.ba, %._crit_edge ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit, label %bb.f, !llvm.loop !163

bb.j:                                             ; preds = %.lr.ph92, %bb.m
  %indvars.iv103 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next104, %bb.m ] ; 4 uses
  %.291 = phi i32 [ 0, %.lr.ph92 ], [ %.3, %bb.m ] ; 4 uses
  %.24490 = phi i32 [ -1, %.lr.ph92 ], [ %.345, %bb.m ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv103
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33 ; 4 uses
  %i.bo = icmp slt i32 %.291, %i.bn
  br i1 %i.bo, label %._crit_edge108, label %bb.k

._crit_edge108:                                   ; preds = %bb.j
  %.phi.trans.insert109 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv103
  %.pre110 = load i32, ptr %.phi.trans.insert109, align 4, !tbaa !33
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq i32 %.291, %i.bn
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val64 = load ptr, ptr %i.ay, align 8, !tbaa !164 ; 2 uses
  %i.bq = sext i32 %.24490 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !33
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv103
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !33
  %i.by = icmp slt i32 %i.bs, %i.bx               ; 2 uses
  %spec.select118 = select i1 %i.by, i32 %i.bu, i32 %.24490
  %spec.select119 = select i1 %i.by, i32 %i.bn, i32 %.291
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge108, %bb.k
  %.345 = phi i32 [ %.24490, %bb.k ], [ %spec.select118, %bb.l ], [ %.pre110, %._crit_edge108 ] ; 2 uses
  %.3 = phi i32 [ %.291, %bb.k ], [ %spec.select119, %bb.l ], [ %i.bn, %._crit_edge108 ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %bb.j, !llvm.loop !165

.loopexit:                                        ; preds = %bb.i, %bb.m, %.preheader76, %.preheader
  %.4 = phi i32 [ %.345, %bb.m ], [ -1, %.preheader ], [ -1, %.preheader76 ], [ %.143, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nounwind uwtable
define void @Gia_RsbWindowGrow2(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef initializes((4, 8)) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = tail call i32 @Gia_RsbExpandCut(ptr noundef %0, ptr noundef %4)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 4          ; 10 uses
  %.val61 = load i32, ptr %i.c, align 4, !tbaa !12 ; 6 uses
  %.not47 = icmp sgt i32 %.val61, %5
  br i1 %.not47, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.val61, ptr %i.e, align 4, !tbaa !12
  store i32 %.val61, ptr %i.d, align 8, !tbaa !13
  %.not.i = icmp eq i32 %.val61, 0
  br i1 %.not.i, label %Vec_IntDup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %.val61 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #36
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.c, %bb.d
  %.pre-phi12.i = phi i64 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.l, i64 %.pre-phi12.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %Vec_IntDup.exit
  %i.m = phi ptr [ %i.d, %Vec_IntDup.exit ], [ null, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.o = getelementptr i8, ptr %0, i64 176
  %i.p = getelementptr i8, ptr %0, i64 624
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Vec_IntAppend.exit
  %.val60 = phi i32 [ %.val61, %bb.e ], [ %.val6088, %Vec_IntAppend.exit ] ; 8 uses
  %.086 = phi i32 [ 0, %bb.e ], [ %.1, %Vec_IntAppend.exit ] ; 2 uses
  %.04485 = phi ptr [ %i.m, %bb.e ], [ %.2, %Vec_IntAppend.exit ] ; 6 uses
  %i.q = icmp sle i32 %.val60, %5
  %i.r = icmp slt i32 %.086, 5
  %i.s = select i1 %i.q, i1 true, i1 %i.r
  br i1 %i.s, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @Gia_RsbFindFaninToAddToCut(ptr noundef %0, ptr noundef nonnull %4) ; 2 uses
  %i.u = load i32, ptr %4, align 8, !tbaa !13
  %i.v = icmp eq i32 %.val60, %i.u
  br i1 %i.v, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !8
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.w = icmp slt i32 %.val60, 16
  br i1 %i.w, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %.not9.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.x, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i32 %.val60, 1073741823
  %i.ab = shl nuw nsw i32 %.val60, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %.val60, %spec.select.i
  %.pre89 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre89, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %.pre89, i64 noundef %i.ad) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.ag = phi ptr [ %i.z, %bb.k ], [ %i.y, %bb.j ], [ %i.ae, %bb.n ], [ %i.af, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !13
  %.pre90 = load i32, ptr %i.c, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ah = phi i32 [ %.val60, %.Vec_IntPush.exit_crit_edge ], [ %.val60, %bb.l ], [ %.pre90, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ai = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre89, %bb.l ], [ %i.ag, %Vec_IntGrow.exit11.sink.split.i ]
  %i.aj = add nsw i32 %i.ah, 1
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !12
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.t, ptr %i.al, align 4, !tbaa !33
  %.val62 = load i32, ptr %i.o, align 8, !tbaa !110
  %.val63 = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.am = sext i32 %i.t to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val63, i64 %i.am
  store i32 %.val62, ptr %i.an, align 4, !tbaa !33
  %i.ao = tail call i32 @Gia_RsbExpandCut(ptr noundef %0, ptr noundef nonnull %4)
  %.val59 = load i32, ptr %i.c, align 4, !tbaa !12 ; 5 uses
  %i.ap = icmp sgt i32 %.val59, %5                ; 2 uses
  %i.aq = add nsw i32 %.086, 1
  %.1 = select i1 %i.ap, i32 %i.aq, i32 0
  br i1 %i.ap, label %Vec_IntAppend.exit, label %bb.p

bb.p:                                             ; preds = %Vec_IntPush.exit
  %.not50 = icmp eq ptr %.04485, null
  br i1 %.not50, label %.critedge56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %.04485, i64 4    ; 2 uses
  %.044.val = load i32, ptr %i.ar, align 4, !tbaa !12
  %.not51 = icmp sgt i32 %.044.val, %.val59
  br i1 %.not51, label %Vec_IntAppend.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ar, align 4, !tbaa !12
  %.val67.i.pre = load i32, ptr %i.c, align 4, !tbaa !12
  br label %bb.s

.critedge56:                                      ; preds = %bb.p
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !12
  store i32 16, ptr %i.as, align 8, !tbaa !13
  %i.au = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %.critedge56, %bb.r
  %.val67.i = phi i32 [ %.val67.i.pre, %bb.r ], [ %.val59, %.critedge56 ] ; 2 uses
  %.145 = phi ptr [ %.04485, %bb.r ], [ %i.as, %.critedge56 ] ; 6 uses
  %i.aw = icmp sgt i32 %.val67.i, 0
  br i1 %i.aw, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %.145, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.145, i64 8 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !12 ; 7 uses
  %i.bc = load i32, ptr %.145, align 8, !tbaa !13
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.u, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.ay, align 8, !tbaa !8
  br label %Vec_IntPush.exit.i

bb.u:                                             ; preds = %bb.t
  %i.be = icmp slt i32 %i.bb, 16
  br i1 %i.be, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.bh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.y:                                             ; preds = %bb.u
  %i.bi = icmp samesign ult i32 %i.bb, 1073741823
  %i.bj = shl nuw nsw i32 %i.bb, 1
  %spec.select.i.i = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bb, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.ay, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.z, label %Vec_IntPush.exit.i

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.bk = zext nneg i32 %spec.select.i.i to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.bl) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w
  %i.bo = phi ptr [ %i.bh, %bb.x ], [ %i.bg, %bb.w ], [ %i.bm, %bb.aa ], [ %i.bn, %bb.ab ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i.i, %bb.aa ], [ %spec.select.i.i, %bb.ab ]
  store ptr %i.bo, ptr %i.ay, align 8, !tbaa !8
  store i32 %spec.select.sink.i.i, ptr %.145, align 8, !tbaa !13
  %.pre11.i = load i32, ptr %i.ax, align 4, !tbaa !12
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.y, %.Vec_IntPush.exit_crit_edge.i
  %i.bp = phi i32 [ %i.bb, %.Vec_IntPush.exit_crit_edge.i ], [ %i.bb, %bb.y ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bq = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.y ], [ %i.bo, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.br = add nsw i32 %i.bp, 1
  store i32 %i.br, ptr %i.ax, align 4, !tbaa !12
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.ba, ptr %i.bt, align 4, !tbaa !33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.c, align 4, !tbaa !12 ; 2 uses
  %i.bu = sext i32 %.val6.i to i64
  %i.bv = icmp slt i64 %indvars.iv.next.i, %i.bu
  br i1 %i.bv, label %bb.t, label %Vec_IntAppend.exit, !llvm.loop !78

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.s, %bb.q, %Vec_IntPush.exit
  %.val6088 = phi i32 [ %.val59, %Vec_IntPush.exit ], [ %.val59, %bb.q ], [ %.val67.i, %bb.s ], [ %.val6.i, %Vec_IntPush.exit.i ]
  %.2 = phi ptr [ %.04485, %Vec_IntPush.exit ], [ %.04485, %bb.q ], [ %.145, %bb.s ], [ %.145, %Vec_IntPush.exit.i ] ; 2 uses
  %.not48 = icmp eq i32 %i.ao, 0
  br i1 %.not48, label %bb.f, label %.critedge, !llvm.loop !166

.critedge:                                        ; preds = %Vec_IntAppend.exit, %bb.f
  %.044.lcssa = phi ptr [ %.2, %Vec_IntAppend.exit ], [ %.04485, %bb.f ] ; 5 uses
  %.not52 = icmp eq ptr %.044.lcssa, null
  br i1 %.not52, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.bw = getelementptr i8, ptr %.044.lcssa, i64 4 ; 2 uses
  %.val67.i66 = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.bx = icmp sgt i32 %.val67.i66, 0
  br i1 %i.bx, label %.lr.ph.i67, label %Vec_IntAppend.exit83

.lr.ph.i67:                                       ; preds = %bb.ac
  %i.by = getelementptr i8, ptr %.044.lcssa, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %Vec_IntPush.exit.i72, %.lr.ph.i67
  %indvars.iv.i68 = phi i64 [ 0, %.lr.ph.i67 ], [ %indvars.iv.next.i73, %Vec_IntPush.exit.i72 ] ; 2 uses
  %.val.i69 = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.val.i69, i64 %indvars.iv.i68
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !12  ; 7 uses
  %i.cc = load i32, ptr %4, align 8, !tbaa !13
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.ae, label %.Vec_IntPush.exit_crit_edge.i70

.Vec_IntPush.exit_crit_edge.i70:                  ; preds = %bb.ad
  %.pre.i71 = load ptr, ptr %i.n, align 8, !tbaa !8
  br label %Vec_IntPush.exit.i72

bb.ae:                                            ; preds = %bb.ad
  %i.ce = icmp slt i32 %i.cb, 16
  br i1 %i.ce, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !8   ; 2 uses
  %.not9.i.i.i82 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i.i82, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i79

bb.ah:                                            ; preds = %bb.af
  %i.ch = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i79

bb.ai:                                            ; preds = %bb.ae
  %i.ci = icmp samesign ult i32 %i.cb, 1073741823
  %i.cj = shl nuw nsw i32 %i.cb, 1
  %spec.select.i.i75 = select i1 %i.ci, i32 %i.cj, i32 2147483647 ; 4 uses
  %.not.i9.i.i76 = icmp samesign ult i32 %i.cb, %spec.select.i.i75
  %.pre10.i77 = load ptr, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i.i76, label %bb.aj, label %Vec_IntPush.exit.i72

bb.aj:                                            ; preds = %bb.ai
  %.not9.i10.i.i78 = icmp eq ptr %.pre10.i77, null
  %i.ck = zext nneg i32 %spec.select.i.i75 to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2                ; 2 uses
  br i1 %.not9.i10.i.i78, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cm = tail call ptr @realloc(ptr noundef nonnull %.pre10.i77, i64 noundef %i.cl) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i79

bb.al:                                            ; preds = %bb.aj
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cl) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i79

Vec_IntGrow.exit11.sink.split.i.i79:              ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag
  %i.co = phi ptr [ %i.ch, %bb.ah ], [ %i.cg, %bb.ag ], [ %i.cm, %bb.ak ], [ %i.cn, %bb.al ] ; 2 uses
  %spec.select.sink.i.i80 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i75, %bb.ak ], [ %spec.select.i.i75, %bb.al ]
  store ptr %i.co, ptr %i.n, align 8, !tbaa !8
  store i32 %spec.select.sink.i.i80, ptr %4, align 8, !tbaa !13
  %.pre11.i81 = load i32, ptr %i.c, align 4, !tbaa !12
  br label %Vec_IntPush.exit.i72

Vec_IntPush.exit.i72:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i79, %bb.ai, %.Vec_IntPush.exit_crit_edge.i70
  %i.cp = phi i32 [ %i.cb, %.Vec_IntPush.exit_crit_edge.i70 ], [ %i.cb, %bb.ai ], [ %.pre11.i81, %Vec_IntGrow.exit11.sink.split.i.i79 ] ; 2 uses
  %i.cq = phi ptr [ %.pre.i71, %.Vec_IntPush.exit_crit_edge.i70 ], [ %.pre10.i77, %bb.ai ], [ %i.co, %Vec_IntGrow.exit11.sink.split.i.i79 ]
  %i.cr = add nsw i32 %i.cp, 1
  store i32 %i.cr, ptr %i.c, align 4, !tbaa !12
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs
  store i32 %i.ca, ptr %i.ct, align 4, !tbaa !33
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %.val6.i74 = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.cu = sext i32 %.val6.i74 to i64
  %i.cv = icmp slt i64 %indvars.iv.next.i73, %i.cu
  br i1 %i.cv, label %bb.ad, label %Vec_IntAppend.exit83, !llvm.loop !78

Vec_IntAppend.exit83:                             ; preds = %Vec_IntPush.exit.i72, %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !8  ; 2 uses
  %.not.i84 = icmp eq ptr %i.cx, null
  br i1 %.not.i84, label %Vec_IntFree.exit, label %bb.am

bb.am:                                            ; preds = %Vec_IntAppend.exit83
  tail call void @free(ptr noundef nonnull %i.cx) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntAppend.exit83, %bb.am
  tail call void @free(ptr noundef nonnull %.044.lcssa) #34
  br label %bb.an

bb.an:                                            ; preds = %Vec_IntFree.exit, %.critedge, %bb.a
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = getelementptr i8, ptr %4, i64 4
  %.val = load i32, ptr %i.cy, align 4, !tbaa !12 ; 2 uses
  %.not54 = icmp sgt i32 %.val, %5
  br i1 %.not54, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cz = getelementptr i8, ptr %4, i64 8
  %.val65 = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.da = sext i32 %.val to i64
  tail call void @qsort(ptr noundef %.val65, i64 noundef %i.da, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #34
  tail call void @Gia_WinCreateFromCut(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Gia_RsbWindowCompute(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7) local_unnamed_addr #11 {
bb.a:
  store ptr null, ptr %7, align 8, !tbaa !167
  store ptr null, ptr %6, align 8, !tbaa !167
  %i.a = tail call ptr @Gia_RsbWindowInit(ptr noundef %0, ptr noundef %5, i32 noundef %1, i32 noundef %3) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @Gia_RsbCreateWindowInputs(ptr noundef %0, ptr noundef nonnull %i.a) ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val29 = load i32, ptr %i.d, align 4, !tbaa !12 ; 2 uses
  %i.e = add nsw i32 %2, 3
  %.not = icmp sgt i32 %.val29, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Gia_RsbWindowGrow2(ptr noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %2)
  %.val.pre = load i32, ptr %i.d, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val30 = phi i32 [ %.val.pre, %bb.c ], [ %.val29, %bb.b ] ; 2 uses
  %.not28 = icmp sgt i32 %.val30, %2
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val32 = load i32, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %.val33 = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.h = sext i32 %.val32 to i64
  tail call void @qsort(ptr noundef %.val33, i64 noundef %i.h, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #34
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %.val31 = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.j = sext i32 %.val30 to i64
  tail call void @qsort(ptr noundef %.val31, i64 noundef %i.j, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #34
  store ptr %i.a, ptr %6, align 8, !tbaa !167
  store ptr %i.c, ptr %7, align 8, !tbaa !167
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #34
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %.not.i34 = icmp eq ptr %i.n, null
  br i1 %.not.i34, label %Vec_IntFree.exit35, label %bb.h

bb.h:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.n) #34
  br label %Vec_IntFree.exit35

Vec_IntFree.exit35:                               ; preds = %Vec_IntFree.exit, %bb.h
  tail call void @free(ptr noundef nonnull %i.c) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %Vec_IntFree.exit35, %bb.e
  %.0 = phi i32 [ 0, %Vec_IntFree.exit35 ], [ 1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_RsbFindOutputs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 100, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #36 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !8
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #34
  %i.e = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val81118 = load i32, ptr %i.e, align 4, !tbaa !12
  %i.f = icmp sgt i32 %.val81118, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  %.val85 = load ptr, ptr %i.g, align 8, !tbaa !100
  %.not = icmp eq ptr %.val85, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.j = getelementptr i8, ptr %2, i64 8
  %.val77 = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !111
  %.pre = load i32, ptr %i.h, align 8, !tbaa !110
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = zext i32 %i.m to i64
  %sext.i = shl nuw i64 %i.n, 32
  %i.o = ashr exact i64 %sext.i, 30
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  store i32 %.pre, ptr %i.p, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val81 = load i32, ptr %i.e, align 4, !tbaa !12
  %i.q = sext i32 %.val81 to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !168

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %i.s = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val80121 = load i32, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.t = icmp sgt i32 %.val80121, 0
  br i1 %i.t, label %.lr.ph123, label %.critedge6

.lr.ph123:                                        ; preds = %.critedge
  %i.u = getelementptr i8, ptr %1, i64 8
  %.val76 = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr i8, ptr %0, i64 32
  %.val84 = load ptr, ptr %i.v, align 8, !tbaa !100 ; 2 uses
  %.not65 = icmp eq ptr %.val84, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = getelementptr i8, ptr %3, i64 8
  br i1 %.not65, label %.lr.ph127, label %.lr.ph123.split

.lr.ph123.split:                                  ; preds = %.lr.ph123
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !111
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123.split, %bb.f
  %.val80143 = phi i32 [ %.val80121, %.lr.ph123.split ], [ %.val80, %bb.f ] ; 2 uses
  %indvars.iv134 = phi i64 [ 0, %.lr.ph123.split ], [ %indvars.iv.next135, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val76, i64 %indvars.iv134
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %.val84, i64 %i.ac ; 2 uses
  %i.ae = shl nsw i64 %i.ac, 2
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33
  %i.ah = load i32, ptr %i.w, align 8, !tbaa !110
  %.not113 = icmp eq i32 %i.ag, %i.ah
  br i1 %.not113, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val87 = load i64, ptr %i.ad, align 4          ; 3 uses
  %i.ai = and i64 %.val87, 2147483648
  %.not.i = icmp ne i64 %i.ai, 0
  %i.aj = and i64 %.val87, 536870911
  %i.ak = icmp eq i64 %i.aj, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ak
  br i1 %narrow.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = trunc i64 %.val87 to i32
  %i.am = and i32 %i.al, 536870911
  %i.an = sub nsw i32 %i.ab, %i.am
  %.val99 = load ptr, ptr %i.x, align 8, !tbaa !8 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.val99, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !33
  %.val.i103 = load i64, ptr %i.ad, align 4
  %i.as = lshr i64 %.val.i103, 32
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = and i32 %i.at, 536870911
  %i.av = sub nsw i32 %i.ab, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.val99, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !33
  %.val80.pre = load i32, ptr %i.s, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.val80 = phi i32 [ %.val80143, %bb.c ], [ %.val80143, %bb.d ], [ %.val80.pre, %bb.e ] ; 4 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ba = sext i32 %.val80 to i64
  %i.bb = icmp slt i64 %indvars.iv.next135, %i.ba
  br i1 %i.bb, label %bb.c, label %.critedge2, !llvm.loop !169

.critedge2:                                       ; preds = %bb.f
  %i.bc = icmp sgt i32 %.val80, 0
  br i1 %i.bc, label %.lr.ph127, label %.critedge6

.lr.ph127:                                        ; preds = %.lr.ph123, %.critedge2
  %.val79125155 = phi i32 [ %.val80, %.critedge2 ], [ %.val80121, %.lr.ph123 ]
  %i.bd = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = getelementptr i8, ptr %0, i64 248
  %i.bi = getelementptr i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph127, %bb.s
  %.val79146 = phi i32 [ %.val79125155, %.lr.ph127 ], [ %.val79, %bb.s ] ; 3 uses
  %i.bj = phi ptr [ %i.c, %.lr.ph127 ], [ %i.cp, %bb.s ] ; 4 uses
  %i.bk = phi ptr [ %i.c, %.lr.ph127 ], [ %i.cq, %bb.s ] ; 6 uses
  %i.bl = phi i32 [ 100, %.lr.ph127 ], [ %i.cr, %bb.s ] ; 9 uses
  %i.bm = phi i32 [ 0, %.lr.ph127 ], [ %i.cs, %bb.s ] ; 5 uses
  %indvars.iv137 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next138, %bb.s ] ; 2 uses
  %.val83 = load ptr, ptr %i.bd, align 8, !tbaa !100
  %.not66 = icmp eq ptr %.val83, null
  br i1 %.not66, label %.critedge4, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val75 = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val75, i64 %indvars.iv137
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !33 ; 2 uses
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !111
  %i.br = shl nsw i64 %i.bp, 2                    ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33
  %i.bu = load i32, ptr %i.bg, align 8, !tbaa !110
  %.not115 = icmp eq i32 %i.bt, %i.bu
  br i1 %.not115, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val91 = load ptr, ptr %i.bh, align 8, !tbaa !118
  %i.bv = getelementptr i8, ptr %.val91, i64 8
  %.val91.val = load ptr, ptr %i.bv, align 8, !tbaa !8
  %i.bw = getelementptr inbounds i8, ptr %.val91.val, i64 %i.br
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !33
  %.val74 = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.by = getelementptr inbounds [4 x i8], ptr %.val74, i64 %i.bp
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !33
  %.not71 = icmp eq i32 %i.bx, %i.bz
  br i1 %.not71, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = icmp eq i32 %i.bm, %i.bl
  br i1 %i.ca, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = icmp slt i32 %i.bl, 16
  br i1 %i.cb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not9.i.i = icmp eq ptr %i.bk, null
  br i1 %.not9.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.k
  %i.ce = icmp samesign ult i32 %i.bl, 1073741823
  %i.cf = shl nuw nsw i32 %i.bl, 1
  %spec.select.i = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bl, %spec.select.i
  br i1 %.not.i9.i, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i = icmp eq ptr %i.bk, null
  %i.cg = zext nneg i32 %spec.select.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.ch) #35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.p
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %storemerge = phi ptr [ %i.cd, %bb.n ], [ %i.cc, %bb.m ], [ %i.ci, %bb.q ], [ %i.cj, %bb.r ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.r ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.j, %bb.o, %Vec_IntGrow.exit11.sink.split.i
  %i.ck = phi ptr [ %i.bj, %bb.j ], [ %i.bj, %bb.o ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.cl = phi i32 [ %i.bl, %bb.j ], [ %i.bl, %bb.o ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cm = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.b, align 4, !tbaa !12
  %i.cn = sext i32 %i.bm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cn
  store i32 %i.bo, ptr %i.co, align 4, !tbaa !33
  %.val79.pre = load i32, ptr %i.s, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.i, %Vec_IntPush.exit
  %.val79 = phi i32 [ %.val79146, %bb.h ], [ %.val79146, %bb.i ], [ %.val79.pre, %Vec_IntPush.exit ] ; 3 uses
  %i.cp = phi ptr [ %i.bj, %bb.h ], [ %i.bj, %bb.i ], [ %i.ck, %Vec_IntPush.exit ]
  %i.cq = phi ptr [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ %i.ck, %Vec_IntPush.exit ]
  %i.cr = phi i32 [ %i.bl, %bb.h ], [ %i.bl, %bb.i ], [ %i.cl, %Vec_IntPush.exit ]
  %i.cs = phi i32 [ %i.bm, %bb.h ], [ %i.bm, %bb.i ], [ %i.cm, %Vec_IntPush.exit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ct = sext i32 %.val79 to i64
  %i.cu = icmp slt i64 %indvars.iv.next138, %i.ct
  br i1 %i.cu, label %bb.g, label %.critedge4, !llvm.loop !170

.critedge4:                                       ; preds = %bb.g, %bb.s
  %.val78129 = phi i32 [ %.val79, %bb.s ], [ %.val79146, %bb.g ] ; 2 uses
  %i.cv = icmp sgt i32 %.val78129, 0
  br i1 %i.cv, label %.lr.ph131, label %.critedge6

.lr.ph131:                                        ; preds = %.critedge4
  %i.cw = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.cw, align 8, !tbaa !8
  %.val82 = load ptr, ptr %i.bd, align 8, !tbaa !100 ; 2 uses
  %.not67 = icmp eq ptr %.val82, null
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cy = getelementptr i8, ptr %3, i64 8
  br i1 %.not67, label %.critedge6, label %.lr.ph131.split

.lr.ph131.split:                                  ; preds = %.lr.ph131
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !111
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph131.split, %bb.w
  %.val78150 = phi i32 [ %.val78129, %.lr.ph131.split ], [ %.val78, %bb.w ] ; 2 uses
  %indvars.iv140 = phi i64 [ 0, %.lr.ph131.split ], [ %indvars.iv.next141, %bb.w ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv140
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !33 ; 3 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [12 x i8], ptr %.val82, i64 %i.dd ; 2 uses
  %i.df = shl nsw i64 %i.dd, 2
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !33
  %i.di = load i32, ptr %i.cx, align 8, !tbaa !110
  %.not116 = icmp eq i32 %i.dh, %i.di
  br i1 %.not116, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val86 = load i64, ptr %i.de, align 4          ; 3 uses
  %i.dj = and i64 %.val86, 2147483648
  %.not.i109 = icmp ne i64 %i.dj, 0
  %i.dk = and i64 %.val86, 536870911
  %i.dl = icmp eq i64 %i.dk, 536870911
  %narrow.i110.not = or i1 %.not.i109, %i.dl
  br i1 %narrow.i110.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = trunc i64 %.val86 to i32
  %i.dn = and i32 %i.dm, 536870911
  %i.do = sub nsw i32 %i.dc, %i.dn
  %.val97 = load ptr, ptr %i.cy, align 8, !tbaa !8 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.val97, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = add nsw i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !33
  %.val.i112 = load i64, ptr %i.de, align 4
  %i.dt = lshr i64 %.val.i112, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = and i32 %i.du, 536870911
  %i.dw = sub nsw i32 %i.dc, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val97, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !33
  %i.ea = add nsw i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !33
  %.val78.pre = load i32, ptr %i.s, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.val78 = phi i32 [ %.val78150, %bb.t ], [ %.val78150, %bb.u ], [ %.val78.pre, %bb.v ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.eb = sext i32 %.val78 to i64
  %i.ec = icmp slt i64 %indvars.iv.next141, %i.eb
  br i1 %i.ec, label %bb.t, label %.critedge6, !llvm.loop !171

.critedge6:                                       ; preds = %bb.w, %.critedge, %.critedge2, %.lr.ph131, %.critedge4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @Gia_RsbDeriveGiaFromWindows(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val51 = load i32, ptr %i.a, align 8, !tbaa !82
  %i.b = tail call ptr @Gia_ManStart(i32 noundef %.val51) #34 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #37
  %i.e = add i64 %i.d, 1
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #36 ; 2 uses
  %i.g = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %i.c) #34 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  store ptr %i.h, ptr %i.b, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !172  ; 3 uses
  %.not.i56 = icmp eq ptr %i.j, null
  br i1 %.not.i56, label %Abc_UtilStrsav.exit57, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #37
  %i.l = add i64 %i.k, 1
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #36 ; 2 uses
  %i.n = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %i.j) #34 ; 0 uses
  br label %Abc_UtilStrsav.exit57

Abc_UtilStrsav.exit57:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.o = phi ptr [ %i.m, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !172
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.b) #34
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #34
  %i.q = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val55 = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %.val55, i64 8
  store i32 0, ptr %i.r, align 4, !tbaa !173
  %i.s = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val5058 = load i32, ptr %i.s, align 4, !tbaa !12
  %i.t = icmp sgt i32 %.val5058, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit57
  %i.u = getelementptr i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.val54 = load ptr, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %.val54, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val47 = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [12 x i8], ptr %.val54, i64 %i.x
  %i.z = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !173
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val50 = load i32, ptr %i.s, align 4, !tbaa !12
  %i.ab = sext i32 %.val50 to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.d, label %.critedge, !llvm.loop !175

.critedge:                                        ; preds = %bb.d, %bb.e, %Abc_UtilStrsav.exit57
  %i.ad = getelementptr i8, ptr %1, i64 8
  %i.ae = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val4961 = load i32, ptr %i.ae, align 4, !tbaa !12 ; 2 uses
  %i.af = icmp sgt i32 %.val4961, 0
  br i1 %i.af, label %.lr.ph63, label %.critedge2

.lr.ph63:                                         ; preds = %.critedge, %bb.h
  %.val4976 = phi i32 [ %.val49, %bb.h ], [ %.val4961, %.critedge ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.h ], [ 0, %.critedge ] ; 2 uses
  %.val46 = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val46, i64 %indvars.iv70
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %.val53 = load ptr, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %.val53, i64 %i.ai ; 4 uses
  %.not43 = icmp eq ptr %.val53, null
  br i1 %.not43, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %.lr.ph63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !173
  %.not45 = icmp eq i32 %i.al, -1
  br i1 %.not45, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.aj, align 4            ; 4 uses
  %i.an = and i64 %i.am, 536870911
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !173
  %i.as = trunc i64 %i.am to i32
  %i.at = lshr i32 %i.as, 29
  %i.au = and i32 %i.at, 1
  %i.av = xor i32 %i.au, %i.ar
  %i.aw = lshr i64 %i.am, 32
  %i.ax = and i64 %i.aw, 536870911
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !173
  %i.bc = lshr i64 %i.am, 61
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 1
  %i.bf = xor i32 %i.be, %i.bb
  %i.bg = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.b, i32 noundef %i.av, i32 noundef %i.bf) #34
  store i32 %i.bg, ptr %i.ak, align 4, !tbaa !173
  %.val49.pre = load i32, ptr %i.ae, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.val49 = phi i32 [ %.val4976, %bb.f ], [ %.val49.pre, %bb.g ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.bh = sext i32 %.val49 to i64
  %i.bi = icmp slt i64 %indvars.iv.next71, %i.bh
  br i1 %i.bi, label %.lr.ph63, label %.critedge2, !llvm.loop !176

.critedge2:                                       ; preds = %.lr.ph63, %bb.h, %.critedge
  %i.bj = getelementptr i8, ptr %3, i64 4         ; 2 uses
  %.val4865 = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bk = icmp sgt i32 %.val4865, 0
  br i1 %i.bk, label %.lr.ph67, label %.critedge4

.lr.ph67:                                         ; preds = %.critedge2
  %i.bl = getelementptr i8, ptr %3, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph67, %bb.j
  %indvars.iv73 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next74, %bb.j ] ; 2 uses
  %.val52 = load ptr, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %.not44 = icmp eq ptr %.val52, null
  br i1 %.not44, label %.critedge4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv73
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [12 x i8], ptr %.val52, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !173
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.b, i32 noundef %i.br)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %.val48 = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bs = sext i32 %.val48 to i64
  %i.bt = icmp slt i64 %indvars.iv.next74, %i.bs
  br i1 %i.bt, label %bb.i, label %.critedge4, !llvm.loop !177

.critedge4:                                       ; preds = %bb.i, %bb.j, %.critedge2
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.b) #34
  ret ptr %i.b
}

declare void @Gia_ManHashAlloc(ptr noundef) local_unnamed_addr #12

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #12

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define i64 @Gia_LutComputeTruth66_rec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #21 {
bb.a:
  %.val = load i64, ptr %1, align 4               ; 7 uses
  %i.a = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.a, 2684354559
  br i1 %narrow.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %.val, 32
  %i.c = and i64 %i.b, 536870911
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  br label %common.ret24

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %.val, 2305843005455597567
  %narrow.i22.not = icmp eq i64 %i.f, 2305843005455597567
  br i1 %narrow.i22.not, label %common.ret24, label %bb.d

common.ret24:                                     ; preds = %bb.c, %bb.b, %bb.d
  %common.ret24.op = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ], [ %i.e, %bb.b ]
  ret i64 %common.ret24.op

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %.val, 536870911
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [12 x i8], ptr %1, i64 %i.h
  %i.j = tail call i64 @Gia_LutComputeTruth66_rec(ptr noundef %0, ptr noundef nonnull %i.i)
  %i.k = lshr i64 %.val, 32
  %i.l = and i64 %i.k, 536870911
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [12 x i8], ptr %1, i64 %i.m
  %i.o = tail call i64 @Gia_LutComputeTruth66_rec(ptr noundef %0, ptr noundef nonnull %i.n)
  %i.p = shl i64 %.val, 34
  %sext = ashr i64 %i.p, 63
  %spec.select = xor i64 %i.j, %sext
  %i.q = shl i64 %.val, 2
  %sext23 = ashr i64 %i.q, 63
  %.0 = xor i64 %i.o, %sext23
  %i.r = and i64 %.0, %spec.select
  br label %common.ret24
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Gia_ManVerifyTwoTruths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val2632 = load ptr, ptr %i.a, align 8, !tbaa !104 ; 2 uses
  %i.b = getelementptr i8, ptr %.val2632, i64 4
  %.val26.val33 = load i32, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i32 %.val26.val33, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = getelementptr i8, ptr %1, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val2639 = phi ptr [ %.val2632, %.lr.ph ], [ %.val26, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.val26.val37 = phi i32 [ %.val26.val33, %.lr.ph ], [ %.val26.val, %bb.d ]
  %.02035 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.g = getelementptr i8, ptr %.val2639, i64 8
  %.val30.val = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val30.val, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [12 x i8], ptr %.val29, i64 %i.j ; 2 uses
  %.val27 = load ptr, ptr %i.e, align 8, !tbaa !100
  %.val28 = load ptr, ptr %i.f, align 8, !tbaa !104
  %i.l = getelementptr i8, ptr %.val28, i64 8
  %.val28.val = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val28.val, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %.val27, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.k, align 4              ; 2 uses
  %i.r = and i64 %i.q, 536870911
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.s
  %i.u = tail call i64 @Gia_LutComputeTruth66_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  %i.v = load i64, ptr %i.p, align 4              ; 2 uses
  %i.w = and i64 %i.v, 536870911
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.x
  %i.z = tail call i64 @Gia_LutComputeTruth66_rec(ptr noundef %1, ptr noundef nonnull %i.y)
  %i.aa = shl i64 %i.q, 34
  %sext = ashr i64 %i.aa, 63
  %spec.select = xor i64 %sext, %i.u
  %i.ab = shl i64 %i.v, 34
  %sext31 = ashr i64 %i.ab, 63
  %.0 = xor i64 %sext31, %i.z
  %.not23 = icmp eq i64 %spec.select, %.0
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ac, i32 noundef %.val26.val37) ; 0 uses
  %.val26.pre = load ptr, ptr %i.a, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val26 = phi ptr [ %.val26.pre, %bb.c ], [ %.val2639, %bb.b ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.c ], [ %.02035, %bb.b ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val26, i64 4
  %.val26.val = load i32, ptr %i.ae, align 4, !tbaa !12 ; 2 uses
  %i.af = sext i32 %.val26.val to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.ah = xor i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.020.lcssa = phi i32 [ 1, %bb.a ], [ %i.ah, %._crit_edge.loopexit ]
  ret i32 %.020.lcssa
}

; Function Attrs: nounwind uwtable
define void @Gia_RsbEnumerateWindows(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #34 ; 2 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 6 uses
  %or.cond.i.i = icmp ult i32 %i.c, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.d ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.e, align 8, !tbaa !121
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 16) #33
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !115
  store i32 %i.d, ptr %i.i, align 4, !tbaa !113
  %i.k = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val91 = load i32, ptr %i.k, align 8, !tbaa !82 ; 8 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 6 uses
  %i.m = add i32 %.val91, -1
  %or.cond.i.i95 = icmp ult i32 %i.m, 15
  %spec.store.select.i.i96 = select i1 %or.cond.i.i95, i32 16, i32 %.val91 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i96, ptr %i.l, align 8, !tbaa !13
  %.not.i.i97 = icmp eq i32 %spec.store.select.i.i96, 0
  br i1 %.not.i.i97, label %Vec_IntAlloc.exit.thread.i103, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Vec_WecStart.exit
  %i.o = sext i32 %spec.store.select.i.i96 to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #36 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !8
  store i32 %.val91, ptr %i.n, align 4, !tbaa !12
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i101, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.s = sext i32 %.val91 to i64
  %i.t = shl nsw i64 %i.s, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.t, i1 false)
  br label %Vec_IntAlloc.exit.i101

Vec_IntAlloc.exit.thread.i103:                    ; preds = %Vec_WecStart.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !8
  store i32 %.val91, ptr %i.n, align 4, !tbaa !12
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !8
  store i32 %.val91, ptr %i.w, align 4, !tbaa !12
  br label %Vec_IntStart.exit104

Vec_IntAlloc.exit.i101:                           ; preds = %Vec_IntAlloc.exit.i, %bb.c
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %spec.store.select.i.i96, ptr %i.y, align 8, !tbaa !13
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.p) #36 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !8
  store i32 %.val91, ptr %i.z, align 4, !tbaa !12
  %.not.i102 = icmp eq ptr %i.aa, null
  br i1 %.not.i102, label %Vec_IntStart.exit104, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i101
  %i.ac = sext i32 %.val91 to i64
  %i.ad = shl nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aa, i8 0, i64 %i.ad, i1 false)
  br label %Vec_IntStart.exit104

Vec_IntStart.exit104:                             ; preds = %Vec_IntAlloc.exit.thread.i103, %Vec_IntAlloc.exit.i101, %bb.d
  %i.ae = phi ptr [ null, %Vec_IntAlloc.exit.thread.i103 ], [ %i.q, %Vec_IntAlloc.exit.i101 ], [ %i.q, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.v, %Vec_IntAlloc.exit.thread.i103 ], [ %i.y, %Vec_IntAlloc.exit.i101 ], [ %i.y, %bb.d ] ; 3 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %Vec_IntStart.exit104
  %.012.i.i = phi i32 [ 999, %Vec_IntStart.exit104 ], [ %i.ag, %.critedge.i.i.backedge ] ; 3 uses
  %i.ag = add i32 %.012.i.i, 1                    ; 7 uses
  %i.ah = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.ag, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ai = add nuw nsw i32 %.01116.i.i, 2          ; 3 uses
  %i.aj = mul nuw nsw i32 %i.ai, %i.ai
  %.not.i.i105 = icmp ugt i32 %i.aj, %i.ag
  br i1 %.not.i.i105, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !179

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.01116.i.i = phi i32 [ %i.ai, %bb.e ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.ak = urem i32 %i.ag, %.01116.i.i
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.critedge.i.i.backedge, label %bb.e

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.e
  %i.am = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.ag ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.am, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #36 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !8
  store i32 %i.ag, ptr %i.an, align 4, !tbaa !12
  %.not.i6.i = icmp eq ptr %i.aq, null
  br i1 %.not.i6.i, label %Hsh_VecManStart.exit, label %bb.f

bb.f:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.as = zext nneg i32 %i.ag to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 -1, i64 %i.at, i1 false)
  br label %Hsh_VecManStart.exit

Hsh_VecManStart.exit:                             ; preds = %Abc_PrimeCudd.exit.i, %bb.f
  %i.au = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !12
  store i32 4000, ptr %i.au, align 8, !tbaa !13
  %i.aw = tail call noalias dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4      ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !12
  store i32 1000, ptr %i.ay, align 8, !tbaa !13
  %i.ba = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.bc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #34
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %Abc_Clock.exit, label %bb.g

bb.g:                                             ; preds = %Hsh_VecManStart.exit
  %i.be = load i64, ptr %4, align 8, !tbaa !180
  %.neg128 = mul i64 %i.be, -1000000
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !182
  %.neg127 = sdiv i64 %i.bg, -1000
  %.neg129 = add i64 %.neg127, %.neg128
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %Hsh_VecManStart.exit, %bb.g
  %.0.i.neg = phi i64 [ %.neg129, %bb.g ], [ 1, %Hsh_VecManStart.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @Gia_ManStaticFanoutStart(ptr noundef %0) #34
  %i.bh = getelementptr i8, ptr %0, i64 32
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Clock.exit, %bb.s
  %i.bk = phi i32 [ %i.dl, %bb.s ], [ %i.bi, %Abc_Clock.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %Abc_Clock.exit ] ; 3 uses
  %.065143 = phi i32 [ %.2, %bb.s ], [ 0, %Abc_Clock.exit ] ; 4 uses
  %.072140 = phi i32 [ %.274, %bb.s ], [ 0, %Abc_Clock.exit ] ; 4 uses
  %.075139 = phi i32 [ %.277, %bb.s ], [ 0, %Abc_Clock.exit ] ; 4 uses
  %i.bl = phi <2 x i32> [ %i.dm, %bb.s ], [ zeroinitializer, %Abc_Clock.exit ] ; 4 uses
  %.val92 = load ptr, ptr %i.bh, align 8, !tbaa !100 ; 2 uses
  %.not = icmp eq ptr %.val92, null
  br i1 %.not, label %.critedge.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %.val92, i64 %indvars.iv
  %.val93 = load i64, ptr %i.bm, align 4          ; 2 uses
  %i.bn = and i64 %.val93, 2147483648
  %.not.i106 = icmp ne i64 %i.bn, 0
  %i.bo = and i64 %.val93, 536870911
  %i.bp = icmp eq i64 %i.bo, 536870911
  %narrow.i.not = or i1 %.not.i106, %i.bp
  br i1 %narrow.i.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.br = call i32 @Gia_RsbWindowCompute(ptr noundef nonnull %0, i32 noundef %i.bq, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not81 = icmp eq i32 %i.br, 0
  br i1 %.not81, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !167 ; 5 uses
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !167 ; 5 uses
  %i.bu = call ptr @Gia_RsbFindOutputs(ptr noundef nonnull %0, ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef nonnull %i.af) ; 4 uses
  %i.bv = add nsw i32 %.075139, 1
  %i.bw = getelementptr i8, ptr %i.bs, i64 4
  %.val89 = load i32, ptr %i.bw, align 4, !tbaa !12 ; 3 uses
  %i.bx = add nsw i32 %.val89, %.072140
  %i.by = getelementptr i8, ptr %i.bt, i64 4
  %.val88 = load i32, ptr %i.by, align 4, !tbaa !12 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bu, i64 4
  %.val87 = load i32, ptr %i.bz, align 4, !tbaa !12 ; 2 uses
  %i.ca = insertelement <2 x i32> poison, i32 %.val88, i64 0
  %i.cb = insertelement <2 x i32> %i.ca, i32 %.val87, i64 1
  %i.cc = add nsw <2 x i32> %i.cb, %i.bl
  %i.cd = icmp sgt i32 %.val89, 1000
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ce = sub nsw i32 %.val89, %.val88
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bq, i32 noundef %.val88, i32 noundef %i.ce, i32 noundef %.val87) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cg = call ptr @Gia_RsbDeriveGiaFromWindows(ptr noundef nonnull %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu) ; 7 uses
  %i.ch = call ptr @Gia_ManResub2Test(ptr noundef %i.cg) ; 6 uses
  %i.ci = call i32 @Gia_ManVerifyTwoTruths(ptr noundef %i.cg, ptr noundef %i.ch)
  %.not82 = icmp eq i32 %i.ci, 0
  br i1 %.not82, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @Gia_ManPrint(ptr noundef %i.cg) #34
  call void @Gia_ManPrint(ptr noundef %i.ch) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !103
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  %.val3.i = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !104
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %.val.i = load i32, ptr %i.cq, align 4, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !82
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !103
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %.val3.i107 = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !104
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val.i108 = load i32, ptr %i.cy, align 4, !tbaa !12
  %i.cz = add i32 %i.ck, %.065143
  %i.da = add i32 %.val3.i, %.val.i
  %i.db = add i32 %i.da, %i.cs
  %.neg = sub i32 %i.cz, %i.db
  %i.dc = add i32 %.neg, %.val3.i107
  %i.dd = add i32 %i.dc, %.val.i108
  call void @Gia_ManStop(ptr noundef %i.cg) #34
  call void @Gia_ManStop(ptr noundef %i.ch) #34
  %i.de = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !8  ; 2 uses
  %.not.i109 = icmp eq ptr %i.df, null
  br i1 %.not.i109, label %Vec_IntFree.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.df) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.n, %bb.o
  call void @free(ptr noundef nonnull %i.bs) #34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !8  ; 2 uses
  %.not.i110 = icmp eq ptr %i.dh, null
  br i1 %.not.i110, label %Vec_IntFree.exit111, label %bb.p

bb.p:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.dh) #34
  br label %Vec_IntFree.exit111

Vec_IntFree.exit111:                              ; preds = %Vec_IntFree.exit, %bb.p
  call void @free(ptr noundef nonnull %i.bt) #34
  %i.di = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !8  ; 2 uses
  %.not.i112 = icmp eq ptr %i.dj, null
  br i1 %.not.i112, label %Vec_IntFree.exit113, label %bb.q

bb.q:                                             ; preds = %Vec_IntFree.exit111
  call void @free(ptr noundef nonnull %i.dj) #34
  br label %Vec_IntFree.exit113

Vec_IntFree.exit113:                              ; preds = %Vec_IntFree.exit111, %bb.q
  call void @free(ptr noundef nonnull %i.bu) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %Vec_IntFree.exit113
  %.176 = phi i32 [ %i.bv, %Vec_IntFree.exit113 ], [ %.075139, %bb.i ]
  %.173 = phi i32 [ %i.bx, %Vec_IntFree.exit113 ], [ %.072140, %bb.i ]
  %.1 = phi i32 [ %i.dd, %Vec_IntFree.exit113 ], [ %.065143, %bb.i ]
  %i.dk = phi <2 x i32> [ %i.cc, %Vec_IntFree.exit113 ], [ %i.bl, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.pre = load i32, ptr %i.k, align 8, !tbaa !82
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.h
  %i.dl = phi i32 [ %.pre, %bb.r ], [ %i.bk, %bb.h ] ; 2 uses
  %.277 = phi i32 [ %.176, %bb.r ], [ %.075139, %bb.h ] ; 2 uses
  %.274 = phi i32 [ %.173, %bb.r ], [ %.072140, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.r ], [ %.065143, %bb.h ] ; 2 uses
  %i.dm = phi <2 x i32> [ %i.dk, %bb.r ], [ %i.bl, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = sext i32 %i.dl to i64
  %i.do = icmp slt i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !183

.critedge.loopexit:                               ; preds = %bb.s, %.lr.ph
  %.075.lcssa.ph = phi i32 [ %.075139, %.lr.ph ], [ %.277, %bb.s ]
  %.072.lcssa.ph = phi i32 [ %.072140, %.lr.ph ], [ %.274, %bb.s ]
  %.065.lcssa.ph = phi i32 [ %.065143, %.lr.ph ], [ %.2, %bb.s ]
  %i.dp = phi <2 x i32> [ %i.bl, %.lr.ph ], [ %i.dm, %bb.s ]
  %i.dq = sitofp <2 x i32> %i.dp to <2 x double>
  %i.dr = sitofp i32 %.072.lcssa.ph to double
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Abc_Clock.exit
  %.075.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.075.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.072.lcssa = phi double [ 0.000000e+00, %Abc_Clock.exit ], [ %i.dr, %.critedge.loopexit ]
  %.065.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.065.lcssa.ph, %.critedge.loopexit ]
  %i.ds = phi <2 x double> [ zeroinitializer, %Abc_Clock.exit ], [ %i.dq, %.critedge.loopexit ]
  call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %0) #34
  %i.dt = load i32, ptr %i.e, align 8, !tbaa !121 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !115 ; 3 uses
  br i1 %i.du, label %.lr.ph.i.i115.preheader, label %._crit_edge.i.i

.lr.ph.i.i115.preheader:                          ; preds = %.critedge
  %i.dv = zext nneg i32 %i.dt to i64
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %.lr.ph.i.i115.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !8  ; 2 uses
  %.not15.i.i116 = icmp eq ptr %i.dy, null
  br i1 %.not15.i.i116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  call void @free(ptr noundef nonnull %i.dy) #34
  store ptr null, ptr %i.dx, align 8, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i115
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.dv
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i115, !llvm.loop !130

._crit_edge.i.i:                                  ; preds = %.critedge
  %.not.i.i114 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i114, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.u, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i) #34
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.e) #34
  %.not.i117 = icmp eq ptr %i.ae, null
  br i1 %.not.i117, label %Vec_IntFree.exit118, label %bb.v

bb.v:                                             ; preds = %Vec_WecFree.exit
  call void @free(ptr noundef nonnull %i.ae) #34
  br label %Vec_IntFree.exit118

Vec_IntFree.exit118:                              ; preds = %Vec_WecFree.exit, %bb.v
  call void @free(ptr noundef nonnull %i.l) #34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !8  ; 2 uses
  %.not.i119 = icmp eq ptr %i.ea, null
  br i1 %.not.i119, label %Vec_IntFree.exit120, label %bb.w

bb.w:                                             ; preds = %Vec_IntFree.exit118
  call void @free(ptr noundef nonnull %i.ea) #34
  br label %Vec_IntFree.exit120

Vec_IntFree.exit120:                              ; preds = %Vec_IntFree.exit118, %bb.w
  call void @free(ptr noundef nonnull %i.af) #34
  %i.eb = load i32, ptr %i.k, align 8, !tbaa !82
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !103
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %.val3.i121 = load i32, ptr %i.ee, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !104
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %.val.i122 = load i32, ptr %i.eh, align 4, !tbaa !12
  %i.ei = add i32 %.val.i122, %.val3.i121
  %i.ej = xor i32 %i.ei, -1
  %i.ek = add i32 %i.eb, %i.ej
  %.val94.val = load i32, ptr %i.az, align 4, !tbaa !12
  %i.el = call noundef i32 @llvm.smax.i32(i32 %.075.lcssa, i32 1)
  %i.em = uitofp nneg i32 %i.el to double         ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.ds, %i.eo          ; 2 uses
  %i.eq = fdiv double %.072.lcssa, %i.em
  %i.er = extractelement <2 x double> %i.ep, i64 0
  %i.es = extractelement <2 x double> %i.ep, i64 1
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.075.lcssa, i32 noundef %i.ek, i32 noundef %.val94.val, double noundef %i.er, double noundef %i.es, double noundef %i.eq, i32 noundef %.065.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.eu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #34
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %Abc_Clock.exit124, label %bb.x

bb.x:                                             ; preds = %Vec_IntFree.exit120
  %i.ew = load i64, ptr %3, align 8, !tbaa !180
  %i.ex = mul nsw i64 %i.ew, 1000000
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !182
  %i.fa = sdiv i64 %i.ez, 1000
  %i.fb = add nsw i64 %i.fa, %i.ex
  br label %Abc_Clock.exit124

Abc_Clock.exit124:                                ; preds = %Vec_IntFree.exit120, %bb.x
  %.0.i123 = phi i64 [ %i.fb, %bb.x ], [ -1, %Vec_IntFree.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.fc = add i64 %.0.i123, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9)
  %i.fd = sitofp i64 %i.fc to double
  %i.fe = fdiv double %i.fd, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.fe)
  %i.ff = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i125, label %Vec_IntFree.exit.i, label %bb.y

bb.y:                                             ; preds = %Abc_Clock.exit124
  call void @free(ptr noundef nonnull %i.ff) #34
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.y, %Abc_Clock.exit124
  call void @free(ptr noundef nonnull %i.am) #34
  %i.fg = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.fg, null
  br i1 %.not.i7.i, label %Vec_IntFree.exit8.i, label %bb.z

bb.z:                                             ; preds = %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.fg) #34
  br label %Vec_IntFree.exit8.i

Vec_IntFree.exit8.i:                              ; preds = %bb.z, %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.au) #34
  %i.fh = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %.not.i9.i = icmp eq ptr %i.fh, null
  br i1 %.not.i9.i, label %Hsh_VecManStop.exit, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFree.exit8.i
  call void @free(ptr noundef nonnull %i.fh) #34
  br label %Hsh_VecManStop.exit

Hsh_VecManStop.exit:                              ; preds = %bb.aa, %Vec_IntFree.exit8.i
  call void @free(ptr noundef nonnull %i.ay) #34
  ret void
}

declare void @Gia_ManPrint(ptr noundef) local_unnamed_addr #12

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define ptr @Gia_RsbTryOneWindow(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @Gia_ManResub2Test(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Gia_RsbTestArray() local_unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 9 uses
  %spec.select.sink.i6267 = phi i32 [ 100, %bb.a ], [ %spec.select.sink.i61, %Vec_IntPush.exit ] ; 3 uses
  %storemerge6466 = phi ptr [ %i.c, %bb.a ], [ %.val, %Vec_IntPush.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @__const.Gia_RsbTestArray.Array, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %i.f = zext i32 %spec.select.sink.i6267 to i64
  %i.g = icmp eq i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %.critedge
  %i.h = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not9.i.i = icmp eq ptr %storemerge6466, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge6466, i64 noundef 64) #35
  br label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i64 %indvars.iv, 1
  %i.l = and i64 %i.k, 4294967294
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.l
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i10.i = icmp eq ptr %storemerge6466, null
  %i.m = shl nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.n = shl i32 %indvars.iv.tr, 1                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @realloc(ptr noundef nonnull %storemerge6466, i64 noundef %i.m) #35
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.m) #36
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %.critedge, %bb.f
  %.val = phi ptr [ %storemerge6466, %.critedge ], [ %storemerge6466, %bb.f ], [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.o, %bb.h ], [ %i.p, %bb.i ] ; 8 uses
  %spec.select.sink.i61 = phi i32 [ %spec.select.sink.i6267, %.critedge ], [ %spec.select.sink.i6267, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  store i32 %i.e, ptr %i.q, align 4, !tbaa !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, 272
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %.critedge, !llvm.loop !184

.lr.ph.i.preheader:                               ; preds = %Vec_IntPush.exit
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef 272) ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.t) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next.i, 272
  br i1 %exitcond77.not, label %.critedge2.lr.ph, label %.lr.ph.i, !llvm.loop !185

.critedge2.lr.ph:                                 ; preds = %.lr.ph.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.lr.ph, %bb.j
  %indvars.iv78 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next79, %bb.j ] ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv78 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %.not = icmp eq i32 %i.w, %i.y
  br i1 %.not, label %bb.j, label %.critedge4.lr.ph

bb.j:                                             ; preds = %.critedge2
  %i.z = and i32 %i.w, 1
  %i.aa = or disjoint i32 %i.z, 32                ; 2 uses
  %i.ab = ashr i32 %i.w, 1                        ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ac, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.aa, i32 noundef %i.ab) ; 0 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 2
  %i.ae = icmp samesign ult i64 %indvars.iv78, 269
  br i1 %i.ae, label %.critedge2, label %.critedge4.lr.ph, !llvm.loop !186

.critedge4.lr.ph:                                 ; preds = %.critedge2, %bb.j
  %puts48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.lr.ph, %bb.l
  %indvars.iv83 = phi i64 [ 14, %.critedge4.lr.ph ], [ %indvars.iv.next84, %bb.l ] ; 4 uses
  %indvars.iv81 = phi i64 [ 15, %.critedge4.lr.ph ], [ %indvars.iv.next82, %bb.l ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv83
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv81
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %.not49 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not49, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge4
  %i.aj = and i32 %i.ag, 1
  %i.ak = or disjoint i32 %i.aj, 32               ; 2 uses
  %i.al = ashr i32 %i.ag, 1                       ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv83 to i32
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.am, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.ak, i32 noundef %i.al) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge4, %bb.k
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 2
  %i.ao = icmp samesign ult i64 %indvars.iv83, 269
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 2
  br i1 %i.ao, label %.critedge4, label %Vec_IntFree.exit, !llvm.loop !187

Vec_IntFree.exit:                                 ; preds = %bb.l
  tail call void @Abc_ResubPrepareManager(i32 noundef 1) #34
  %i.ap = call i32 @Abc_ResubComputeWindow(ptr noundef nonnull %.val, i32 noundef 136, i32 noundef 10, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 0 uses
  call void @Abc_ResubPrepareManager(i32 noundef 0) #34
  call void @free(ptr noundef nonnull %.val) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManExtractCuts2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #34
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !180
  %.neg46 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !182
  %.neg = sdiv i64 %i.e, -1000
  %.neg47 = add i64 %.neg, %.neg46
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg47, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 4 uses
  %i.g = add i32 %2, -1
  %or.cond.i.i = icmp ult i32 %i.g, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %2 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.f, align 8, !tbaa !121
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 16) #33
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ null, %Abc_Clock.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !115
  store i32 %2, ptr %i.k, align 4, !tbaa !113
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val31 = load i32, ptr %i.m, align 8, !tbaa !82 ; 5 uses
  %i.n = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36 ; 7 uses
  %i.o = add i32 %.val31, -1
  %or.cond.i.i35 = icmp ult i32 %i.o, 15
  %spec.store.select.i.i36 = select i1 %or.cond.i.i35, i32 16, i32 %.val31 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i36, ptr %i.n, align 8, !tbaa !13
  %.not.i.i37 = icmp eq i32 %spec.store.select.i.i36, 0
  br i1 %.not.i.i37, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %Vec_WecStart.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !8
  store i32 %.val31, ptr %i.p, align 4, !tbaa !12
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %Vec_WecStart.exit
  %i.r = sext i32 %spec.store.select.i.i36 to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #36 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !8
  store i32 %.val31, ptr %i.p, align 4, !tbaa !12
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.v = sext i32 %.val31 to i64
  %i.w = shl nsw i64 %i.v, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.w, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.d
  %i.x = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.t, %bb.d ]
  %i.y = call i64 @time(ptr noundef null) #34
  %i.z = trunc i64 %i.y to i32
  call void @srand(i32 noundef %i.z) #34
  %i.aa = icmp sgt i32 %2, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %Vec_IntStart.exit
  %i.ab = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = add nsw i32 %1, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %Vec_IntFree.exit41
  %.048 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %Vec_IntFree.exit41 ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %.val32 = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.ae = getelementptr i8, ptr %.val32, i64 4
  %.val32.val = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.af = add nsw i32 %.val32.val, 1
  %i.ag = call i32 @rand() #34
  %i.ah = load i32, ptr %i.m, align 8, !tbaa !82
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val3.i = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %.val.i = load i32, ptr %i.al, align 4, !tbaa !12
  %i.am = add i32 %.val.i, %.val3.i
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.ah, %i.an
  %i.ap = srem i32 %i.ag, %i.ao
  %i.aq = add nsw i32 %i.af, %i.ap
  %i.ar = call ptr @Gia_RsbWindowInit(ptr noundef %0, ptr noundef nonnull %i.n, i32 noundef %i.aq, i32 noundef 8) ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.e, label %bb.f, !llvm.loop !188

bb.f:                                             ; preds = %bb.e
  %i.at = call ptr @Gia_RsbCreateWindowInputs(ptr noundef nonnull %0, ptr noundef nonnull %i.ar) ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %.val30 = load i32, ptr %i.au, align 4, !tbaa !12 ; 4 uses
  %.not = icmp slt i32 %.val30, %i.ad
  %.not28 = icmp sgt i32 %.val30, %1
  %or.cond = or i1 %.not, %.not28
  br i1 %or.cond, label %Vec_IntAppend.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sext i32 %.048 to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.av ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 7 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !13
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp slt i32 %i.ay, 16
  br i1 %i.bb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.bg = phi ptr [ %i.be, %bb.j ], [ %i.bf, %bb.k ]
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bh = icmp samesign ult i32 %i.ay, 1073741823
  %i.bi = shl nuw nsw i32 %i.ay, 1
  %spec.select.i = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ay, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bk, null
  %i.bl = zext nneg i32 %spec.select.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.bm) #35
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bo = call noalias ptr @malloc(i64 noundef %i.bm) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = phi ptr [ %i.bn, %bb.n ], [ %i.bo, %bb.o ]
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.aw, align 8, !tbaa !13
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.bq = phi i32 [ %i.ay, %bb.g ], [ %i.ay, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !8  ; 3 uses
  %i.bt = add nsw i32 %i.bq, 1
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !12
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %.val30, ptr %i.bv, align 4, !tbaa !33
  %i.bw = add nsw i32 %.048, 1                    ; 2 uses
  %i.bx = icmp sgt i32 %.val30, 0
  br i1 %i.bx, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit
  %i.by = getelementptr i8, ptr %i.at, i64 8
  %.val.i38 = load ptr, ptr %i.by, align 8, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %i.bz = phi ptr [ %i.bs, %.lr.ph.i ], [ %.pre10.i52, %Vec_IntPush.exit.i ] ; 7 uses
  %.pre.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %.pre.i50, %Vec_IntPush.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val.i38, i64 %indvars.iv.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !33
  %i.cc = load i32, ptr %i.ax, align 4, !tbaa !12 ; 7 uses
  %i.cd = load i32, ptr %i.aw, align 8, !tbaa !13
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.r, label %Vec_IntPush.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cf = icmp slt i32 %i.cc, 16
  br i1 %i.cf, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not9.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bz, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.u:                                             ; preds = %bb.s
  %i.ch = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.v:                                             ; preds = %bb.r
  %i.ci = icmp samesign ult i32 %i.cc, 1073741823
  %i.cj = shl nuw nsw i32 %i.cc, 1
  %spec.select.i.i = select i1 %i.ci, i32 %i.cj, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.cc, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.w, label %Vec_IntPush.exit.i

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i.i = icmp eq ptr %i.bz, null
  %i.ck = zext nneg i32 %spec.select.i.i to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = call ptr @realloc(ptr noundef nonnull %i.bz, i64 noundef %i.cl) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.y:                                             ; preds = %bb.w
  %i.cn = call noalias ptr @malloc(i64 noundef %i.cl) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.y, %bb.x, %bb.u, %bb.t
  %i.co = phi ptr [ %i.ch, %bb.u ], [ %i.cg, %bb.t ], [ %i.cm, %bb.x ], [ %i.cn, %bb.y ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i.i, %bb.x ], [ %spec.select.i.i, %bb.y ]
  store ptr %i.co, ptr %i.br, align 8, !tbaa !8
  store i32 %spec.select.sink.i.i, ptr %i.aw, align 8, !tbaa !13
  %.pre11.i = load i32, ptr %i.ax, align 4, !tbaa !12
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.q, %Vec_IntGrow.exit11.sink.split.i.i, %bb.v
  %.pre10.i52 = phi ptr [ %i.co, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bz, %bb.v ], [ %i.bz, %bb.q ]
  %.pre.i50 = phi ptr [ %i.co, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bz, %bb.v ], [ %.pre.i, %bb.q ] ; 2 uses
  %i.cp = phi i32 [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.cc, %bb.v ], [ %i.cc, %bb.q ] ; 2 uses
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.ax, align 4, !tbaa !12
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %.pre.i50, i64 %i.cr
  store i32 %i.cb, ptr %i.cs, align 4, !tbaa !33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val6.i = load i32, ptr %i.au, align 4, !tbaa !12
  %i.ct = sext i32 %.val6.i to i64
  %i.cu = icmp slt i64 %indvars.iv.next.i, %i.ct
  br i1 %i.cu, label %bb.q, label %Vec_IntAppend.exit, !llvm.loop !78

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %Vec_IntPush.exit, %bb.f
  %.1 = phi i32 [ %.048, %bb.f ], [ %i.bw, %Vec_IntPush.exit ], [ %i.bw, %Vec_IntPush.exit.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !8  ; 2 uses
  %.not.i39 = icmp eq ptr %i.cw, null
  br i1 %.not.i39, label %Vec_IntFree.exit, label %bb.z

bb.z:                                             ; preds = %Vec_IntAppend.exit
  call void @free(ptr noundef nonnull %i.cw) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntAppend.exit, %bb.z
  call void @free(ptr noundef nonnull %i.at) #34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !8  ; 2 uses
  %.not.i40 = icmp eq ptr %i.cy, null
  br i1 %.not.i40, label %Vec_IntFree.exit41, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.cy) #34
  br label %Vec_IntFree.exit41

Vec_IntFree.exit41:                               ; preds = %Vec_IntFree.exit, %bb.aa
  call void @free(ptr noundef nonnull %i.ar) #34
  %i.cz = icmp slt i32 %.1, %2
  br i1 %i.cz, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !189

._crit_edge.loopexit:                             ; preds = %Vec_IntFree.exit41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre53 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_IntStart.exit
  %i.da = phi ptr [ %.pre53, %._crit_edge.loopexit ], [ %i.x, %Vec_IntStart.exit ] ; 2 uses
  %.not.i42 = icmp eq ptr %i.da, null
  br i1 %.not.i42, label %Vec_IntFree.exit43, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.da) #34
  br label %Vec_IntFree.exit43

Vec_IntFree.exit43:                               ; preds = %._crit_edge, %bb.ab
  call void @free(ptr noundef nonnull %i.n) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.db = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #34
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %Abc_Clock.exit45, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntFree.exit43
  %i.dd = load i64, ptr %4, align 8, !tbaa !180
  %i.de = mul nsw i64 %i.dd, 1000000
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !182
  %i.dh = sdiv i64 %i.dg, 1000
  %i.di = add nsw i64 %i.dh, %i.de
  br label %Abc_Clock.exit45

Abc_Clock.exit45:                                 ; preds = %Vec_IntFree.exit43, %bb.ac
  %.0.i44 = phi i64 [ %i.di, %bb.ac ], [ -1, %Vec_IntFree.exit43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.dj = add i64 %.0.i44, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12)
  %i.dk = sitofp i64 %i.dj to double
  %i.dl = fdiv double %i.dk, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.dl)
  ret ptr %i.f
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !190
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #35
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !100
  %i.s = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #35 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !192
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !190 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !190
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !12
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !13
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #35
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !8
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !13
  %.pre = load i32, ptr %i.al, align 4, !tbaa !12
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !12
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !82
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #24

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #28 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !33
  %i.b = load i32, ptr %1, align 4, !tbaa !33
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #17 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !33
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
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !193
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #37
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #34 ; 0 uses
  call void @free(ptr noundef %i.d) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !193, !noalias !195
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #34, !inline_history !198 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #12

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #29

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #29

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

attributes #0 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nofree nounwind }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { cold noreturn nounwind }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 4}
!13 = !{!9, !5, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !16, i64 8}
!16 = !{!"p1 long", !11, i64 0}
!17 = !{!15, !5, i64 4}
!18 = !{!15, !5, i64 0}
!19 = !{!20, !21, i64 8}
!20 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !21, i64 8}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = !{!20, !5, i64 4}
!23 = !{!20, !5, i64 0}
!24 = !{!25, !5, i64 0}
!25 = !{!"Gia_Rsb2Man_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !9, i64 56, !15, i64 72, !20, i64 88, !9, i64 104, !9, i64 120, !9, i64 136, !9, i64 152, !9, i64 168, !26, i64 184, !26, i64 192, !26, i64 200}
!26 = !{!"long", !6, i64 0}
!27 = !{!25, !5, i64 4}
!28 = !{!25, !5, i64 8}
!29 = !{!25, !5, i64 12}
!30 = !{!25, !5, i64 16}
!31 = !{!25, !5, i64 20}
!32 = !{!25, !5, i64 24}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!25, !5, i64 28}
!37 = !{!25, !5, i64 36}
!38 = !{!25, !5, i64 32}
!39 = distinct !{!39, !35}
!40 = !{!25, !5, i64 40}
!41 = !{!26, !26, i64 0}
!42 = distinct !{!42, !35}
!43 = !{!25, !5, i64 76}
!44 = distinct !{!44, !35}
!45 = distinct !{!45, !35}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, !35}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = !{!25, !26, i64 200}
!58 = !{!25, !26, i64 192}
!59 = !{!25, !26, i64 184}
!60 = !{!11, !11, i64 0}
!61 = distinct !{!61, !35}
!62 = !{!25, !5, i64 48}
!63 = !{!25, !5, i64 44}
!64 = distinct !{!64, !35}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !35}
!67 = distinct !{!67, !35, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !35, !69, !68}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35}
!73 = !{!16, !16, i64 0}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35}
!76 = distinct !{!76, !35}
!77 = !{!10, !10, i64 0}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35}
!81 = !{!25, !10, i64 64}
!82 = !{!83, !5, i64 24}
!83 = !{!"Gia_Man_t_", !84, i64 0, !84, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !85, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !86, i64 64, !86, i64 72, !9, i64 80, !9, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !9, i64 128, !10, i64 144, !10, i64 152, !86, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !10, i64 184, !87, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !5, i64 224, !5, i64 228, !10, i64 232, !5, i64 240, !86, i64 248, !86, i64 256, !86, i64 264, !88, i64 272, !88, i64 280, !86, i64 288, !11, i64 296, !86, i64 304, !86, i64 312, !89, i64 320, !84, i64 328, !86, i64 336, !86, i64 344, !86, i64 352, !86, i64 360, !86, i64 368, !90, i64 376, !90, i64 384, !91, i64 392, !9, i64 400, !9, i64 416, !86, i64 432, !86, i64 440, !86, i64 448, !86, i64 456, !86, i64 464, !86, i64 472, !86, i64 480, !86, i64 488, !86, i64 496, !86, i64 504, !86, i64 512, !84, i64 520, !92, i64 528, !93, i64 536, !94, i64 544, !94, i64 552, !86, i64 560, !86, i64 568, !86, i64 576, !86, i64 584, !86, i64 592, !5, i64 600, !95, i64 604, !95, i64 608, !86, i64 616, !10, i64 624, !5, i64 632, !91, i64 640, !91, i64 648, !91, i64 656, !86, i64 664, !86, i64 672, !86, i64 680, !86, i64 688, !86, i64 696, !86, i64 704, !86, i64 712, !86, i64 720, !86, i64 728, !96, i64 736, !94, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !26, i64 776, !26, i64 784, !11, i64 792, !10, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !97, i64 856, !97, i64 864, !97, i64 872, !97, i64 880, !86, i64 888, !86, i64 896, !86, i64 904, !98, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !86, i64 936, !5, i64 944, !5, i64 948, !86, i64 952, !86, i64 960, !91, i64 968, !97, i64 976, !86, i64 984, !86, i64 992, !5, i64 1000, !5, i64 1004, !97, i64 1008, !9, i64 1016, !9, i64 1032, !9, i64 1048, !99, i64 1064, !89, i64 1072, !89, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !89, i64 1104, !86, i64 1112, !86, i64 1120, !86, i64 1128, !91, i64 1136}
!84 = !{!"p1 omnipotent char", !11, i64 0}
!85 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!86 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!87 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!88 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!89 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!90 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!91 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!92 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!93 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!94 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!95 = !{!"float", !6, i64 0}
!96 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!97 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!98 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!99 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!100 = !{!83, !85, i64 32}
!101 = distinct !{!101, !35}
!102 = distinct !{!102, !35}
!103 = !{!83, !86, i64 64}
!104 = !{!83, !86, i64 72}
!105 = !{!83, !10, i64 232}
!106 = !{!83, !5, i64 116}
!107 = !{!83, !5, i64 832}
!108 = !{!83, !97, i64 1008}
!109 = !{!83, !84, i64 0}
!110 = !{!83, !5, i64 176}
!111 = !{!83, !10, i64 624}
!112 = !{!83, !86, i64 160}
!113 = !{!114, !5, i64 4}
!114 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !86, i64 8}
!115 = !{!114, !86, i64 8}
!116 = distinct !{!116, !35}
!117 = distinct !{!117, !35}
!118 = !{!83, !86, i64 248}
!119 = !{!83, !86, i64 256}
!120 = distinct !{!120, !35}
!121 = !{!114, !5, i64 0}
!122 = distinct !{!122, !35}
!123 = distinct !{!123, !35}
!124 = distinct !{!124, !35}
!125 = distinct !{!125, !35}
!126 = distinct !{!126, !35}
!127 = distinct !{!127, !35}
!128 = distinct !{!128, !35}
!129 = distinct !{!129, !35}
!130 = distinct !{!130, !35}
!131 = distinct !{!131, !35}
!132 = distinct !{!132, !35}
!133 = distinct !{!133, !35}
!134 = distinct !{!134, !35}
!135 = distinct !{!135, !35}
!136 = distinct !{!136, !35}
!137 = distinct !{!137, !35}
!138 = distinct !{!138, !35}
!139 = distinct !{!139, !35}
!140 = distinct !{!140, !35}
!141 = distinct !{!141, !35}
!142 = distinct !{!142, !49}
!143 = distinct !{!143, !35}
!144 = distinct !{!144, !35, !68, !69}
!145 = distinct !{!145, !49}
!146 = distinct !{!146, !35, !68}
!147 = distinct !{!147, !35}
!148 = distinct !{!148, !35, !149}
!149 = !{!"llvm.loop.unswitch.partial.disable"}
!150 = distinct !{!150, !35}
!151 = distinct !{!151, !35}
!152 = distinct !{!152, !35}
!153 = distinct !{!153, !35}
!154 = distinct !{!154, !35}
!155 = distinct !{!155, !35}
!156 = distinct !{!156, !35}
!157 = distinct !{!157, !35}
!158 = distinct !{!158, !35}
!159 = distinct !{!159, !35}
!160 = distinct !{!160, !35}
!161 = distinct !{!161, !35}
!162 = distinct !{!162, !35}
!163 = distinct !{!163, !35}
!164 = !{!83, !10, i64 144}
!165 = distinct !{!165, !35}
!166 = distinct !{!166, !35}
!167 = !{!86, !86, i64 0}
!168 = distinct !{!168, !35}
!169 = distinct !{!169, !35}
!170 = distinct !{!170, !35}
!171 = distinct !{!171, !35}
!172 = !{!83, !84, i64 8}
!173 = !{!174, !5, i64 8}
!174 = !{!"Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!175 = distinct !{!175, !35}
!176 = distinct !{!176, !35}
!177 = distinct !{!177, !35}
!178 = distinct !{!178, !35}
!179 = distinct !{!179, !35}
!180 = !{!181, !26, i64 0}
!181 = !{!"timespec", !26, i64 0, !26, i64 8}
!182 = !{!181, !26, i64 8}
!183 = distinct !{!183, !35}
!184 = distinct !{!184, !35}
!185 = distinct !{!185, !35}
!186 = distinct !{!186, !35}
!187 = distinct !{!187, !35}
!188 = distinct !{!188, !35}
!189 = distinct !{!189, !35}
!190 = !{!83, !5, i64 28}
!191 = !{!83, !5, i64 820}
!192 = !{!83, !10, i64 40}
!193 = !{!194, !194, i64 0}
!194 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!195 = !{!196}
!196 = distinct !{!196, !197, !"vprintf: argument 0"}
!197 = distinct !{!197, !"vprintf"}
!198 = distinct !{null}
end_hunk_1
