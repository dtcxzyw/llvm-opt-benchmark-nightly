Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tjunittest?download=true
inline.NumInlined: 62
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@doTest:bb.a
  %i.r = xor i1 %.b79, true
  %i.s = zext i1 %i.r to i32
  %i.t = tail call i32 @tj3Set(ptr noundef nonnull %i.l, i32 noundef 2, i32 noundef %i.s) #21
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.l) #21
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.v) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.k:                                             ; preds = %bb.i
  %.b = load i1, ptr @lossless, align 4
  br i1 %.b, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.x = tail call i32 @tj3Set(ptr noundef nonnull %i.l, i32 noundef 15, i32 noundef 1) #21
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.l) #21
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.z) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.n:                                             ; preds = %bb.l
  %i.ab = load i32, ptr @psv, align 4, !tbaa !4   ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr @psv, align 4, !tbaa !4
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = srem i32 %i.ad, 7
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = tail call i32 @tj3Set(ptr noundef nonnull %i.l, i32 noundef 16, i32 noundef %i.af) #21
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.l) #21
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.ai) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.p:                                             ; preds = %bb.k
  %i.ak = tail call i32 @tj3Set(ptr noundef nonnull %i.l, i32 noundef 3, i32 noundef 100) #21
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.l) #21
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.am) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.r:                                             ; preds = %bb.p
  %i.ao = and i32 %spec.store.select, 6
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %bb.s, label %switch.early.test

switch.early.test:                                ; preds = %bb.r
  switch i32 %spec.store.select, label %bb.u [
    i32 6, label %bb.s
    i32 2, label %bb.s
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.r
  %i.aq = tail call i32 @tj3Set(ptr noundef nonnull %i.n, i32 noundef 9, i32 noundef 1) #21
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.n) #21
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.as) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.u:                                             ; preds = %switch.early.test, %bb.s, %bb.n
  %i.au = tail call i32 @tj3Set(ptr noundef nonnull %i.l, i32 noundef 4, i32 noundef %spec.store.select) #21
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.v, label %.preheader90

.preheader90:                                     ; preds = %bb.u
  %i.aw = mul nuw nsw i32 %1, %0
  %wide.trip.count234.i.i = zext nneg i32 %0 to i64 ; 26 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.ax = add nsw i64 %wide.trip.count234.i.i, -1 ; 6 uses
  %xtraiter = and i64 %wide.trip.count234.i.i, 1
  %i.ay = icmp eq i64 %i.ax, 0
  %unroll_iter = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod224 = trunc i32 %0 to i1
  %xtraiter225 = and i64 %wide.trip.count234.i.i, 1
  %i.az = icmp eq i64 %i.ax, 0
  %unroll_iter228 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %lcmp.mod227 = trunc i32 %0 to i1
  %xtraiter230 = and i64 %wide.trip.count234.i.i, 1
  %i.ba = icmp eq i64 %i.ax, 0
  %unroll_iter233 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  %lcmp.mod232 = trunc i32 %0 to i1
  %xtraiter235 = and i64 %wide.trip.count234.i.i, 1
  %i.bb = icmp eq i64 %i.ax, 0
  %unroll_iter238 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  %lcmp.mod237 = trunc i32 %0 to i1
  %i.bc = and i64 %wide.trip.count234.i.i, 12
  %n.vec152 = and i64 %wide.trip.count234.i.i, 48 ; 5 uses
  %i.bd = icmp eq i64 %n.vec152, 32
  %cmp.n165 = icmp eq i64 %n.vec152, %wide.trip.count234.i.i
  %min.epilog.iters.check170 = icmp eq i64 %i.bc, 0
  %n.vec172 = and i64 %wide.trip.count234.i.i, 60 ; 3 uses
  %i.be = trunc nuw nsw i64 %n.vec152 to i32
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction181 = or disjoint <4 x i32> %broadcast.splat180, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n188 = icmp eq i64 %n.vec172, %wide.trip.count234.i.i
  %i.bf = and i64 %wide.trip.count234.i.i, 12
  %n.vec = and i64 %wide.trip.count234.i.i, 48    ; 5 uses
  %i.bg = icmp eq i64 %n.vec, 32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count234.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  %n.vec136 = and i64 %wide.trip.count234.i.i, 60 ; 3 uses
  %i.bh = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert143 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat144 = shufflevector <4 x i32> %broadcast.splatinsert143, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat144, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n149 = icmp eq i64 %n.vec136, %wide.trip.count234.i.i
  %xtraiter240 = and i64 %wide.trip.count234.i.i, 1
  %i.bi = icmp eq i64 %i.ax, 0
  %unroll_iter243 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod242 = trunc i32 %0 to i1
  %xtraiter245 = and i64 %wide.trip.count234.i.i, 1
  %i.bj = icmp eq i64 %i.ax, 0
  %unroll_iter248 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  %lcmp.mod247 = trunc i32 %0 to i1
  br label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.bk = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.l) #21
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.bk) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

.preheader:                                       ; preds = %.preheader90, %bb.bv
  %indvars.iv = phi i64 [ 0, %.preheader90 ], [ %indvars.iv.next, %bb.bv ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %bb.bu
  %i.bn = phi i1 [ true, %.preheader ], [ false, %bb.bu ]
  %.091 = phi i32 [ 0, %.preheader ], [ 1, %bb.bu ] ; 2 uses
  %i.bo = call i32 @tj3Set(ptr noundef nonnull %i.l, i32 noundef 1, i32 noundef %.091) #21
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.l) #21
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.bq) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.y:                                             ; preds = %bb.w
  %i.bs = call i32 @tj3Set(ptr noundef nonnull %i.n, i32 noundef 1, i32 noundef %.091) #21
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bu = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.n) #21
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.bu) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.bx

bb.aa:                                            ; preds = %bb.y
  %i.bw = load i32, ptr %i.bm, align 4, !tbaa !4  ; 9 uses
  %.b78 = load i1, ptr @alloc, align 4
  br i1 %.b78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %.068, ptr %i.c, align 8, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bx = sext i32 %i.bw to i64                   ; 5 uses
  %i.by = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8  ; 5 uses
  %i.ca = call i32 @tj3Get(ptr noundef nonnull %i.l, i32 noundef 1) #21 ; 2 uses
  %i.cb = call i32 @tj3Get(ptr noundef nonnull %i.l, i32 noundef 4) #21 ; 6 uses
  %i.cc = call i32 @tj3Get(ptr noundef nonnull %i.l, i32 noundef 16) #21 ; 2 uses
  %i.cd = call i32 @tj3Get(ptr noundef nonnull %i.l, i32 noundef 3) #21 ; 3 uses
  %.not.i = icmp eq i32 %i.ca, 0                  ; 7 uses
  %i.ce = select i1 %.not.i, ptr @.str.105, ptr @.str.104 ; 4 uses
  %i.cf = select i1 %.not.i, ptr @.str.107, ptr @.str.106 ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.bx
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 4 uses
  %i.ci = mul nsw i32 %i.aw, %i.ch                ; 8 uses
  %i.cj = load i32, ptr @sampleSize, align 4, !tbaa !4
  %i.ck = mul nsw i32 %i.ci, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = call noalias ptr @malloc(i64 noundef %i.cl) #22 ; 36 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.108) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %compTest.exit

bb.ae:                                            ; preds = %bb.ac
  switch i32 %i.bw, label %bb.ag [
    i32 6, label %bb.af
    i32 11, label %.preheader150.i.i
  ]

.preheader150.i.i:                                ; preds = %bb.ae
  %i.cp = icmp sgt i32 %i.ci, 0
  %.pre.i.i = load i32, ptr @precision, align 4
  %.fr204.i.i = freeze i32 %.pre.i.i              ; 3 uses
  %i.cq = icmp slt i32 %.fr204.i.i, 9             ; 2 uses
  br i1 %i.cp, label %.lr.ph.i.i, label %.preheader148.i.i

.lr.ph.i.i:                                       ; preds = %.preheader150.i.i
  %i.cr = load i32, ptr @maxSample, align 4, !tbaa !4 ; 2 uses
  %i.cs = trunc i32 %i.cr to i16                  ; 3 uses
  br i1 %i.cq, label %.preheader148.thread.i.i, label %iter.check202

iter.check202:                                    ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ci to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ci, 4
  br i1 %min.iters.check, label %setVal.exit135.i.i.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %iter.check202
  %min.iters.check191 = icmp ult i32 %i.ci, 16
  br i1 %min.iters.check191, label %vec.epilog.ph206, label %vector.ph192

vector.ph192:                                     ; preds = %vector.main.loop.iter.check190
  %i.ct = and i64 %wide.trip.count.i.i, 12
  %n.vec193 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert194 = insertelement <8 x i16> poison, i16 %i.cs, i64 0
  %broadcast.splat195 = shufflevector <8 x i16> %broadcast.splatinsert194, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body196 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index197 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <8 x i16> %broadcast.splat195, ptr %i.cu, align 2, !tbaa !18
  store <8 x i16> %broadcast.splat195, ptr %i.cv, align 2, !tbaa !18
  %index.next198 = add nuw i64 %index197, 16      ; 2 uses
  %i.cw = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.cw, label %middle.block199, label %vector.body196, !llvm.loop !25

middle.block199:                                  ; preds = %vector.body196
  %cmp.n200 = icmp eq i64 %n.vec193, %wide.trip.count.i.i
  br i1 %cmp.n200, label %.preheader147.preheader.i.i, label %vec.epilog.iter.check204

vec.epilog.iter.check204:                         ; preds = %middle.block199
  %min.epilog.iters.check205 = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check205, label %setVal.exit135.i.i.preheader, label %vec.epilog.ph206, !prof !28

vec.epilog.ph206:                                 ; preds = %vector.main.loop.iter.check190, %vec.epilog.iter.check204
  %vec.epilog.resume.val201 = phi i64 [ %n.vec193, %vec.epilog.iter.check204 ], [ 0, %vector.main.loop.iter.check190 ]
  %n.vec207 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert208 = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %broadcast.splat209 = shufflevector <4 x i16> %broadcast.splatinsert208, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body210

vec.epilog.vector.body210:                        ; preds = %vec.epilog.vector.body210, %vec.epilog.ph206
  %index211 = phi i64 [ %vec.epilog.resume.val201, %vec.epilog.ph206 ], [ %index.next212, %vec.epilog.vector.body210 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index211
  store <4 x i16> %broadcast.splat209, ptr %i.cx, align 2, !tbaa !18
  %index.next212 = add nuw i64 %index211, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.cy, label %vec.epilog.middle.block213, label %vec.epilog.vector.body210, !llvm.loop !29

vec.epilog.middle.block213:                       ; preds = %vec.epilog.vector.body210
  %cmp.n214 = icmp eq i64 %n.vec207, %wide.trip.count.i.i
  br i1 %cmp.n214, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i.preheader

setVal.exit135.i.i.preheader:                     ; preds = %iter.check202, %vec.epilog.iter.check204, %vec.epilog.middle.block213
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check202 ], [ %n.vec193, %vec.epilog.iter.check204 ], [ %n.vec207, %vec.epilog.middle.block213 ]
  br label %setVal.exit135.i.i

.preheader148.thread.i.i:                         ; preds = %.lr.ph.i.i
  %i.cz = trunc i32 %i.cr to i8
  %i.da = zext nneg i32 %i.ci to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cm, i8 %i.cz, i64 %i.da, i1 false), !tbaa !17
  br label %.preheader147.us.preheader.i.i

bb.af:                                            ; preds = %bb.ae
  %6 = load i32, ptr @sampleSize, align 4, !tbaa !4
  %7 = mul nsw i32 %6, %i.ci
  %8 = sext i32 %7 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cm, i8 0, i64 %8, i1 false)
  %i.db = load i32, ptr @redToY, align 4          ; 2 uses
  %i.dc = load i32, ptr @yellowToY, align 4       ; 2 uses
  %i.dd = load i32, ptr @precision, align 4
  %.fr.i.i = freeze i32 %i.dd                     ; 3 uses
  %i.de = icmp slt i32 %.fr.i.i, 9
  %i.df = load i32, ptr @maxSample, align 4       ; 2 uses
  br i1 %i.de, label %.preheader145.us.preheader.i.i, label %.preheader145.preheader.i.i

.preheader145.us.preheader.i.i:                   ; preds = %bb.af
  %i.dg = trunc i32 %i.df to i8
  br label %iter.check

iter.check:                                       ; preds = %.split171.us.us.i.i, %.preheader145.us.preheader.i.i
  %.0113178.us.i.i = phi i32 [ %i.ek, %.split171.us.us.i.i ], [ 0, %.preheader145.us.preheader.i.i ] ; 5 uses
  %i.dh = lshr i32 %.0113178.us.i.i, 3            ; 3 uses
  %i.di = icmp samesign ult i32 %.0113178.us.i.i, 16 ; 2 uses
  %i.dj = select i1 %i.di, i32 %i.db, i32 %i.dc
  %i.dk = trunc i32 %i.dj to i8                   ; 3 uses
  %i.dl = select i1 %i.di, i8 %i.dg, i8 0         ; 3 uses
  %i.dm = xor i32 %.0113178.us.i.i, -1
  %i.dn = add nsw i32 %1, %i.dm
  %.pn133.us.i.i = select i1 %.not.i, i32 %.0113178.us.i.i, i32 %i.dn
  %.pn132.us.i.i = mul nsw i32 %.pn133.us.i.i, %0
  %i.do = sext i32 %.pn132.us.i.i to i64
  %invariant.gep334.i.i = getelementptr i8, ptr %i.cm, i64 %i.do ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert132 = insertelement <16 x i8> poison, i8 %i.dk, i64 0
  %broadcast.splat133 = shufflevector <16 x i8> %broadcast.splatinsert132, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert134 = insertelement <16 x i8> poison, i8 %i.dl, i64 0
  %broadcast.splat135 = shufflevector <16 x i8> %broadcast.splatinsert134, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dp = add nuw nsw <16 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dq = and <16 x i32> %i.dp, splat (i32 1)
  %i.dr = icmp eq <16 x i32> %i.dq, zeroinitializer
  %i.ds = select <16 x i1> %i.dr, <16 x i8> %broadcast.splat135, <16 x i8> %broadcast.splat133
  store <16 x i8> %i.ds, ptr %invariant.gep334.i.i, align 1, !tbaa !17
  %i.dt = add nuw nsw <16 x i32> %broadcast.splat, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.du = and <16 x i32> %i.dt, splat (i32 1)
  %i.dv = icmp eq <16 x i32> %i.du, zeroinitializer
  %i.dw = select <16 x i1> %i.dv, <16 x i8> %broadcast.splat135, <16 x i8> %broadcast.splat133
  %i.dx = getelementptr i8, ptr %invariant.gep334.i.i, i64 16
  store <16 x i8> %i.dw, ptr %i.dx, align 1, !tbaa !17
  br i1 %i.bg, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %iter.check
  %i.dy = add nuw nsw <16 x i32> %broadcast.splat, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.dz = and <16 x i32> %i.dy, splat (i32 1)
  %i.ea = icmp eq <16 x i32> %i.dz, zeroinitializer
  %i.eb = select <16 x i1> %i.ea, <16 x i8> %broadcast.splat135, <16 x i8> %broadcast.splat133
  %i.ec = getelementptr i8, ptr %invariant.gep334.i.i, i64 32
  store <16 x i8> %i.eb, ptr %i.ec, align 1, !tbaa !17
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %iter.check
  br i1 %cmp.n, label %.split171.us.us.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader145.split.us.split.us.us.i.i.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <4 x i8> poison, i8 %i.dk, i64 0
  %broadcast.splat140 = shufflevector <4 x i8> %broadcast.splatinsert139, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x i8> poison, i8 %i.dl, i64 0
  %broadcast.splat142 = shufflevector <4 x i8> %broadcast.splatinsert141, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind146 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next148, %vec.epilog.vector.body ] ; 2 uses
  %i.ed = lshr <4 x i32> %vec.ind146, splat (i32 3)
  %i.ee = add nuw nsw <4 x i32> %i.ed, %broadcast.splat138
  %i.ef = and <4 x i32> %i.ee, splat (i32 1)
  %i.eg = icmp eq <4 x i32> %i.ef, zeroinitializer
  %i.eh = select <4 x i1> %i.eg, <4 x i8> %broadcast.splat142, <4 x i8> %broadcast.splat140
  %i.ei = getelementptr i8, ptr %invariant.gep334.i.i, i64 %index145
  store <4 x i8> %i.eh, ptr %i.ei, align 1, !tbaa !17
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %vec.ind.next148 = add <4 x i32> %vec.ind146, splat (i32 4)
  %i.ej = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.ej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n149, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i.preheader

