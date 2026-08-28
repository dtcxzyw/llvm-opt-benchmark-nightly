Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcSim?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Wlc_NtkSimulate:bb.a
  %i.aa = sext i32 %spec.store.select.i to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #14
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %Vec_WrdStart.exit, %bb.e
  %.promoted200 = phi ptr [ %i.ac, %bb.e ], [ null, %Vec_WrdStart.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %.promoted200, ptr %i.ad, align 8, !tbaa !16
  %i.ae = icmp sgt i32 %.val118, 0
  br i1 %i.ae, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.af = getelementptr i8, ptr %1, i64 8
  %i.ag = getelementptr i8, ptr %0, i64 640
  %i.ah = mul nsw i32 %3, %2
  %i.ai = sext i32 %i.ah to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit149
  %indvars.iv252 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next253, %Vec_PtrPush.exit149 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit149 ] ; 7 uses
  %storemerge201 = phi ptr [ %.promoted200, %.lr.ph ], [ %storemerge202, %Vec_PtrPush.exit149 ] ; 6 uses
  %spec.select.sink.i146199 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i146198, %Vec_PtrPush.exit149 ] ; 3 uses
  %.val122 = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val122, i64 %indvars.iv252
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !53
  %.val124 = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [24 x i8], ptr %.val124, i64 %i.al ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val127 = load i32, ptr %i.an, align 8, !tbaa !59
  %i.ao = getelementptr i8, ptr %i.am, i64 12
  %.val128 = load i32, ptr %i.ao, align 4, !tbaa !61
  %i.ap = sub nsw i32 %.val127, %.val128
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true) ; 2 uses
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %i.as = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 7)
  %spec.store.select.i140 = add nuw nsw i32 %i.as, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  store i32 0, ptr %i.at, align 4, !tbaa !14
  store i32 %spec.store.select.i140, ptr %i.ar, align 8, !tbaa !51
  %i.au = zext nneg i32 %spec.store.select.i140 to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 5 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Vec_PtrPush.exit
  %i.ay = phi i32 [ %spec.store.select.i140, %bb.f ], [ %i.bo, %Vec_PtrPush.exit ] ; 8 uses
  %i.az = phi i32 [ 0, %bb.f ], [ %i.bp, %Vec_PtrPush.exit ] ; 2 uses
  %.0101194 = phi i32 [ 0, %bb.f ], [ %i.bs, %Vec_PtrPush.exit ] ; 2 uses
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #15
  %i.bb = icmp eq i32 %i.az, %i.ay
  br i1 %i.bb, label %bb.h, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !16
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = icmp slt i32 %i.ay, 16
  br i1 %i.bc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef 128) #16
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.bf = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %i.ay, 1073741823
  %i.bh = shl nuw nsw i32 %i.ay, 1
  %spec.select.i = select i1 %i.bg, i32 %i.bh, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.ay, %spec.select.i
  %.pre312 = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 3 uses
  br i1 %.not.i10.i, label %bb.m, label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i11.i = icmp eq ptr %.pre312, null
  %i.bi = zext nneg i32 %spec.select.i to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call ptr @realloc(ptr noundef nonnull %.pre312, i64 noundef %i.bj) #16
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bj) #14
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge185 = phi ptr [ %i.bf, %bb.k ], [ %i.be, %bb.j ], [ %i.bk, %bb.n ], [ %i.bl, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  store ptr %storemerge185, ptr %i.ax, align 8, !tbaa !16
  store i32 %spec.select.sink.i, ptr %i.ar, align 8, !tbaa !51
  %.pre313 = load i32, ptr %i.at, align 4, !tbaa !14
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.l, %Vec_PtrGrow.exit12.sink.split.i
  %i.bm = phi i32 [ %i.az, %.Vec_PtrPush.exit_crit_edge ], [ %i.ay, %bb.l ], [ %.pre313, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.bn = phi ptr [ %.pre, %.Vec_PtrPush.exit_crit_edge ], [ %.pre312, %bb.l ], [ %storemerge185, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.bo = phi i32 [ %i.ay, %.Vec_PtrPush.exit_crit_edge ], [ %i.ay, %bb.l ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.bp = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bp, ptr %i.at, align 4, !tbaa !14
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !13
  %i.bs = add nuw i32 %.0101194, 1
  %exitcond.not = icmp eq i32 %.0101194, %i.aq
  br i1 %exitcond.not, label %bb.p, label %bb.g, !llvm.loop !62

bb.p:                                             ; preds = %Vec_PtrPush.exit
  %i.bt = trunc nsw i64 %indvars.iv to i32
  %i.bu = icmp eq i32 %spec.select.sink.i146199, %i.bt
  br i1 %i.bu, label %bb.q, label %Vec_PtrPush.exit149

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i147 = icmp eq ptr %storemerge201, null
  br i1 %.not9.i.i147, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge201, i64 noundef 128) #16
  br label %Vec_PtrPush.exit149

bb.t:                                             ; preds = %bb.r
  %i.bx = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  br label %Vec_PtrPush.exit149

bb.u:                                             ; preds = %bb.q
  %i.by = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bz = shl i32 %indvars.iv.tr, 1
  %spec.select.i142 = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 4 uses
  %i.ca = sext i32 %spec.select.i142 to i64
  %.not.i10.i143 = icmp samesign ult i64 %indvars.iv, %i.ca
  br i1 %.not.i10.i143, label %bb.v, label %Vec_PtrPush.exit149

bb.v:                                             ; preds = %bb.u
  %.not9.i11.i144 = icmp eq ptr %storemerge201, null
  %i.cb = zext nneg i32 %spec.select.i142 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3                ; 2 uses
  br i1 %.not9.i11.i144, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = tail call ptr @realloc(ptr noundef nonnull %storemerge201, i64 noundef %i.cc) #16
  br label %Vec_PtrPush.exit149

bb.x:                                             ; preds = %bb.v
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cc) #14
  br label %Vec_PtrPush.exit149

Vec_PtrPush.exit149:                              ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %bb.p, %bb.u
  %storemerge202 = phi ptr [ %storemerge201, %bb.p ], [ %storemerge201, %bb.u ], [ %i.bx, %bb.t ], [ %i.bw, %bb.s ], [ %i.cd, %bb.w ], [ %i.ce, %bb.x ] ; 4 uses
  %spec.select.sink.i146198 = phi i32 [ %spec.select.sink.i146199, %bb.p ], [ %spec.select.sink.i146199, %bb.u ], [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i142, %bb.w ], [ %spec.select.i142, %bb.x ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %storemerge202, i64 %indvars.iv
  store ptr %i.ar, ptr %i.cf, align 8, !tbaa !13
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %.val117 = load i32, ptr %i.w, align 4, !tbaa !50
  %i.cg = sext i32 %.val117 to i64
  %i.ch = icmp slt i64 %indvars.iv.next253, %i.cg
  br i1 %i.ch, label %bb.f, label %..critedge_crit_edge, !llvm.loop !63

..critedge_crit_edge:                             ; preds = %Vec_PtrPush.exit149
  %i.ci = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ci, ptr %i.z, align 4, !tbaa !14
  store i32 %spec.select.sink.i146198, ptr %i.x, align 8
  store ptr %storemerge202, ptr %i.ad, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_PtrAlloc.exit
  %.val137 = phi ptr [ %storemerge202, %..critedge_crit_edge ], [ %.promoted200, %Vec_PtrAlloc.exit ]
  %i.cj = tail call i64 @Gia_ManRandomW(i32 noundef 1) #13 ; 0 uses
  %i.ck = icmp sgt i32 %3, 0
  br i1 %i.ck, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.critedge
  %i.cl = getelementptr i8, ptr %i.a, i64 32
  %i.cm = getelementptr i8, ptr %i.a, i64 16
  %i.cn = getelementptr i8, ptr %i.a, i64 64
  %i.co = getelementptr i8, ptr %i.a, i64 72
  %i.cp = getelementptr i8, ptr %1, i64 8
  %i.cq = getelementptr i8, ptr %0, i64 640
  %i.cr = getelementptr i8, ptr %0, i64 760
  %i.cs = getelementptr i8, ptr %0, i64 776
  %i.ct = icmp sgt i32 %2, 0
  %i.cu = zext i32 %2 to i64                      ; 11 uses
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %wide.trip.count310 = zext nneg i32 %3 to i64
  %min.iters.check355 = icmp ult i32 %2, 6
  %n.vec357 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n364 = icmp eq i64 %n.vec357, %i.cu
  %xtraiter522 = and i64 %i.cu, 3                 ; 2 uses
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %i.cu, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cu
  %xtraiter525 = and i64 %i.cu, 3                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ag
  %indvars.iv307 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next308, %bb.ag ] ; 6 uses
  %.0239 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %bb.ag ] ; 3 uses
  %4 = trunc i64 %indvars.iv307 to i32
  %5 = mul i32 %2, %4
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = trunc i64 %indvars.iv307 to i32
  %9 = mul i32 %2, %8
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  %i.cw = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.cx = mul i32 %2, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = load i32, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %.lr.ph204, label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %Wlc_ObjSimAnd.exit, %.preheader
  %.val116 = load i32, ptr %i.w, align 4, !tbaa !50 ; 3 uses
  %i.dc = icmp sgt i32 %.val116, 0
  br i1 %i.dc, label %.lr.ph229, label %.critedge4

.lr.ph229:                                        ; preds = %.critedge2.preheader
  %.val121 = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %.val123 = load ptr, ptr %i.cq, align 8, !tbaa !54 ; 2 uses
  %.val120 = load ptr, ptr %i.cr, align 8, !tbaa !52 ; 2 uses
  %.val119 = load ptr, ptr %i.cs, align 8, !tbaa !52 ; 2 uses
  br i1 %i.ct, label %.split.us.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %.lr.ph229
  %wide.trip.count267 = zext nneg i32 %.val116 to i64
  br label %.split

.split.us.us.preheader:                           ; preds = %.lr.ph229
  %12 = trunc i64 %indvars.iv307 to i32
  %13 = mul i32 %2, %12
  %14 = zext i32 %13 to i64
  %wide.trip.count305 = zext nneg i32 %.val116 to i64
  br label %.split.us.us.split.us.preheader

.split.us.us.split.us.preheader:                  ; preds = %.split215.us.us, %.split.us.us.preheader
  %indvars.iv302 = phi i64 [ 0, %.split.us.us.preheader ], [ %indvars.iv.next303, %.split215.us.us ] ; 3 uses
  %.1228.us = phi i32 [ %.0239, %.split.us.us.preheader ], [ %.3.us.us.us, %.split215.us.us ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val137, i64 %indvars.iv302
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !13
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %.val2.i.us = load ptr, ptr %i.df, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %indvars.iv302
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !53
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %.val120, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !53
  %i.dl = getelementptr inbounds [24 x i8], ptr %.val123, i64 %i.di ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %.val125.us = load i32, ptr %i.dm, align 8, !tbaa !59
  %i.dn = getelementptr i8, ptr %i.dl, i64 12
  %.val126.us = load i32, ptr %i.dn, align 4, !tbaa !61
  %i.do = sub i32 %.val125.us, %.val126.us
  %i.dp = tail call i32 @llvm.abs.i32(i32 %i.do, i1 false)
  %i.dq = sext i32 %i.dk to i64
  %i.dr = add nuw i32 %i.dp, 1
  %wide.trip.count300 = zext i32 %i.dr to i64
  %invariant.gep340 = getelementptr [4 x i8], ptr %.val119, i64 %i.dq
  br label %.split.us.us.split.us

.split.us.us.split.us:                            ; preds = %.split.us.us.split.us.preheader, %..loopexit186_crit_edge.us.us.us
  %indvars.iv297 = phi i64 [ 0, %.split.us.us.split.us.preheader ], [ %indvars.iv.next298, %..loopexit186_crit_edge.us.us.us ] ; 3 uses
  %.2210.us.us.us = phi i32 [ %.1228.us, %.split.us.us.split.us.preheader ], [ %.3.us.us.us, %..loopexit186_crit_edge.us.us.us ] ; 7 uses
  %gep341 = getelementptr [4 x i8], ptr %invariant.gep340, i64 %indvars.iv297
  %i.ds = load i32, ptr %gep341, align 4, !tbaa !53 ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.us, i64 %indvars.iv297
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !13 ; 3 uses
  %i.dv = ptrtoaddr ptr %i.du to i64              ; 2 uses
  %i.dw = icmp eq i32 %i.ds, -1
  br i1 %i.dw, label %.lr.ph208.us.us.us, label %.lr.ph206.us.us.us

.lr.ph206.us.us.us:                               ; preds = %.split.us.us.split.us
  %i.dx = ashr i32 %i.ds, 1
  %.val131.us.us.us = load i32, ptr %i.v, align 8, !tbaa !49
  %.val132.us.us.us = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.dy = getelementptr i8, ptr %.val132.us.us.us, i64 8
  %.val132.val.us.us.us = load ptr, ptr %i.dy, align 8, !tbaa !23 ; 2 uses
  %.val132.val.us.us.us350 = ptrtoaddr ptr %.val132.val.us.us.us to i64 ; 2 uses
  %i.dz = mul i32 %.val131.us.us.us, %i.dx
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %.val132.val.us.us.us, i64 %i.ea ; 12 uses
  %i.ec = and i32 %i.ds, 1
  %.not111.us.us.us = icmp eq i32 %i.ec, 0
  %invariant.gep338 = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %14 ; 12 uses
  br i1 %.not111.us.us.us, label %.lr.ph206.split.us.us.us.us.preheader, label %.lr.ph206.split.us213.us.us.preheader

.lr.ph206.split.us213.us.us.preheader:            ; preds = %.lr.ph206.us.us.us
  br i1 %min.iters.check355, label %.lr.ph206.split.us213.us.us.preheader493, label %vector.memcheck352

vector.memcheck352:                               ; preds = %.lr.ph206.split.us213.us.us.preheader
  %i.ed = add i64 %7, %i.dv
  %i.ee = shl nsw i64 %i.ea, 3
  %i.ef = add i64 %i.ee, %.val132.val.us.us.us350
  %i.eg = sub i64 %i.ef, %i.ed
  %diff.check353 = icmp ugt i64 %i.eg, -32
  br i1 %diff.check353, label %.lr.ph206.split.us213.us.us.preheader493, label %vector.body358

vector.body358:                                   ; preds = %vector.memcheck352, %vector.body358
  %index359 = phi i64 [ %index.next362, %vector.body358 ], [ 0, %vector.memcheck352 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index359 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load360 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !64
  %wide.load361 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !64
  %i.ej = xor <2 x i64> %wide.load360, splat (i64 -1)
  %i.ek = xor <2 x i64> %wide.load361, splat (i64 -1)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %index359 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x i64> %i.ej, ptr %i.el, align 8, !tbaa !64
  store <2 x i64> %i.ek, ptr %i.em, align 8, !tbaa !64
  %index.next362 = add nuw i64 %index359, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next362, %n.vec357
  br i1 %i.en, label %middle.block363, label %vector.body358, !llvm.loop !65

middle.block363:                                  ; preds = %vector.body358
  br i1 %cmp.n364, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us213.us.us.preheader493

.lr.ph206.split.us213.us.us.preheader493:         ; preds = %vector.memcheck352, %.lr.ph206.split.us213.us.us.preheader, %middle.block363
  %indvars.iv284.ph = phi i64 [ 0, %vector.memcheck352 ], [ 0, %.lr.ph206.split.us213.us.us.preheader ], [ %n.vec357, %middle.block363 ] ; 3 uses
  br i1 %lcmp.mod523.not, label %.lr.ph206.split.us213.us.us.prol.loopexit, label %.lr.ph206.split.us213.us.us.prol

.lr.ph206.split.us213.us.us.prol:                 ; preds = %.lr.ph206.split.us213.us.us.preheader493, %.lr.ph206.split.us213.us.us.prol
  %indvars.iv284.prol = phi i64 [ %indvars.iv.next285.prol, %.lr.ph206.split.us213.us.us.prol ], [ %indvars.iv284.ph, %.lr.ph206.split.us213.us.us.preheader493 ] ; 3 uses
  %prol.iter524 = phi i64 [ %prol.iter524.next, %.lr.ph206.split.us213.us.us.prol ], [ 0, %.lr.ph206.split.us213.us.us.preheader493 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv284.prol
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !64
  %i.eq = xor i64 %i.ep, -1
  %gep337.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv284.prol
  store i64 %i.eq, ptr %gep337.prol, align 8, !tbaa !64
  %indvars.iv.next285.prol = add nuw nsw i64 %indvars.iv284.prol, 1 ; 2 uses
  %prol.iter524.next = add i64 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i64 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %.lr.ph206.split.us213.us.us.prol.loopexit, label %.lr.ph206.split.us213.us.us.prol, !llvm.loop !68

.lr.ph206.split.us213.us.us.prol.loopexit:        ; preds = %.lr.ph206.split.us213.us.us.prol, %.lr.ph206.split.us213.us.us.preheader493
  %indvars.iv284.unr = phi i64 [ %indvars.iv284.ph, %.lr.ph206.split.us213.us.us.preheader493 ], [ %indvars.iv.next285.prol, %.lr.ph206.split.us213.us.us.prol ]
  %i.er = sub nsw i64 %indvars.iv284.ph, %i.cu
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us213.us.us

.lr.ph206.split.us.us.us.us.preheader:            ; preds = %.lr.ph206.us.us.us
  br i1 %min.iters.check, label %.lr.ph206.split.us.us.us.us.preheader492, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph206.split.us.us.us.us.preheader
  %i.et = add i64 %11, %i.dv
  %i.eu = shl nsw i64 %i.ea, 3
  %i.ev = add i64 %i.eu, %.val132.val.us.us.us350
  %i.ew = sub i64 %i.ev, %i.et
  %diff.check = icmp ugt i64 %i.ew, -32
  br i1 %diff.check, label %.lr.ph206.split.us.us.us.us.preheader492, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load = load <2 x i64>, ptr %i.ex, align 8, !tbaa !64
  %wide.load351 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <2 x i64> %wide.load, ptr %i.ez, align 8, !tbaa !64
  store <2 x i64> %wide.load351, ptr %i.fa, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us.us.us.us.preheader492

.lr.ph206.split.us.us.us.us.preheader492:         ; preds = %vector.memcheck, %.lr.ph206.split.us.us.us.us.preheader, %middle.block
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph206.split.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod526.not, label %.lr.ph206.split.us.us.us.us.prol.loopexit, label %.lr.ph206.split.us.us.us.us.prol

.lr.ph206.split.us.us.us.us.prol:                 ; preds = %.lr.ph206.split.us.us.us.us.preheader492, %.lr.ph206.split.us.us.us.us.prol
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %.lr.ph206.split.us.us.us.us.prol ], [ %indvars.iv289.ph, %.lr.ph206.split.us.us.us.us.preheader492 ] ; 3 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph206.split.us.us.us.us.prol ], [ 0, %.lr.ph206.split.us.us.us.us.preheader492 ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv289.prol
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !64
  %gep339.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv289.prol
  store i64 %i.fd, ptr %gep339.prol, align 8, !tbaa !64
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.prol, 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph206.split.us.us.us.us.prol.loopexit, label %.lr.ph206.split.us.us.us.us.prol, !llvm.loop !71

.lr.ph206.split.us.us.us.us.prol.loopexit:        ; preds = %.lr.ph206.split.us.us.us.us.prol, %.lr.ph206.split.us.us.us.us.preheader492
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph206.split.us.us.us.us.preheader492 ], [ %indvars.iv.next290.prol, %.lr.ph206.split.us.us.us.us.prol ]
  %i.fe = sub nsw i64 %indvars.iv289.ph, %i.cu
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us.us.us.us

.lr.ph206.split.us213.us.us:                      ; preds = %.lr.ph206.split.us213.us.us.prol.loopexit, %.lr.ph206.split.us213.us.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285.3, %.lr.ph206.split.us213.us.us ], [ %indvars.iv284.unr, %.lr.ph206.split.us213.us.us.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv284
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !64
  %i.fi = xor i64 %i.fh, -1
  %gep337 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv284
  store i64 %i.fi, ptr %gep337, align 8, !tbaa !64
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next285
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !64
  %i.fl = xor i64 %i.fk, -1
  %gep337.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next285
  store i64 %i.fl, ptr %gep337.1, align 8, !tbaa !64
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 2 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next285.1
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !64
  %i.fo = xor i64 %i.fn, -1
  %gep337.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next285.1
  store i64 %i.fo, ptr %gep337.2, align 8, !tbaa !64
  %indvars.iv.next285.2 = add nuw nsw i64 %indvars.iv284, 3 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next285.2
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !64
  %i.fr = xor i64 %i.fq, -1
  %gep337.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next285.2
  store i64 %i.fr, ptr %gep337.3, align 8, !tbaa !64
  %indvars.iv.next285.3 = add nuw nsw i64 %indvars.iv284, 4 ; 2 uses
  %exitcond288.not.3 = icmp eq i64 %indvars.iv.next285.3, %i.cu
  br i1 %exitcond288.not.3, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us213.us.us, !llvm.loop !72

.lr.ph208.us.us.us:                               ; preds = %.split.us.us.split.us
  %scevgep = getelementptr i8, ptr %i.du, i64 %i.cz
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.cv, i1 false), !tbaa !64
  %i.fs = add nsw i32 %.2210.us.us.us, 1
  br label %..loopexit186_crit_edge.us.us.us

..loopexit186_crit_edge.us.us.us:                 ; preds = %.lr.ph206.split.us213.us.us.prol.loopexit, %.lr.ph206.split.us213.us.us, %.lr.ph206.split.us.us.us.us.prol.loopexit, %.lr.ph206.split.us.us.us.us, %middle.block363, %middle.block, %.lr.ph208.us.us.us
  %.3.us.us.us = phi i32 [ %i.fs, %.lr.ph208.us.us.us ], [ %.2210.us.us.us, %middle.block ], [ %.2210.us.us.us, %middle.block363 ], [ %.2210.us.us.us, %.lr.ph206.split.us.us.us.us.prol.loopexit ], [ %.2210.us.us.us, %.lr.ph206.split.us.us.us.us ], [ %.2210.us.us.us, %.lr.ph206.split.us213.us.us ], [ %.2210.us.us.us, %.lr.ph206.split.us213.us.us.prol.loopexit ] ; 3 uses
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count300
  br i1 %exitcond301.not, label %.split215.us.us, label %.split.us.us.split.us, !llvm.loop !73

.lr.ph206.split.us.us.us.us:                      ; preds = %.lr.ph206.split.us.us.us.us.prol.loopexit, %.lr.ph206.split.us.us.us.us
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %.lr.ph206.split.us.us.us.us ], [ %indvars.iv289.unr, %.lr.ph206.split.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv289
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !64
  %gep339 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv289
  store i64 %i.fu, ptr %gep339, align 8, !tbaa !64
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next290
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !64
  %gep339.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next290
  store i64 %i.fw, ptr %gep339.1, align 8, !tbaa !64
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next290.1
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !64
  %gep339.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next290.1
  store i64 %i.fy, ptr %gep339.2, align 8, !tbaa !64
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next290.2
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !64
  %gep339.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next290.2
  store i64 %i.ga, ptr %gep339.3, align 8, !tbaa !64
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %i.cu
  br i1 %exitcond293.not.3, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us.us.us.us, !llvm.loop !74

.split215.us.us:                                  ; preds = %..loopexit186_crit_edge.us.us.us
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.critedge4, label %.split.us.us.split.us.preheader, !llvm.loop !75

.lr.ph204:                                        ; preds = %.preheader, %Wlc_ObjSimAnd.exit
  %i.gb = phi i32 [ %i.sc, %Wlc_ObjSimAnd.exit ], [ %i.da, %.preheader ] ; 30 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %Wlc_ObjSimAnd.exit ], [ 1, %.preheader ] ; 5 uses
  %.val129 = load ptr, ptr %i.cl, align 8, !tbaa !76
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %.val129, i64 %indvars.iv257
  %.val130 = load i64, ptr %i.gc, align 4         ; 8 uses
  %i.gd = and i64 %.val130, 2147483648            ; 2 uses
  %.not.i150 = icmp eq i64 %i.gd, 0
  %i.ge = and i64 %.val130, 536870911
  %i.gf = icmp ne i64 %i.ge, 536870911            ; 2 uses
  %narrow.i = and i1 %.not.i150, %i.gf
  br i1 %narrow.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %.lr.ph204
  %.val60.i = load i32, ptr %i.v, align 8, !tbaa !49 ; 12 uses
  %.val61.i = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.gg = getelementptr i8, ptr %.val61.i, i64 8
  %.val61.val.i = load ptr, ptr %i.gg, align 8, !tbaa !23 ; 3 uses
  %i.gh = trunc i64 %indvars.iv257 to i32         ; 3 uses
  %i.gi = mul i32 %.val60.i, %i.gh
  %i.gj = sext i32 %i.gi to i64                   ; 9 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %.val61.val.i, i64 %i.gj ; 18 uses
  %i.gl = trunc i64 %.val130 to i32               ; 2 uses
  %i.gm = and i32 %i.gl, 536870911
  %i.gn = sub i32 %i.gh, %i.gm
  %i.go = mul i32 %.val60.i, %i.gn
  %i.gp = sext i32 %i.go to i64                   ; 5 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %.val61.val.i, i64 %i.gp ; 18 uses
  %i.gr = lshr i64 %.val130, 32
  %i.gs = trunc nuw i64 %i.gr to i32
  %i.gt = and i32 %i.gs, 536870911
  %i.gu = sub i32 %i.gh, %i.gt
  %i.gv = mul i32 %.val60.i, %i.gu
  %i.gw = sext i32 %i.gv to i64                   ; 5 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %.val61.val.i, i64 %i.gw ; 18 uses
  %i.gy = and i32 %i.gl, 536870912
  %.not.i151 = icmp eq i32 %i.gy, 0
  %i.gz = and i64 %.val130, 2305843009213693952
  %.not55.i = icmp eq i64 %i.gz, 0                ; 2 uses
  %i.ha = icmp sgt i32 %.val60.i, 0               ; 4 uses
  br i1 %.not.i151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not55.i, label %.preheader73.i, label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.z
  br i1 %i.ha, label %.lr.ph.preheader.i, label %Wlc_ObjSimAnd.exit

