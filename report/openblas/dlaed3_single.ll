Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed3_single?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c1f = internal global double 1.000000e+00, align 8
@c0f = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define noundef i32 @dlaed3_single(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %11 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = ptrtoaddr ptr %12 to i64                 ; 2 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.i = load i32, ptr %5, align 4, !tbaa !41     ; 6 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !41     ; 13 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

.lr.ph174.preheader:                              ; preds = %.lr.ph
  store i32 1, ptr %i.d, align 4, !tbaa !41
  br label %.lr.ph174

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; 4 uses
  %i.m = tail call double @dlamc3_(ptr noundef %i.l, ptr noundef %i.l) #5
  %i.n = load double, ptr %i.l, align 8, !tbaa !43
  %i.o = fsub double %i.m, %i.n
  store double %i.o, ptr %i.l, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph174.preheader, label %.lr.ph, !llvm.loop !8

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.b
  %storemerge173 = phi i32 [ %i.v, %bb.b ], [ 0, %.lr.ph174.preheader ] ; 2 uses
  %i.p = mul nsw i32 %storemerge173, %i.i
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %4, i64 %i.q
  %i.s = sext i32 %storemerge173 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %3, i64 %i.s
  call void @dlaed4_(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %7, ptr noundef %11, ptr noundef %i.r, ptr noundef %6, ptr noundef %i.t, ptr noundef %13) #5
  %i.u = load i32, ptr %13, align 4, !tbaa !41
  %.not155 = icmp eq i32 %i.u, 0
  br i1 %.not155, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph174
  %i.v = load i32, ptr %i.d, align 4, !tbaa !41   ; 3 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.d, align 4, !tbaa !41
  %.not.not = icmp slt i32 %i.v, %i.j
  br i1 %.not.not, label %.lr.ph174, label %._crit_edge.thread, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.a
  store i32 1, ptr %i.d, align 4, !tbaa !41
  %.pr.pre = load i32, ptr %13, align 4, !tbaa !41
  %i.x = icmp eq i32 %.pr.pre, 0
  br i1 %i.x, label %._crit_edge.thread, label %.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  switch i32 %i.j, label %bb.c [
    i32 2, label %.preheader168
    i32 1, label %.loopexit
  ]

.preheader168:                                    ; preds = %._crit_edge.thread
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.z = load i32, ptr %9, align 4, !tbaa !41
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [8 x i8], ptr %11, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [8 x i8], ptr %11, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8     ; 2 uses
  %i.ai = sext i32 %i.i to i64
  %i.aj = load double, ptr %4, align 8, !tbaa !43
  store double %i.aj, ptr %11, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %4, i64 8         ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !43
  store double %i.al, ptr %i.y, align 8, !tbaa !43
  %i.am = load double, ptr %i.ac, align 8, !tbaa !43
  store double %i.am, ptr %4, align 8, !tbaa !43
  %i.an = load double, ptr %i.ah, align 8, !tbaa !43
  store double %i.an, ptr %i.ak, align 8, !tbaa !43
  %i.ao = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ai ; 3 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !43
  store double %i.ap, ptr %11, align 8, !tbaa !43
  %i.aq = getelementptr i8, ptr %i.ao, i64 8      ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !43
  store double %i.ar, ptr %i.y, align 8, !tbaa !43
  %i.as = load double, ptr %i.ac, align 8, !tbaa !43
  store double %i.as, ptr %i.ao, align 8, !tbaa !43
  %i.at = load double, ptr %i.ah, align 8, !tbaa !43
  store double %i.at, ptr %i.aq, align 8, !tbaa !43
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %._crit_edge.thread
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull @c1, ptr noundef %12, ptr noundef nonnull @c1) #5
  %i.au = add nsw i32 %i.i, 1
  store i32 %i.au, ptr %i.e, align 4, !tbaa !41
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %i.e, ptr noundef %11, ptr noundef nonnull @c1) #5
  br i1 %i.k, label %.preheader167.preheader, label %.loopexit.sink.split