.preheader145.split.us.split.us.us.i.i.preheader: ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec136, %vec.epilog.middle.block ]
  br label %.preheader145.split.us.split.us.us.i.i

.split171.us.us.i.i:                              ; preds = %.preheader145.split.us.split.us.us.i.i, %vec.epilog.middle.block, %middle.block
  %i.ek = add nuw nsw i32 %.0113178.us.i.i, 1     ; 2 uses
  %exitcond288.not.i.i = icmp eq i32 %i.ek, %1
  br i1 %exitcond288.not.i.i, label %initBuf.exit.i, label %iter.check, !llvm.loop !31

.preheader145.split.us.split.us.us.i.i:           ; preds = %.preheader145.split.us.split.us.us.i.i.preheader, %.preheader145.split.us.split.us.us.i.i
  %indvars.iv282.i.i = phi i64 [ %indvars.iv.next283.i.i, %.preheader145.split.us.split.us.us.i.i ], [ %indvars.iv282.i.i.ph, %.preheader145.split.us.split.us.us.i.i.preheader ] ; 3 uses
  %i.el = trunc nuw nsw i64 %indvars.iv282.i.i to i32
  %i.em = lshr i32 %i.el, 3
  %i.en = add nuw nsw i32 %i.em, %i.dh
  %i.eo = and i32 %i.en, 1
  %i.ep = icmp eq i32 %i.eo, 0
  %spec.select.i.i = select i1 %i.ep, i8 %i.dl, i8 %i.dk
  %gep335.i.i = getelementptr i8, ptr %invariant.gep334.i.i, i64 %indvars.iv282.i.i
  store i8 %spec.select.i.i, ptr %gep335.i.i, align 1, !tbaa !17
  %indvars.iv.next283.i.i = add nuw nsw i64 %indvars.iv282.i.i, 1 ; 2 uses
  %exitcond287.not.i.i = icmp eq i64 %indvars.iv.next283.i.i, %wide.trip.count234.i.i
  br i1 %exitcond287.not.i.i, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i, !llvm.loop !32

.preheader145.preheader.i.i:                      ; preds = %bb.af
  %i.eq = trunc i32 %i.df to i16
  br label %iter.check167

iter.check167:                                    ; preds = %.split171.split.i.i, %.preheader145.preheader.i.i
  %.0113178.i.i = phi i32 [ %i.gf, %.split171.split.i.i ], [ 0, %.preheader145.preheader.i.i ] ; 5 uses
  %i.er = xor i32 %.0113178.i.i, -1
  %i.es = add nsw i32 %1, %i.er
  %.pn133.i.i = select i1 %.not.i, i32 %.0113178.i.i, i32 %i.es
  %.pn132.i.i = mul nsw i32 %.pn133.i.i, %0
  %i.et = lshr i32 %.0113178.i.i, 3               ; 3 uses
  %i.eu = icmp samesign ult i32 %.0113178.i.i, 16 ; 2 uses
  %i.ev = select i1 %i.eu, i32 %i.db, i32 %i.dc
  %i.ew = trunc i32 %i.ev to i16                  ; 3 uses
  %i.ex = select i1 %i.eu, i16 %i.eq, i16 0       ; 3 uses
  %i.ey = sext i32 %.pn132.i.i to i64
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.cm, i64 %i.ey ; 8 uses
  %broadcast.splatinsert153 = insertelement <8 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert155 = insertelement <8 x i16> poison, i16 %i.ew, i64 0
  %broadcast.splat156 = shufflevector <8 x i16> %broadcast.splatinsert155, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert157 = insertelement <8 x i16> poison, i16 %i.ex, i64 0
  %broadcast.splat158 = shufflevector <8 x i16> %broadcast.splatinsert157, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.ez = and <8 x i32> %broadcast.splat154, splat (i32 1)
  %i.fa = icmp eq <8 x i32> %i.ez, zeroinitializer
  %i.fb = and <8 x i32> %broadcast.splat154, splat (i32 1)
  %.not = icmp eq <8 x i32> %i.fb, zeroinitializer
  %i.fc = select <8 x i1> %i.fa, <8 x i16> %broadcast.splat158, <8 x i16> %broadcast.splat156
  %i.fd = select <8 x i1> %.not, <8 x i16> %broadcast.splat156, <8 x i16> %broadcast.splat158
  %i.fe = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store <8 x i16> %i.fc, ptr %invariant.gep.i.i, align 2, !tbaa !18
  store <8 x i16> %i.fd, ptr %i.fe, align 2, !tbaa !18
  %i.ff = and <8 x i32> %broadcast.splat154, splat (i32 1)
  %i.fg = icmp eq <8 x i32> %i.ff, zeroinitializer
  %i.fh = and <8 x i32> %broadcast.splat154, splat (i32 1)
  %.not.1 = icmp eq <8 x i32> %i.fh, zeroinitializer
  %i.fi = select <8 x i1> %i.fg, <8 x i16> %broadcast.splat158, <8 x i16> %broadcast.splat156
  %i.fj = select <8 x i1> %.not.1, <8 x i16> %broadcast.splat156, <8 x i16> %broadcast.splat158
  %i.fk = getelementptr i8, ptr %invariant.gep.i.i, i64 32
  %i.fl = getelementptr i8, ptr %invariant.gep.i.i, i64 48
  store <8 x i16> %i.fi, ptr %i.fk, align 2, !tbaa !18
  store <8 x i16> %i.fj, ptr %i.fl, align 2, !tbaa !18
  br i1 %i.bd, label %middle.block164, label %vector.body159.2

vector.body159.2:                                 ; preds = %iter.check167
  %i.fm = and <8 x i32> %broadcast.splat154, splat (i32 1)
  %i.fn = icmp eq <8 x i32> %i.fm, zeroinitializer
  %i.fo = and <8 x i32> %broadcast.splat154, splat (i32 1)
  %.not.2 = icmp eq <8 x i32> %i.fo, zeroinitializer
  %i.fp = select <8 x i1> %i.fn, <8 x i16> %broadcast.splat158, <8 x i16> %broadcast.splat156
  %i.fq = select <8 x i1> %.not.2, <8 x i16> %broadcast.splat156, <8 x i16> %broadcast.splat158
  %i.fr = getelementptr i8, ptr %invariant.gep.i.i, i64 64
  %i.fs = getelementptr i8, ptr %invariant.gep.i.i, i64 80
  store <8 x i16> %i.fp, ptr %i.fr, align 2, !tbaa !18
  store <8 x i16> %i.fq, ptr %i.fs, align 2, !tbaa !18
  br label %middle.block164

middle.block164:                                  ; preds = %vector.body159.2, %iter.check167
  br i1 %cmp.n165, label %.split171.split.i.i, label %vec.epilog.iter.check169

vec.epilog.iter.check169:                         ; preds = %middle.block164
  br i1 %min.epilog.iters.check170, label %setVal.exit.i.i.preheader, label %vec.epilog.ph171, !prof !28

vec.epilog.ph171:                                 ; preds = %vec.epilog.iter.check169
  %broadcast.splatinsert173 = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat174 = shufflevector <4 x i32> %broadcast.splatinsert173, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert175 = insertelement <4 x i16> poison, i16 %i.ew, i64 0
  %broadcast.splat176 = shufflevector <4 x i16> %broadcast.splatinsert175, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <4 x i16> poison, i16 %i.ex, i64 0
  %broadcast.splat178 = shufflevector <4 x i16> %broadcast.splatinsert177, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph171
  %index183 = phi i64 [ %n.vec152, %vec.epilog.ph171 ], [ %index.next185, %vec.epilog.vector.body182 ] ; 2 uses
  %vec.ind184 = phi <4 x i32> [ %induction181, %vec.epilog.ph171 ], [ %vec.ind.next186, %vec.epilog.vector.body182 ] ; 2 uses
  %i.ft = lshr <4 x i32> %vec.ind184, splat (i32 3)
  %i.fu = add nuw nsw <4 x i32> %i.ft, %broadcast.splat174
  %i.fv = and <4 x i32> %i.fu, splat (i32 1)
  %i.fw = icmp eq <4 x i32> %i.fv, zeroinitializer
  %i.fx = select <4 x i1> %i.fw, <4 x i16> %broadcast.splat178, <4 x i16> %broadcast.splat176
  %i.fy = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %index183
  store <4 x i16> %i.fx, ptr %i.fy, align 2, !tbaa !18
  %index.next185 = add nuw i64 %index183, 4       ; 2 uses
  %vec.ind.next186 = add <4 x i32> %vec.ind184, splat (i32 4)
  %i.fz = icmp eq i64 %index.next185, %n.vec172
  br i1 %i.fz, label %vec.epilog.middle.block187, label %vec.epilog.vector.body182, !llvm.loop !33

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body182
  br i1 %cmp.n188, label %.split171.split.i.i, label %setVal.exit.i.i.preheader

setVal.exit.i.i.preheader:                        ; preds = %vec.epilog.iter.check169, %vec.epilog.middle.block187
end_hunk_0
begin_hunk_1_@doTest:bb.a

