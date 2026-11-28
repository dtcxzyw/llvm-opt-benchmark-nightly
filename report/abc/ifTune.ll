Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifTune?download=true
inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ifn_NtkAddConstraints:bb.a
._crit_edge.us.i75:                               ; preds = %bb.m
  %i.dw = sext i32 %.1.us.i72 to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw
  %i.dy = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dx) #26 ; 0 uses
  %indvars.iv.next33.i76 = add nuw nsw i64 %indvars.iv32.i65, 1 ; 2 uses
  %.val.us.i77 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.dz = sext i32 %.val.us.i77 to i64
  %i.ea = icmp slt i64 %indvars.iv.next33.i76, %i.dz
  br i1 %i.ea, label %.lr.ph.us.i64, label %Ifn_NtkAddConstrOne.exit78, !llvm.loop !5

.lr.ph29.split.i59:                               ; preds = %._crit_edge88.thread, %.lr.ph29.split.i59
  %.02027.i60 = phi i32 [ %i.ec, %.lr.ph29.split.i59 ], [ 0, %._crit_edge88.thread ]
  %i.eb = call i32 @sat_solver_addclause(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.ec = add nuw nsw i32 %.02027.i60, 1          ; 2 uses
  %.val.i61 = load i32, ptr %i.g, align 4, !tbaa !58
  %i.ed = icmp slt i32 %i.ec, %.val.i61
  br i1 %i.ed, label %.lr.ph29.split.i59, label %Ifn_NtkAddConstrOne.exit78, !llvm.loop !5

Ifn_NtkAddConstrOne.exit78:                       ; preds = %.lr.ph29.split.i59, %._crit_edge.us.i75, %._crit_edge88.thread, %._crit_edge88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.ee = load i32, ptr %i.bx, align 4, !tbaa !34
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next106, %i.ef
  br i1 %i.eg, label %bb.i, label %._crit_edge96, !llvm.loop !262

._crit_edge96:                                    ; preds = %Ifn_NtkAddConstrOne.exit78, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge96, %bb.g
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.eh) #26
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.n, %bb.o
  call void @free(ptr noundef nonnull %calloc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret void
}