.preheader167.preheader:                          ; preds = %bb.c
  %i.av = zext nneg i32 %i.j to i64
  %i.aw = sext i32 %i.i to i64                    ; 3 uses
  %wide.trip.count213 = zext nneg i32 %i.j to i64 ; 17 uses
  %i.ax = shl nuw nsw i64 %wide.trip.count213, 3  ; 3 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.ax  ; 2 uses
  %i.ay = shl nsw i64 %i.aw, 3                    ; 2 uses
  %i.az = add nsw i64 %i.ay, 8                    ; 2 uses
  %scevgep254 = getelementptr i8, ptr %11, i64 %i.ax ; 3 uses
  %bound0301.a = icmp ult ptr %11, %scevgep
  %i.ba = getelementptr i8, ptr %4, i64 %i.ax
  %bound1256.a = icmp ult ptr %7, %scevgep254
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.preheader, %._crit_edge181
  %indvars.iv210 = phi i64 [ 0, %.preheader167.preheader ], [ %indvars.iv.next211, %._crit_edge181 ] ; 22 uses
  %indvars.iv203 = phi i64 [ 1, %.preheader167.preheader ], [ %indvars.iv.next204, %._crit_edge181 ] ; 7 uses
  %i.bb = xor i64 %indvars.iv210, -1
  %i.bc = add nsw i64 %i.bb, %wide.trip.count213  ; 7 uses
  %.not = icmp eq i64 %indvars.iv210, 0
  br i1 %.not, label %.preheader166, label %iter.check331

iter.check331:                                    ; preds = %.preheader167
  %i.bd = mul nsw i64 %indvars.iv210, %i.aw
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv210 ; 8 uses
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.bd ; 8 uses
  %min.iters.check296 = icmp samesign ult i64 %indvars.iv210, 4
  br i1 %min.iters.check296, label %vec.epilog.scalar.ph333.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %iter.check331
  %i.bf = shl nuw nsw i64 %indvars.iv210, 3
  %i.bg = getelementptr i8, ptr %11, i64 %i.bf    ; 2 uses
  %i.bh = mul i64 %indvars.iv210, %i.az
  %i.bi = getelementptr i8, ptr %4, i64 %i.bh
  %bound0298 = icmp ult ptr %11, %i.bi
  %bound1299 = icmp ult ptr %invariant.gep, %i.bg
  %found.conflict300 = and i1 %bound0298, %bound1299
  %bound1302.a = icmp ult ptr %7, %i.bg
  %bound0305 = icmp ult ptr %11, %i.be
  %found.conflict303410 = or i1 %bound0301.a, %bound0305
  %i.bj = and i1 %found.conflict303410, %bound1302.a
  %conflict.rdx307 = or i1 %found.conflict300, %i.bj
  br i1 %conflict.rdx307, label %vec.epilog.scalar.ph333.preheader, label %vector.main.loop.iter.check308

vector.main.loop.iter.check308:                   ; preds = %vector.memcheck297
  %min.iters.check309 = icmp samesign ult i64 %indvars.iv210, 16
  br i1 %min.iters.check309, label %vec.epilog.ph335, label %vector.ph310

vector.ph310:                                     ; preds = %vector.main.loop.iter.check308
  %i.bk = and i64 %indvars.iv210, 12
  %n.vec311 = and i64 %indvars.iv210, 9223372036854775792 ; 4 uses
  %i.bl = load double, ptr %i.be, align 8, !tbaa !43, !alias.scope !45
  %broadcast.splatinsert322 = insertelement <4 x double> poison, double %i.bl, i64 0
  %broadcast.splat323 = shufflevector <4 x double> %broadcast.splatinsert322, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.ph310, %vector.body312
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next328, %vector.body312 ] ; 4 uses
  %i.bm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index313 ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = getelementptr i8, ptr %i.bm, i64 64
  %i.bp = getelementptr i8, ptr %i.bm, i64 96
  %wide.load314 = load <4 x double>, ptr %i.bm, align 8, !tbaa !43, !alias.scope !46
  %wide.load315 = load <4 x double>, ptr %i.bn, align 8, !tbaa !43, !alias.scope !46
  %wide.load316 = load <4 x double>, ptr %i.bo, align 8, !tbaa !43, !alias.scope !46
  %wide.load317 = load <4 x double>, ptr %i.bp, align 8, !tbaa !43, !alias.scope !46
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index313 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %wide.load318 = load <4 x double>, ptr %i.bq, align 8, !tbaa !43, !alias.scope !47
  %wide.load319 = load <4 x double>, ptr %i.br, align 8, !tbaa !43, !alias.scope !47
  %wide.load320 = load <4 x double>, ptr %i.bs, align 8, !tbaa !43, !alias.scope !47
  %wide.load321 = load <4 x double>, ptr %i.bt, align 8, !tbaa !43, !alias.scope !47
  %i.bu = fsub <4 x double> %wide.load318, %broadcast.splat323
  %i.bv = fsub <4 x double> %wide.load319, %broadcast.splat323
  %i.bw = fsub <4 x double> %wide.load320, %broadcast.splat323
  %i.bx = fsub <4 x double> %wide.load321, %broadcast.splat323
  %i.by = fdiv <4 x double> %wide.load314, %i.bu
  %i.bz = fdiv <4 x double> %wide.load315, %i.bv
  %i.ca = fdiv <4 x double> %wide.load316, %i.bw
  %i.cb = fdiv <4 x double> %wide.load317, %i.bx
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index313 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 96 ; 2 uses
  %wide.load324 = load <4 x double>, ptr %i.cc, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %wide.load325 = load <4 x double>, ptr %i.cd, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %wide.load326 = load <4 x double>, ptr %i.ce, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %wide.load327 = load <4 x double>, ptr %i.cf, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %i.cg = fmul <4 x double> %wide.load324, %i.by
  %i.ch = fmul <4 x double> %wide.load325, %i.bz
  %i.ci = fmul <4 x double> %wide.load326, %i.ca
  %i.cj = fmul <4 x double> %wide.load327, %i.cb
  store <4 x double> %i.cg, ptr %i.cc, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  store <4 x double> %i.ch, ptr %i.cd, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  store <4 x double> %i.ci, ptr %i.ce, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  store <4 x double> %i.cj, ptr %i.cf, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %index.next328 = add nuw i64 %index313, 16      ; 2 uses
  %i.ck = icmp eq i64 %index.next328, %n.vec311
  br i1 %i.ck, label %middle.block329, label %vector.body312, !llvm.loop !15