.preheader147.split.us.us.split.us.i.i.epil.preheader: ; preds = %.split.us.us.i.i.loopexit.unr-lcssa, %.preheader147.split.us.us.split.us.preheader.i.i
  %indvars.iv255.i.i.epil.init = phi i64 [ 0, %.preheader147.split.us.us.split.us.preheader.i.i ], [ %indvars.iv.next256.i.i.1, %.split.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.ia = add nsw i64 %indvars.iv255.i.i.epil.init, %i.gm
  %i.ib = trunc nuw nsw i64 %indvars.iv255.i.i.epil.init to i32
  %i.ic = lshr i32 %i.ib, 3
  %i.id = add nuw nsw i32 %i.ic, %i.gk
  %i.ie = and i32 %i.id, 1
  %i.if = icmp eq i32 %i.ie, 0
  %i.ig = mul nsw i64 %i.ia, %i.gh
  %i.ih = getelementptr i8, ptr %i.cm, i64 %i.ig
  %..i.epil = select i1 %i.if, i64 3, i64 2
  %i.ii = getelementptr i8, ptr %i.ih, i64 %..i.epil
  store i8 0, ptr %i.ii, align 1, !tbaa !17
  br label %.split.us.us.i.i

.split.us.us.i.i.loopexit218.unr-lcssa:           ; preds = %setVal.exit136.us.us.us167.i.i.1
  br i1 %lcmp.mod231.not, label %.split.us.us.i.i, label %.preheader147.split.us.us.split.split.us.i.i.epil.preheader

.preheader147.split.us.us.split.split.us.i.i.epil.preheader: ; preds = %.split.us.us.i.i.loopexit218.unr-lcssa, %.preheader147.split.us.us.split.split.us.preheader.i.i
  %indvars.iv249.i.i.epil.init = phi i64 [ 0, %.preheader147.split.us.us.split.split.us.preheader.i.i ], [ %indvars.iv.next250.i.i.1, %.split.us.us.i.i.loopexit218.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod232)
  %i.ij = trunc nuw nsw i64 %indvars.iv249.i.i.epil.init to i32
  %i.ik = lshr i32 %i.ij, 3
  %i.il = add nuw nsw i32 %i.ik, %i.gk
  %i.im = and i32 %i.il, 1
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %.split.us.us.i.i, label %setVal.exit137.us.us.us166.i.i.epil

setVal.exit137.us.us.us166.i.i.epil:              ; preds = %.preheader147.split.us.us.split.split.us.i.i.epil.preheader
  %i.io = add nuw nsw i64 %indvars.iv249.i.i.epil.init, %i.hf
  %i.ip = mul nsw i64 %i.io, %i.gh
  %i.iq = getelementptr i8, ptr %i.cm, i64 %i.ip  ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 2
  store i8 0, ptr %i.ir, align 1, !tbaa !17
  %i.is = getelementptr i8, ptr %i.iq, i64 1
  store i8 0, ptr %i.is, align 1, !tbaa !17
  br label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %.split.us.us.i.i.loopexit218.unr-lcssa, %setVal.exit137.us.us.us166.i.i.epil, %.preheader147.split.us.us.split.split.us.i.i.epil.preheader, %.preheader147.split.us.us.split.us.i.i.epil.preheader, %.split.us.us.i.i.loopexit.unr-lcssa
  %i.it = add nuw nsw i32 %.1114162.us.i.i, 1     ; 2 uses
  %exitcond261.not.i.i = icmp eq i32 %i.it, %1
  br i1 %exitcond261.not.i.i, label %initBuf.exit.i, label %.preheader147.us.i.i, !llvm.loop !36

setVal.exit135.i.i:                               ; preds = %setVal.exit135.i.i.preheader, %setVal.exit135.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %setVal.exit135.i.i ], [ %indvars.iv.i.i.ph, %setVal.exit135.i.i.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.i.i
  store i16 %i.cs, ptr %i.iu, align 2, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i, !llvm.loop !37

.preheader147.i.i:                                ; preds = %.split.i.i, %.preheader147.preheader.i.i
  %.1114162.i.i = phi i32 [ %i.lg, %.split.i.i ], [ 0, %.preheader147.preheader.i.i ] ; 5 uses
  %i.iv = xor i32 %.1114162.i.i, -1
  %i.iw = add nsw i32 %1, %i.iv
  %.pn130.i.i = select i1 %.not.i, i32 %.1114162.i.i, i32 %i.iw
  %.pn129.i.i = mul nsw i32 %.pn130.i.i, %0       ; 2 uses
  %i.ix = lshr i32 %.1114162.i.i, 3               ; 6 uses
  %i.iy = icmp samesign ugt i32 %.1114162.i.i, 15
  br i1 %i.iy, label %.preheader147.split.split.us.preheader.i.i, label %.preheader147.split.split.split.us.preheader.i.i

.preheader147.split.split.us.preheader.i.i:       ; preds = %.preheader147.i.i
  %i.iz = sext i32 %.pn129.i.i to i64             ; 3 uses
  br i1 %i.az, label %.preheader147.split.split.us.i.i.epil.preheader, label %.preheader147.split.split.us.i.i

.preheader147.split.split.us.i.i:                 ; preds = %.preheader147.split.split.us.preheader.i.i, %.preheader147.split.split.us.i.i
  %indvars.iv236.i.i = phi i64 [ %indvars.iv.next237.i.i.1, %.preheader147.split.split.us.i.i ], [ 0, %.preheader147.split.split.us.preheader.i.i ] ; 5 uses
  %niter229 = phi i64 [ %niter229.next.1, %.preheader147.split.split.us.i.i ], [ 0, %.preheader147.split.split.us.preheader.i.i ]
  %i.ja = add nsw i64 %indvars.iv236.i.i, %i.iz
  %i.jb = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  %i.jc = lshr i32 %i.jb, 3
  %i.jd = add nuw nsw i32 %i.jc, %i.ix
  %i.je = and i32 %i.jd, 1
  %i.jf = icmp eq i32 %i.je, 0
  %i.jg = mul nsw i64 %i.ja, %i.gg
  %i.jh = getelementptr [2 x i8], ptr %i.cm, i64 %i.jg
  %.160.i = select i1 %i.jf, i64 6, i64 4
  %i.ji = getelementptr i8, ptr %i.jh, i64 %.160.i
  store i16 0, ptr %i.ji, align 2, !tbaa !18
  %indvars.iv.next237.i.i = or disjoint i64 %indvars.iv236.i.i, 1
  %i.jj = add nsw i64 %indvars.iv.next237.i.i, %i.iz
  %i.jk = trunc i64 %indvars.iv236.i.i to i32
  %i.jl = lshr i32 %i.jk, 3
  %i.jm = add nuw nsw i32 %i.jl, %i.ix
  %i.jn = and i32 %i.jm, 1
  %i.jo = icmp eq i32 %i.jn, 0
  %i.jp = mul nsw i64 %i.jj, %i.gg
  %i.jq = getelementptr [2 x i8], ptr %i.cm, i64 %i.jp
  %.160.i.1 = select i1 %i.jo, i64 6, i64 4
  %i.jr = getelementptr i8, ptr %i.jq, i64 %.160.i.1
  store i16 0, ptr %i.jr, align 2, !tbaa !18
  %indvars.iv.next237.i.i.1 = add nuw nsw i64 %indvars.iv236.i.i, 2 ; 2 uses
  %niter229.next.1 = add nuw nsw i64 %niter229, 2 ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.split.i.i.loopexit.unr-lcssa, label %.preheader147.split.split.us.i.i, !llvm.loop !35

.preheader147.split.split.split.us.preheader.i.i: ; preds = %.preheader147.i.i
  %i.js = zext nneg i32 %.pn129.i.i to i64        ; 3 uses
  br i1 %i.ay, label %.preheader147.split.split.split.us.i.i.epil.preheader, label %.preheader147.split.split.split.us.i.i

.preheader147.split.split.split.us.i.i:           ; preds = %.preheader147.split.split.split.us.preheader.i.i, %setVal.exit136.us160.i.i.1
  %indvars.iv230.i.i = phi i64 [ %indvars.iv.next231.i.i.1, %setVal.exit136.us160.i.i.1 ], [ 0, %.preheader147.split.split.split.us.preheader.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %setVal.exit136.us160.i.i.1 ], [ 0, %.preheader147.split.split.split.us.preheader.i.i ]
  %i.jt = trunc nuw nsw i64 %indvars.iv230.i.i to i32
  %i.ju = lshr i32 %i.jt, 3
  %i.jv = add nuw nsw i32 %i.ju, %i.ix
  %i.jw = and i32 %i.jv, 1
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %setVal.exit136.us160.i.i, label %setVal.exit137.thread.us159.i.i

setVal.exit137.thread.us159.i.i:                  ; preds = %.preheader147.split.split.split.us.i.i
  %i.jy = add nuw nsw i64 %indvars.iv230.i.i, %i.js
  %i.jz = mul nsw i64 %i.jy, %i.gg
  %i.ka = getelementptr [2 x i8], ptr %i.cm, i64 %i.jz ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 4
  store i16 0, ptr %i.kb, align 2, !tbaa !18
  %i.kc = getelementptr i8, ptr %i.ka, i64 2
  store i16 0, ptr %i.kc, align 2, !tbaa !18
  br label %setVal.exit136.us160.i.i

setVal.exit136.us160.i.i:                         ; preds = %setVal.exit137.thread.us159.i.i, %.preheader147.split.split.split.us.i.i
  %i.kd = trunc i64 %indvars.iv230.i.i to i32
  %i.ke = lshr i32 %i.kd, 3
  %i.kf = add nuw nsw i32 %i.ke, %i.ix
  %i.kg = and i32 %i.kf, 1
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %setVal.exit136.us160.i.i.1, label %setVal.exit137.thread.us159.i.i.1

setVal.exit137.thread.us159.i.i.1:                ; preds = %setVal.exit136.us160.i.i
  %indvars.iv.next231.i.i = or disjoint i64 %indvars.iv230.i.i, 1
  %i.ki = add nuw nsw i64 %indvars.iv.next231.i.i, %i.js
  %i.kj = mul nsw i64 %i.ki, %i.gg
  %i.kk = getelementptr [2 x i8], ptr %i.cm, i64 %i.kj ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  store i16 0, ptr %i.kl, align 2, !tbaa !18
  %i.km = getelementptr i8, ptr %i.kk, i64 2
  store i16 0, ptr %i.km, align 2, !tbaa !18
  br label %setVal.exit136.us160.i.i.1

setVal.exit136.us160.i.i.1:                       ; preds = %setVal.exit137.thread.us159.i.i.1, %setVal.exit136.us160.i.i
  %indvars.iv.next231.i.i.1 = add nuw nsw i64 %indvars.iv230.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.i.i.loopexit219.unr-lcssa, label %.preheader147.split.split.split.us.i.i, !llvm.loop !35

.split.i.i.loopexit.unr-lcssa:                    ; preds = %.preheader147.split.split.us.i.i
  br i1 %lcmp.mod226.not, label %.split.i.i, label %.preheader147.split.split.us.i.i.epil.preheader

.preheader147.split.split.us.i.i.epil.preheader:  ; preds = %.split.i.i.loopexit.unr-lcssa, %.preheader147.split.split.us.preheader.i.i
  %indvars.iv236.i.i.epil.init = phi i64 [ 0, %.preheader147.split.split.us.preheader.i.i ], [ %indvars.iv.next237.i.i.1, %.split.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.kn = add nsw i64 %indvars.iv236.i.i.epil.init, %i.iz
  %i.ko = trunc nuw nsw i64 %indvars.iv236.i.i.epil.init to i32
  %i.kp = lshr i32 %i.ko, 3
  %i.kq = add nuw nsw i32 %i.kp, %i.ix
  %i.kr = and i32 %i.kq, 1
  %i.ks = icmp eq i32 %i.kr, 0
  %i.kt = mul nsw i64 %i.kn, %i.gg
  %i.ku = getelementptr [2 x i8], ptr %i.cm, i64 %i.kt
  %.160.i.epil = select i1 %i.ks, i64 6, i64 4
  %i.kv = getelementptr i8, ptr %i.ku, i64 %.160.i.epil
  store i16 0, ptr %i.kv, align 2, !tbaa !18
  br label %.split.i.i

.split.i.i.loopexit219.unr-lcssa:                 ; preds = %setVal.exit136.us160.i.i.1
  br i1 %lcmp.mod.not, label %.split.i.i, label %.preheader147.split.split.split.us.i.i.epil.preheader

.preheader147.split.split.split.us.i.i.epil.preheader: ; preds = %.split.i.i.loopexit219.unr-lcssa, %.preheader147.split.split.split.us.preheader.i.i
  %indvars.iv230.i.i.epil.init = phi i64 [ 0, %.preheader147.split.split.split.us.preheader.i.i ], [ %indvars.iv.next231.i.i.1, %.split.i.i.loopexit219.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod224)
  %i.kw = trunc nuw nsw i64 %indvars.iv230.i.i.epil.init to i32
  %i.kx = lshr i32 %i.kw, 3
  %i.ky = add nuw nsw i32 %i.kx, %i.ix
  %i.kz = and i32 %i.ky, 1
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %.split.i.i, label %setVal.exit137.thread.us159.i.i.epil

setVal.exit137.thread.us159.i.i.epil:             ; preds = %.preheader147.split.split.split.us.i.i.epil.preheader
  %i.lb = add nuw nsw i64 %indvars.iv230.i.i.epil.init, %i.js
  %i.lc = mul nsw i64 %i.lb, %i.gg
  %i.ld = getelementptr [2 x i8], ptr %i.cm, i64 %i.lc ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  store i16 0, ptr %i.le, align 2, !tbaa !18
  %i.lf = getelementptr i8, ptr %i.ld, i64 2
  store i16 0, ptr %i.lf, align 2, !tbaa !18
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i.loopexit219.unr-lcssa, %setVal.exit137.thread.us159.i.i.epil, %.preheader147.split.split.split.us.i.i.epil.preheader, %.preheader147.split.split.us.i.i.epil.preheader, %.split.i.i.loopexit.unr-lcssa
  %i.lg = add nuw nsw i32 %.1114162.i.i, 1        ; 2 uses
  %exitcond242.not.i.i = icmp eq i32 %i.lg, %1
  br i1 %exitcond242.not.i.i, label %initBuf.exit.i, label %.preheader147.i.i, !llvm.loop !36

bb.ag:                                            ; preds = %bb.ae
  %i.lh = getelementptr inbounds [4 x i8], ptr @tjBlueOffset, i64 %i.bx
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !4
  %i.lj = getelementptr inbounds [4 x i8], ptr @tjGreenOffset, i64 %i.bx
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.ll = getelementptr inbounds [4 x i8], ptr @tjRedOffset, i64 %i.bx
  %9 = load i32, ptr %i.ll, align 4, !tbaa !4
  %i.lm = load i32, ptr @sampleSize, align 4, !tbaa !4
  %10 = mul nsw i32 %i.lm, %i.ci
  %11 = sext i32 %10 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cm, i8 0, i64 %11, i1 false)
  %i.ln = load i32, ptr @maxSample, align 4       ; 2 uses
  %i.lo = load i32, ptr @precision, align 4
  %.fr205.i.i = freeze i32 %i.lo                  ; 2 uses
  %i.lp = icmp slt i32 %.fr205.i.i, 9             ; 3 uses
  %i.lq = trunc i32 %i.ln to i16                  ; 10 uses
  %i.lr = trunc i32 %i.ln to i8                   ; 10 uses
  %i.ls = sext i32 %i.ch to i64                   ; 7 uses
  %i.lt = sext i32 %9 to i64                      ; 3 uses
  %i.lu = sext i32 %i.lk to i64                   ; 2 uses
  %i.lv = sext i32 %i.li to i64                   ; 2 uses
  %invariant.gep336.i.i = getelementptr [2 x i8], ptr %i.cm, i64 %i.lt ; 3 uses
  %invariant.gep338.i.i = getelementptr [2 x i8], ptr %i.cm, i64 %i.lu ; 4 uses
  %invariant.gep340.i.i = getelementptr i8, ptr %i.cm, i64 %i.lt ; 3 uses
  %invariant.gep342.i.i = getelementptr i8, ptr %i.cm, i64 %i.lu ; 4 uses
  %invariant.gep350.i.i = getelementptr [2 x i8], ptr %i.cm, i64 %i.lv
  %invariant.gep354.i.i = getelementptr i8, ptr %i.cm, i64 %i.lv
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.split191.us.i.i, %bb.ag
  %.2115203.i.i = phi i32 [ 0, %bb.ag ], [ %i.oe, %.split191.us.i.i ] ; 5 uses
  %i.lw = xor i32 %.2115203.i.i, -1
  %i.lx = add nsw i32 %1, %i.lw
  %.pn127.i.i = select i1 %.not.i, i32 %.2115203.i.i, i32 %i.lx
  %.pn.i.i = mul nsw i32 %.pn127.i.i, %0          ; 2 uses
  %i.ly = lshr i32 %.2115203.i.i, 3               ; 7 uses
  %i.lz = icmp samesign ult i32 %.2115203.i.i, 16
  br i1 %i.lz, label %.preheader.split.us.preheader.i.i, label %.preheader.split.i.i

.preheader.split.us.preheader.i.i:                ; preds = %.preheader.i.i
  %i.ma = zext nneg i32 %.pn.i.i to i64
  br label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %setVal.exit141.us.i.i, %.preheader.split.us.preheader.i.i
  %indvars.iv307.i.i = phi i64 [ 0, %.preheader.split.us.preheader.i.i ], [ %indvars.iv.next308.i.i, %setVal.exit141.us.i.i ] ; 3 uses
  %i.mb = add nuw nsw i64 %indvars.iv307.i.i, %i.ma
  %i.mc = trunc nuw nsw i64 %indvars.iv307.i.i to i32
  %i.md = lshr i32 %i.mc, 3
  %i.me = add nuw nsw i32 %i.md, %i.ly
  %i.mf = and i32 %i.me, 1
  %i.mg = icmp eq i32 %i.mf, 0
  %i.mh = mul nsw i64 %i.mb, %i.ls                ; 5 uses
  %i.mi = add nsw i64 %i.mh, %i.lt                ; 4 uses
  br i1 %i.mg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader.split.us.i.i
  br i1 %i.lp, label %setVal.exit142.us.i.i, label %setVal.exit142.thread.us.i.i

setVal.exit142.thread.us.i.i:                     ; preds = %bb.ah
  %i.mj = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.mi
  store i16 %i.lq, ptr %i.mj, align 2, !tbaa !18
  br label %setVal.exit141.us.i.i

setVal.exit142.us.i.i:                            ; preds = %bb.ah
  %i.mk = getelementptr inbounds i8, ptr %i.cm, i64 %i.mi
  store i8 %i.lr, ptr %i.mk, align 1, !tbaa !17
  br label %setVal.exit141.us.i.i

bb.ai:                                            ; preds = %.preheader.split.us.i.i
  br i1 %i.lp, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ml = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.mi
  store i16 %i.lq, ptr %i.ml, align 2, !tbaa !18
  %gep349.i.i = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.mh
  store i16 %i.lq, ptr %gep349.i.i, align 2, !tbaa !18
  %gep351.i.i = getelementptr [2 x i8], ptr %invariant.gep350.i.i, i64 %i.mh
  store i16 %i.lq, ptr %gep351.i.i, align 2, !tbaa !18
  br label %setVal.exit141.us.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.mm = getelementptr inbounds i8, ptr %i.cm, i64 %i.mi
  store i8 %i.lr, ptr %i.mm, align 1, !tbaa !17
  %gep353.i.i = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.mh
  store i8 %i.lr, ptr %gep353.i.i, align 1, !tbaa !17
  %gep355.i.i = getelementptr i8, ptr %invariant.gep354.i.i, i64 %i.mh
  store i8 %i.lr, ptr %gep355.i.i, align 1, !tbaa !17
  br label %setVal.exit141.us.i.i

setVal.exit141.us.i.i:                            ; preds = %bb.ak, %bb.aj, %setVal.exit142.us.i.i, %setVal.exit142.thread.us.i.i
  %indvars.iv.next308.i.i = add nuw nsw i64 %indvars.iv307.i.i, 1 ; 2 uses
  %exitcond312.not.i.i = icmp eq i64 %indvars.iv.next308.i.i, %wide.trip.count234.i.i
  br i1 %exitcond312.not.i.i, label %.split191.us.i.i, label %.preheader.split.us.i.i, !llvm.loop !38

.preheader.split.i.i:                             ; preds = %.preheader.i.i
  %i.mn = sext i32 %.pn.i.i to i64                ; 6 uses
  br i1 %i.lp, label %.preheader.split.split.us.i.i.preheader, label %.preheader.split.split.split.us.i.i.preheader

.preheader.split.split.split.us.i.i.preheader:    ; preds = %.preheader.split.i.i
  br i1 %i.bi, label %.preheader.split.split.split.us.i.i.epil.preheader, label %.preheader.split.split.split.us.i.i

.preheader.split.split.us.i.i.preheader:          ; preds = %.preheader.split.i.i
  br i1 %i.bj, label %.preheader.split.split.us.i.i.epil.preheader, label %.preheader.split.split.us.i.i

.preheader.split.split.us.i.i:                    ; preds = %.preheader.split.split.us.i.i.preheader, %setVal.exit141.us196.i.i.1
  %indvars.iv301.i.i = phi i64 [ %indvars.iv.next302.i.i.1, %setVal.exit141.us196.i.i.1 ], [ 0, %.preheader.split.split.us.i.i.preheader ] ; 5 uses
  %niter249 = phi i64 [ %niter249.next.1, %setVal.exit141.us196.i.i.1 ], [ 0, %.preheader.split.split.us.i.i.preheader ]
  %i.mo = trunc nuw nsw i64 %indvars.iv301.i.i to i32
  %i.mp = lshr i32 %i.mo, 3
  %i.mq = add nuw nsw i32 %i.mp, %i.ly
  %i.mr = and i32 %i.mq, 1
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %setVal.exit141.us196.i.i, label %setVal.exit142.us195.i.i

setVal.exit142.us195.i.i:                         ; preds = %.preheader.split.split.us.i.i
  %i.mt = add nsw i64 %indvars.iv301.i.i, %i.mn
  %i.mu = mul nsw i64 %i.mt, %i.ls                ; 2 uses
  %gep341.i.i = getelementptr i8, ptr %invariant.gep340.i.i, i64 %i.mu
  store i8 %i.lr, ptr %gep341.i.i, align 1, !tbaa !17
  %gep343.i.i = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.mu
  store i8 %i.lr, ptr %gep343.i.i, align 1, !tbaa !17
  br label %setVal.exit141.us196.i.i

setVal.exit141.us196.i.i:                         ; preds = %setVal.exit142.us195.i.i, %.preheader.split.split.us.i.i
  %i.mv = trunc i64 %indvars.iv301.i.i to i32
  %i.mw = lshr i32 %i.mv, 3
  %i.mx = add nuw nsw i32 %i.mw, %i.ly
  %i.my = and i32 %i.mx, 1
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %setVal.exit141.us196.i.i.1, label %setVal.exit142.us195.i.i.1

setVal.exit142.us195.i.i.1:                       ; preds = %setVal.exit141.us196.i.i
  %indvars.iv.next302.i.i = or disjoint i64 %indvars.iv301.i.i, 1
  %i.na = add nsw i64 %indvars.iv.next302.i.i, %i.mn
  %i.nb = mul nsw i64 %i.na, %i.ls                ; 2 uses
  %gep341.i.i.1 = getelementptr i8, ptr %invariant.gep340.i.i, i64 %i.nb
  store i8 %i.lr, ptr %gep341.i.i.1, align 1, !tbaa !17
  %gep343.i.i.1 = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.nb
  store i8 %i.lr, ptr %gep343.i.i.1, align 1, !tbaa !17
  br label %setVal.exit141.us196.i.i.1

setVal.exit141.us196.i.i.1:                       ; preds = %setVal.exit142.us195.i.i.1, %setVal.exit141.us196.i.i
  %indvars.iv.next302.i.i.1 = add nuw nsw i64 %indvars.iv301.i.i, 2 ; 2 uses
  %niter249.next.1 = add nuw nsw i64 %niter249, 2 ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %.split191.us.i.i.loopexit216.unr-lcssa, label %.preheader.split.split.us.i.i, !llvm.loop !38

.preheader.split.split.split.us.i.i:              ; preds = %.preheader.split.split.split.us.i.i.preheader, %setVal.exit141.us201.i.i.1
  %indvars.iv295.i.i = phi i64 [ %indvars.iv.next296.i.i.1, %setVal.exit141.us201.i.i.1 ], [ 0, %.preheader.split.split.split.us.i.i.preheader ] ; 5 uses
  %niter244 = phi i64 [ %niter244.next.1, %setVal.exit141.us201.i.i.1 ], [ 0, %.preheader.split.split.split.us.i.i.preheader ]
  %i.nc = trunc nuw nsw i64 %indvars.iv295.i.i to i32
  %i.nd = lshr i32 %i.nc, 3
  %i.ne = add nuw nsw i32 %i.nd, %i.ly
  %i.nf = and i32 %i.ne, 1
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %setVal.exit141.us201.i.i, label %setVal.exit142.thread.us200.i.i

setVal.exit142.thread.us200.i.i:                  ; preds = %.preheader.split.split.split.us.i.i
  %i.nh = add nsw i64 %indvars.iv295.i.i, %i.mn
  %i.ni = mul nsw i64 %i.nh, %i.ls                ; 2 uses
  %gep337.i.i = getelementptr [2 x i8], ptr %invariant.gep336.i.i, i64 %i.ni
  store i16 %i.lq, ptr %gep337.i.i, align 2, !tbaa !18
  %gep339.i.i = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.ni
  store i16 %i.lq, ptr %gep339.i.i, align 2, !tbaa !18
  br label %setVal.exit141.us201.i.i

setVal.exit141.us201.i.i:                         ; preds = %setVal.exit142.thread.us200.i.i, %.preheader.split.split.split.us.i.i
  %i.nj = trunc i64 %indvars.iv295.i.i to i32
  %i.nk = lshr i32 %i.nj, 3
  %i.nl = add nuw nsw i32 %i.nk, %i.ly
  %i.nm = and i32 %i.nl, 1
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %setVal.exit141.us201.i.i.1, label %setVal.exit142.thread.us200.i.i.1

setVal.exit142.thread.us200.i.i.1:                ; preds = %setVal.exit141.us201.i.i
  %indvars.iv.next296.i.i = or disjoint i64 %indvars.iv295.i.i, 1
  %i.no = add nsw i64 %indvars.iv.next296.i.i, %i.mn
  %i.np = mul nsw i64 %i.no, %i.ls                ; 2 uses
  %gep337.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep336.i.i, i64 %i.np
  store i16 %i.lq, ptr %gep337.i.i.1, align 2, !tbaa !18
  %gep339.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.np
  store i16 %i.lq, ptr %gep339.i.i.1, align 2, !tbaa !18
  br label %setVal.exit141.us201.i.i.1

setVal.exit141.us201.i.i.1:                       ; preds = %setVal.exit142.thread.us200.i.i.1, %setVal.exit141.us201.i.i
  %indvars.iv.next296.i.i.1 = add nuw nsw i64 %indvars.iv295.i.i, 2 ; 2 uses
  %niter244.next.1 = add nuw nsw i64 %niter244, 2 ; 2 uses
  %niter244.ncmp.1 = icmp eq i64 %niter244.next.1, %unroll_iter243
  br i1 %niter244.ncmp.1, label %.split191.us.i.i.loopexit217.unr-lcssa, label %.preheader.split.split.split.us.i.i, !llvm.loop !38

.split191.us.i.i.loopexit216.unr-lcssa:           ; preds = %setVal.exit141.us196.i.i.1
  br i1 %lcmp.mod246.not, label %.split191.us.i.i, label %.preheader.split.split.us.i.i.epil.preheader

.preheader.split.split.us.i.i.epil.preheader:     ; preds = %.split191.us.i.i.loopexit216.unr-lcssa, %.preheader.split.split.us.i.i.preheader
  %indvars.iv301.i.i.epil.init = phi i64 [ 0, %.preheader.split.split.us.i.i.preheader ], [ %indvars.iv.next302.i.i.1, %.split191.us.i.i.loopexit216.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.nq = trunc nuw nsw i64 %indvars.iv301.i.i.epil.init to i32
  %i.nr = lshr i32 %i.nq, 3
  %i.ns = add nuw nsw i32 %i.nr, %i.ly
  %i.nt = and i32 %i.ns, 1
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %.split191.us.i.i, label %setVal.exit142.us195.i.i.epil

setVal.exit142.us195.i.i.epil:                    ; preds = %.preheader.split.split.us.i.i.epil.preheader
  %i.nv = add nsw i64 %indvars.iv301.i.i.epil.init, %i.mn
  %i.nw = mul nsw i64 %i.nv, %i.ls                ; 2 uses
  %gep341.i.i.epil = getelementptr i8, ptr %invariant.gep340.i.i, i64 %i.nw
  store i8 %i.lr, ptr %gep341.i.i.epil, align 1, !tbaa !17
  %gep343.i.i.epil = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.nw
  store i8 %i.lr, ptr %gep343.i.i.epil, align 1, !tbaa !17
  br label %.split191.us.i.i

.split191.us.i.i.loopexit217.unr-lcssa:           ; preds = %setVal.exit141.us201.i.i.1
  br i1 %lcmp.mod241.not, label %.split191.us.i.i, label %.preheader.split.split.split.us.i.i.epil.preheader

.preheader.split.split.split.us.i.i.epil.preheader: ; preds = %.split191.us.i.i.loopexit217.unr-lcssa, %.preheader.split.split.split.us.i.i.preheader
  %indvars.iv295.i.i.epil.init = phi i64 [ 0, %.preheader.split.split.split.us.i.i.preheader ], [ %indvars.iv.next296.i.i.1, %.split191.us.i.i.loopexit217.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod242)
  %i.nx = trunc nuw nsw i64 %indvars.iv295.i.i.epil.init to i32
end_hunk_1
begin_hunk_2_@checkBufYUV:bb.a
._crit_edge332.us:                                ; preds = %bb.u
  %putchar185.us = tail call i32 @putchar(i32 10) ; 0 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next446, %wide.trip.count448
  br i1 %exitcond449.not, label %._crit_edge334, label %.preheader203.us, !llvm.loop !55

.preheader203:                                    ; preds = %.preheader203.lr.ph, %.preheader203
  %.2161333 = phi i32 [ %i.ex, %.preheader203 ], [ 0, %.preheader203.lr.ph ]
  %putchar185 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.ex = add nuw nsw i32 %.2161333, 1            ; 2 uses
  %exitcond439.not = icmp eq i32 %i.ex, %i.o
  br i1 %exitcond439.not, label %._crit_edge334, label %.preheader203, !llvm.loop !55

._crit_edge334:                                   ; preds = %.preheader203, %._crit_edge332.us, %.preheader204
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ey = icmp sgt i32 %i.q, 0
  br i1 %i.ey, label %.preheader202.lr.ph, label %._crit_edge338.thread491

._crit_edge338.thread491:                         ; preds = %._crit_edge334
  %putchar182492 = tail call i32 @putchar(i32 10) ; 0 uses
  br label %.loopexit

.preheader202.lr.ph:                              ; preds = %._crit_edge334
  %i.ez = icmp sgt i32 %i.p, 0
  %i.fa = mul nsw i32 %i.t, %i.o
  br i1 %i.ez, label %.preheader202.us.preheader, label %.preheader202

.preheader202.us.preheader:                       ; preds = %.preheader202.lr.ph
  %wide.trip.count454 = zext nneg i32 %i.p to i64
  br label %.preheader202.us

.preheader202.us:                                 ; preds = %.preheader202.us.preheader, %._crit_edge336.us
  %.3162337.us = phi i32 [ %i.fk, %._crit_edge336.us ], [ 0, %.preheader202.us.preheader ] ; 2 uses
  %i.fb = mul nsw i32 %.3162337.us, %i.v
  %i.fc = add i32 %i.fb, %i.fa
  br label %bb.v

bb.v:                                             ; preds = %.preheader202.us, %bb.v
  %indvars.iv451 = phi i64 [ 0, %.preheader202.us ], [ %indvars.iv.next452, %bb.v ] ; 2 uses
  %i.fd = trunc nuw nsw i64 %indvars.iv451 to i32
  %i.fe = add i32 %i.fc, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %0, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !17
  %i.fi = zext i8 %i.fh to i32
  %i.fj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.130, i32 noundef %i.fi) ; 0 uses
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count454
  br i1 %exitcond455.not, label %._crit_edge336.us, label %bb.v, !llvm.loop !56

._crit_edge336.us:                                ; preds = %bb.v
  %putchar184.us = tail call i32 @putchar(i32 10) ; 0 uses
  %i.fk = add nuw nsw i32 %.3162337.us, 1         ; 2 uses
  %exitcond456.not = icmp eq i32 %i.fk, %i.q
  br i1 %exitcond456.not, label %._crit_edge338, label %.preheader202.us, !llvm.loop !57

.preheader202:                                    ; preds = %.preheader202.lr.ph, %.preheader202
  %.3162337 = phi i32 [ %i.fl, %.preheader202 ], [ 0, %.preheader202.lr.ph ]
  %putchar184 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.fl = add nuw nsw i32 %.3162337, 1            ; 2 uses
  %exitcond450.not = icmp eq i32 %i.fl, %i.q
  br i1 %exitcond450.not, label %.preheader.lr.ph.thread, label %.preheader202, !llvm.loop !57

.preheader.lr.ph.thread:                          ; preds = %.preheader202
  %putchar182490 = tail call i32 @putchar(i32 10) ; 0 uses
  br label %.preheader

._crit_edge338:                                   ; preds = %._crit_edge336.us
  %putchar182 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.fm = mul nsw i32 %i.t, %i.o
  %wide.trip.count461 = zext nneg i32 %i.p to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge338, %._crit_edge340.us
  %.4163341.us = phi i32 [ %i.fv, %._crit_edge340.us ], [ 0, %._crit_edge338 ] ; 2 uses
  %reass.add.us = add nuw i32 %.4163341.us, %i.q
  %reass.mul.us = mul i32 %reass.add.us, %i.v
  %i.fn = add i32 %reass.mul.us, %i.fm
  br label %bb.w

bb.w:                                             ; preds = %.preheader.us, %bb.w
  %indvars.iv458 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next459, %bb.w ] ; 2 uses
  %i.fo = trunc nuw nsw i64 %indvars.iv458 to i32
  %i.fp = add i32 %i.fn, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %0, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !17
  %i.ft = zext i8 %i.fs to i32
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.130, i32 noundef %i.ft) ; 0 uses
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge340.us, label %bb.w, !llvm.loop !58

