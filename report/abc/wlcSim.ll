Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcSim?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Wlc_NtkSimulate:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Vec_PtrPush.exit
  %i.ay = phi i32 [ %spec.store.select.i140, %bb.f ], [ %i.bo, %Vec_PtrPush.exit ] ; 8 uses
  %i.az = phi i32 [ 0, %bb.f ], [ %i.bp, %Vec_PtrPush.exit ] ; 2 uses
  %.0101194 = phi i32 [ 0, %bb.f ], [ %i.bs, %Vec_PtrPush.exit ] ; 2 uses
  %i.ba = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #15
  %i.bb = icmp eq i32 %i.az, %i.ay
  br i1 %i.bb, label %bb.h, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !15
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = icmp slt i32 %i.ay, 16
  br i1 %i.bc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
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
  %.pre312 = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 3 uses
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
  store ptr %storemerge185, ptr %i.ax, align 8, !tbaa !15
  store i32 %spec.select.sink.i, ptr %i.ar, align 8, !tbaa !94
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
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !12
  %i.bs = add nuw i32 %.0101194, 1
  %exitcond.not = icmp eq i32 %.0101194, %i.aq
  br i1 %exitcond.not, label %bb.p, label %bb.g, !llvm.loop !38

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
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bz = shl nsw i32 %indvars.iv.tr, 1
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
  store ptr %i.ar, ptr %i.cf, align 8, !tbaa !12
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %.val117 = load i32, ptr %i.w, align 4, !tbaa !23
  %i.cg = sext i32 %.val117 to i64
  %i.ch = icmp slt i64 %indvars.iv.next253, %i.cg
  br i1 %i.ch, label %bb.f, label %..critedge_crit_edge, !llvm.loop !39

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
  %i.cu = zext i32 %2 to i64                      ; 14 uses
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %wide.trip.count310 = zext nneg i32 %3 to i64
  %i.cw = shl nuw nsw i64 %i.cu, 3
  %i.cx = shl nuw nsw i64 %i.cu, 3
  %min.iters.check356 = icmp ult i32 %2, 6
  %n.vec360 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n367 = icmp eq i64 %n.vec360, %i.cu
  %xtraiter546 = and i64 %i.cu, 3                 ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  %min.iters.check = icmp ult i32 %2, 8
  %n.vec = and i64 %i.cu, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cu
  %xtraiter549 = and i64 %i.cu, 3                 ; 2 uses
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ag
  %indvars.iv307 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next308, %bb.ag ] ; 6 uses
  %.0239 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %bb.ag ] ; 3 uses
  %i.cy = mul i64 %i.cx, %indvars.iv307
  %i.cz = mul i64 %i.cw, %indvars.iv307
  %i.da = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.db = mul i32 %2, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = load i32, ptr %i.j, align 8, !tbaa !89  ; 2 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %.lr.ph204, label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %Wlc_ObjSimAnd.exit, %.preheader
  %.val116 = load i32, ptr %i.w, align 4, !tbaa !23 ; 2 uses
  %i.dg = icmp sgt i32 %.val116, 0
  br i1 %i.dg, label %.lr.ph229, label %.critedge4

.lr.ph229:                                        ; preds = %.critedge2.preheader
  %.val121 = load ptr, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %.val123 = load ptr, ptr %i.cq, align 8, !tbaa !30 ; 2 uses
  %.val120 = load ptr, ptr %i.cr, align 8, !tbaa !24 ; 2 uses
  %.val119 = load ptr, ptr %i.cs, align 8, !tbaa !24 ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv307, %i.cu
  %wide.trip.count305 = zext nneg i32 %.val116 to i64 ; 2 uses
  br i1 %i.ct, label %.split.us.us.split.us.preheader, label %.split