middle.block329:                                  ; preds = %vector.body312
  %cmp.n330 = icmp eq i64 %indvars.iv210, %n.vec311
  br i1 %cmp.n330, label %.preheader166, label %vec.epilog.iter.check332

vec.epilog.iter.check332:                         ; preds = %middle.block329
  %min.epilog.iters.check334 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check334, label %vec.epilog.scalar.ph333.preheader, label %vec.epilog.ph335, !prof !52

vec.epilog.ph335:                                 ; preds = %vector.main.loop.iter.check308, %vec.epilog.iter.check332
  %vec.epilog.resume.val336 = phi i64 [ %n.vec311, %vec.epilog.iter.check332 ], [ 0, %vector.main.loop.iter.check308 ]
  %n.vec337 = and i64 %indvars.iv210, 9223372036854775804 ; 3 uses
  %i.cl = load double, ptr %i.be, align 8, !tbaa !43, !alias.scope !45
  %broadcast.splatinsert342 = insertelement <4 x double> poison, double %i.cl, i64 0
  %broadcast.splat343 = shufflevector <4 x double> %broadcast.splatinsert342, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph335
  %index339 = phi i64 [ %vec.epilog.resume.val336, %vec.epilog.ph335 ], [ %index.next345, %vec.epilog.vector.body338 ] ; 4 uses
  %i.cm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index339
  %wide.load340 = load <4 x double>, ptr %i.cm, align 8, !tbaa !43, !alias.scope !46
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index339
  %wide.load341 = load <4 x double>, ptr %i.cn, align 8, !tbaa !43, !alias.scope !47
  %i.co = fsub <4 x double> %wide.load341, %broadcast.splat343
  %i.cp = fdiv <4 x double> %wide.load340, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index339 ; 2 uses
  %wide.load344 = load <4 x double>, ptr %i.cq, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %i.cr = fmul <4 x double> %wide.load344, %i.cp
  store <4 x double> %i.cr, ptr %i.cq, align 8, !tbaa !43, !alias.scope !48, !noalias !49
  %index.next345 = add nuw i64 %index339, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next345, %n.vec337
  br i1 %i.cs, label %vec.epilog.middle.block346, label %vec.epilog.vector.body338, !llvm.loop !16

vec.epilog.middle.block346:                       ; preds = %vec.epilog.vector.body338
  %cmp.n347 = icmp eq i64 %indvars.iv210, %n.vec337
  br i1 %cmp.n347, label %.preheader166, label %vec.epilog.scalar.ph333.preheader

vec.epilog.scalar.ph333.preheader:                ; preds = %iter.check331, %vector.memcheck297, %vec.epilog.iter.check332, %vec.epilog.middle.block346
  %indvars.iv198.ph = phi i64 [ 0, %iter.check331 ], [ 0, %vector.memcheck297 ], [ %n.vec311, %vec.epilog.iter.check332 ], [ %n.vec337, %vec.epilog.middle.block346 ] ; 3 uses
  %xtraiter = and i64 %indvars.iv210, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph333.prol.loopexit, label %vec.epilog.scalar.ph333.prol