._crit_edge340.us:                                ; preds = %bb.w
  %putchar183.us = tail call i32 @putchar(i32 10) ; 0 uses
  %i.fv = add nuw nsw i32 %.4163341.us, 1         ; 2 uses
  %exitcond463.not = icmp eq i32 %i.fv, %i.q
  br i1 %exitcond463.not, label %.loopexit, label %.preheader.us, !llvm.loop !59

.preheader:                                       ; preds = %.preheader.lr.ph.thread, %.preheader
  %.4163341 = phi i32 [ %i.fw, %.preheader ], [ 0, %.preheader.lr.ph.thread ]
  %putchar183 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.fw = add nuw nsw i32 %.4163341, 1            ; 2 uses
  %exitcond457.not = icmp eq i32 %i.fw, %i.q
  br i1 %exitcond457.not, label %.loopexit, label %.preheader, !llvm.loop !59

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %._crit_edge340.us, %._crit_edge338.thread491, %._crit_edge271, %.preheader205.lr.ph, %bb.h
  %.6488 = phi i32 [ 0, %.preheader ], [ 0, %._crit_edge338.thread491 ], [ 0, %._crit_edge340.us ], [ 1, %._crit_edge271 ], [ 1, %bb.h ], [ 1, %.preheader205.lr.ph ], [ 1, %._crit_edge ]
  ret i32 %.6488
}