declare i32 @Kit_TruthIsop(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ifn_NtkAddClauses(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [13 x i32], align 16              ; 36 uses
  %i.b = alloca [13 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = tail call i32 @sat_solver_nvars(ptr noundef %2) #26 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %i.e, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0183254 = phi i32 [ %i.c, %.lr.ph.new ], [ %i.n, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = shl i32 %.0183254, 16
  %i.l = and i32 %i.j, 65535
  %i.m = or disjoint i32 %i.l, %i.k
  store i32 %i.m, ptr %i.i, align 8
  %i.n = add nsw i32 %.0183254, 2                 ; 3 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = shl i32 %.0183254, 16
  %i.s = add i32 %i.r, 65536
  %i.t = and i32 %i.q, 65535
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %i.p, align 8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !263

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0183254.epil.init = phi i32 [ %i.c, %.lr.ph ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod400 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.v = add nsw i32 %.0183254.epil.init, 1
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = shl i32 %.0183254.epil.init, 16
  %i.z = and i32 %i.x, 65535
  %i.aa = or disjoint i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0183.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.v, %.epil.preheader ]
  tail call void @sat_solver_setnvars(ptr noundef %2, i32 noundef %.0183.lcssa) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !23    ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph265, label %.preheader237

.lr.ph265:                                        ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1564
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph265.split, label %.preheader237

.preheader237:                                    ; preds = %.critedge, %.lr.ph265, %._crit_edge
  %.lcssa248 = phi i32 [ %i.ac, %._crit_edge ], [ %i.ac, %.lr.ph265 ], [ %i.cg, %.critedge ] ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !22  ; 2 uses
  %i.ak = icmp slt i32 %.lcssa248, %i.aj
  br i1 %i.ak, label %.lr.ph292, label %._crit_edge293

.lr.ph292:                                        ; preds = %.preheader237
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = sext i32 %.lcssa248 to i64
  br label %bb.e

.lr.ph265.split:                                  ; preds = %.lr.ph265, %.critedge
  %i.as = phi i32 [ %i.cg, %.critedge ], [ %i.ac, %.lr.ph265 ]
  %i.at = phi i32 [ %i.ch, %.critedge ], [ %i.ah, %.lr.ph265 ] ; 2 uses
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %.critedge ], [ 0, %.lr.ph265 ] ; 3 uses
  %.not224260 = icmp sgt i32 %i.at, 0
  br i1 %.not224260, label %.lr.ph263, label %.critedge

.lr.ph263:                                        ; preds = %.lr.ph265.split
  %i.au = load i32, ptr %i.af, align 8, !tbaa !26
  %i.av = trunc nuw nsw i64 %indvars.iv319 to i32
  %i.aw = mul nsw i32 %i.au, %i.av
  %i.ax = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ay = add nsw i32 %i.aw, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv319
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge258
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.ba = load i32, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %.not224 = icmp slt i64 %indvars.iv.next317, %i.bb
  br i1 %.not224, label %bb.d, label %.critedge.loopexit, !llvm.loop !264

bb.d:                                             ; preds = %.lr.ph263, %bb.c
  %indvars.iv316 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next317, %bb.c ] ; 3 uses
  %i.bc = load i32, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv316
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = lshr i32 %i.bc, 15
  %i.bi = and i32 %i.bh, 131070
  %i.bj = or disjoint i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %i.a, align 16, !tbaa !31
  %i.bk = load i32, ptr %i.af, align 8, !tbaa !26 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph257.preheader, label %._crit_edge258

.lr.ph257.preheader:                              ; preds = %bb.d
  %wide.trip.count314 = zext nneg i32 %i.bk to i64 ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv316 to i32 ; 2 uses
  %min.iters.check = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check, label %.lr.ph257.preheader394, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph257.preheader
  %n.vec = and i64 %wide.trip.count314, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind386 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next387, %vector.body ] ; 2 uses
  %i.bn = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.bo = and <4 x i32> %i.bn, splat (i32 1)
  %i.bp = add <4 x i32> %broadcast.splat385, %vec.ind386
  %i.bq = shl nsw <4 x i32> %i.bp, splat (i32 1)
  %i.br = or disjoint <4 x i32> %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next387 = add <4 x i32> %vec.ind386, splat (i32 4)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count314
  br i1 %cmp.n, label %._crit_edge258, label %.lr.ph257.preheader394

.lr.ph257.preheader394:                           ; preds = %.lr.ph257.preheader, %middle.block
  %indvars.iv311.ph = phi i64 [ 0, %.lr.ph257.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader394, %.lr.ph257
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %.lr.ph257 ], [ %indvars.iv311.ph, %.lr.ph257.preheader394 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv311 to i32
  %i.bw = lshr i32 %i.bm, %i.bv
  %i.bx = and i32 %i.bw, 1
  %i.by = trunc i64 %indvars.iv311 to i32
  %.tr = add i32 %i.ay, %i.by
  %i.bz = shl nsw i32 %.tr, 1
  %i.ca = or disjoint i32 %i.bz, %i.bx
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next312
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !31
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !266

._crit_edge258:                                   ; preds = %.lr.ph257, %middle.block, %bb.d
  %i.cc = sext i32 %i.bk to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ce) #26
  %.not223 = icmp eq i32 %i.cf, 0
  br i1 %.not223, label %.critedge228, label %bb.c

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load i32, ptr %0, align 8, !tbaa !23
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph265.split
  %i.cg = phi i32 [ %.pre, %.critedge.loopexit ], [ %i.as, %.lr.ph265.split ] ; 3 uses
  %i.ch = phi i32 [ %i.ba, %.critedge.loopexit ], [ %i.at, %.lr.ph265.split ]
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.ci = sext i32 %i.cg to i64
  %i.cj = icmp slt i64 %indvars.iv.next320, %i.ci
  br i1 %i.cj, label %.lr.ph265.split, label %.preheader237, !llvm.loop !267