vec.epilog.scalar.ph333.prol:                     ; preds = %vec.epilog.scalar.ph333.preheader, %vec.epilog.scalar.ph333.prol
  %indvars.iv198.prol = phi i64 [ %indvars.iv.next199.prol, %vec.epilog.scalar.ph333.prol ], [ %indvars.iv198.ph, %vec.epilog.scalar.ph333.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph333.prol ], [ 0, %vec.epilog.scalar.ph333.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv198.prol
  %i.ct = load double, ptr %gep.prol, align 8, !tbaa !43
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv198.prol
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !43
  %i.cw = load double, ptr %i.be, align 8, !tbaa !43
  %i.cx = fsub double %i.cv, %i.cw
  %i.cy = fdiv double %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv198.prol ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !43
  %i.db = fmul double %i.da, %i.cy
  store double %i.db, ptr %i.cz, align 8, !tbaa !43
  %indvars.iv.next199.prol = add nuw nsw i64 %indvars.iv198.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph333.prol.loopexit, label %vec.epilog.scalar.ph333.prol, !llvm.loop !17

vec.epilog.scalar.ph333.prol.loopexit:            ; preds = %vec.epilog.scalar.ph333.prol, %vec.epilog.scalar.ph333.preheader
  %indvars.iv198.unr = phi i64 [ %indvars.iv198.ph, %vec.epilog.scalar.ph333.preheader ], [ %indvars.iv.next199.prol, %vec.epilog.scalar.ph333.prol ]
  %i.dc = sub nsw i64 %indvars.iv198.ph, %indvars.iv210
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %.preheader166, label %vec.epilog.scalar.ph333

.lr.ph184.preheader:                              ; preds = %._crit_edge181
  %wide.trip.count218 = zext nneg i32 %i.j to i64 ; 4 uses
  %min.iters.check355 = icmp ult i32 %i.j, 4
  br i1 %min.iters.check355, label %.lr.ph184.preheader411, label %vector.memcheck356

vector.memcheck356:                               ; preds = %.lr.ph184.preheader
  %i.de = shl nuw nsw i64 %wide.trip.count218, 3  ; 2 uses
  %i.df = getelementptr i8, ptr %11, i64 %i.de
  %i.dg = getelementptr i8, ptr %12, i64 %i.de
  %bound0357 = icmp ult ptr %11, %i.dg
  %bound1358 = icmp ult ptr %12, %i.df
  %found.conflict359 = and i1 %bound0357, %bound1358
  br i1 %found.conflict359, label %.lr.ph184.preheader411, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck356
  %n.vec361 = and i64 %wide.trip.count218, 2147483644 ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index363 ; 2 uses
  %wide.load364 = load <4 x double>, ptr %i.dh, align 8, !tbaa !43, !alias.scope !54, !noalias !55
  %i.di = fneg nsz <4 x double> %wide.load364
  %i.dj = call nsz <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.di, <4 x double> zeroinitializer)
  %i.dk = call <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.dj) ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index363
  %wide.load365 = load <4 x double>, ptr %i.dl, align 8, !tbaa !43, !alias.scope !55
  %i.dm = fcmp olt <4 x double> %wide.load365, zeroinitializer
  %i.dn = fneg <4 x double> %i.dk
  %i.do = select <4 x i1> %i.dm, <4 x double> %i.dn, <4 x double> %i.dk
  store <4 x double> %i.do, ptr %i.dh, align 8, !tbaa !43, !alias.scope !54, !noalias !55
  %index.next366 = add nuw i64 %index363, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.dp, label %middle.block367, label %vector.body362, !llvm.loop !21

middle.block367:                                  ; preds = %vector.body362
  %cmp.n368 = icmp eq i64 %n.vec361, %wide.trip.count218
  br i1 %cmp.n368, label %.preheader.lr.ph, label %.lr.ph184.preheader411

.lr.ph184.preheader411:                           ; preds = %vector.memcheck356, %.lr.ph184.preheader, %middle.block367
  %indvars.iv215.ph = phi i64 [ 0, %vector.memcheck356 ], [ 0, %.lr.ph184.preheader ], [ %n.vec361, %middle.block367 ] ; 5 uses
  %xtraiter415 = and i64 %wide.trip.count213, 1
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %.lr.ph184.prol.loopexit, label %.lr.ph184.prol

.lr.ph184.prol:                                   ; preds = %.lr.ph184.preheader411
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv215.ph ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !43
  %i.ds = fneg nsz double %i.dr
  %i.dt = call nsz double @llvm.maxnum.f64(double %i.ds, double 0.000000e+00)
  %sqrt.prol = call double @llvm.sqrt.f64(double %i.dt) ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv215.ph
  %i.dv = load double, ptr %i.du, align 8, !tbaa !43
  %i.dw = fcmp olt double %i.dv, 0.000000e+00
  %i.dx = fneg double %sqrt.prol
  %.sqrt.prol = select i1 %i.dw, double %i.dx, double %sqrt.prol
  store double %.sqrt.prol, ptr %i.dq, align 8, !tbaa !43
  %indvars.iv.next216.prol = or disjoint i64 %indvars.iv215.ph, 1
  br label %.lr.ph184.prol.loopexit