declare i32 @tj3CompressFromYUV8(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @tj3Compress8(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @tj3Compress12(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @tj3Compress16(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_decompTest(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 35, 49) %3, i32 noundef range(i32 35, 49) %4, i32 noundef %5, i32 noundef range(i32 0, 7) %6, i64 %7) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %7 to i32  ; 8 uses
  %.sroa.10.0.extract.shift = lshr i64 %7, 32     ; 3 uses
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i32 ; 7 uses
  %i.a = mul nsw i32 %3, %.sroa.0.0.extract.trunc
  %i.b = add i32 %.sroa.10.0.extract.trunc, -1    ; 2 uses
  %i.c = add i32 %i.b, %i.a
  %i.d = sdiv i32 %i.c, %.sroa.10.0.extract.trunc ; 14 uses
  %i.e = mul nsw i32 %4, %.sroa.0.0.extract.trunc
  %i.f = add i32 %i.b, %i.e
  %i.g = sdiv i32 %i.f, %.sroa.10.0.extract.trunc ; 14 uses
  %i.h = tail call i32 @tj3Get(ptr noundef nonnull %0, i32 noundef 1) #21 ; 5 uses
  %i.i = tail call i32 @tj3SetScalingFactor(ptr noundef nonnull %0, i64 %7) #21
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %0) #21
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.k) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @tj3DecompressHeader(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #21
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %0) #21
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.o) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i32 @tj3Get(ptr noundef nonnull %0, i32 noundef 5) #21
  %i.r = tail call i32 @tj3Get(ptr noundef nonnull %0, i32 noundef 6) #21
  %i.s = tail call i32 @tj3Get(ptr noundef nonnull %0, i32 noundef 4) #21 ; 6 uses
  %.b138 = load i1, ptr @lossless, align 4
  %i.t = icmp ne i32 %6, 0
  %or.cond = and i1 %i.t, %.b138
  %i.u = icmp ne i32 %6, 3
  %or.cond3 = and i1 %i.u, %or.cond
  %spec.store.select = select i1 %or.cond3, i32 0, i32 %6
  %.not = icmp eq i32 %i.q, %3
  %.not139 = icmp eq i32 %i.r, %4
  %or.cond146 = select i1 %.not, i1 %.not139, i1 false
  %.not140 = icmp eq i32 %i.s, %spec.store.select
  %or.cond147 = select i1 %or.cond146, i1 %.not140, i1 false
  br i1 %or.cond147, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.139) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.w = mul nsw i32 %i.g, %i.d
  %i.x = sext i32 %5 to i64                       ; 8 uses
  %i.y = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 4 uses
  %i.aa = mul nsw i32 %i.w, %i.z
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load i32, ptr @sampleSize, align 4, !tbaa !4
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ab, %i.ad
  %8 = tail call noalias ptr @malloc(i64 noundef %i.ae) #22 ; 36 uses
  %i.af = icmp eq ptr %8, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.108) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %9 = load i32, ptr @sampleSize, align 4, !tbaa !4
  %10 = zext nneg i32 %9 to i64
  %11 = mul nsw i64 %10, %i.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %8, i8 0, i64 %11, i1 false)
  %.b = load i1, ptr @doYUV, align 4
  br i1 %.b, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %.b137 = load i1, ptr @yuvAlign, align 4
  %i.ah = select i1 %.b137, i32 1, i32 4
  %i.ai = tail call i64 @tj3YUVBufSize(i32 noundef %i.d, i32 noundef %i.ah, i32 noundef %i.g, i32 noundef %i.s) #21
  %i.aj = tail call ptr @tj3Init(i32 noundef 1) #21 ; 8 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.al) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.an = tail call i32 @tj3Set(ptr noundef nonnull %i.aj, i32 noundef 1, i32 noundef %i.h) #21
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aj) #21
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.ap) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ar = tail call i32 @tj3Set(ptr noundef nonnull %i.aj, i32 noundef 4, i32 noundef %i.s) #21
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aj) #21
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.at) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %calloc = tail call ptr @calloc(i64 1, i64 %i.ai) ; 7 uses
  %i.av = icmp eq ptr %calloc, null
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.108) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.ax = zext nneg i32 %i.s to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @subNameLong, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 2 uses
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.140, ptr noundef %i.az) ; 0 uses
  %i.bb = icmp ne i32 %.sroa.0.0.extract.trunc, 1
  %i.bc = icmp ne i64 %.sroa.10.0.extract.shift, 1
  %or.cond6 = or i1 %i.bb, %i.bc
  br i1 %or.cond6, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.10.0.extract.trunc) ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.b136 = load i1, ptr @yuvAlign, align 4
  %i.bf = select i1 %.b136, i32 1, i32 4
  %i.bg = tail call i32 @tj3DecompressToYUV8(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %calloc, i32 noundef %i.bf) #21
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %0) #21
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.bi) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bk = tail call fastcc i32 @checkBufYUV(ptr noundef %calloc, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.s, i64 %7)
  %.not142 = icmp eq i32 %i.bk, 0
  %str.21.str.22 = select i1 %.not142, ptr @str.21, ptr @str.22
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.21.str.22) ; 0 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.x
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8
  %.not144 = icmp eq i32 %i.h, 0
  %i.bn = select i1 %.not144, ptr @.str.105, ptr @.str.104
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143, ptr noundef %i.az, ptr noundef %i.bm, ptr noundef nonnull %i.bn) ; 0 uses
  %.b135 = load i1, ptr @yuvAlign, align 4
  %i.bp = select i1 %.b135, i32 1, i32 4
  %i.bq = tail call i32 @tj3DecodeYUV8(ptr noundef nonnull %i.aj, ptr noundef nonnull %calloc, i32 noundef %i.bp, ptr noundef nonnull %8, i32 noundef %i.d, i32 noundef 0, i32 noundef %i.g, i32 noundef %5) #21
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.aj) #21
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.bs) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.y:                                             ; preds = %bb.w
  tail call void @tj3Destroy(ptr noundef nonnull %i.aj) #21
  br label %bb.ak

bb.z:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.x
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8
  %.not141 = icmp eq i32 %i.h, 0
  %i.bw = select i1 %.not141, ptr @.str.105, ptr @.str.104
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.144, ptr noundef %i.bv, ptr noundef nonnull %i.bw) ; 0 uses
  %i.by = icmp ne i32 %.sroa.0.0.extract.trunc, 1
  %i.bz = icmp ne i64 %.sroa.10.0.extract.shift, 1
  %or.cond9 = or i1 %i.by, %i.bz
  br i1 %or.cond9, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.10.0.extract.trunc) ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cc = load i32, ptr @precision, align 4, !tbaa !4 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 9
  br i1 %i.cd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ce = tail call i32 @tj3Decompress8(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5) #21
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.cg = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %0) #21
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.cg) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.af:                                            ; preds = %bb.ac
  %i.ci = icmp samesign ult i32 %i.cc, 13
  br i1 %i.ci, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cj = tail call i32 @tj3Decompress12(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5) #21
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cl = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %0) #21
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.cl) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.ai:                                            ; preds = %bb.af
  %i.cn = tail call i32 @tj3Decompress16(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5) #21
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cp = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %0) #21
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.cp) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread

bb.ak:                                            ; preds = %bb.y, %bb.ad, %bb.ai, %bb.ag
  %.1 = phi ptr [ %calloc, %bb.y ], [ null, %bb.ad ], [ null, %bb.ag ], [ null, %bb.ai ]
  %i.cr = getelementptr inbounds [4 x i8], ptr @tjRedOffset, i64 %i.x
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = getelementptr inbounds [4 x i8], ptr @tjGreenOffset, i64 %i.x
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = getelementptr inbounds [4 x i8], ptr @tjBlueOffset, i64 %i.x
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = getelementptr inbounds [4 x i8], ptr @tjAlphaOffset, i64 %i.x
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = shl nsw i32 %.sroa.0.0.extract.trunc, 4
  %i.da = sdiv i32 %i.cz, %.sroa.10.0.extract.trunc ; 3 uses
  %i.db = shl nsw i32 %.sroa.0.0.extract.trunc, 3
  %i.dc = sdiv i32 %i.db, %.sroa.10.0.extract.trunc ; 8 uses
  %i.dd = icmp eq i32 %5, 6                       ; 3 uses
  %.0268.i = select i1 %i.dd, i32 0, i32 %i.cs    ; 2 uses
  %.0267.i = select i1 %i.dd, i32 0, i32 %i.cu    ; 2 uses
  %.0266.i = select i1 %i.dd, i32 0, i32 %i.cw    ; 2 uses
  %i.de = icmp eq i32 %5, 11                      ; 2 uses
  %i.df = icmp sgt i32 %i.g, 0                    ; 3 uses
  br i1 %i.de, label %.preheader482.i, label %.preheader485.i

.preheader485.i:                                  ; preds = %bb.ak
  br i1 %i.df, label %.preheader484.lr.ph.i, label %.loopexit

.preheader484.lr.ph.i:                            ; preds = %.preheader485.i
  %i.dg = icmp sgt i32 %i.d, 0
  %.not.i = icmp eq i32 %i.h, 0
  %i.dh = load i32, ptr @precision, align 4       ; 2 uses
  %i.di = icmp slt i32 %i.dh, 9
  %i.dj = icmp samesign ult i32 %i.dh, 13
  %i.dk = add nsw i64 %i.x, -7
  %i.dl = icmp ult i64 %i.dk, 4                   ; 3 uses
  %i.dm = load i32, ptr @maxSample, align 4       ; 11 uses
  %i.dn = icmp eq i32 %i.s, 3
  %i.do = load i32, ptr @tolerance, align 4       ; 11 uses
  %i.dp = sub nsw i32 %i.dm, %i.do                ; 6 uses
  %i.dq = load i32, ptr @yellowToY, align 4       ; 5 uses
  %i.dr = sub nsw i32 %i.dq, %i.do                ; 3 uses
  %i.ds = add nuw nsw i32 %i.dq, %i.do            ; 3 uses
  %i.dt = load i32, ptr @redToY, align 4          ; 5 uses
  %i.du = sub nsw i32 %i.dt, %i.do                ; 3 uses
  %i.dv = add nuw nsw i32 %i.dt, %i.do            ; 3 uses
  br i1 %i.dg, label %.preheader484.preheader.i, label %.loopexit

.preheader484.preheader.i:                        ; preds = %.preheader484.lr.ph.i
  %i.dw = sext i32 %i.z to i64
  %i.dx = sext i32 %.0268.i to i64
  %i.dy = sext i32 %.0267.i to i64                ; 2 uses
  %i.dz = sext i32 %.0266.i to i64                ; 2 uses
  %i.ea = sext i32 %i.cy to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  %invariant.gep.i = getelementptr [2 x i8], ptr %8, i64 %i.dy
  %invariant.gep1531.i = getelementptr [2 x i8], ptr %8, i64 %i.dz
  %invariant.gep1533.i = getelementptr [2 x i8], ptr %8, i64 %i.ea ; 2 uses
  %invariant.gep1541.i = getelementptr i8, ptr %8, i64 %i.dy
  %invariant.gep1543.i = getelementptr i8, ptr %8, i64 %i.dz
  %invariant.gep1545.i = getelementptr i8, ptr %8, i64 %i.ea
  br label %.preheader484.i

.preheader482.i:                                  ; preds = %bb.ak
  br i1 %i.df, label %.preheader481.lr.ph.i, label %.loopexit

.preheader481.lr.ph.i:                            ; preds = %.preheader482.i
  %i.eb = icmp sgt i32 %i.d, 0
  %.not317.i = icmp eq i32 %i.h, 0                ; 2 uses
  %i.ec = load i32, ptr @precision, align 4       ; 2 uses
  %i.ed = icmp samesign ult i32 %i.ec, 13         ; 2 uses
  %i.ee = load i32, ptr @maxSample, align 4       ; 8 uses
  %i.ef = load i32, ptr @tolerance, align 4       ; 9 uses
  %i.eg = sub nsw i32 %i.ee, %i.ef                ; 20 uses
  br i1 %i.eb, label %.preheader481.lr.ph.split.i, label %.loopexit

.preheader481.lr.ph.split.i:                      ; preds = %.preheader481.lr.ph.i
  %i.eh = icmp slt i32 %i.ec, 9
  %i.ei = sext i32 %i.z to i64                    ; 4 uses
  %wide.trip.count1144.i = zext nneg i32 %i.d to i64 ; 4 uses
  br i1 %i.eh, label %.preheader481.us.i, label %.preheader481.i

.preheader481.us.i:                               ; preds = %.preheader481.lr.ph.split.i, %._crit_edge681.split.us.us.i
  %.0261736.us.i = phi i32 [ %i.go, %._crit_edge681.split.us.us.i ], [ 0, %.preheader481.lr.ph.split.i ] ; 21 uses
  %i.ej = xor i32 %.0261736.us.i, -1
  %i.ek = add nsw i32 %i.g, %i.ej
  %.pn319.us.i = select i1 %.not317.i, i32 %.0261736.us.i, i32 %i.ek
  %.pn318.us.i = mul nsw i32 %.pn319.us.i, %i.d
  %i.el = sdiv i32 %.0261736.us.i, %i.dc          ; 2 uses
  %i.em = icmp slt i32 %.0261736.us.i, %i.da
  %.fr.i = freeze i1 %i.em
  %i.en = sext i32 %.pn318.us.i to i64            ; 2 uses
  br i1 %.fr.i, label %getVal.exit329.us.us.us.i, label %getVal.exit329.us.us.i

getVal.exit329.us.us.us.i:                        ; preds = %.preheader481.us.i, %bb.at
  %indvars.iv1146.i = phi i64 [ %indvars.iv.next1147.i, %bb.at ], [ 0, %.preheader481.us.i ] ; 3 uses
  %i.eo = add nsw i64 %indvars.iv1146.i, %i.en
  %i.ep = mul nsw i64 %i.eo, %i.ei
  %i.eq = getelementptr i8, ptr %8, i64 %i.ep     ; 4 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !17
  %i.es = zext i8 %i.er to i32                    ; 3 uses
  %i.et = getelementptr i8, ptr %i.eq, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !17
  %i.ev = zext i8 %i.eu to i32                    ; 4 uses
  %i.ew = getelementptr i8, ptr %i.eq, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !17
  %i.ey = zext i8 %i.ex to i32                    ; 4 uses
  %i.ez = getelementptr i8, ptr %i.eq, i64 3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17
  %i.fb = zext i8 %i.fa to i32                    ; 4 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv1146.i to i32 ; 9 uses
  %i.fd = sdiv i32 %i.fc, %i.dc
  %i.fe = add nsw i32 %i.fd, %i.el
  %i.ff = and i32 %i.fe, 1
  %i.fg = icmp eq i32 %i.ff, 0
  %i.fh = icmp sgt i32 %i.eg, %i.es               ; 2 uses
  br i1 %i.fg, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %getVal.exit329.us.us.us.i
  br i1 %i.fh, label %.split.us.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = icmp slt i32 %i.ef, %i.ey
  br i1 %i.fi, label %.split686.us.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fj = icmp sgt i32 %i.eg, %i.fb
  br i1 %i.fj, label %.split691.us.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = icmp samesign ult i32 %i.ef, %i.ev
  br i1 %i.fk, label %.split703.us.i, label %bb.at

bb.ap:                                            ; preds = %getVal.exit329.us.us.us.i
  br i1 %i.fh, label %.split708.us.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = icmp sgt i32 %i.eg, %i.ev
  br i1 %i.fl, label %.split714.us.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = icmp sgt i32 %i.eg, %i.ey
  br i1 %i.fm, label %.split720.us.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = icmp sgt i32 %i.eg, %i.fb
  br i1 %i.fn, label %.split731.us.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %indvars.iv.next1147.i = add nuw nsw i64 %indvars.iv1146.i, 1 ; 2 uses
  %exitcond1151.not.i = icmp eq i64 %indvars.iv.next1147.i, %wide.trip.count1144.i
  br i1 %exitcond1151.not.i, label %._crit_edge681.split.us.us.i, label %getVal.exit329.us.us.us.i, !llvm.loop !60

