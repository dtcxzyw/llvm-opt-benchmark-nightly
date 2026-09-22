Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjunittest?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@doTest:bb.a
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.aq) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.r:                                             ; preds = %bb.p
  switch i32 %spec.store.select, label %bb.u [
    i32 4, label %bb.s
    i32 2, label %bb.s
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r
  %i.as = tail call i32 @tj3Set(ptr noundef nonnull %i.r, i32 noundef 9, i32 noundef 1) #21
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.au = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.r) #21
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.au) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.n
  %i.aw = tail call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 4, i32 noundef %spec.store.select) #21
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.v, label %.preheader91

.preheader91:                                     ; preds = %bb.u
  %i.ay = icmp samesign ugt i32 %spec.store.select, 6
  %i.az = mul nuw nsw i32 %1, %0
  %wide.trip.count234.i.i = zext nneg i32 %0 to i64 ; 26 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = add nsw i64 %wide.trip.count234.i.i, -1 ; 6 uses
  %xtraiter = and i64 %wide.trip.count234.i.i, 1
  %i.bf = icmp eq i64 %i.be, 0
  %unroll_iter = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod242 = trunc i32 %0 to i1
  %xtraiter243 = and i64 %wide.trip.count234.i.i, 1
  %i.bg = icmp eq i64 %i.be, 0
  %unroll_iter246 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod245 = trunc i32 %0 to i1
  %xtraiter248 = and i64 %wide.trip.count234.i.i, 1
  %i.bh = icmp eq i64 %i.be, 0
  %unroll_iter251 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i32 %0 to i1
  %xtraiter253 = and i64 %wide.trip.count234.i.i, 1
  %i.bi = icmp eq i64 %i.be, 0
  %unroll_iter256 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  %lcmp.mod255 = trunc i32 %0 to i1
  %i.bj = and i64 %wide.trip.count234.i.i, 12
  %n.vec169 = and i64 %wide.trip.count234.i.i, 48 ; 5 uses
  %i.bk = icmp eq i64 %n.vec169, 32
  %cmp.n182 = icmp eq i64 %n.vec169, %wide.trip.count234.i.i
  %min.epilog.iters.check187 = icmp eq i64 %i.bj, 0
  %n.vec189 = and i64 %wide.trip.count234.i.i, 60 ; 3 uses
  %i.bl = trunc nuw nsw i64 %n.vec169 to i32
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction198 = or disjoint <4 x i32> %broadcast.splat197, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n205 = icmp eq i64 %n.vec189, %wide.trip.count234.i.i
  %i.bm = and i64 %wide.trip.count234.i.i, 12
  %n.vec = and i64 %wide.trip.count234.i.i, 48    ; 5 uses
  %i.bn = icmp eq i64 %n.vec, 32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count234.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec153 = and i64 %wide.trip.count234.i.i, 60 ; 3 uses
  %i.bo = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert160 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat161 = shufflevector <4 x i32> %broadcast.splatinsert160, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat161, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n166 = icmp eq i64 %n.vec153, %wide.trip.count234.i.i
  %xtraiter258 = and i64 %wide.trip.count234.i.i, 1
  %i.bp = icmp eq i64 %i.be, 0
  %unroll_iter261 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod260 = trunc i32 %0 to i1
  %xtraiter263 = and i64 %wide.trip.count234.i.i, 1
  %i.bq = icmp eq i64 %i.be, 0
  %unroll_iter266 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  %lcmp.mod265 = trunc i32 %0 to i1
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.br) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.w:                                             ; preds = %.preheader91, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader91 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.bv = icmp eq i32 %i.bu, 11
  %or.cond82 = select i1 %i.bv, i1 %i.ay, i1 false
  br i1 %or.cond82, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.w, %bb.ct
  %i.bw = phi i1 [ false, %bb.ct ], [ true, %bb.w ]
  %.098 = phi i32 [ 1, %bb.ct ], [ 0, %bb.w ]     ; 2 uses
  %i.bx = call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef %.098) #21
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.preheader
  %i.bz = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.bz) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.y:                                             ; preds = %.preheader
  %i.cb = call i32 @tj3Set(ptr noundef nonnull %i.r, i32 noundef 1, i32 noundef %.098) #21
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cd = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.r) #21
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.cd) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.aa:                                            ; preds = %bb.y
  %i.cf = load i32, ptr %i.bt, align 4, !tbaa !12 ; 10 uses
  %.b78 = load i1, ptr @alloc, align 4
  br i1 %.b78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %.068, ptr %i.g, align 8, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cg = sext i32 %i.cf to i64                   ; 5 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !11 ; 5 uses
  %i.cj = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 1) #21 ; 2 uses
  %i.ck = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 4) #21
  %.fr100 = freeze i32 %i.ck                      ; 17 uses
  %i.cl = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 16) #21 ; 2 uses
  %i.cm = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 3) #21 ; 3 uses
  %.not.i = icmp eq i32 %i.cj, 0                  ; 7 uses
  %i.cn = select i1 %.not.i, ptr @.str.139, ptr @.str.138 ; 4 uses
  %i.co = select i1 %.not.i, ptr @.str.141, ptr @.str.140 ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.cg
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12 ; 4 uses
  %i.cr = mul nsw i32 %i.az, %i.cq                ; 6 uses
  %i.cs = load i32, ptr @sampleSize, align 4, !tbaa !12
  %i.ct = mul nsw i32 %i.cr, %i.cs
  %i.cu = sext i32 %i.ct to i64                   ; 3 uses
  %i.cv = call noalias ptr @malloc(i64 noundef %i.cu) #22 ; 37 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.142) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %compTest.exit