.lr.ph.preheader.i:                               ; preds = %.preheader75.i
  %wide.trip.count.i = zext nneg i32 %.val60.i to i64 ; 5 uses
  %min.iters.check437 = icmp ult i32 %.val60.i, 8
  br i1 %min.iters.check437, label %.lr.ph.i.preheader, label %vector.memcheck432

vector.memcheck432:                               ; preds = %.lr.ph.preheader.i
  %i.hb = sub nsw i64 %i.gj, %i.gp
  %i.hc = shl nsw i64 %i.hb, 3
  %i.hd = add nsw i64 %i.hc, -1
  %diff.check433 = icmp ult i64 %i.hd, 31
  %i.he = sub nsw i64 %i.gj, %i.gw
  %i.hf = shl nsw i64 %i.he, 3
  %i.hg = add nsw i64 %i.hf, -1
  %diff.check434 = icmp ult i64 %i.hg, 31
  %conflict.rdx435 = or i1 %diff.check433, %diff.check434
  br i1 %conflict.rdx435, label %.lr.ph.i.preheader, label %vector.ph438

vector.ph438:                                     ; preds = %vector.memcheck432
  %n.vec439 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body440

vector.body440:                                   ; preds = %vector.body440, %vector.ph438
  %index441 = phi i64 [ 0, %vector.ph438 ], [ %index.next446, %vector.body440 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %index441 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load442 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !64
  %wide.load443 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %index441 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load444 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !64
  %wide.load445 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !64
  %i.hl = or <2 x i64> %wide.load444, %wide.load442
  %i.hm = or <2 x i64> %wide.load445, %wide.load443
  %i.hn = xor <2 x i64> %i.hl, splat (i64 -1)
  %i.ho = xor <2 x i64> %i.hm, splat (i64 -1)
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index441 ; 2 uses
end_hunk_0
begin_hunk_1_@Wlc_NtkSimulate:bb.a
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.i159
  store i64 %i.pb, ptr %i.pc, align 8, !tbaa !64
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next.i160
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !64
  %i.pf = xor i64 %i.pe, -1
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next.i160
  store i64 %i.pf, ptr %i.pg, align 8, !tbaa !64
  %indvars.iv.next.i160.1 = add nuw nsw i64 %indvars.iv.i159, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next.i160.1
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !64
  %i.pj = xor i64 %i.pi, -1
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next.i160.1
  store i64 %i.pj, ptr %i.pk, align 8, !tbaa !64
  %indvars.iv.next.i160.2 = add nuw nsw i64 %indvars.iv.i159, 3 ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next.i160.2
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !64
  %i.pn = xor i64 %i.pm, -1
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next.i160.2
  store i64 %i.pn, ptr %i.po, align 8, !tbaa !64
  %indvars.iv.next.i160.3 = add nuw nsw i64 %indvars.iv.i159, 4 ; 2 uses
  %exitcond.not.i161.3 = icmp eq i64 %indvars.iv.next.i160.3, %wide.trip.count.i157
  br i1 %exitcond.not.i161.3, label %Wlc_ObjSimAnd.exit, label %.lr.ph.i158, !llvm.loop !90

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.3, %.lr.ph31.i ], [ %indvars.iv34.i.unr, %.lr.ph31.i.prol.loopexit ] ; 6 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv34.i
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv34.i
  store i64 %i.pq, ptr %i.pr, align 8, !tbaa !64
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next35.i
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next35.i
  store i64 %i.pt, ptr %i.pu, align 8, !tbaa !64
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2 ; 2 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next35.i.1
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next35.i.1
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !64
  %indvars.iv.next35.i.2 = add nuw nsw i64 %indvars.iv34.i, 3 ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv.next35.i.2
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next35.i.2
  store i64 %i.pz, ptr %i.qa, align 8, !tbaa !64
  %indvars.iv.next35.i.3 = add nuw nsw i64 %indvars.iv34.i, 4 ; 2 uses
  %exitcond38.not.i.3 = icmp eq i64 %indvars.iv.next35.i.3, %wide.trip.count37.i
  br i1 %exitcond38.not.i.3, label %Wlc_ObjSimAnd.exit, label %.lr.ph31.i, !llvm.loop !91