getVal.exit329.us.us.i:                           ; preds = %.preheader481.us.i, %bb.bc
  %indvars.iv1140.i = phi i64 [ %indvars.iv.next1141.i, %bb.bc ], [ 0, %.preheader481.us.i ] ; 3 uses
  %i.fo = add nsw i64 %indvars.iv1140.i, %i.en
  %i.fp = mul nsw i64 %i.fo, %i.ei
  %i.fq = getelementptr i8, ptr %8, i64 %i.fp     ; 4 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !17
  %i.fs = zext i8 %i.fr to i32                    ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fq, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !17
  %i.fv = zext i8 %i.fu to i32                    ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fq, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !17
  %i.fy = zext i8 %i.fx to i32                    ; 4 uses
  %i.fz = getelementptr i8, ptr %i.fq, i64 3
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !17
  %i.gb = zext i8 %i.ga to i32                    ; 4 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv1140.i to i32 ; 9 uses
  %i.gd = sdiv i32 %i.gc, %i.dc
  %i.ge = add nsw i32 %i.gd, %i.el
  %i.gf = and i32 %i.ge, 1
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = icmp sgt i32 %i.eg, %i.fs               ; 2 uses
  br i1 %i.gg, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %getVal.exit329.us.us.i
  br i1 %i.gh, label %.split.us.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gi = icmp slt i32 %i.ef, %i.fy
  br i1 %i.gi, label %.split686.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gj = icmp sgt i32 %i.eg, %i.gb
  br i1 %i.gj, label %.split691.us.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gk = icmp sgt i32 %i.eg, %i.fv
  br i1 %i.gk, label %.split697.us.i, label %bb.bc

bb.ay:                                            ; preds = %getVal.exit329.us.us.i
  br i1 %i.gh, label %.split708.us.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gl = icmp sgt i32 %i.eg, %i.fv
  br i1 %i.gl, label %.split714.us.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = icmp sgt i32 %i.eg, %i.fy
  br i1 %i.gm, label %.split720.us.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gn = icmp slt i32 %i.ef, %i.gb
  br i1 %i.gn, label %.split726.us.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ax
  %indvars.iv.next1141.i = add nuw nsw i64 %indvars.iv1140.i, 1 ; 2 uses
  %exitcond1145.not.i = icmp eq i64 %indvars.iv.next1141.i, %wide.trip.count1144.i
  br i1 %exitcond1145.not.i, label %._crit_edge681.split.us.us.i, label %getVal.exit329.us.us.i, !llvm.loop !60

._crit_edge681.split.us.us.i:                     ; preds = %bb.bc, %bb.at
  %i.go = add nuw nsw i32 %.0261736.us.i, 1       ; 2 uses
  %exitcond1152.not.i = icmp eq i32 %i.go, %i.g
  br i1 %exitcond1152.not.i, label %.loopexit, label %.preheader481.us.i, !llvm.loop !61

.preheader481.i:                                  ; preds = %.preheader481.lr.ph.split.i, %._crit_edge681.split.i
  %.0261736.i = phi i32 [ %i.jm, %._crit_edge681.split.i ], [ 0, %.preheader481.lr.ph.split.i ] ; 21 uses
  %i.gp = xor i32 %.0261736.i, -1
  %i.gq = add nsw i32 %i.g, %i.gp
  %.pn319.i = select i1 %.not317.i, i32 %.0261736.i, i32 %i.gq
  %.pn318.i = mul nsw i32 %.pn319.i, %i.d
  %i.gr = sdiv i32 %.0261736.i, %i.dc             ; 2 uses
  %i.gs = icmp slt i32 %.0261736.i, %i.da
  %i.gt = sext i32 %.pn318.i to i64               ; 2 uses
  %.fr = freeze i1 %i.gs
  br i1 %.fr, label %.preheader481.i.split.us, label %.preheader481.i.split

.preheader481.i.split.us:                         ; preds = %.preheader481.i, %bb.bn
  %indvars.iv1133.i.us = phi i64 [ %indvars.iv.next1134.i.us, %bb.bn ], [ 0, %.preheader481.i ] ; 3 uses
  %i.gu = add nsw i64 %indvars.iv1133.i.us, %i.gt
  %i.gv = mul nsw i64 %i.gu, %i.ei
  %i.gw = getelementptr [2 x i8], ptr %8, i64 %i.gv ; 4 uses
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !18 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 2
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !18 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gw, i64 4
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !18 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gw, i64 6
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !18 ; 2 uses
  br i1 %i.ed, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.preheader481.i.split.us
  %i.he = zext i16 %i.gx to i32
  %i.hf = zext i16 %i.gz to i32
  %i.hg = zext i16 %i.hb to i32
  %i.hh = zext i16 %i.hd to i32
  br label %getVal.exit329.i.us

bb.be:                                            ; preds = %.preheader481.i.split.us
  %i.hi = sext i16 %i.gx to i32
  %i.hj = sext i16 %i.gz to i32
  %i.hk = sext i16 %i.hb to i32
  %i.hl = sext i16 %i.hd to i32
  br label %getVal.exit329.i.us

getVal.exit329.i.us:                              ; preds = %bb.be, %bb.bd
  %.0.i326375.i.us = phi i32 [ %i.hg, %bb.bd ], [ %i.hk, %bb.be ] ; 4 uses
  %.0.i353359373.i.us = phi i32 [ %i.he, %bb.bd ], [ %i.hi, %bb.be ] ; 3 uses
  %.0.i324361371.i.us = phi i32 [ %i.hf, %bb.bd ], [ %i.hj, %bb.be ] ; 4 uses
  %.0.i328.i.us = phi i32 [ %i.hh, %bb.bd ], [ %i.hl, %bb.be ] ; 4 uses
  %i.hm = trunc nuw nsw i64 %indvars.iv1133.i.us to i32 ; 9 uses
  %i.hn = sdiv i32 %i.hm, %i.dc
  %i.ho = add nsw i32 %i.hn, %i.gr
  %i.hp = and i32 %i.ho, 1
  %i.hq = icmp eq i32 %i.hp, 0
  %i.hr = icmp slt i32 %.0.i353359373.i.us, %i.eg ; 2 uses
  br i1 %i.hq, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %getVal.exit329.i.us
  br i1 %i.hr, label %.split.us.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hs = icmp sgt i32 %.0.i326375.i.us, %i.ef
  br i1 %i.hs, label %.split686.us.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ht = icmp slt i32 %.0.i328.i.us, %i.eg
  br i1 %i.ht, label %.split691.us.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hu = icmp sgt i32 %.0.i324361371.i.us, %i.ef
  br i1 %i.hu, label %.split703.us.i, label %bb.bn

bb.bj:                                            ; preds = %getVal.exit329.i.us
  br i1 %i.hr, label %.split708.us.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hv = icmp slt i32 %.0.i324361371.i.us, %i.eg
  br i1 %i.hv, label %.split714.us.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = icmp slt i32 %.0.i326375.i.us, %i.eg
  br i1 %i.hw, label %.split720.us.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hx = icmp slt i32 %.0.i328.i.us, %i.eg
  br i1 %i.hx, label %.split731.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %indvars.iv.next1134.i.us = add nuw nsw i64 %indvars.iv1133.i.us, 1 ; 2 uses
  %exitcond1138.not.i.us = icmp eq i64 %indvars.iv.next1134.i.us, %wide.trip.count1144.i
  br i1 %exitcond1138.not.i.us, label %._crit_edge681.split.i, label %.preheader481.i.split.us, !llvm.loop !60

.preheader481.i.split:                            ; preds = %.preheader481.i, %bb.by
  %indvars.iv1133.i = phi i64 [ %indvars.iv.next1134.i, %bb.by ], [ 0, %.preheader481.i ] ; 3 uses
  %i.hy = add nsw i64 %indvars.iv1133.i, %i.gt
  %i.hz = mul nsw i64 %i.hy, %i.ei
  %i.ia = getelementptr [2 x i8], ptr %8, i64 %i.hz ; 4 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !18 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ia, i64 2
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !18 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ia, i64 4
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !18 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ia, i64 6
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !18 ; 2 uses
  br i1 %i.ed, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.preheader481.i.split
  %i.ii = sext i16 %i.ib to i32
  %i.ij = sext i16 %i.id to i32
  %i.ik = sext i16 %i.if to i32
  %i.il = sext i16 %i.ih to i32
  br label %getVal.exit329.i

bb.bp:                                            ; preds = %.preheader481.i.split
  %i.im = zext i16 %i.ib to i32
  %i.in = zext i16 %i.id to i32
  %i.io = zext i16 %i.if to i32
  %i.ip = zext i16 %i.ih to i32
  br label %getVal.exit329.i

getVal.exit329.i:                                 ; preds = %bb.bp, %bb.bo
  %.0.i326375.i = phi i32 [ %i.io, %bb.bp ], [ %i.ik, %bb.bo ] ; 4 uses
  %.0.i353359373.i = phi i32 [ %i.im, %bb.bp ], [ %i.ii, %bb.bo ] ; 3 uses
  %.0.i324361371.i = phi i32 [ %i.in, %bb.bp ], [ %i.ij, %bb.bo ] ; 4 uses
  %.0.i328.i = phi i32 [ %i.ip, %bb.bp ], [ %i.il, %bb.bo ] ; 4 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv1133.i to i32 ; 9 uses
  %i.ir = sdiv i32 %i.iq, %i.dc
  %i.is = add nsw i32 %i.ir, %i.gr
  %i.it = and i32 %i.is, 1
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = icmp slt i32 %.0.i353359373.i, %i.eg    ; 2 uses
  br i1 %i.iu, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %getVal.exit329.i
  br i1 %i.iv, label %.split708.us.i, label %bb.br

.split708.us.i:                                   ; preds = %bb.bq, %bb.bj, %bb.ay, %bb.ap
  %.us-phi709.i = phi i32 [ %.0261736.i, %bb.bj ], [ %.0261736.us.i, %bb.ay ], [ %.0261736.us.i, %bb.ap ], [ %.0261736.i, %bb.bq ]
  %.us-phi711.i = phi i32 [ %.0.i353359373.i.us, %bb.bj ], [ %i.fs, %bb.ay ], [ %i.es, %bb.ap ], [ %.0.i353359373.i, %bb.bq ]
  %.us-phi712.i = phi i32 [ %i.hm, %bb.bj ], [ %i.gc, %bb.ay ], [ %i.fc, %bb.ap ], [ %i.iq, %bb.bq ]
  %i.iw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.147, i32 noundef %.us-phi709.i, i32 noundef %.us-phi712.i, i32 noundef %i.ee, i32 noundef %.us-phi711.i) ; 0 uses
  br label %.thread384.i

bb.br:                                            ; preds = %bb.bq
  %i.ix = icmp slt i32 %.0.i324361371.i, %i.eg
  br i1 %i.ix, label %.split714.us.i, label %bb.bs

.split714.us.i:                                   ; preds = %bb.br, %bb.bk, %bb.az, %bb.aq
  %.us-phi715.i = phi i32 [ %.0261736.i, %bb.bk ], [ %.0261736.us.i, %bb.az ], [ %.0261736.us.i, %bb.aq ], [ %.0261736.i, %bb.br ]
  %.us-phi717.i = phi i32 [ %.0.i324361371.i.us, %bb.bk ], [ %i.fv, %bb.az ], [ %i.ev, %bb.aq ], [ %.0.i324361371.i, %bb.br ]
  %.us-phi718.i = phi i32 [ %i.hm, %bb.bk ], [ %i.gc, %bb.az ], [ %i.fc, %bb.aq ], [ %i.iq, %bb.br ]
  %i.iy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.148, i32 noundef %.us-phi715.i, i32 noundef %.us-phi718.i, i32 noundef %i.ee, i32 noundef %.us-phi717.i) ; 0 uses
  br label %.thread384.i

bb.bs:                                            ; preds = %bb.br
  %i.iz = icmp slt i32 %.0.i326375.i, %i.eg
  br i1 %i.iz, label %.split720.us.i, label %bb.bt

.split720.us.i:                                   ; preds = %bb.bs, %bb.bl, %bb.ba, %bb.ar
  %.us-phi721.i = phi i32 [ %.0261736.i, %bb.bl ], [ %.0261736.us.i, %bb.ba ], [ %.0261736.us.i, %bb.ar ], [ %.0261736.i, %bb.bs ]
  %.us-phi723.i = phi i32 [ %.0.i326375.i.us, %bb.bl ], [ %i.fy, %bb.ba ], [ %i.ey, %bb.ar ], [ %.0.i326375.i, %bb.bs ]
  %.us-phi724.i = phi i32 [ %i.hm, %bb.bl ], [ %i.gc, %bb.ba ], [ %i.fc, %bb.ar ], [ %i.iq, %bb.bs ]
  %i.ja = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.126, i32 noundef %.us-phi721.i, i32 noundef %.us-phi724.i, i32 noundef %i.ee, i32 noundef %.us-phi723.i) ; 0 uses
  br label %.thread384.i

bb.bt:                                            ; preds = %bb.bs
  %i.jb = icmp sgt i32 %.0.i328.i, %i.ef
  br i1 %i.jb, label %.split726.us.i, label %bb.by

.split731.us.i:                                   ; preds = %bb.bm, %bb.as
  %.us-phi732.i = phi i32 [ %.0261736.us.i, %bb.as ], [ %.0261736.i, %bb.bm ]
  %.us-phi734.i = phi i32 [ %i.fb, %bb.as ], [ %.0.i328.i.us, %bb.bm ]
  %.us-phi735.i = phi i32 [ %i.fc, %bb.as ], [ %i.hm, %bb.bm ]
  %i.jc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.149, i32 noundef %.us-phi732.i, i32 noundef %.us-phi735.i, i32 noundef %i.ee, i32 noundef %.us-phi734.i) ; 0 uses
  br label %.thread384.i

.split726.us.i:                                   ; preds = %bb.bt, %bb.bb
  %.us-phi727.i = phi i32 [ %.0261736.us.i, %bb.bb ], [ %.0261736.i, %bb.bt ]
  %.us-phi728.i = phi i32 [ %i.gb, %bb.bb ], [ %.0.i328.i, %bb.bt ]
  %.us-phi729.i = phi i32 [ %i.gc, %bb.bb ], [ %i.iq, %bb.bt ]
  %i.jd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.149, i32 noundef %.us-phi727.i, i32 noundef %.us-phi729.i, i32 noundef %.us-phi728.i) ; 0 uses
  br label %.thread384.i

bb.bu:                                            ; preds = %getVal.exit329.i
  br i1 %i.iv, label %.split.us.i, label %bb.bv

.split.us.i:                                      ; preds = %bb.bu, %bb.bf, %bb.au, %bb.al
  %.us-phi.i = phi i32 [ %.0261736.i, %bb.bf ], [ %.0261736.us.i, %bb.au ], [ %.0261736.us.i, %bb.al ], [ %.0261736.i, %bb.bu ]
  %.us-phi682.i = phi i32 [ %.0.i353359373.i.us, %bb.bf ], [ %i.fs, %bb.au ], [ %i.es, %bb.al ], [ %.0.i353359373.i, %bb.bu ]
  %.us-phi683.i = phi i32 [ %i.hm, %bb.bf ], [ %i.gc, %bb.au ], [ %i.fc, %bb.al ], [ %i.iq, %bb.bu ]
  %i.je = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.147, i32 noundef %.us-phi.i, i32 noundef %.us-phi683.i, i32 noundef %i.ee, i32 noundef %.us-phi682.i) ; 0 uses
  br label %.thread384.i