.lr.ph184.prol.loopexit:                          ; preds = %.lr.ph184.prol, %.lr.ph184.preheader411
  %indvars.iv215.unr = phi i64 [ %indvars.iv215.ph, %.lr.ph184.preheader411 ], [ %indvars.iv.next216.prol, %.lr.ph184.prol ]
  %i.dy = add nsw i64 %wide.trip.count213, -1
  %i.dz = icmp eq i64 %indvars.iv215.ph, %i.dy
  br i1 %i.dz, label %.preheader.lr.ph, label %.lr.ph184

.preheader166:                                    ; preds = %vec.epilog.scalar.ph333.prol.loopexit, %vec.epilog.scalar.ph333, %middle.block329, %vec.epilog.middle.block346, %.preheader167
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 3 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next211, %i.av
  br i1 %i.ea, label %iter.check, label %._crit_edge181

iter.check:                                       ; preds = %.preheader166
  %i.eb = mul nsw i64 %indvars.iv210, %i.aw
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv210 ; 7 uses
  %invariant.gep236 = getelementptr [8 x i8], ptr %4, i64 %i.eb ; 7 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ed = shl nuw nsw i64 %indvars.iv210, 3
  %i.ee = add nuw i64 %i.ed, 8                    ; 2 uses
  %i.ef = getelementptr i8, ptr %11, i64 %i.ee    ; 2 uses
  %i.eg = mul i64 %indvars.iv210, %i.az
  %i.eh = getelementptr i8, ptr %4, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = mul i64 %indvars.iv210, %i.ay
  %i.ek = getelementptr i8, ptr %i.ba, i64 %i.ej
  %i.el = getelementptr i8, ptr %7, i64 %i.ee
  %bound0 = icmp ult ptr %i.ef, %i.ek
  %bound1 = icmp ult ptr %i.ei, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  %bound0255 = icmp ult ptr %i.ef, %scevgep
  %bound1258 = icmp ult ptr %i.el, %scevgep254
  %i.em = or i1 %bound1256.a, %bound1258
  %i.en = and i1 %bound0255, %i.em
  %conflict.rdx260 = or i1 %found.conflict, %i.en
  br i1 %conflict.rdx260, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check261 = icmp ult i64 %i.bc, 16
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eo = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, -16                     ; 4 uses
  %i.ep = add i64 %indvars.iv203, %n.vec
  %i.eq = load double, ptr %i.ec, align 8, !tbaa !43, !alias.scope !56
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.eq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = add nuw i64 %indvars.iv203, %index      ; 3 uses
  %i.es = getelementptr [8 x i8], ptr %invariant.gep236, i64 %i.er ; 4 uses
  %i.et = getelementptr i8, ptr %i.es, i64 32
  %i.eu = getelementptr i8, ptr %i.es, i64 64
  %i.ev = getelementptr i8, ptr %i.es, i64 96
  %wide.load = load <4 x double>, ptr %i.es, align 8, !tbaa !43, !alias.scope !57
  %wide.load262 = load <4 x double>, ptr %i.et, align 8, !tbaa !43, !alias.scope !57
  %wide.load263 = load <4 x double>, ptr %i.eu, align 8, !tbaa !43, !alias.scope !57
  %wide.load264 = load <4 x double>, ptr %i.ev, align 8, !tbaa !43, !alias.scope !57
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.er ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %wide.load265 = load <4 x double>, ptr %i.ew, align 8, !tbaa !43, !alias.scope !58
  %wide.load266 = load <4 x double>, ptr %i.ex, align 8, !tbaa !43, !alias.scope !58
  %wide.load267 = load <4 x double>, ptr %i.ey, align 8, !tbaa !43, !alias.scope !58
  %wide.load268 = load <4 x double>, ptr %i.ez, align 8, !tbaa !43, !alias.scope !58
  %i.fa = fsub <4 x double> %wide.load265, %broadcast.splat
  %i.fb = fsub <4 x double> %wide.load266, %broadcast.splat
  %i.fc = fsub <4 x double> %wide.load267, %broadcast.splat
  %i.fd = fsub <4 x double> %wide.load268, %broadcast.splat
  %i.fe = fdiv <4 x double> %wide.load, %i.fa
  %i.ff = fdiv <4 x double> %wide.load262, %i.fb
  %i.fg = fdiv <4 x double> %wide.load263, %i.fc
  %i.fh = fdiv <4 x double> %wide.load264, %i.fd
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.er ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 64 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 96 ; 2 uses
  %wide.load269 = load <4 x double>, ptr %i.fi, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %wide.load270 = load <4 x double>, ptr %i.fj, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %wide.load271 = load <4 x double>, ptr %i.fk, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %wide.load272 = load <4 x double>, ptr %i.fl, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %i.fm = fmul <4 x double> %wide.load269, %i.fe
  %i.fn = fmul <4 x double> %wide.load270, %i.ff
  %i.fo = fmul <4 x double> %wide.load271, %i.fg
  %i.fp = fmul <4 x double> %wide.load272, %i.fh
  store <4 x double> %i.fm, ptr %i.fi, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  store <4 x double> %i.fn, ptr %i.fj, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  store <4 x double> %i.fo, ptr %i.fk, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  store <4 x double> %i.fp, ptr %i.fl, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge181, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec273 = and i64 %i.bc, -4                   ; 3 uses
  %i.fr = add i64 %indvars.iv203, %n.vec273
  %i.fs = load double, ptr %i.ec, align 8, !tbaa !43, !alias.scope !56
  %broadcast.splatinsert277 = insertelement <4 x double> poison, double %i.fs, i64 0
  %broadcast.splat278 = shufflevector <4 x double> %broadcast.splatinsert277, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index274 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next280, %vec.epilog.vector.body ] ; 2 uses
  %i.ft = add nuw i64 %indvars.iv203, %index274   ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %invariant.gep236, i64 %i.ft
  %wide.load275 = load <4 x double>, ptr %i.fu, align 8, !tbaa !43, !alias.scope !57
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ft
  %wide.load276 = load <4 x double>, ptr %i.fv, align 8, !tbaa !43, !alias.scope !58
  %i.fw = fsub <4 x double> %wide.load276, %broadcast.splat278
  %i.fx = fdiv <4 x double> %wide.load275, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ft ; 2 uses
  %wide.load279 = load <4 x double>, ptr %i.fy, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %i.fz = fmul <4 x double> %wide.load279, %i.fx
  store <4 x double> %i.fz, ptr %i.fy, align 8, !tbaa !43, !alias.scope !59, !noalias !60
  %index.next280 = add nuw i64 %index274, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n281 = icmp eq i64 %i.bc, %n.vec273
  br i1 %cmp.n281, label %._crit_edge181, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv205.ph = phi i64 [ %indvars.iv203, %iter.check ], [ %indvars.iv203, %vector.memcheck ], [ %i.ep, %vec.epilog.iter.check ], [ %i.fr, %vec.epilog.middle.block ] ; 4 uses
  %i.gb = sub i64 %wide.trip.count213, %indvars.iv205.ph
  %xtraiter412 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod413.not = icmp eq i64 %xtraiter412, 0
  br i1 %lcmp.mod413.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv205.prol = phi i64 [ %indvars.iv.next206.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv205.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter414 = phi i64 [ %prol.iter414.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep237.prol = getelementptr [8 x i8], ptr %invariant.gep236, i64 %indvars.iv205.prol
  %i.gc = load double, ptr %gep237.prol, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv205.prol
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !43
  %i.gf = load double, ptr %i.ec, align 8, !tbaa !43
  %i.gg = fsub double %i.ge, %i.gf
  %i.gh = fdiv double %i.gc, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv205.prol ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !43
  %i.gk = fmul double %i.gj, %i.gh
  store double %i.gk, ptr %i.gi, align 8, !tbaa !43
  %indvars.iv.next206.prol = add nuw nsw i64 %indvars.iv205.prol, 1 ; 2 uses
  %prol.iter414.next = add i64 %prol.iter414, 1   ; 2 uses
  %prol.iter414.cmp.not = icmp eq i64 %prol.iter414.next, %xtraiter412
  br i1 %prol.iter414.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !29

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next206.prol, %vec.epilog.scalar.ph.prol ]
  %i.gl = sub i64 %indvars.iv205.ph, %wide.trip.count213
  %i.gm = icmp ugt i64 %i.gl, -4
  br i1 %i.gm, label %._crit_edge181, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph333:                          ; preds = %vec.epilog.scalar.ph333.prol.loopexit, %vec.epilog.scalar.ph333
  %indvars.iv198 = phi i64 [ %indvars.iv.next199.3, %vec.epilog.scalar.ph333 ], [ %indvars.iv198.unr, %vec.epilog.scalar.ph333.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv198
  %i.gn = load double, ptr %gep, align 8, !tbaa !43
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv198
  %i.gp = load double, ptr %i.go, align 8, !tbaa !43
  %i.gq = load double, ptr %i.be, align 8, !tbaa !43
  %i.gr = fsub double %i.gp, %i.gq
  %i.gs = fdiv double %i.gn, %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv198 ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !43
  %i.gv = fmul double %i.gu, %i.gs
  store double %i.gv, ptr %i.gt, align 8, !tbaa !43
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 3 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next199
  %i.gw = load double, ptr %gep.1, align 8, !tbaa !43
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next199
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !43
  %i.gz = load double, ptr %i.be, align 8, !tbaa !43
  %i.ha = fsub double %i.gy, %i.gz
  %i.hb = fdiv double %i.gw, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next199 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !43
  %i.he = fmul double %i.hd, %i.hb
  store double %i.he, ptr %i.hc, align 8, !tbaa !43
  %indvars.iv.next199.1 = add nuw nsw i64 %indvars.iv198, 2 ; 3 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next199.1
  %i.hf = load double, ptr %gep.2, align 8, !tbaa !43
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next199.1
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !43
  %i.hi = load double, ptr %i.be, align 8, !tbaa !43
  %i.hj = fsub double %i.hh, %i.hi
  %i.hk = fdiv double %i.hf, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next199.1 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !43
  %i.hn = fmul double %i.hm, %i.hk
  store double %i.hn, ptr %i.hl, align 8, !tbaa !43
  %indvars.iv.next199.2 = add nuw nsw i64 %indvars.iv198, 3 ; 3 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next199.2
  %i.ho = load double, ptr %gep.3, align 8, !tbaa !43
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next199.2
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !43
  %i.hr = load double, ptr %i.be, align 8, !tbaa !43
  %i.hs = fsub double %i.hq, %i.hr
  %i.ht = fdiv double %i.ho, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.next199.2 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !43
  %i.hw = fmul double %i.hv, %i.ht
  store double %i.hw, ptr %i.hu, align 8, !tbaa !43
  %indvars.iv.next199.3 = add nuw nsw i64 %indvars.iv198, 4 ; 2 uses
  %exitcond202.not.3 = icmp eq i64 %indvars.iv.next199.3, %indvars.iv210
  br i1 %exitcond202.not.3, label %.preheader166, label %vec.epilog.scalar.ph333, !llvm.loop !30

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.3, %vec.epilog.scalar.ph ], [ %indvars.iv205.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %gep237 = getelementptr [8 x i8], ptr %invariant.gep236, i64 %indvars.iv205
  %i.hx = load double, ptr %gep237, align 8, !tbaa !43
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv205
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !43
  %i.ia = load double, ptr %i.ec, align 8, !tbaa !43
  %i.ib = fsub double %i.hz, %i.ia
  %i.ic = fdiv double %i.hx, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv205 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !43
  %i.if = fmul double %i.ie, %i.ic
  store double %i.if, ptr %i.id, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@dlaed3_single:bb.a
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !43
  %i.pc = fdiv double %i.pb, %i.mv
  %gep241.7 = getelementptr [8 x i8], ptr %invariant.gep240, i64 %indvars.iv.next226.6
  store double %i.pc, ptr %gep241.7, align 8, !tbaa !43
  %indvars.iv.next226.7 = add nuw nsw i64 %indvars.iv225, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge191.unr-lcssa, label %.lr.ph190.new, !llvm.loop !38

._crit_edge191.unr-lcssa:                         ; preds = %.lr.ph190.new
  br i1 %lcmp.mod422.not, label %._crit_edge191, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge191.unr-lcssa, %.lr.ph190
  %indvars.iv225.epil.init = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next226.7, %._crit_edge191.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod423)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv225.epil = phi i64 [ %indvars.iv225.epil.init, %.epil.preheader ], [ %indvars.iv.next226.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv225.epil
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !41
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr [8 x i8], ptr %12, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 -8
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !43
  %i.pj = fdiv double %i.pi, %i.mv
  %gep241.epil = getelementptr [8 x i8], ptr %invariant.gep240, i64 %indvars.iv225.epil
  store double %i.pj, ptr %gep241.epil, align 8, !tbaa !43
  %indvars.iv.next226.epil = add nuw nsw i64 %indvars.iv225.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter421
  br i1 %epil.iter.cmp.not, label %._crit_edge191, label %bb.d, !llvm.loop !39

._crit_edge191:                                   ; preds = %bb.d, %._crit_edge191.unr-lcssa
  %i.pk = add nsw i32 %i.mw, 1                    ; 3 uses
  store i32 %i.pk, ptr %i.d, align 4, !tbaa !41
  %i.pl = icmp slt i32 %i.pk, %i.j
  br i1 %i.pl, label %iter.check395, label %.loopexit, !llvm.loop !40

.loopexit.sink.split:                             ; preds = %bb.c, %.preheader168
  %.sink = phi i32 [ 2, %.preheader168 ], [ 0, %bb.c ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge191, %.loopexit.sink.split, %._crit_edge.thread
  %i.pm = load i32, ptr %1, align 4, !tbaa !41
  %i.pn = load i32, ptr %2, align 4, !tbaa !41
  %i.po = sub nsw i32 %i.pm, %i.pn
  store i32 %i.po, ptr %i.f, align 4, !tbaa !41
  %i.pp = load i32, ptr %10, align 4, !tbaa !41   ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !41 ; 2 uses
  %i.ps = add nsw i32 %i.pr, %i.pp                ; 2 uses
  store i32 %i.ps, ptr %i.g, align 4, !tbaa !41
  %i.pt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !41
  %i.pv = add nsw i32 %i.pu, %i.pr
  store i32 %i.pv, ptr %i.h, align 4, !tbaa !41
  %i.pw = sext i32 %i.pp to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %4, i64 %i.pw
  call void @dlacpy_(ptr noundef nonnull @.str, ptr noundef nonnull %i.h, ptr noundef nonnull %0, ptr noundef %i.px, ptr noundef nonnull %5, ptr noundef %12, ptr noundef nonnull %i.h) #5
  %i.py = load i32, ptr %2, align 4, !tbaa !41    ; 3 uses
  %i.pz = load i32, ptr %i.h, align 4, !tbaa !41
  %.not161 = icmp eq i32 %i.pz, 0
  br i1 %.not161, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.qa = mul nsw i32 %i.ps, %i.py
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %8, i64 %i.qb
  %i.qd = sext i32 %i.py to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qd
  call void @dgemm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f, ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull @c1f, ptr noundef %i.qc, ptr noundef nonnull %i.f, ptr noundef %12, ptr noundef nonnull %i.h, ptr noundef nonnull @c0f, ptr noundef %i.qe, ptr noundef nonnull %5) #5
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.qf = sext i32 %i.py to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qf
  call void @dlaset_(ptr noundef nonnull @.str, ptr noundef nonnull %i.f, ptr noundef nonnull %0, ptr noundef nonnull @c0f, ptr noundef nonnull @c0f, ptr noundef %i.qg, ptr noundef nonnull %5) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @dlacpy_(ptr noundef nonnull @.str, ptr noundef nonnull %i.g, ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %12, ptr noundef nonnull %i.g) #5
  %i.qh = load i32, ptr %i.g, align 4, !tbaa !41
  %.not162 = icmp eq i32 %i.qh, 0
  br i1 %.not162, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @dgemm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull @c1f, ptr noundef %8, ptr noundef nonnull %2, ptr noundef %12, ptr noundef nonnull %i.g, ptr noundef nonnull @c0f, ptr noundef %4, ptr noundef nonnull %5) #5
  br label %.thread

bb.i:                                             ; preds = %bb.g
  call void @dlaset_(ptr noundef nonnull @.str, ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull @c0f, ptr noundef nonnull @c0f, ptr noundef %4, ptr noundef nonnull %5) #5
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %bb.h, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamc3_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaed4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #3

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !44}
!9 = distinct !{!9, !44}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !44, !50, !51}
!16 = distinct !{!16, !44, !50, !51}
!17 = distinct !{!17, !53}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !44, !50, !51}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !44, !50, !51}
!28 = distinct !{!28, !44, !50, !51}
!29 = distinct !{!29, !53}
!30 = distinct !{!30, !44, !50}
!31 = distinct !{!31, !44, !50}
!32 = distinct !{!32, !44}
!33 = distinct !{!33, !44, !50}
!34 = distinct !{!34, !44, !50, !51}
!35 = distinct !{!35, !44, !50, !51}
!36 = distinct !{!36, !53}
!37 = distinct !{!37, !44, !50}
!38 = distinct !{!38, !44}
!39 = distinct !{!39, !53}
!40 = distinct !{!40, !44}
!41 = !{!5, !5, i64 0}
!42 = !{!"double", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!11}
!46 = !{!12}
!47 = !{!13}
!48 = !{!14}
!49 = !{!12, !11, !13}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"branch_weights", i32 4, i32 12}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!19}
!55 = !{!20}
!56 = !{!23}
!57 = !{!24}
!58 = !{!25}
!59 = !{!26}
!60 = !{!24, !23, !25}
end_hunk_1