bb.ad:                                            ; preds = %bb.ab
  %i.qb = and i64 %.val130, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.qb, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsPi.exit, label %Wlc_ObjSimAnd.exit

Gia_ObjIsPi.exit:                                 ; preds = %bb.ad
  %i.qc = lshr i64 %.val130, 32
  %i.qd = trunc nuw i64 %i.qc to i32
  %i.qe = and i32 %i.qd, 536870911                ; 2 uses
  %.val4.i = load i32, ptr %i.cm, align 8, !tbaa !92
  %.val5.i = load ptr, ptr %i.cn, align 8, !tbaa !93
  %i.qf = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.qf, align 4, !tbaa !50 ; 2 uses
  %i.qg = sub nsw i32 %.val5.val.i, %.val4.i
  %.not182 = icmp slt i32 %i.qe, %i.qg
  %.val.i163 = load i32, ptr %i.v, align 8, !tbaa !49 ; 6 uses
  %.val6.i = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.qh = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.qh, align 8, !tbaa !23 ; 2 uses
  %i.qi = trunc i64 %indvars.iv257 to i32
  %i.qj = mul i32 %.val.i163, %i.qi
  %i.qk = sext i32 %i.qj to i64                   ; 2 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %.val6.val.i, i64 %i.qk ; 7 uses
  br i1 %.not182, label %bb.ae, label %Gia_ObjIsRo.exit