bb.bv:                                            ; preds = %bb.bu
  %i.jf = icmp sgt i32 %.0.i326375.i, %i.ef
  br i1 %i.jf, label %.split686.us.i, label %bb.bw

.split686.us.i:                                   ; preds = %bb.bv, %bb.bg, %bb.av, %bb.am
  %.us-phi687.i = phi i32 [ %.0261736.i, %bb.bg ], [ %.0261736.us.i, %bb.av ], [ %.0261736.us.i, %bb.am ], [ %.0261736.i, %bb.bv ]
  %.us-phi688.i = phi i32 [ %.0.i326375.i.us, %bb.bg ], [ %i.fy, %bb.av ], [ %i.ey, %bb.am ], [ %.0.i326375.i, %bb.bv ]
  %.us-phi689.i = phi i32 [ %i.hm, %bb.bg ], [ %i.gc, %bb.av ], [ %i.fc, %bb.am ], [ %i.iq, %bb.bv ]
  %i.jg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.126, i32 noundef %.us-phi687.i, i32 noundef %.us-phi689.i, i32 noundef %.us-phi688.i) ; 0 uses
  br label %.thread384.i

bb.bw:                                            ; preds = %bb.bv
  %i.jh = icmp slt i32 %.0.i328.i, %i.eg
  br i1 %i.jh, label %.split691.us.i, label %bb.bx

.split691.us.i:                                   ; preds = %bb.bw, %bb.bh, %bb.aw, %bb.an
  %.us-phi692.i = phi i32 [ %.0261736.i, %bb.bh ], [ %.0261736.us.i, %bb.aw ], [ %.0261736.us.i, %bb.an ], [ %.0261736.i, %bb.bw ]
  %.us-phi693.i = phi i32 [ %.0.i328.i.us, %bb.bh ], [ %i.gb, %bb.aw ], [ %i.fb, %bb.an ], [ %.0.i328.i, %bb.bw ]
  %.us-phi694.i = phi i32 [ %i.hm, %bb.bh ], [ %i.gc, %bb.aw ], [ %i.fc, %bb.an ], [ %i.iq, %bb.bw ]
  %i.ji = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.149, i32 noundef %.us-phi692.i, i32 noundef %.us-phi694.i, i32 noundef %i.ee, i32 noundef %.us-phi693.i) ; 0 uses
  br label %.thread384.i

bb.bx:                                            ; preds = %bb.bw
  %i.jj = icmp slt i32 %.0.i324361371.i, %i.eg
  br i1 %i.jj, label %.split697.us.i, label %bb.by

.split703.us.i:                                   ; preds = %bb.bi, %bb.ao
  %.us-phi704.i = phi i32 [ %.0261736.us.i, %bb.ao ], [ %.0261736.i, %bb.bi ]
  %.us-phi705.i = phi i32 [ %i.ev, %bb.ao ], [ %.0.i324361371.i.us, %bb.bi ]
  %.us-phi706.i = phi i32 [ %i.fc, %bb.ao ], [ %i.hm, %bb.bi ]
  %i.jk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.148, i32 noundef %.us-phi704.i, i32 noundef %.us-phi706.i, i32 noundef %.us-phi705.i) ; 0 uses
  br label %.thread384.i

.split697.us.i:                                   ; preds = %bb.bx, %bb.ax
  %.us-phi698.i = phi i32 [ %.0261736.us.i, %bb.ax ], [ %.0261736.i, %bb.bx ]
  %.us-phi699.i = phi i32 [ %i.fv, %bb.ax ], [ %.0.i324361371.i, %bb.bx ]
  %.us-phi700.i = phi i32 [ %i.gc, %bb.ax ], [ %i.iq, %bb.bx ]
  %i.jl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.148, i32 noundef %.us-phi698.i, i32 noundef %.us-phi700.i, i32 noundef %i.ee, i32 noundef %.us-phi699.i) ; 0 uses
  br label %.thread384.i

bb.by:                                            ; preds = %bb.bx, %bb.bt
  %indvars.iv.next1134.i = add nuw nsw i64 %indvars.iv1133.i, 1 ; 2 uses
  %exitcond1138.not.i = icmp eq i64 %indvars.iv.next1134.i, %wide.trip.count1144.i
  br i1 %exitcond1138.not.i, label %._crit_edge681.split.i, label %.preheader481.i.split, !llvm.loop !60

._crit_edge681.split.i:                           ; preds = %bb.by, %bb.bn
  %i.jm = add nuw nsw i32 %.0261736.i, 1          ; 2 uses
  %exitcond1139.not.i = icmp eq i32 %i.jm, %i.g
  br i1 %exitcond1139.not.i, label %.loopexit, label %.preheader481.i, !llvm.loop !61

.preheader484.i:                                  ; preds = %._crit_edge.i, %.preheader484.preheader.i
  %.1262679.i = phi i32 [ %i.mp, %._crit_edge.i ], [ 0, %.preheader484.preheader.i ] ; 24 uses
  %i.jn = xor i32 %.1262679.i, -1
  %i.jo = add nsw i32 %i.g, %i.jn
  %.pn316.i = select i1 %.not.i, i32 %.1262679.i, i32 %i.jo
  %.pn.i = mul nsw i32 %.pn316.i, %i.d
  %i.jp = sdiv i32 %.1262679.i, %i.dc
  %i.jq = icmp slt i32 %.1262679.i, %i.da         ; 3 uses
  %i.jr = sext i32 %.pn.i to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.dt, %.preheader484.i
  %indvars.iv.i = phi i64 [ 0, %.preheader484.i ], [ %indvars.iv.next.i, %bb.dt ] ; 3 uses
  %i.js = add nsw i64 %indvars.iv.i, %i.jr
  %i.jt = mul nsw i64 %i.js, %i.dw                ; 8 uses
  %i.ju = add nsw i64 %i.jt, %i.dx                ; 2 uses
  br i1 %i.di, label %getVal.exit335.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jv = getelementptr inbounds [2 x i8], ptr %8, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !18 ; 2 uses
  %gep1536.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.jt
  %i.jx = load i16, ptr %gep1536.i, align 2, !tbaa !18 ; 2 uses
  %gep1538.i = getelementptr [2 x i8], ptr %invariant.gep1531.i, i64 %i.jt
  %i.jy = load i16, ptr %gep1538.i, align 2, !tbaa !18 ; 2 uses
  br i1 %i.dj, label %getVal.exit335.i, label %getVal.exit335.thread1212.i

getVal.exit335.i:                                 ; preds = %bb.ca
  %i.jz = sext i16 %i.jw to i32                   ; 2 uses
  %i.ka = sext i16 %i.jx to i32                   ; 2 uses
  %i.kb = sext i16 %i.jy to i32                   ; 2 uses
  br i1 %i.dl, label %bb.cb, label %getVal.exit337.i

getVal.exit335.thread1212.i:                      ; preds = %bb.ca
  %i.kc = zext i16 %i.jw to i32                   ; 2 uses
  %i.kd = zext i16 %i.jx to i32                   ; 2 uses
  %i.ke = zext i16 %i.jy to i32                   ; 2 uses
  br i1 %i.dl, label %bb.cc, label %getVal.exit337.i

getVal.exit335.thread.i:                          ; preds = %bb.bz
  %i.kf = getelementptr inbounds i8, ptr %8, i64 %i.ju
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !17
  %i.kh = zext i8 %i.kg to i32                    ; 2 uses
  %gep1542.i = getelementptr i8, ptr %invariant.gep1541.i, i64 %i.jt
  %i.ki = load i8, ptr %gep1542.i, align 1, !tbaa !17
  %i.kj = zext i8 %i.ki to i32                    ; 2 uses
  %gep1544.i = getelementptr i8, ptr %invariant.gep1543.i, i64 %i.jt
  %i.kk = load i8, ptr %gep1544.i, align 1, !tbaa !17
  %i.kl = zext i8 %i.kk to i32                    ; 2 uses
  br i1 %i.dl, label %.thread416.i, label %getVal.exit337.i

.thread416.i:                                     ; preds = %getVal.exit335.thread.i
  %gep1546.i = getelementptr i8, ptr %invariant.gep1545.i, i64 %i.jt
  %i.km = load i8, ptr %gep1546.i, align 1, !tbaa !17
  %i.kn = zext i8 %i.km to i32
  br label %getVal.exit337.i

bb.cb:                                            ; preds = %getVal.exit335.i
  %gep1540.i = getelementptr [2 x i8], ptr %invariant.gep1533.i, i64 %i.jt
  %i.ko = load i16, ptr %gep1540.i, align 2, !tbaa !18
  %i.kp = sext i16 %i.ko to i32
  br label %getVal.exit337.i

bb.cc:                                            ; preds = %getVal.exit335.thread1212.i
  %gep1534.i = getelementptr [2 x i8], ptr %invariant.gep1533.i, i64 %i.jt
  %i.kq = load i16, ptr %gep1534.i, align 2, !tbaa !18
  %i.kr = zext i16 %i.kq to i32
  br label %getVal.exit337.i

getVal.exit337.i:                                 ; preds = %bb.cc, %bb.cb, %.thread416.i, %getVal.exit335.thread.i, %getVal.exit335.thread1212.i, %getVal.exit335.i
  %.0.i334413.i = phi i32 [ %i.ke, %bb.cc ], [ %i.kl, %.thread416.i ], [ %i.kb, %bb.cb ], [ %i.kl, %getVal.exit335.thread.i ], [ %i.kb, %getVal.exit335.i ], [ %i.ke, %getVal.exit335.thread1212.i ] ; 14 uses
  %.0.i330388395410.i = phi i32 [ %i.kc, %bb.cc ], [ %i.kh, %.thread416.i ], [ %i.jz, %bb.cb ], [ %i.kh, %getVal.exit335.thread.i ], [ %i.jz, %getVal.exit335.i ], [ %i.kc, %getVal.exit335.thread1212.i ] ; 13 uses
  %.0.i332397407.i = phi i32 [ %i.kd, %bb.cc ], [ %i.kj, %.thread416.i ], [ %i.ka, %bb.cb ], [ %i.kj, %getVal.exit335.thread.i ], [ %i.ka, %getVal.exit335.i ], [ %i.kd, %getVal.exit335.thread1212.i ] ; 14 uses
  %i.ks = phi i32 [ %i.kr, %bb.cc ], [ %i.kn, %.thread416.i ], [ %i.kp, %bb.cb ], [ %i.dm, %getVal.exit335.thread.i ], [ %i.dm, %getVal.exit335.i ], [ %i.dm, %getVal.exit335.thread1212.i ] ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv.i to i32  ; 20 uses
  %i.ku = sdiv i32 %i.kt, %i.dc
  %i.kv = add nsw i32 %i.ku, %i.jp
  %i.kw = and i32 %i.kv, 1
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %getVal.exit337.i
  br i1 %i.jq, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.ky = icmp slt i32 %.0.i330388395410.i, %i.dp
  br i1 %i.ky, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.kz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.150, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %.0.i330388395410.i) ; 0 uses
  br label %.thread384.i

bb.cg:                                            ; preds = %bb.ce
  %i.la = icmp slt i32 %.0.i332397407.i, %i.dp
  br i1 %i.la, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.lb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.151, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %.0.i332397407.i) ; 0 uses
  br label %.thread384.i

bb.ci:                                            ; preds = %bb.cg
  %i.lc = icmp slt i32 %.0.i334413.i, %i.dp
  br i1 %i.lc, label %bb.cj, label %bb.dr

bb.cj:                                            ; preds = %bb.ci
  %i.ld = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.152, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %.0.i334413.i) ; 0 uses
  br label %.thread384.i

bb.ck:                                            ; preds = %bb.cd
  %i.le = icmp sgt i32 %.0.i330388395410.i, %i.do
  br i1 %i.le, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.lf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.150, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %.0.i330388395410.i) ; 0 uses
  br label %.thread384.i

bb.cm:                                            ; preds = %bb.ck
  %i.lg = icmp sgt i32 %.0.i332397407.i, %i.do
  br i1 %i.lg, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.lh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.151, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %.0.i332397407.i) ; 0 uses
  br label %.thread384.i

bb.co:                                            ; preds = %bb.cm
  %i.li = icmp sgt i32 %.0.i334413.i, %i.do
  br i1 %i.li, label %bb.cp, label %bb.dr

bb.cp:                                            ; preds = %bb.co
  %i.lj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.152, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %.0.i334413.i) ; 0 uses
  br label %.thread384.i

bb.cq:                                            ; preds = %getVal.exit337.i
  br i1 %i.dn, label %bb.cr, label %bb.de

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.jq, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.lk = icmp slt i32 %.0.i330388395410.i, %i.du
  %i.ll = icmp sgt i32 %.0.i330388395410.i, %i.dv
  %or.cond816.i = select i1 %i.lk, i1 true, i1 %i.ll
  br i1 %or.cond816.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.150, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dt, i32 noundef %.0.i330388395410.i) ; 0 uses
  br label %.thread384.i

bb.cu:                                            ; preds = %bb.cs
  %i.ln = icmp slt i32 %.0.i332397407.i, %i.du
  %i.lo = icmp sgt i32 %.0.i332397407.i, %i.dv
  %or.cond.i = or i1 %i.ln, %i.lo
  br i1 %or.cond.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.lp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.151, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dt, i32 noundef %.0.i332397407.i) ; 0 uses
  br label %.thread384.i

bb.cw:                                            ; preds = %bb.cu
  %i.lq = icmp slt i32 %.0.i334413.i, %i.du
  %i.lr = icmp sgt i32 %.0.i334413.i, %i.dv
  %or.cond320.i = or i1 %i.lq, %i.lr
  br i1 %or.cond320.i, label %bb.cx, label %bb.dr

bb.cx:                                            ; preds = %bb.cw
  %i.ls = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.152, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dt, i32 noundef %.0.i334413.i) ; 0 uses
  br label %.thread384.i

bb.cy:                                            ; preds = %bb.cr
  %i.lt = icmp slt i32 %.0.i330388395410.i, %i.dr
  %i.lu = icmp sgt i32 %.0.i330388395410.i, %i.ds
  %or.cond817.i = select i1 %i.lt, i1 true, i1 %i.lu
  br i1 %or.cond817.i, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.lv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.150, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dq, i32 noundef %.0.i330388395410.i) ; 0 uses
  br label %.thread384.i

bb.da:                                            ; preds = %bb.cy
  %i.lw = icmp slt i32 %.0.i332397407.i, %i.dr
  %i.lx = icmp sgt i32 %.0.i332397407.i, %i.ds
  %or.cond321.i = or i1 %i.lw, %i.lx
  br i1 %or.cond321.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ly = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.151, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dq, i32 noundef %.0.i332397407.i) ; 0 uses
  br label %.thread384.i

bb.dc:                                            ; preds = %bb.da
  %i.lz = icmp slt i32 %.0.i334413.i, %i.dr
  %i.ma = icmp sgt i32 %.0.i334413.i, %i.ds
  %or.cond322.i = or i1 %i.lz, %i.ma
  br i1 %or.cond322.i, label %bb.dd, label %bb.dr

bb.dd:                                            ; preds = %bb.dc
  %i.mb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.152, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dq, i32 noundef %.0.i334413.i) ; 0 uses
  br label %.thread384.i