.split.us.us.split.us.preheader:                  ; preds = %.lr.ph229, %.split215.us.us
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %.split215.us.us ], [ 0, %.lr.ph229 ] ; 3 uses
  %.1228.us = phi i32 [ %.3.us.us.us, %.split215.us.us ], [ %.0239, %.lr.ph229 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %indvars.iv302
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = sext i32 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds [24 x i8], ptr %.val123, i64 %6 ; 2 uses
  %8 = getelementptr i8, ptr %7, i64 8
  %i.di = load i32, ptr %8, align 8, !tbaa !32
  %9 = getelementptr i8, ptr %7, i64 12
  %.val126.us.us = load i32, ptr %9, align 4, !tbaa !33
  %10 = sub i32 %i.di, %.val126.us.us
  %11 = tail call i32 @llvm.abs.i32(i32 %10, i1 false)
  %12 = getelementptr inbounds [4 x i8], ptr %.val120, i64 %6
  %.val125.us = load i32, ptr %12, align 4, !tbaa !25
  %13 = getelementptr inbounds nuw [8 x i8], ptr %.val137, i64 %indvars.iv302
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = getelementptr i8, ptr %14, i64 8
  %.val2.i.us.us = load ptr, ptr %15, align 8, !tbaa !15
  %i.dj = sext i32 %.val125.us to i64
  %i.dk = add nuw i32 %11, 1
  %wide.trip.count300 = zext i32 %i.dk to i64
  %invariant.gep340 = getelementptr [4 x i8], ptr %.val119, i64 %i.dj
  br label %.split.us.us.split.us

.split.us.us.split.us:                            ; preds = %.split.us.us.split.us.preheader, %..loopexit186_crit_edge.us.us.us
  %indvars.iv297 = phi i64 [ 0, %.split.us.us.split.us.preheader ], [ %indvars.iv.next298, %..loopexit186_crit_edge.us.us.us ] ; 3 uses
  %.2210.us.us.us = phi i32 [ %.1228.us, %.split.us.us.split.us.preheader ], [ %.3.us.us.us, %..loopexit186_crit_edge.us.us.us ] ; 7 uses
  %gep341 = getelementptr [4 x i8], ptr %invariant.gep340, i64 %indvars.iv297
  %i.dl = load i32, ptr %gep341, align 4, !tbaa !25 ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.us.us, i64 %indvars.iv297
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !12 ; 3 uses
  %i.do = ptrtoaddr ptr %i.dn to i64              ; 2 uses
  %i.dp = icmp eq i32 %i.dl, -1
  br i1 %i.dp, label %.lr.ph208.us.us.us, label %.lr.ph206.us.us.us

.lr.ph206.us.us.us:                               ; preds = %.split.us.us.split.us
  %i.dq = ashr i32 %i.dl, 1
  %.val131.us.us.us = load i32, ptr %i.v, align 8, !tbaa !93
  %.val132.us.us.us = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.dr = getelementptr i8, ptr %.val132.us.us.us, i64 8
  %.val132.val.us.us.us = load ptr, ptr %i.dr, align 8, !tbaa !74 ; 2 uses
  %.val132.val.us.us.us351 = ptrtoaddr ptr %.val132.val.us.us.us to i64 ; 2 uses
  %i.ds = mul i32 %.val131.us.us.us, %i.dq
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.val132.val.us.us.us, i64 %i.dt ; 12 uses
  %i.dv = and i32 %i.dl, 1
  %.not111.us.us.us = icmp eq i32 %i.dv, 0
  %invariant.gep338 = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dh ; 12 uses
  br i1 %.not111.us.us.us, label %.lr.ph206.split.us.us.us.us.preheader, label %.lr.ph206.split.us211.us.us.preheader

.lr.ph206.split.us211.us.us.preheader:            ; preds = %.lr.ph206.us.us.us
  br i1 %min.iters.check356, label %.lr.ph206.split.us211.us.us.preheader517, label %vector.memcheck357

vector.memcheck357:                               ; preds = %.lr.ph206.split.us211.us.us.preheader
  %i.dw = shl nsw i64 %i.dt, 3
  %i.dx = add i64 %i.cy, %i.do
  %i.dy = add i64 %i.dw, %.val132.val.us.us.us351
  %i.dz = sub i64 %i.dy, %i.dx
  %diff.check358 = icmp ugt i64 %i.dz, -32
  br i1 %diff.check358, label %.lr.ph206.split.us211.us.us.preheader517, label %vector.body361

vector.body361:                                   ; preds = %vector.memcheck357, %vector.body361
  %index362 = phi i64 [ %index.next365, %vector.body361 ], [ 0, %vector.memcheck357 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index362 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load363 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !95
  %wide.load364 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !95
  %i.ec = xor <2 x i64> %wide.load363, splat (i64 -1)
  %i.ed = xor <2 x i64> %wide.load364, splat (i64 -1)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %index362 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %i.ec, ptr %i.ee, align 8, !tbaa !95
  store <2 x i64> %i.ed, ptr %i.ef, align 8, !tbaa !95
  %index.next365 = add nuw i64 %index362, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next365, %n.vec360
  br i1 %i.eg, label %middle.block366, label %vector.body361, !llvm.loop !40

middle.block366:                                  ; preds = %vector.body361
  br i1 %cmp.n367, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us211.us.us.preheader517

.lr.ph206.split.us211.us.us.preheader517:         ; preds = %vector.memcheck357, %.lr.ph206.split.us211.us.us.preheader, %middle.block366
  %indvars.iv284.ph = phi i64 [ 0, %vector.memcheck357 ], [ 0, %.lr.ph206.split.us211.us.us.preheader ], [ %n.vec360, %middle.block366 ] ; 3 uses
  br i1 %lcmp.mod547.not, label %.lr.ph206.split.us211.us.us.prol.loopexit, label %.lr.ph206.split.us211.us.us.prol

.lr.ph206.split.us211.us.us.prol:                 ; preds = %.lr.ph206.split.us211.us.us.preheader517, %.lr.ph206.split.us211.us.us.prol
  %indvars.iv284.prol = phi i64 [ %indvars.iv.next285.prol, %.lr.ph206.split.us211.us.us.prol ], [ %indvars.iv284.ph, %.lr.ph206.split.us211.us.us.preheader517 ] ; 3 uses
  %prol.iter548 = phi i64 [ %prol.iter548.next, %.lr.ph206.split.us211.us.us.prol ], [ 0, %.lr.ph206.split.us211.us.us.preheader517 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv284.prol
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !95
  %i.ej = xor i64 %i.ei, -1
  %gep337.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv284.prol
  store i64 %i.ej, ptr %gep337.prol, align 8, !tbaa !95
  %indvars.iv.next285.prol = add nuw nsw i64 %indvars.iv284.prol, 1 ; 2 uses
  %prol.iter548.next = add i64 %prol.iter548, 1   ; 2 uses
  %prol.iter548.cmp.not = icmp eq i64 %prol.iter548.next, %xtraiter546
  br i1 %prol.iter548.cmp.not, label %.lr.ph206.split.us211.us.us.prol.loopexit, label %.lr.ph206.split.us211.us.us.prol, !llvm.loop !41

.lr.ph206.split.us211.us.us.prol.loopexit:        ; preds = %.lr.ph206.split.us211.us.us.prol, %.lr.ph206.split.us211.us.us.preheader517
  %indvars.iv284.unr = phi i64 [ %indvars.iv284.ph, %.lr.ph206.split.us211.us.us.preheader517 ], [ %indvars.iv.next285.prol, %.lr.ph206.split.us211.us.us.prol ]
  %i.ek = sub nsw i64 %indvars.iv284.ph, %i.cu
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us211.us.us

.lr.ph206.split.us.us.us.us.preheader:            ; preds = %.lr.ph206.us.us.us
  br i1 %min.iters.check, label %.lr.ph206.split.us.us.us.us.preheader516, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph206.split.us.us.us.us.preheader
  %i.em = shl nsw i64 %i.dt, 3
  %i.en = add i64 %i.cz, %i.do
  %i.eo = add i64 %i.em, %.val132.val.us.us.us351
  %i.ep = sub i64 %i.eo, %i.en
  %diff.check = icmp ugt i64 %i.ep, -32
  br i1 %diff.check, label %.lr.ph206.split.us.us.us.us.preheader516, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load = load <2 x i64>, ptr %i.eq, align 8, !tbaa !95
  %wide.load352 = load <2 x i64>, ptr %i.er, align 8, !tbaa !95
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x i64> %wide.load, ptr %i.es, align 8, !tbaa !95
  store <2 x i64> %wide.load352, ptr %i.et, align 8, !tbaa !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us.us.us.us.preheader516

.lr.ph206.split.us.us.us.us.preheader516:         ; preds = %vector.memcheck, %.lr.ph206.split.us.us.us.us.preheader, %middle.block
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph206.split.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod550.not, label %.lr.ph206.split.us.us.us.us.prol.loopexit, label %.lr.ph206.split.us.us.us.us.prol

.lr.ph206.split.us.us.us.us.prol:                 ; preds = %.lr.ph206.split.us.us.us.us.preheader516, %.lr.ph206.split.us.us.us.us.prol
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %.lr.ph206.split.us.us.us.us.prol ], [ %indvars.iv289.ph, %.lr.ph206.split.us.us.us.us.preheader516 ] ; 3 uses
  %prol.iter551 = phi i64 [ %prol.iter551.next, %.lr.ph206.split.us.us.us.us.prol ], [ 0, %.lr.ph206.split.us.us.us.us.preheader516 ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv289.prol
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !95
  %gep339.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv289.prol
  store i64 %i.ew, ptr %gep339.prol, align 8, !tbaa !95
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.prol, 1 ; 2 uses
  %prol.iter551.next = add i64 %prol.iter551, 1   ; 2 uses
  %prol.iter551.cmp.not = icmp eq i64 %prol.iter551.next, %xtraiter549
  br i1 %prol.iter551.cmp.not, label %.lr.ph206.split.us.us.us.us.prol.loopexit, label %.lr.ph206.split.us.us.us.us.prol, !llvm.loop !43

.lr.ph206.split.us.us.us.us.prol.loopexit:        ; preds = %.lr.ph206.split.us.us.us.us.prol, %.lr.ph206.split.us.us.us.us.preheader516
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph206.split.us.us.us.us.preheader516 ], [ %indvars.iv.next290.prol, %.lr.ph206.split.us.us.us.us.prol ]
  %i.ex = sub nsw i64 %indvars.iv289.ph, %i.cu
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us.us.us.us

.lr.ph206.split.us211.us.us:                      ; preds = %.lr.ph206.split.us211.us.us.prol.loopexit, %.lr.ph206.split.us211.us.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285.3, %.lr.ph206.split.us211.us.us ], [ %indvars.iv284.unr, %.lr.ph206.split.us211.us.us.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv284
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !95
  %i.fb = xor i64 %i.fa, -1
  %gep337 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv284
  store i64 %i.fb, ptr %gep337, align 8, !tbaa !95
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next285
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !95
  %i.fe = xor i64 %i.fd, -1
  %gep337.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next285
  store i64 %i.fe, ptr %gep337.1, align 8, !tbaa !95
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next285.1
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !95
  %i.fh = xor i64 %i.fg, -1
  %gep337.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next285.1
  store i64 %i.fh, ptr %gep337.2, align 8, !tbaa !95
  %indvars.iv.next285.2 = add nuw nsw i64 %indvars.iv284, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next285.2
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !95
  %i.fk = xor i64 %i.fj, -1
  %gep337.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next285.2
  store i64 %i.fk, ptr %gep337.3, align 8, !tbaa !95
  %indvars.iv.next285.3 = add nuw nsw i64 %indvars.iv284, 4 ; 2 uses
  %exitcond288.not.3 = icmp eq i64 %indvars.iv.next285.3, %i.cu
  br i1 %exitcond288.not.3, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us211.us.us, !llvm.loop !44

.lr.ph206.split.us.us.us.us:                      ; preds = %.lr.ph206.split.us.us.us.us.prol.loopexit, %.lr.ph206.split.us.us.us.us
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %.lr.ph206.split.us.us.us.us ], [ %indvars.iv289.unr, %.lr.ph206.split.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv289
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !95
  %gep339 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv289
  store i64 %i.fm, ptr %gep339, align 8, !tbaa !95
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next290
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !95
  %gep339.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next290
  store i64 %i.fo, ptr %gep339.1, align 8, !tbaa !95
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next290.1
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !95
  %gep339.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next290.1
  store i64 %i.fq, ptr %gep339.2, align 8, !tbaa !95
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next290.2
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !95
  %gep339.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep338, i64 %indvars.iv.next290.2
  store i64 %i.fs, ptr %gep339.3, align 8, !tbaa !95
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %i.cu
  br i1 %exitcond293.not.3, label %..loopexit186_crit_edge.us.us.us, label %.lr.ph206.split.us.us.us.us, !llvm.loop !45

.lr.ph208.us.us.us:                               ; preds = %.split.us.us.split.us
  %scevgep = getelementptr i8, ptr %i.dn, i64 %i.dd
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.cv, i1 false), !tbaa !95
  %i.ft = add nsw i32 %.2210.us.us.us, 1
  br label %..loopexit186_crit_edge.us.us.us

..loopexit186_crit_edge.us.us.us:                 ; preds = %.lr.ph206.split.us211.us.us.prol.loopexit, %.lr.ph206.split.us211.us.us, %.lr.ph206.split.us.us.us.us.prol.loopexit, %.lr.ph206.split.us.us.us.us, %middle.block366, %middle.block, %.lr.ph208.us.us.us
  %.3.us.us.us = phi i32 [ %.2210.us.us.us, %middle.block ], [ %i.ft, %.lr.ph208.us.us.us ], [ %.2210.us.us.us, %middle.block366 ], [ %.2210.us.us.us, %.lr.ph206.split.us.us.us.us.prol.loopexit ], [ %.2210.us.us.us, %.lr.ph206.split.us.us.us.us ], [ %.2210.us.us.us, %.lr.ph206.split.us211.us.us ], [ %.2210.us.us.us, %.lr.ph206.split.us211.us.us.prol.loopexit ] ; 3 uses
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count300
  br i1 %exitcond301.not, label %.split215.us.us, label %.split.us.us.split.us, !llvm.loop !46

.split215.us.us:                                  ; preds = %..loopexit186_crit_edge.us.us.us
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.critedge4, label %.split.us.us.split.us.preheader, !llvm.loop !47

.lr.ph204:                                        ; preds = %.preheader, %Wlc_ObjSimAnd.exit
  %i.fu = phi i32 [ %i.rv, %Wlc_ObjSimAnd.exit ], [ %i.de, %.preheader ] ; 30 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %Wlc_ObjSimAnd.exit ], [ 1, %.preheader ] ; 5 uses
  %.val129 = load ptr, ptr %i.cl, align 8, !tbaa !99
  %i.fv = getelementptr inbounds nuw [12 x i8], ptr %.val129, i64 %indvars.iv257
  %.val130 = load i64, ptr %i.fv, align 4         ; 8 uses
end_hunk_0