bb.ae:                                            ; preds = %Gia_ObjIsPi.exit
  %i.qm = icmp sgt i32 %.val.i163, 0
  br i1 %i.qm, label %.lr.ph.i164, label %Wlc_ObjSimAnd.exit

.lr.ph.i164:                                      ; preds = %bb.ae, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166, %.lr.ph.i164 ], [ 0, %bb.ae ] ; 2 uses
  %i.qn = tail call i64 @Gia_ManRandomW(i32 noundef 0) #13
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.i165
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !64
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %i.qp = load i32, ptr %i.v, align 8, !tbaa !49
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next.i166, %i.qq
  br i1 %i.qr, label %.lr.ph.i164, label %Wlc_ObjSimAnd.exit.loopexit249, !llvm.loop !94

Gia_ObjIsRo.exit:                                 ; preds = %Gia_ObjIsPi.exit
  %.val4.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.qs = getelementptr i8, ptr %.val4.i.i.i, i64 4
  %.val4.val.i.i.i = load i32, ptr %i.qs, align 4, !tbaa !50
  %i.qt = add i32 %.val4.val.i.i.i, %i.qe
  %i.qu = sub i32 %i.qt, %.val5.val.i
  %i.qv = getelementptr i8, ptr %.val4.i.i.i, i64 8
  %.val7.val.i.i.i = load ptr, ptr %i.qv, align 8, !tbaa !52
  %i.qw = sext i32 %i.qu to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %.val7.val.i.i.i, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !53
  %i.qz = mul i32 %i.qy, %.val.i163
  %i.ra = sext i32 %i.qz to i64                   ; 2 uses
  %i.rb = getelementptr inbounds [8 x i8], ptr %.val6.val.i, i64 %i.ra ; 6 uses
  %i.rc = icmp sgt i32 %.val.i163, 0
  br i1 %i.rc, label %.lr.ph.preheader.i171, label %Wlc_ObjSimAnd.exit