bb.ae:                                            ; preds = %bb.ac
  switch i32 %i.cf, label %bb.ag [
    i32 6, label %bb.af
    i32 11, label %.preheader150.i.i
  ]

.preheader150.i.i:                                ; preds = %bb.ae
  %i.cy = icmp sgt i32 %i.cr, 0
  %.pre.i.i = load i32, ptr @precision, align 4
  %.fr204.i.i = freeze i32 %.pre.i.i              ; 3 uses
  %i.cz = icmp slt i32 %.fr204.i.i, 9             ; 2 uses
  br i1 %i.cy, label %.lr.ph.i.i, label %.preheader148.i.i

.lr.ph.i.i:                                       ; preds = %.preheader150.i.i
  %i.da = load i32, ptr @maxSample, align 4, !tbaa !12 ; 2 uses
  %i.db = trunc i32 %i.da to i16                  ; 3 uses
  br i1 %i.cz, label %.preheader148.thread.i.i, label %iter.check219

iter.check219:                                    ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.cr, 4
  br i1 %min.iters.check, label %setVal.exit135.i.i.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check219
  %min.iters.check208 = icmp ult i32 %i.cr, 16
  br i1 %min.iters.check208, label %vec.epilog.ph223, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.dc = and i64 %wide.trip.count.i.i, 12
  %n.vec210 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert211 = insertelement <8 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat212 = shufflevector <8 x i16> %broadcast.splatinsert211, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next215, %vector.body213 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index214 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %broadcast.splat212, ptr %i.dd, align 2, !tbaa !18
  store <8 x i16> %broadcast.splat212, ptr %i.de, align 2, !tbaa !18
  %index.next215 = add nuw i64 %index214, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.df, label %middle.block216, label %vector.body213, !llvm.loop !28

middle.block216:                                  ; preds = %vector.body213
  %cmp.n217 = icmp eq i64 %n.vec210, %wide.trip.count.i.i
  br i1 %cmp.n217, label %.preheader147.preheader.i.i, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  %min.epilog.iters.check222 = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check222, label %setVal.exit135.i.i.preheader, label %vec.epilog.ph223, !prof !44

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec210, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check207 ]
  %n.vec224 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert225 = insertelement <4 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat226 = shufflevector <4 x i16> %broadcast.splatinsert225, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph223
  %index228 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next229, %vec.epilog.vector.body227 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index228
  store <4 x i16> %broadcast.splat226, ptr %i.dg, align 2, !tbaa !18
  %index.next229 = add nuw i64 %index228, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.dh, label %vec.epilog.middle.block230, label %vec.epilog.vector.body227, !llvm.loop !29

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body227
  %cmp.n231 = icmp eq i64 %n.vec224, %wide.trip.count.i.i
  br i1 %cmp.n231, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i.preheader

setVal.exit135.i.i.preheader:                     ; preds = %iter.check219, %vec.epilog.iter.check221, %vec.epilog.middle.block230
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check219 ], [ %n.vec210, %vec.epilog.iter.check221 ], [ %n.vec224, %vec.epilog.middle.block230 ]
  br label %setVal.exit135.i.i

.preheader148.thread.i.i:                         ; preds = %.lr.ph.i.i
  %i.di = trunc i32 %i.da to i8
  %i.dj = zext nneg i32 %i.cr to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 %i.di, i64 %i.dj, i1 false), !tbaa !16
  br label %.preheader147.us.preheader.i.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 0, i64 %i.cu, i1 false)
  %i.dk = load i32, ptr @redToY, align 4          ; 2 uses
  %i.dl = load i32, ptr @yellowToY, align 4       ; 2 uses
  %i.dm = load i32, ptr @precision, align 4
  %.fr.i.i = freeze i32 %i.dm                     ; 3 uses
  %i.dn = icmp slt i32 %.fr.i.i, 9
  %i.do = load i32, ptr @maxSample, align 4       ; 2 uses
  br i1 %i.dn, label %.preheader145.us.preheader.i.i, label %.preheader145.preheader.i.i