bb.e:                                             ; preds = %.lr.ph292, %.critedge226
  %indvars.iv348 = phi i64 [ %i.ar, %.lr.ph292 ], [ %indvars.iv.next349, %.critedge226 ] ; 3 uses
  %i.ck = getelementptr inbounds [48 x i8], ptr %i.al, i64 %indvars.iv348 ; 10 uses
  %i.cl = load i32, ptr %i.ck, align 8            ; 5 uses
  %i.cm = lshr i32 %i.cl, 3                       ; 2 uses
  %i.cn = and i32 %i.cm, 31                       ; 13 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 9 uses
  %i.cp = and i32 %i.cl, 7
  switch i32 %i.cp, label %.critedge226 [
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 5, label %bb.l
    i32 6, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  %i.cq = lshr i32 %i.cl, 15
  %i.cr = and i32 %i.cq, 131070
  store i32 %i.cr, ptr %i.a, align 16, !tbaa !31
  %.not297 = icmp eq i32 %i.cn, 0
  br i1 %.not297, label %._crit_edge289, label %.lr.ph288.preheader

.lr.ph288.preheader:                              ; preds = %bb.f
  %wide.trip.count346 = zext nneg i32 %i.cn to i64
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.g
  %indvars.iv341 = phi i64 [ 0, %.lr.ph288.preheader ], [ %indvars.iv.next342, %bb.g ] ; 2 uses
  %indvars.iv339 = phi i64 [ 1, %.lr.ph288.preheader ], [ %indvars.iv.next340, %bb.g ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv341
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !31
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [48 x i8], ptr %i.al, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = lshr i32 %i.cw, 15                      ; 2 uses
  %i.cy = and i32 %i.cx, 131070
  %i.cz = or i32 %i.cx, 1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv339
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !31
  %i.db = load i32, ptr %i.ck, align 8
  %i.dc = lshr i32 %i.db, 15
  %i.dd = or i32 %i.dc, 1
  store i32 %i.dd, ptr %i.b, align 16, !tbaa !31
  store i32 %i.cy, ptr %i.ap, align 4, !tbaa !31
  %i.de = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aq) #26
  %.not222 = icmp eq i32 %i.de, 0
  br i1 %.not222, label %.critedge228, label %bb.g

bb.g:                                             ; preds = %.lr.ph288
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count346
  br i1 %exitcond347.not, label %._crit_edge289, label %.lr.ph288, !llvm.loop !268

._crit_edge289:                                   ; preds = %bb.g, %bb.f
  %.0184.lcssa = phi i64 [ 1, %bb.f ], [ %indvars.iv.next340, %bb.g ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0184.lcssa
  %i.dg = call i32 @sat_solver_addclause(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.df) #26
  %.not221 = icmp eq i32 %i.dg, 0
  br i1 %.not221, label %.critedge228, label %.critedge226

bb.h:                                             ; preds = %bb.e
  %i.dh = shl nuw i32 2, %i.cn                    ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.preheader.lr.ph, label %.critedge226

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.dj = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = add nuw nsw i32 %i.cn, 1                ; 2 uses
  %xtraiter402 = and i32 %i.dm, 7                 ; 3 uses
  %i.dn = icmp samesign ult i32 %i.cn, 7
  %unroll_iter406 = and i32 %i.dm, 56
  %lcmp.mod403.not = icmp eq i32 %xtraiter402, 0
  %lcmp.mod405 = icmp ne i32 %xtraiter402, 0
  %xtraiter408 = and i64 %i.dj, 1
  %i.do = icmp eq i32 %i.cn, 1                    ; 0 uses
  %unroll_iter412 = and i64 %i.dj, 30
  %lcmp.mod410.not = icmp eq i64 %xtraiter408, 0
  %lcmp.mod411 = trunc i32 %i.cm to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.k
  %.0181283 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.gk, %bb.k ] ; 14 uses
  br i1 %i.dn, label %.epil.preheader401, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.0278 = phi i32 [ %i.el, %.preheader.new ], [ 0, %.preheader ]
  %.1188277 = phi i32 [ %i.em, %.preheader.new ], [ 0, %.preheader ] ; 9 uses
  %niter407 = phi i32 [ %niter407.next.7, %.preheader.new ], [ 0, %.preheader ]
  %i.dp = lshr i32 %.0181283, %.1188277
  %i.dq = add i32 %i.dp, %.0278
  %i.dr = or disjoint i32 %.1188277, 1
  %i.ds = lshr i32 %.0181283, %i.dr
  %i.dt = add i32 %i.ds, %i.dq
  %i.du = or disjoint i32 %.1188277, 2
  %i.dv = lshr i32 %.0181283, %i.du
  %i.dw = add i32 %i.dv, %i.dt
  %i.dx = or disjoint i32 %.1188277, 3
  %i.dy = lshr i32 %.0181283, %i.dx
  %i.dz = add i32 %i.dy, %i.dw
  %i.ea = or disjoint i32 %.1188277, 4
  %i.eb = lshr i32 %.0181283, %i.ea
  %i.ec = add i32 %i.eb, %i.dz
  %i.ed = or disjoint i32 %.1188277, 5
  %i.ee = lshr i32 %.0181283, %i.ed
  %i.ef = add i32 %i.ee, %i.ec
  %i.eg = or disjoint i32 %.1188277, 6
  %i.eh = lshr i32 %.0181283, %i.eg
  %i.ei = add i32 %i.eh, %i.ef
  %i.ej = or disjoint i32 %.1188277, 7
  %i.ek = lshr i32 %.0181283, %i.ej
  %i.el = add i32 %i.ek, %i.ei                    ; 3 uses
  %i.em = add nuw nsw i32 %.1188277, 8            ; 2 uses
  %niter407.next.7 = add i32 %niter407, 8         ; 2 uses
  %niter407.ncmp.7 = icmp eq i32 %niter407.next.7, %unroll_iter406
  br i1 %niter407.ncmp.7, label %.unr-lcssa, label %.preheader.new, !llvm.loop !269

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod403.not, label %.epilog-lcssa, label %.epil.preheader401

.epil.preheader401:                               ; preds = %.unr-lcssa, %.preheader
  %.0278.epil.init = phi i32 [ 0, %.preheader ], [ %i.el, %.unr-lcssa ]
  %.1188277.epil.init = phi i32 [ 0, %.preheader ], [ %i.em, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod405)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader401
  %.0278.epil = phi i32 [ %.0278.epil.init, %.epil.preheader401 ], [ %i.eo, %bb.i ]
  %.1188277.epil = phi i32 [ %.1188277.epil.init, %.epil.preheader401 ], [ %i.ep, %bb.i ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader401 ], [ %epil.iter.next, %bb.i ]
  %i.en = lshr i32 %.0181283, %.1188277.epil
  %i.eo = add i32 %i.en, %.0278.epil              ; 2 uses
  %i.ep = add nuw nsw i32 %.1188277.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter402
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.i, !llvm.loop !270

.epilog-lcssa:                                    ; preds = %bb.i, %.unr-lcssa
  %.lcssa392 = phi i32 [ %i.el, %.unr-lcssa ], [ %i.eo, %bb.i ]
  %i.eq = and i32 %.lcssa392, 1
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epilog-lcssa
  %i.es = load i32, ptr %i.ck, align 8
  %i.et = lshr i32 %.0181283, %i.cn
  %i.eu = and i32 %i.et, 1
  %i.ev = lshr i32 %i.es, 15
  %i.ew = and i32 %i.ev, 131070
  %i.ex = or disjoint i32 %i.ew, %i.eu
  store i32 %i.ex, ptr %i.a, align 16, !tbaa !31
end_hunk_0