.lr.ph.preheader.i171:                            ; preds = %Gia_ObjIsRo.exit
  %wide.trip.count.i172 = zext nneg i32 %.val.i163 to i64 ; 5 uses
  %min.iters.check481 = icmp ult i32 %.val.i163, 6
  br i1 %min.iters.check481, label %.lr.ph.i173.preheader, label %vector.memcheck478

vector.memcheck478:                               ; preds = %.lr.ph.preheader.i171
  %i.rd = sub nsw i64 %i.qk, %i.ra
  %i.re = shl nsw i64 %i.rd, 3
  %i.rf = add nsw i64 %i.re, -1
  %diff.check479 = icmp ult i64 %i.rf, 31
  br i1 %diff.check479, label %.lr.ph.i173.preheader, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck478
  %n.vec483 = and i64 %wide.trip.count.i172, 2147483644 ; 3 uses
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next488, %vector.body484 ] ; 3 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %index485 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %wide.load486 = load <2 x i64>, ptr %i.rg, align 8, !tbaa !64
  %wide.load487 = load <2 x i64>, ptr %i.rh, align 8, !tbaa !64
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %index485 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store <2 x i64> %wide.load486, ptr %i.ri, align 8, !tbaa !64
  store <2 x i64> %wide.load487, ptr %i.rj, align 8, !tbaa !64
  %index.next488 = add nuw i64 %index485, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next488, %n.vec483
  br i1 %i.rk, label %middle.block489, label %vector.body484, !llvm.loop !96