.preheader145.us.preheader.i.i:                   ; preds = %bb.af
  %i.dp = trunc i32 %i.do to i8
  br label %iter.check

iter.check:                                       ; preds = %.split171.us.us.i.i, %.preheader145.us.preheader.i.i
  %.0113178.us.i.i = phi i32 [ %i.ey, %.split171.us.us.i.i ], [ 0, %.preheader145.us.preheader.i.i ] ; 5 uses
  %i.dq = lshr i32 %.0113178.us.i.i, 3            ; 3 uses
  %i.dr = icmp samesign ult i32 %.0113178.us.i.i, 16 ; 2 uses
  %i.ds = select i1 %i.dr, i32 %i.dk, i32 %i.dl
  %i.dt = trunc i32 %i.ds to i8                   ; 3 uses
  %i.du = select i1 %i.dr, i8 %i.dp, i8 0         ; 3 uses
  %i.dv = xor i32 %.0113178.us.i.i, -1
  %i.dw = add nsw i32 %1, %i.dv
  %.pn133.us.i.i = select i1 %.not.i, i32 %.0113178.us.i.i, i32 %i.dw
  %.pn132.us.i.i = mul nsw i32 %.pn133.us.i.i, %0
  %i.dx = sext i32 %.pn132.us.i.i to i64
  %invariant.gep334.i.i = getelementptr i8, ptr %i.cv, i64 %i.dx ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert149 = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %broadcast.splat150 = shufflevector <16 x i8> %broadcast.splatinsert149, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert151 = insertelement <16 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat152 = shufflevector <16 x i8> %broadcast.splatinsert151, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dy = add nuw nsw <16 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dz = and <16 x i32> %i.dy, splat (i32 1)
  %i.ea = icmp eq <16 x i32> %i.dz, zeroinitializer
  %i.eb = select <16 x i1> %i.ea, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  store <16 x i8> %i.eb, ptr %invariant.gep334.i.i, align 1, !tbaa !16
  %i.ec = add nuw nsw <16 x i32> %broadcast.splat, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ed = and <16 x i32> %i.ec, splat (i32 1)
  %i.ee = icmp eq <16 x i32> %i.ed, zeroinitializer
  %i.ef = select <16 x i1> %i.ee, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  %i.eg = getelementptr i8, ptr %invariant.gep334.i.i, i64 16
  store <16 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !16
  br i1 %i.bn, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %iter.check
  %i.eh = add nuw nsw <16 x i32> %broadcast.splat, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.ei = and <16 x i32> %i.eh, splat (i32 1)
  %i.ej = icmp eq <16 x i32> %i.ei, zeroinitializer
  %i.ek = select <16 x i1> %i.ej, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  %i.el = getelementptr i8, ptr %invariant.gep334.i.i, i64 32
  store <16 x i8> %i.ek, ptr %i.el, align 1, !tbaa !16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %iter.check
  br i1 %cmp.n, label %.split171.us.us.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader145.split.us.split.us.us.i.i.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <4 x i8> poison, i8 %i.dt, i64 0
  %broadcast.splat157 = shufflevector <4 x i8> %broadcast.splatinsert156, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat159 = shufflevector <4 x i8> %broadcast.splatinsert158, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind163 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next165, %vec.epilog.vector.body ] ; 2 uses
  %i.em = lshr <4 x i32> %vec.ind163, splat (i32 3)
  %i.en = add nuw nsw <4 x i32> %i.em, %broadcast.splat155
  %i.eo = and <4 x i32> %i.en, splat (i32 1)
  %i.ep = icmp eq <4 x i32> %i.eo, zeroinitializer
  %i.eq = select <4 x i1> %i.ep, <4 x i8> %broadcast.splat159, <4 x i8> %broadcast.splat157
  %i.er = getelementptr i8, ptr %invariant.gep334.i.i, i64 %index162
  store <4 x i8> %i.eq, ptr %i.er, align 1, !tbaa !16
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %vec.ind.next165 = add <4 x i32> %vec.ind163, splat (i32 4)
  %i.es = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n166, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i.preheader

.preheader145.split.us.split.us.us.i.i.preheader: ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec153, %vec.epilog.middle.block ]
  br label %.preheader145.split.us.split.us.us.i.i