bb.de:                                            ; preds = %bb.cq
  %i.mc = icmp slt i32 %.0.i330388395410.i, %i.dp ; 2 uses
  br i1 %i.jq, label %bb.df, label %bb.dl

bb.df:                                            ; preds = %bb.de
  br i1 %i.mc, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.md = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.150, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %.0.i330388395410.i) ; 0 uses
  br label %.thread384.i

bb.dh:                                            ; preds = %bb.df
  %i.me = icmp sgt i32 %.0.i332397407.i, %i.do
  br i1 %i.me, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.mf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.151, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %.0.i332397407.i) ; 0 uses
  br label %.thread384.i

bb.dj:                                            ; preds = %bb.dh
  %i.mg = icmp sgt i32 %.0.i334413.i, %i.do
  br i1 %i.mg, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.152, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %.0.i334413.i) ; 0 uses
  br label %.thread384.i

bb.dl:                                            ; preds = %bb.de
  br i1 %i.mc, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.mi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.150, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %.0.i330388395410.i) ; 0 uses
  br label %.thread384.i

bb.dn:                                            ; preds = %bb.dl
  %i.mj = icmp slt i32 %.0.i332397407.i, %i.dp
  br i1 %i.mj, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.mk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.151, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %.0.i332397407.i) ; 0 uses
  br label %.thread384.i

bb.dp:                                            ; preds = %bb.dn
  %i.ml = icmp sgt i32 %.0.i334413.i, %i.do
  br i1 %i.ml, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.mm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, ptr noundef nonnull @.str.152, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %.0.i334413.i) ; 0 uses
  br label %.thread384.i

bb.dr:                                            ; preds = %bb.dp, %bb.dj, %bb.dc, %bb.cw, %bb.co, %bb.ci
  %i.mn = icmp slt i32 %i.ks, %i.dp
  br i1 %i.mn, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.mo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.153, i32 noundef %.1262679.i, i32 noundef %i.kt, i32 noundef %i.dm, i32 noundef %i.ks) ; 0 uses
  br label %.thread384.i

bb.dt:                                            ; preds = %bb.dr
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bz, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.dt
  %i.mp = add nuw nsw i32 %.1262679.i, 1          ; 2 uses
  %exitcond1132.not.i = icmp eq i32 %i.mp, %i.g
  br i1 %exitcond1132.not.i, label %.loopexit, label %.preheader484.i, !llvm.loop !63

.thread384.i:                                     ; preds = %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv, %bb.ct, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %.split697.us.i, %.split703.us.i, %.split691.us.i, %.split686.us.i, %.split.us.i, %.split726.us.i, %.split731.us.i, %.split720.us.i, %.split714.us.i, %.split708.us.i
  store i1 true, ptr @exitStatus, align 4
  br i1 %i.df, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.thread384.i
  %i.mq = icmp sgt i32 %i.d, 0
  br i1 %i.mq, label %.preheader.lr.ph.split.us.i, label %.preheader.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.mr = sext i32 %i.z to i64                    ; 2 uses
  br i1 %i.de, label %.preheader.us.us.preheader.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.us.i
  %i.ms = sext i32 %.0268.i to i64
  %i.mt = sext i32 %.0267.i to i64                ; 2 uses
  %i.mu = sext i32 %.0266.i to i64                ; 2 uses
  %i.mv = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count1162.i = zext nneg i32 %i.g to i64
  %invariant.gep1547.i = getelementptr [2 x i8], ptr %8, i64 %i.mt
  %invariant.gep1549.i = getelementptr [2 x i8], ptr %8, i64 %i.mu
  %invariant.gep1555.i = getelementptr i8, ptr %8, i64 %i.mt
  %invariant.gep1557.i = getelementptr i8, ptr %8, i64 %i.mu
  br label %.preheader.us.i

.preheader.us.us.preheader.i:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.mw = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count1172.i = zext nneg i32 %i.g to i64
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge811.split.us.us.us.i, %.preheader.us.us.preheader.i
  %indvars.iv1169.i = phi i64 [ 0, %.preheader.us.us.preheader.i ], [ %indvars.iv.next1170.i, %._crit_edge811.split.us.us.us.i ] ; 2 uses
  %i.mx = mul nuw nsw i64 %indvars.iv1169.i, %i.mw
  br label %bb.du

bb.du:                                            ; preds = %getVal.exit345.us.us.us.i, %.preheader.us.us.i
  %indvars.iv1164.i = phi i64 [ %indvars.iv.next1165.i, %getVal.exit345.us.us.us.i ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.my = add nuw nsw i64 %indvars.iv1164.i, %i.mx
  %i.mz = mul nsw i64 %i.my, %i.mr                ; 2 uses
  %i.na = load i32, ptr @precision, align 4, !tbaa !4 ; 2 uses
  %i.nb = icmp slt i32 %i.na, 9
  br i1 %i.nb, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nc = icmp samesign ult i32 %i.na, 13
  %i.nd = getelementptr [2 x i8], ptr %8, i64 %i.mz ; 4 uses
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !18 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.nd, i64 2
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !18 ; 2 uses
  %i.nh = getelementptr i8, ptr %i.nd, i64 4
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !18 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nd, i64 6
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !18 ; 2 uses
  br i1 %i.nc, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nl = zext i16 %i.ne to i32
  %i.nm = zext i16 %i.ng to i32
  %i.nn = zext i16 %i.ni to i32
  %i.no = zext i16 %i.nk to i32
  br label %getVal.exit345.us.us.us.i

bb.dx:                                            ; preds = %bb.dv
  %i.np = sext i16 %i.ne to i32
  %i.nq = sext i16 %i.ng to i32
  %i.nr = sext i16 %i.ni to i32
  %i.ns = sext i16 %i.nk to i32
  br label %getVal.exit345.us.us.us.i

bb.dy:                                            ; preds = %bb.du
  %i.nt = getelementptr i8, ptr %8, i64 %i.mz     ; 4 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !17
  %i.nv = zext i8 %i.nu to i32
  %i.nw = getelementptr i8, ptr %i.nt, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = zext i8 %i.nx to i32
  %i.nz = getelementptr i8, ptr %i.nt, i64 2
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !17
  %i.ob = zext i8 %i.oa to i32
  %i.oc = getelementptr i8, ptr %i.nt, i64 3
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !17
  %i.oe = zext i8 %i.od to i32
  br label %getVal.exit345.us.us.us.i

getVal.exit345.us.us.us.i:                        ; preds = %bb.dy, %bb.dx, %bb.dw
  %.0.i342454.us.us.us.i = phi i32 [ %i.ob, %bb.dy ], [ %i.nr, %bb.dx ], [ %i.nn, %bb.dw ]
  %.0.i338431438452.us.us.us.i = phi i32 [ %i.nv, %bb.dy ], [ %i.np, %bb.dx ], [ %i.nl, %bb.dw ]
  %.0.i340440450.us.us.us.i = phi i32 [ %i.ny, %bb.dy ], [ %i.nq, %bb.dx ], [ %i.nm, %bb.dw ]
  %.0.i344.us.us.us.i = phi i32 [ %i.oe, %bb.dy ], [ %i.ns, %bb.dx ], [ %i.no, %bb.dw ]
  %i.of = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.154, i32 noundef %.0.i338431438452.us.us.us.i, i32 noundef %.0.i340440450.us.us.us.i, i32 noundef %.0.i342454.us.us.us.i, i32 noundef %.0.i344.us.us.us.i) ; 0 uses
  %indvars.iv.next1165.i = add nuw nsw i64 %indvars.iv1164.i, 1 ; 2 uses
  %exitcond1168.not.i = icmp eq i64 %indvars.iv.next1165.i, %i.mw
  br i1 %exitcond1168.not.i, label %._crit_edge811.split.us.us.us.i, label %bb.du, !llvm.loop !64

._crit_edge811.split.us.us.us.i:                  ; preds = %getVal.exit345.us.us.us.i
  %putchar.us.us.i = tail call i32 @putchar(i32 10) ; 0 uses
  %indvars.iv.next1170.i = add nuw nsw i64 %indvars.iv1169.i, 1 ; 2 uses
  %exitcond1173.not.i = icmp eq i64 %indvars.iv.next1170.i, %wide.trip.count1172.i
  br i1 %exitcond1173.not.i, label %.loopexit, label %.preheader.us.us.i, !llvm.loop !65

.preheader.us.i:                                  ; preds = %._crit_edge811.split.us814.i, %.preheader.us.preheader.i
  %indvars.iv1159.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next1160.i, %._crit_edge811.split.us814.i ] ; 2 uses
  %i.og = mul nuw nsw i64 %indvars.iv1159.i, %i.mv
  br label %bb.dz

bb.dz:                                            ; preds = %getVal.exit351.us.i, %.preheader.us.i
  %indvars.iv1154.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next1155.i, %getVal.exit351.us.i ] ; 2 uses
  %i.oh = add nuw nsw i64 %indvars.iv1154.i, %i.og
  %i.oi = mul nsw i64 %i.oh, %i.mr                ; 5 uses
  %i.oj = add nsw i64 %i.oi, %i.ms                ; 2 uses
  %i.ok = load i32, ptr @precision, align 4, !tbaa !4 ; 2 uses
  %i.ol = icmp slt i32 %i.ok, 9
  br i1 %i.ol, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.om = icmp samesign ult i32 %i.ok, 13
  %i.on = getelementptr inbounds [2 x i8], ptr %8, i64 %i.oj
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !18 ; 2 uses
  %gep1552.i = getelementptr [2 x i8], ptr %invariant.gep1547.i, i64 %i.oi
  %i.op = load i16, ptr %gep1552.i, align 2, !tbaa !18 ; 2 uses
  %gep1554.i = getelementptr [2 x i8], ptr %invariant.gep1549.i, i64 %i.oi
  %i.oq = load i16, ptr %gep1554.i, align 2, !tbaa !18 ; 2 uses
  br i1 %i.om, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.or = zext i16 %i.oo to i32
  %i.os = zext i16 %i.op to i32
  %i.ot = zext i16 %i.oq to i32
  br label %getVal.exit351.us.i

bb.ec:                                            ; preds = %bb.ea
  %i.ou = sext i16 %i.oo to i32
  %i.ov = sext i16 %i.op to i32
  %i.ow = sext i16 %i.oq to i32
  br label %getVal.exit351.us.i

bb.ed:                                            ; preds = %bb.dz
  %i.ox = getelementptr inbounds i8, ptr %8, i64 %i.oj
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !17
  %i.oz = zext i8 %i.oy to i32
  %gep1556.i = getelementptr i8, ptr %invariant.gep1555.i, i64 %i.oi
  %i.pa = load i8, ptr %gep1556.i, align 1, !tbaa !17
  %i.pb = zext i8 %i.pa to i32
  %gep1558.i = getelementptr i8, ptr %invariant.gep1557.i, i64 %i.oi
  %i.pc = load i8, ptr %gep1558.i, align 1, !tbaa !17
  %i.pd = zext i8 %i.pc to i32
  br label %getVal.exit351.us.i

getVal.exit351.us.i:                              ; preds = %bb.ed, %bb.ec, %bb.eb
  %.0.i348473.us.i = phi i32 [ %i.pb, %bb.ed ], [ %i.ov, %bb.ec ], [ %i.os, %bb.eb ]
  %.0.i346464471.us.i = phi i32 [ %i.oz, %bb.ed ], [ %i.ou, %bb.ec ], [ %i.or, %bb.eb ]
  %.0.i350.us.i = phi i32 [ %i.pd, %bb.ed ], [ %i.ow, %bb.ec ], [ %i.ot, %bb.eb ]
  %i.pe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.155, i32 noundef %.0.i346464471.us.i, i32 noundef %.0.i348473.us.i, i32 noundef %.0.i350.us.i) ; 0 uses
  %indvars.iv.next1155.i = add nuw nsw i64 %indvars.iv1154.i, 1 ; 2 uses
  %exitcond1158.not.i = icmp eq i64 %indvars.iv.next1155.i, %i.mv
  br i1 %exitcond1158.not.i, label %._crit_edge811.split.us814.i, label %bb.dz, !llvm.loop !64

._crit_edge811.split.us814.i:                     ; preds = %getVal.exit351.us.i
  %putchar.us.i = tail call i32 @putchar(i32 10)  ; 0 uses
  %indvars.iv.next1160.i = add nuw nsw i64 %indvars.iv1159.i, 1 ; 2 uses
  %exitcond1163.not.i = icmp eq i64 %indvars.iv.next1160.i, %wide.trip.count1162.i
  br i1 %exitcond1163.not.i, label %.loopexit, label %.preheader.us.i, !llvm.loop !65

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheader.i
  %.2263812.i = phi i32 [ %i.pf, %.preheader.i ], [ 0, %.preheader.lr.ph.i ]
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.pf = add nuw nsw i32 %.2263812.i, 1          ; 2 uses
  %exitcond1153.not.i = icmp eq i32 %i.pf, %i.g
  br i1 %exitcond1153.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !65

.loopexit:                                        ; preds = %._crit_edge.i, %._crit_edge681.split.i, %._crit_edge681.split.us.us.i, %.preheader.i, %._crit_edge811.split.us814.i, %._crit_edge811.split.us.us.us.i, %.thread384.i, %.preheader485.i, %.preheader484.lr.ph.i, %.preheader481.lr.ph.i, %.preheader482.i
  %.str.146.sink = phi ptr [ @str.22, %.preheader485.i ], [ @str.21, %._crit_edge811.split.us814.i ], [ @str.21, %._crit_edge811.split.us.us.us.i ], [ @str.22, %._crit_edge681.split.i ], [ @str.22, %.preheader482.i ], [ @str.22, %.preheader481.lr.ph.i ], [ @str.22, %.preheader484.lr.ph.i ], [ @str.22, %._crit_edge681.split.us.us.i ], [ @str.21, %.preheader.i ], [ @str.21, %.thread384.i ], [ @str.22, %._crit_edge.i ]
  %i.pg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.146.sink) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.v, %bb.q, %bb.o, %bb.m, %bb.k, %.loopexit, %bb.aj, %bb.ah, %bb.ae, %bb.h, %bb.f, %bb.d, %bb.b
  %.0128 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ %8, %.loopexit ], [ %8, %bb.aj ], [ %8, %bb.ae ], [ %8, %bb.ah ], [ %8, %bb.k ], [ %8, %bb.m ], [ %8, %bb.o ], [ %8, %bb.q ], [ %8, %bb.v ], [ %8, %bb.x ]
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.h ], [ %.1, %.loopexit ], [ null, %bb.aj ], [ null, %bb.ae ], [ null, %bb.ah ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.q ], [ %calloc, %bb.v ], [ %calloc, %bb.x ]
  tail call void @free(ptr noundef %.2) #21
  tail call void @free(ptr noundef %.0128) #21
  ret void
}

declare ptr @tj3GetScalingFactors(ptr noundef) local_unnamed_addr #7

declare i32 @tj3SetScalingFactor(ptr noundef, i64) local_unnamed_addr #7

declare i32 @tj3DecompressHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @tj3DecompressToYUV8(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3DecodeYUV8(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3Decompress8(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3Decompress12(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @tj3Decompress16(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{null}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !13, !26, !27}
!30 = distinct !{!30, !13, !26, !27}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13, !27, !26}
!33 = distinct !{!33, !13, !26, !27}
!34 = distinct !{!34, !13, !27, !26}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13, !27, !26}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = !{!48, !5, i64 0}
!48 = !{!"", !5, i64 0, !5, i64 4}
!49 = !{!48, !5, i64 4}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
end_hunk_2