middle.block489:                                  ; preds = %vector.body484
  %cmp.n490 = icmp eq i64 %n.vec483, %wide.trip.count.i172
  br i1 %cmp.n490, label %Wlc_ObjSimAnd.exit, label %.lr.ph.i173.preheader

.lr.ph.i173.preheader:                            ; preds = %vector.memcheck478, %.lr.ph.preheader.i171, %middle.block489
  %indvars.iv.i174.ph = phi i64 [ 0, %vector.memcheck478 ], [ 0, %.lr.ph.preheader.i171 ], [ %n.vec483, %middle.block489 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i172, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i173.prol.loopexit, label %.lr.ph.i173.prol

.lr.ph.i173.prol:                                 ; preds = %.lr.ph.i173.preheader, %.lr.ph.i173.prol
  %indvars.iv.i174.prol = phi i64 [ %indvars.iv.next.i175.prol, %.lr.ph.i173.prol ], [ %indvars.iv.i174.ph, %.lr.ph.i173.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i173.prol ], [ 0, %.lr.ph.i173.preheader ]
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i174.prol
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.i174.prol
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !64
  %indvars.iv.next.i175.prol = add nuw nsw i64 %indvars.iv.i174.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i173.prol.loopexit, label %.lr.ph.i173.prol, !llvm.loop !97

.lr.ph.i173.prol.loopexit:                        ; preds = %.lr.ph.i173.prol, %.lr.ph.i173.preheader
  %indvars.iv.i174.unr = phi i64 [ %indvars.iv.i174.ph, %.lr.ph.i173.preheader ], [ %indvars.iv.next.i175.prol, %.lr.ph.i173.prol ]
  %i.ro = sub nsw i64 %indvars.iv.i174.ph, %wide.trip.count.i172
  %i.rp = icmp ugt i64 %i.ro, -4
  br i1 %i.rp, label %Wlc_ObjSimAnd.exit, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.prol.loopexit, %.lr.ph.i173
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i175.3, %.lr.ph.i173 ], [ %indvars.iv.i174.unr, %.lr.ph.i173.prol.loopexit ] ; 6 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i174
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !64
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.i174
  store i64 %i.rr, ptr %i.rs, align 8, !tbaa !64
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.next.i175
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !64
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next.i175
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !64
  %indvars.iv.next.i175.1 = add nuw nsw i64 %indvars.iv.i174, 2 ; 2 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.next.i175.1
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !64
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next.i175.1
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !64
  %indvars.iv.next.i175.2 = add nuw nsw i64 %indvars.iv.i174, 3 ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.next.i175.2
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !64
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next.i175.2
  store i64 %i.sa, ptr %i.sb, align 8, !tbaa !64
  %indvars.iv.next.i175.3 = add nuw nsw i64 %indvars.iv.i174, 4 ; 2 uses
  %exitcond.not.i176.3 = icmp eq i64 %indvars.iv.next.i175.3, %wide.trip.count.i172
  br i1 %exitcond.not.i176.3, label %Wlc_ObjSimAnd.exit, label %.lr.ph.i173, !llvm.loop !98

Wlc_ObjSimAnd.exit.loopexit249:                   ; preds = %.lr.ph.i164
  %.pre314 = load i32, ptr %i.j, align 8, !tbaa !26
  br label %Wlc_ObjSimAnd.exit