.preheader145.split.us.split.us.us.i.i:           ; preds = %.preheader145.split.us.split.us.us.i.i.preheader, %.preheader145.split.us.split.us.us.i.i
  %indvars.iv282.i.i = phi i64 [ %indvars.iv.next283.i.i, %.preheader145.split.us.split.us.us.i.i ], [ %indvars.iv282.i.i.ph, %.preheader145.split.us.split.us.us.i.i.preheader ] ; 3 uses
  %i.et = trunc nuw nsw i64 %indvars.iv282.i.i to i32
  %i.eu = lshr i32 %i.et, 3
  %i.ev = add nuw nsw i32 %i.eu, %i.dq
  %i.ew = and i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ew, 0
  %spec.select.i.i = select i1 %i.ex, i8 %i.du, i8 %i.dt
  %gep335.i.i = getelementptr i8, ptr %invariant.gep334.i.i, i64 %indvars.iv282.i.i
  store i8 %spec.select.i.i, ptr %gep335.i.i, align 1, !tbaa !16
  %indvars.iv.next283.i.i = add nuw nsw i64 %indvars.iv282.i.i, 1 ; 2 uses
  %exitcond287.not.i.i = icmp eq i64 %indvars.iv.next283.i.i, %wide.trip.count234.i.i
  br i1 %exitcond287.not.i.i, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i, !llvm.loop !31

.split171.us.us.i.i:                              ; preds = %.preheader145.split.us.split.us.us.i.i, %vec.epilog.middle.block, %middle.block
  %i.ey = add nuw nsw i32 %.0113178.us.i.i, 1     ; 2 uses
  %exitcond288.not.i.i = icmp eq i32 %i.ey, %1
  br i1 %exitcond288.not.i.i, label %initBuf.exit.i, label %iter.check, !llvm.loop !32

.preheader145.preheader.i.i:                      ; preds = %bb.af
  %i.ez = trunc i32 %i.do to i16
  br label %iter.check184

iter.check184:                                    ; preds = %.split171.split.i.i, %.preheader145.preheader.i.i
  %.0113178.i.i = phi i32 [ %i.go, %.split171.split.i.i ], [ 0, %.preheader145.preheader.i.i ] ; 5 uses
  %i.fa = xor i32 %.0113178.i.i, -1
  %i.fb = add nsw i32 %1, %i.fa
  %.pn133.i.i = select i1 %.not.i, i32 %.0113178.i.i, i32 %i.fb
  %.pn132.i.i = mul nsw i32 %.pn133.i.i, %0
  %i.fc = lshr i32 %.0113178.i.i, 3               ; 3 uses
  %i.fd = icmp samesign ult i32 %.0113178.i.i, 16 ; 2 uses
  %i.fe = select i1 %i.fd, i32 %i.dk, i32 %i.dl
  %i.ff = trunc i32 %i.fe to i16                  ; 3 uses
  %i.fg = select i1 %i.fd, i16 %i.ez, i16 0       ; 3 uses
  %i.fh = sext i32 %.pn132.i.i to i64
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.cv, i64 %i.fh ; 8 uses
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert172 = insertelement <8 x i16> poison, i16 %i.ff, i64 0
  %broadcast.splat173 = shufflevector <8 x i16> %broadcast.splatinsert172, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert174 = insertelement <8 x i16> poison, i16 %i.fg, i64 0
  %broadcast.splat175 = shufflevector <8 x i16> %broadcast.splatinsert174, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.fi = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fj = icmp eq <8 x i32> %i.fi, zeroinitializer
  %i.fk = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233 = icmp eq <8 x i32> %i.fk, zeroinitializer
  %i.fl = select <8 x i1> %i.fj, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fm = select <8 x i1> %.not233, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.fn = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store <8 x i16> %i.fl, ptr %invariant.gep.i.i, align 2, !tbaa !18
  store <8 x i16> %i.fm, ptr %i.fn, align 2, !tbaa !18
  %i.fo = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fp = icmp eq <8 x i32> %i.fo, zeroinitializer
  %i.fq = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233.1 = icmp eq <8 x i32> %i.fq, zeroinitializer
  %i.fr = select <8 x i1> %i.fp, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fs = select <8 x i1> %.not233.1, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.ft = getelementptr i8, ptr %invariant.gep.i.i, i64 32
  %i.fu = getelementptr i8, ptr %invariant.gep.i.i, i64 48
  store <8 x i16> %i.fr, ptr %i.ft, align 2, !tbaa !18
  store <8 x i16> %i.fs, ptr %i.fu, align 2, !tbaa !18
  br i1 %i.bk, label %middle.block181, label %vector.body176.2
end_hunk_0