Wlc_ObjSimAnd.exit:                               ; preds = %.lr.ph.i173.prol.loopexit, %.lr.ph.i173, %.lr.ph.i158.prol.loopexit, %.lr.ph.i158, %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph79.i.prol.loopexit, %.lr.ph79.i, %.lr.ph81.i.prol.loopexit, %.lr.ph81.i, %.lr.ph83.i.prol.loopexit, %.lr.ph83.i, %middle.block489, %middle.block475, %middle.block461, %middle.block447, %middle.block429, %middle.block411, %middle.block393, %Wlc_ObjSimAnd.exit.loopexit249, %bb.ad, %Gia_ObjIsRo.exit, %bb.ae, %.preheader.i162, %.preheader27.i, %.preheader.i, %.preheader71.i, %.preheader73.i, %.preheader75.i
  %i.sc = phi i32 [ %i.gb, %.preheader75.i ], [ %i.gb, %middle.block411 ], [ %.pre314, %Wlc_ObjSimAnd.exit.loopexit249 ], [ %i.gb, %middle.block393 ], [ %i.gb, %middle.block475 ], [ %i.gb, %middle.block461 ], [ %i.gb, %middle.block447 ], [ %i.gb, %middle.block429 ], [ %i.gb, %.preheader73.i ], [ %i.gb, %bb.ad ], [ %i.gb, %Gia_ObjIsRo.exit ], [ %i.gb, %bb.ae ], [ %i.gb, %.preheader.i162 ], [ %i.gb, %.preheader27.i ], [ %i.gb, %.preheader.i ], [ %i.gb, %.preheader71.i ], [ %i.gb, %middle.block489 ], [ %i.gb, %.lr.ph.i158.prol.loopexit ], [ %i.gb, %.lr.ph83.i.prol.loopexit ], [ %i.gb, %.lr.ph81.i.prol.loopexit ], [ %i.gb, %.lr.ph79.i.prol.loopexit ], [ %i.gb, %.lr.ph.i.prol.loopexit ], [ %i.gb, %.lr.ph31.i.prol.loopexit ], [ %i.gb, %.lr.ph83.i ], [ %i.gb, %.lr.ph81.i ], [ %i.gb, %.lr.ph79.i ], [ %i.gb, %.lr.ph.i ], [ %i.gb, %.lr.ph31.i ], [ %i.gb, %.lr.ph.i158 ], [ %i.gb, %.lr.ph.i173 ], [ %i.gb, %.lr.ph.i173.prol.loopexit ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp slt i64 %indvars.iv.next258, %i.sd
  br i1 %i.se, label %.lr.ph204, label %.critedge2.preheader, !llvm.loop !99

.split:                                           ; preds = %.split.preheader, %.split215.split
  %indvars.iv264 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next265, %.split215.split ] ; 2 uses
  %.1228 = phi i32 [ %.0239, %.split.preheader ], [ %.3.lcssa, %.split215.split ] ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %indvars.iv264
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !53
  %i.sh = sext i32 %i.sg to i64                   ; 2 uses
  %i.si = getelementptr inbounds [24 x i8], ptr %.val123, i64 %i.sh ; 2 uses
  %i.sj = getelementptr i8, ptr %i.si, i64 8
  %.val125 = load i32, ptr %i.sj, align 8, !tbaa !59
  %i.sk = getelementptr i8, ptr %i.si, i64 12
  %.val126 = load i32, ptr %i.sk, align 4, !tbaa !61
  %i.sl = sub nsw i32 %.val125, %.val126
  %i.sm = tail call i32 @llvm.abs.i32(i32 %i.sl, i1 true) ; 2 uses
  %i.sn = getelementptr inbounds [4 x i8], ptr %.val120, i64 %i.sh
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !53
  %i.sp = sext i32 %i.so to i64
  %i.sq = add nuw i32 %i.sm, 1
  %wide.trip.count = zext i32 %i.sq to i64        ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.val119, i64 %i.sp ; 2 uses
  %min.iters.check367 = icmp samesign ult i32 %i.sm, 7
  br i1 %min.iters.check367, label %.loopexit186.preheader, label %vector.ph368

vector.ph368:                                     ; preds = %.split
  %n.vec369 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %i.sr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1228, i64 0
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next375, %vector.body370 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.sr, %vector.ph368 ], [ %i.sy, %vector.body370 ]
  %vec.phi372 = phi <4 x i32> [ zeroinitializer, %vector.ph368 ], [ %i.sz, %vector.body370 ]
  %i.ss = getelementptr [4 x i8], ptr %invariant.gep, i64 %index371 ; 2 uses
  %i.st = getelementptr i8, ptr %i.ss, i64 16
  %wide.load373 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !53
  %wide.load374 = load <4 x i32>, ptr %i.st, align 4, !tbaa !53
  %i.su = icmp eq <4 x i32> %wide.load373, splat (i32 -1)
  %i.sv = icmp eq <4 x i32> %wide.load374, splat (i32 -1)
  %i.sw = zext <4 x i1> %i.su to <4 x i32>
  %i.sx = zext <4 x i1> %i.sv to <4 x i32>
  %i.sy = add <4 x i32> %vec.phi, %i.sw           ; 2 uses
  %i.sz = add <4 x i32> %vec.phi372, %i.sx        ; 2 uses
  %index.next375 = add nuw i64 %index371, 8       ; 2 uses
  %i.ta = icmp eq i64 %index.next375, %n.vec369
  br i1 %i.ta, label %middle.block376, label %vector.body370, !llvm.loop !100

middle.block376:                                  ; preds = %vector.body370
  %bin.rdx = add <4 x i32> %i.sz, %i.sy
  %i.tb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n377 = icmp eq i64 %n.vec369, %wide.trip.count
  br i1 %cmp.n377, label %.split215.split, label %.loopexit186.preheader

.loopexit186.preheader:                           ; preds = %.split, %middle.block376
  %indvars.iv260.ph = phi i64 [ 0, %.split ], [ %n.vec369, %middle.block376 ]
  %.2210.ph = phi i32 [ %.1228, %.split ], [ %i.tb, %middle.block376 ]
  br label %.loopexit186

.loopexit186:                                     ; preds = %.loopexit186.preheader, %.loopexit186
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.loopexit186 ], [ %indvars.iv260.ph, %.loopexit186.preheader ] ; 2 uses
  %.2210 = phi i32 [ %.3, %.loopexit186 ], [ %.2210.ph, %.loopexit186.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv260
  %i.tc = load i32, ptr %gep, align 4, !tbaa !53
  %i.td = icmp eq i32 %i.tc, -1
  %i.te = zext i1 %i.td to i32
  %.3 = add nsw i32 %.2210, %i.te                 ; 2 uses
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count
  br i1 %exitcond263.not, label %.split215.split, label %.loopexit186, !llvm.loop !101

.split215.split:                                  ; preds = %.loopexit186, %middle.block376
  %.3.lcssa = phi i32 [ %i.tb, %middle.block376 ], [ %.3, %.loopexit186 ] ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.critedge4, label %.split, !llvm.loop !75

.critedge4:                                       ; preds = %.split215.split, %.split215.us.us, %.critedge2.preheader
  %.1.lcssa = phi i32 [ %.0239, %.critedge2.preheader ], [ %.3.us.us.us, %.split215.us.us ], [ %.3.lcssa, %.split215.split ] ; 3 uses
  %i.tf = icmp eq i64 %indvars.iv307, 0
  %i.tg = icmp ne i32 %.1.lcssa, 0
  %or.cond = select i1 %i.tf, i1 %i.tg, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge4
  %i.th = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.1.lcssa) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge4, %bb.af
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge, label %.preheader, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.ag, %.critedge
  %i.ti = load ptr, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  %i.tj = icmp eq ptr %i.ti, null
  br i1 %i.tj, label %Vec_WrdFreeP.exit179, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !23 ; 2 uses
  %.not.i177 = icmp eq ptr %i.tl, null
  br i1 %.not.i177, label %bb.ai, label %.thread.i178

.thread.i178:                                     ; preds = %bb.ah
  tail call void @free(ptr noundef nonnull %i.tl) #13
  %i.tm = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store ptr null, ptr %i.tn, align 8, !tbaa !23
  br label %bb.ai

bb.ai:                                            ; preds = %.thread.i178, %bb.ah
  %i.to = phi ptr [ %i.tm, %.thread.i178 ], [ %i.ti, %bb.ah ]
  tail call void @free(ptr noundef nonnull %i.to) #13
  store ptr null, ptr %i.b, align 8, !tbaa !21
  br label %Vec_WrdFreeP.exit179

Vec_WrdFreeP.exit179:                             ; preds = %._crit_edge, %bb.ai
  store i32 0, ptr %i.v, align 8, !tbaa !49
  tail call void @Gia_ManStop(ptr noundef nonnull %i.a) #13
  ret ptr %i.x
}

declare ptr @Wlc_NtkBitBlast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @Gia_ManRandomW(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define void @Wlc_NtkSimulatePrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader36.lr.ph, label %._crit_edge46

.preheader36.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 640
  %i.f = getelementptr i8, ptr %2, i64 8
  br i1 %i.b, label %.preheader36.us, label %.preheader36

.preheader36.us:                                  ; preds = %.preheader36.lr.ph, %._crit_edge.us
  %.045.us = phi i32 [ %i.ai, %._crit_edge.us ], [ 0, %.preheader36.lr.ph ]
  %.02744.us = phi i32 [ %i.am, %._crit_edge.us ], [ 0, %.preheader36.lr.ph ]
  br label %.preheader35.us

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv49 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next50, %bb.d ] ; 3 uses
  %.val30.us = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val30.us, i64 %indvars.iv49
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %.val31.us = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %.val31.us, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val32.us = load i32, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr i8, ptr %i.j, i64 12
  %.val33.us = load i32, ptr %i.l, align 4, !tbaa !61
  %i.m = sub i32 %.val32.us, %.val33.us
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 false)
  %i.o = add nuw i32 %i.n, 1
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.val34.us = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val34.us, i64 %indvars.iv49
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val2.i.us = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.t = and i64 %indvars.iv.next, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.us, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ak
  %i.x = load i32, ptr %i.w, align 4, !tbaa !53
  %i.y = lshr i32 %i.x, %i.al
  %i.z = and i32 %i.y, 1
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.z) ; 0 uses
  %i.ab = trunc nuw i64 %indvars.iv to i32
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.c, label %bb.d, !llvm.loop !103

bb.d:                                             ; preds = %bb.c
  %putchar29.us = tail call i32 @putchar(i32 32)  ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %.val.us = load i32, ptr %i.c, align 4, !tbaa !50
  %i.ad = sext i32 %.val.us to i64
  %i.ae = icmp slt i64 %indvars.iv.next50, %i.ad
  br i1 %i.ae, label %bb.b, label %.critedge.us, !llvm.loop !104

.critedge.us:                                     ; preds = %bb.d, %.preheader.us
  %i.af = add i32 %.241.us, 1                     ; 2 uses
  %putchar28.us = tail call i32 @putchar(i32 10)  ; 0 uses
  %exitcond53.not = icmp eq i32 %i.af, %i.ai
  br i1 %exitcond53.not, label %bb.e, label %.preheader.us, !llvm.loop !105

bb.e:                                             ; preds = %.critedge.us
  %i.ag = add nuw nsw i32 %.02642.us, 1           ; 2 uses
  %exitcond54.not = icmp eq i32 %i.ag, %3
  br i1 %exitcond54.not, label %._crit_edge.us, label %.preheader35.us, !llvm.loop !106

.preheader.us:                                    ; preds = %.preheader35.us, %.critedge.us
  %.241.us = phi i32 [ %.143.us, %.preheader35.us ], [ %i.af, %.critedge.us ] ; 3 uses
  %.val38.us = load i32, ptr %i.c, align 4, !tbaa !50
  %i.ah = icmp sgt i32 %.val38.us, 0
  br i1 %i.ah, label %.lr.ph.us, label %.critedge.us

.preheader35.us:                                  ; preds = %.preheader36.us, %bb.e
  %.143.us = phi i32 [ %.045.us, %.preheader36.us ], [ %i.ai, %bb.e ] ; 2 uses
  %.02642.us = phi i32 [ 0, %.preheader36.us ], [ %i.ag, %bb.e ]
  %i.ai = add i32 %.143.us, 64                    ; 3 uses
  br label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.aj = ashr i32 %.241.us, 5
  %i.ak = sext i32 %i.aj to i64
  %i.al = and i32 %.241.us, 31
  br label %bb.b

._crit_edge.us:                                   ; preds = %bb.e
  %i.am = add nuw nsw i32 %.02744.us, 1           ; 2 uses
  %putchar.us = tail call i32 @putchar(i32 10)    ; 0 uses
  %exitcond55.not = icmp eq i32 %i.am, %4
  br i1 %exitcond55.not, label %._crit_edge46, label %.preheader36.us, !llvm.loop !107

.preheader36:                                     ; preds = %.preheader36.lr.ph, %.preheader36
  %.02744 = phi i32 [ %i.an, %.preheader36 ], [ 0, %.preheader36.lr.ph ]
  %i.an = add nuw nsw i32 %.02744, 1              ; 2 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %exitcond.not = icmp eq i32 %i.an, %4
  br i1 %exitcond.not, label %._crit_edge46, label %.preheader36, !llvm.loop !107

._crit_edge46:                                    ; preds = %.preheader36, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_NtkSimulateTest(ptr noundef %0) local_unnamed_addr #2 {
Vec_IntFree.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 16, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !52
  store i32 1, ptr %i.c, align 4, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.e, align 4, !tbaa !53
  store i32 3, ptr %i.b, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 3, ptr %i.f, align 4, !tbaa !53
  %i.g = tail call ptr @Wlc_NtkSimulate(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 2) ; 2 uses
  tail call void @Wlc_NtkSimulatePrint(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.g, i32 noundef 2, i32 noundef 2)
  tail call void @Wlc_NtkDeleteSim(ptr noundef %i.g)
  tail call void @free(ptr noundef nonnull %i.c) #13
  tail call void @free(ptr noundef nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

end_hunk_1
