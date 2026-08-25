Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFx?download=true
inline.NumInlined: 642
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Fx_ManUpdate:bb.a
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.an) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #27
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.aq = phi ptr [ %i.aj, %bb.f ], [ %i.ai, %bb.e ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %bb.j ]
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !41
  store i32 %spec.select.sink.i.i, ptr %i.b, align 8, !tbaa !40
  %.pre11.i = load i32, ptr %i.g, align 4, !tbaa !39
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.g, %.Vec_IntPush.exit_crit_edge.i
  %i.ar = phi i32 [ %i.ad, %.Vec_IntPush.exit_crit_edge.i ], [ %i.ad, %bb.g ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.as = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.g ], [ %i.aq, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.g, align 4, !tbaa !39
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %i.ac, ptr %i.av, align 4, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !39
  %i.aw = sext i32 %.val.i to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.b, label %Vec_IntAppend.exit, !llvm.loop !178

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.a
  %.val16.i = load i32, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  %i.ay = icmp sgt i32 %.val16.i, 0
  br i1 %i.ay, label %.lr.ph.i416, label %Fx_ManDivFindPivots.exit

.lr.ph.i416:                                      ; preds = %Vec_IntAppend.exit
  %i.az = getelementptr i8, ptr %i.b, i64 8
  %.val15.i = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.ba = zext nneg i32 %.val16.i to i64
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.i, %.lr.ph.i416
  %.0857 = phi i32 [ -1, %.lr.ph.i416 ], [ %.1858, %thread-pre-split.i ] ; 2 uses
  %.0853 = phi i32 [ -1, %.lr.ph.i416 ], [ %.2855, %thread-pre-split.i ] ; 2 uses
  %indvars.iv.i417 = phi i64 [ 0, %.lr.ph.i416 ], [ %indvars.iv.next.i418, %thread-pre-split.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.i417
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !42 ; 2 uses
  %i.bd = and i32 %i.bc, 1
  %.not.i = icmp eq i32 %i.bd, 0                  ; 2 uses
  %i.be = ashr i32 %i.bc, 1                       ; 2 uses
  %i.bf = icmp ne i32 %.0853, -1
  %i.bg = icmp eq i32 %.0857, -1
  %i.bh = and i1 %.not.i, %i.bg
  %.1858 = select i1 %i.bh, i32 %i.be, i32 %.0857 ; 3 uses
  %i.bi = select i1 %.not.i, i1 true, i1 %i.bf
  %.2855 = select i1 %i.bi, i32 %.0853, i32 %i.be ; 3 uses
  %i.bj = icmp slt i32 %.1858, 0
  %i.bk = icmp slt i32 %.2855, 0
  %or.cond864.not869 = select i1 %i.bj, i1 true, i1 %i.bk
  %indvars.iv.next.i418 = add nuw nsw i64 %indvars.iv.i417, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next.i418, %i.ba
  %or.cond866 = select i1 %or.cond864.not869, i1 %i.bl, i1 false
  br i1 %or.cond866, label %thread-pre-split.i, label %Fx_ManDivFindPivots.exit, !llvm.loop !179

Fx_ManDivFindPivots.exit:                         ; preds = %thread-pre-split.i, %Vec_IntAppend.exit
  %.2859 = phi i32 [ -1, %Vec_IntAppend.exit ], [ %.1858, %thread-pre-split.i ] ; 5 uses
  %.3856 = phi i32 [ -1, %Vec_IntAppend.exit ], [ %.2855, %thread-pre-split.i ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !105 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 5 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !39
  %.val342 = load i32, ptr %i.g, align 4, !tbaa !39
  %i.bp = icmp eq i32 %.val342, 2
  %.pre1048 = load ptr, ptr %0, align 8, !tbaa !104 ; 3 uses
  br i1 %i.bp, label %bb.k, label %bb.af

bb.k:                                             ; preds = %Fx_ManDivFindPivots.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !111
  %i.bs = xor i32 %.2859, 1
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  %.val374 = load ptr, ptr %i.bt, align 8, !tbaa !13 ; 2 uses
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %.val374, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 5 uses
  %.val1216.i = load i32, ptr %i.bw, align 4, !tbaa !39 ; 2 uses
  %i.bx = icmp sgt i32 %.val1216.i, 0
  br i1 %i.bx, label %.lr.ph.i420, label %Fx_ManCompressCubes.exit

.lr.ph.i420:                                      ; preds = %bb.k
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %.val14.i = load ptr, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.bz = getelementptr i8, ptr %.pre1048, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i420
  %.val1220.i = phi i32 [ %.val1216.i, %.lr.ph.i420 ], [ %.val12.i, %bb.n ]
  %indvars.iv.i421 = phi i64 [ 0, %.lr.ph.i420 ], [ %indvars.iv.next.i423, %bb.n ] ; 2 uses
  %.018.i = phi i32 [ 0, %.lr.ph.i420 ], [ %.1.i, %bb.n ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i421
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !42 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %.val13.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %.val.i422 = load i32, ptr %i.ce, align 4, !tbaa !39
  %i.cf = icmp sgt i32 %.val.i422, 0
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = add nsw i32 %.018.i, 1
  %i.ch = sext i32 %.018.i to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.ch
  store i32 %i.cb, ptr %i.ci, align 4, !tbaa !42
  %.val12.pre.i = load i32, ptr %i.bw, align 4, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.val12.i = phi i32 [ %.val12.pre.i, %bb.m ], [ %.val1220.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %i.cg, %bb.m ], [ %.018.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i423 = add nuw nsw i64 %indvars.iv.i421, 1 ; 2 uses
  %i.cj = sext i32 %.val12.i to i64
  %i.ck = icmp slt i64 %indvars.iv.next.i423, %i.cj
  br i1 %i.ck, label %bb.l, label %Fx_ManCompressCubes.exit, !llvm.loop !180

Fx_ManCompressCubes.exit:                         ; preds = %bb.n, %bb.k
  %.0.lcssa.i = phi i32 [ 0, %bb.k ], [ %.1.i, %bb.n ]
  store i32 %.0.lcssa.i, ptr %i.bw, align 4, !tbaa !39
  %i.cl = xor i32 %.3856, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %.val374, i64 %i.cm ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 4      ; 4 uses
  %.val1216.i424 = load i32, ptr %i.co, align 4, !tbaa !39 ; 2 uses
  %i.cp = icmp sgt i32 %.val1216.i424, 0
  %i.cq = getelementptr i8, ptr %i.cn, i64 8
  %.val14.i427 = load ptr, ptr %i.cq, align 8, !tbaa !41 ; 8 uses
  br i1 %i.cp, label %.lr.ph.i426, label %Fx_ManCompressCubes.exit437

.lr.ph.i426:                                      ; preds = %Fx_ManCompressCubes.exit
  %i.cr = getelementptr i8, ptr %.pre1048, i64 8
  %.val13.i428 = load ptr, ptr %i.cr, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i426
  %.val1220.i429 = phi i32 [ %.val1216.i424, %.lr.ph.i426 ], [ %.val12.i433, %bb.q ]
  %indvars.iv.i430 = phi i64 [ 0, %.lr.ph.i426 ], [ %indvars.iv.next.i435, %bb.q ] ; 2 uses
  %.018.i431 = phi i32 [ 0, %.lr.ph.i426 ], [ %.1.i434, %bb.q ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val14.i427, i64 %indvars.iv.i430
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr %.val13.i428, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %.val.i432 = load i32, ptr %i.cw, align 4, !tbaa !39
  %i.cx = icmp sgt i32 %.val.i432, 0
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = add nsw i32 %.018.i431, 1
  %i.cz = sext i32 %.018.i431 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.val14.i427, i64 %i.cz
  store i32 %i.ct, ptr %i.da, align 4, !tbaa !42
  %.val12.pre.i436 = load i32, ptr %i.co, align 4, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val12.i433 = phi i32 [ %.val12.pre.i436, %bb.p ], [ %.val1220.i429, %bb.o ] ; 2 uses
  %.1.i434 = phi i32 [ %i.cy, %bb.p ], [ %.018.i431, %bb.o ] ; 2 uses
  %indvars.iv.next.i435 = add nuw nsw i64 %indvars.iv.i430, 1 ; 2 uses
  %i.db = sext i32 %.val12.i433 to i64
  %i.dc = icmp slt i64 %indvars.iv.next.i435, %i.db
  br i1 %i.dc, label %bb.o, label %Fx_ManCompressCubes.exit437, !llvm.loop !180

Fx_ManCompressCubes.exit437:                      ; preds = %bb.q, %Fx_ManCompressCubes.exit
  %.0.lcssa.i425 = phi i32 [ 0, %Fx_ManCompressCubes.exit ], [ %.1.i434, %bb.q ] ; 3 uses
  store i32 %.0.lcssa.i425, ptr %i.co, align 4, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !41 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dg = load i32, ptr %i.bw, align 4, !tbaa !39 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %.idx.i = shl nsw i64 %i.dh, 2                  ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %.idx.i ; 3 uses
  %i.dj = sext i32 %.0.lcssa.i425 to i64
  %.idx68.i = shl nsw i64 %i.dj, 2                ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.val14.i427, i64 %.idx68.i ; 3 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !39
  %i.dl = icmp sgt i32 %i.dg, 0
  %i.dm = icmp sgt i32 %.0.lcssa.i425, 0
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %.lr.ph.i440, label %.preheader52.i

.lr.ph.i440:                                      ; preds = %Fx_ManCompressCubes.exit437
  %i.do = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  br label %bb.r

.preheader52.i:                                   ; preds = %bb.ae, %Fx_ManCompressCubes.exit437
  %.046.lcssa.i = phi ptr [ %i.de, %Fx_ManCompressCubes.exit437 ], [ %.147.i, %bb.ae ] ; 5 uses
  %.043.lcssa.i = phi ptr [ %.val14.i427, %Fx_ManCompressCubes.exit437 ], [ %.144.i, %bb.ae ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.de, %Fx_ManCompressCubes.exit437 ], [ %.141.i, %bb.ae ] ; 5 uses
  %.0.lcssa.i438 = phi ptr [ %.val14.i427, %Fx_ManCompressCubes.exit437 ], [ %.1.i441, %bb.ae ] ; 5 uses
  %.0.lcssa.i4381278 = ptrtoaddr ptr %.0.lcssa.i438 to i64
  %.043.lcssa.i1279 = ptrtoaddr ptr %.043.lcssa.i to i64 ; 3 uses
  %i.dp = icmp ult ptr %.046.lcssa.i, %i.di
  br i1 %i.dp, label %.lr.ph62.i.preheader, label %.preheader.i

.lr.ph62.i.preheader:                             ; preds = %.preheader52.i
  %.046.lcssa.i1273 = ptrtoaddr ptr %.046.lcssa.i to i64 ; 3 uses
  %.040.lcssa.i1272 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.dq = ptrtoaddr ptr %i.de to i64
  %3 = add i64 %.idx.i, %i.dq
  %i.dr = add i64 %.046.lcssa.i1273, 4
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.dr)
  %i.ds = xor i64 %.046.lcssa.i1273, -1
  %i.dt = add i64 %4, %i.ds                       ; 2 uses
  %i.du = lshr i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 44
  %i.dw = sub i64 %.046.lcssa.i1273, %.040.lcssa.i1272
  %diff.check = icmp ugt i64 %i.dw, -32
  %or.cond1334 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1334, label %.lr.ph62.i.preheader1376, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62.i.preheader
  %n.vec = and i64 %i.dv, 9223372036854775800     ; 3 uses
  %i.dx = shl i64 %n.vec, 2                       ; 2 uses
  %i.dy = getelementptr i8, ptr %.040.lcssa.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %.046.lcssa.i, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.040.lcssa.i, i64 %i.ea ; 2 uses
  %next.gep1274 = getelementptr i8, ptr %.046.lcssa.i, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep1274, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1274, align 4, !tbaa !42
  %wide.load1275 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !42
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !42
  store <4 x i32> %wide.load1275, ptr %i.ec, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph62.i.preheader1376

.lr.ph62.i.preheader1376:                         ; preds = %.lr.ph62.i.preheader, %middle.block
  %.24261.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph62.i.preheader ], [ %i.dy, %middle.block ]
  %.24860.i.ph = phi ptr [ %.046.lcssa.i, %.lr.ph62.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph62.i

bb.r:                                             ; preds = %bb.ae, %.lr.ph.i440
  %.056.i = phi ptr [ %.val14.i427, %.lr.ph.i440 ], [ %.1.i441, %bb.ae ] ; 4 uses
  %.04055.i = phi ptr [ %i.de, %.lr.ph.i440 ], [ %.141.i, %bb.ae ] ; 4 uses
  %.04354.i = phi ptr [ %.val14.i427, %.lr.ph.i440 ], [ %.144.i, %bb.ae ] ; 4 uses
  %.04653.i = phi ptr [ %i.de, %.lr.ph.i440 ], [ %.147.i, %bb.ae ] ; 4 uses
  %i.ee = load i32, ptr %.04653.i, align 4, !tbaa !42 ; 4 uses
  %i.ef = load i32, ptr %.04354.i, align 4, !tbaa !42 ; 3 uses
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.eh = load i32, ptr %i.bo, align 4, !tbaa !39 ; 7 uses
  %i.ei = load i32, ptr %i.bn, align 8, !tbaa !40
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.t, label %.Vec_IntPush.exit_crit_edge.i442

.Vec_IntPush.exit_crit_edge.i442:                 ; preds = %bb.s
  %.pre.i443 = load ptr, ptr %i.do, align 8, !tbaa !41
  br label %Vec_IntPush.exit.i444

bb.t:                                             ; preds = %bb.s
  %i.ek = icmp slt i32 %i.eh, 16
  br i1 %i.ek, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %i.do, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i.i450 = icmp eq ptr %i.el, null
  br i1 %.not9.i.i.i450, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.el, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i448

bb.w:                                             ; preds = %bb.u
  %i.en = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i.i448

bb.x:                                             ; preds = %bb.t
  %i.eo = icmp samesign ult i32 %i.eh, 1073741823
  %i.ep = shl nuw nsw i32 %i.eh, 1
  %spec.select.i.i445 = select i1 %i.eo, i32 %i.ep, i32 2147483647 ; 4 uses
  %.not.i9.i.i446 = icmp samesign ult i32 %i.eh, %spec.select.i.i445
  %.pre70.i = load ptr, ptr %i.do, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i9.i.i446, label %bb.y, label %Vec_IntPush.exit.i444

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i.i447 = icmp eq ptr %.pre70.i, null
  %i.eq = zext nneg i32 %spec.select.i.i445 to i64
  %i.er = shl nuw nsw i64 %i.eq, 2                ; 2 uses
  br i1 %.not9.i10.i.i447, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = tail call ptr @realloc(ptr noundef nonnull %.pre70.i, i64 noundef %i.er) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i448

bb.aa:                                            ; preds = %bb.y
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.er) #27
  br label %Vec_IntGrow.exit11.sink.split.i.i448

Vec_IntGrow.exit11.sink.split.i.i448:             ; preds = %bb.aa, %bb.z, %bb.w, %bb.v
  %i.eu = phi ptr [ %i.en, %bb.w ], [ %i.em, %bb.v ], [ %i.es, %bb.z ], [ %i.et, %bb.aa ] ; 2 uses
  %spec.select.sink.i.i449 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i.i445, %bb.z ], [ %spec.select.i.i445, %bb.aa ]
  store ptr %i.eu, ptr %i.do, align 8, !tbaa !41
  store i32 %spec.select.sink.i.i449, ptr %i.bn, align 8, !tbaa !40
  %.pre71.i = load i32, ptr %i.bo, align 4, !tbaa !39
  br label %Vec_IntPush.exit.i444

Vec_IntPush.exit.i444:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i448, %bb.x, %.Vec_IntPush.exit_crit_edge.i442
  %i.ev = phi i32 [ %i.eh, %.Vec_IntPush.exit_crit_edge.i442 ], [ %i.eh, %bb.x ], [ %.pre71.i, %Vec_IntGrow.exit11.sink.split.i.i448 ] ; 2 uses
  %i.ew = phi ptr [ %.pre.i443, %.Vec_IntPush.exit_crit_edge.i442 ], [ %.pre70.i, %bb.x ], [ %i.eu, %Vec_IntGrow.exit11.sink.split.i.i448 ]
  %i.ex = add nsw i32 %i.ev, 1
  store i32 %i.ex, ptr %i.bo, align 4, !tbaa !39
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  store i32 %i.ee, ptr %i.ez, align 4, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.04354.i, i64 4
  br label %bb.ae

bb.ab:                                            ; preds = %bb.r
  %i.fc = icmp slt i32 %i.ee, %i.ef
  br i1 %i.fc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.04055.i, i64 4
  store i32 %i.ee, ptr %.04055.i, align 4, !tbaa !42
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %.04354.i, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.056.i, i64 4
  store i32 %i.ef, ptr %.056.i, align 4, !tbaa !42
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %Vec_IntPush.exit.i444
  %.147.i = phi ptr [ %i.fa, %Vec_IntPush.exit.i444 ], [ %i.fd, %bb.ac ], [ %.04653.i, %bb.ad ] ; 3 uses
  %.144.i = phi ptr [ %i.fb, %Vec_IntPush.exit.i444 ], [ %.04354.i, %bb.ac ], [ %i.ff, %bb.ad ] ; 3 uses
  %.141.i = phi ptr [ %.04055.i, %Vec_IntPush.exit.i444 ], [ %i.fe, %bb.ac ], [ %.04055.i, %bb.ad ] ; 2 uses
  %.1.i441 = phi ptr [ %.056.i, %Vec_IntPush.exit.i444 ], [ %.056.i, %bb.ac ], [ %i.fg, %bb.ad ] ; 2 uses
  %i.fh = icmp ult ptr %.147.i, %i.di
  %i.fi = icmp ult ptr %.144.i, %i.dk
  %i.fj = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %i.fj, label %bb.r, label %.preheader52.i, !llvm.loop !182

.preheader.i:                                     ; preds = %.lr.ph62.i, %middle.block, %.preheader52.i
  %.242.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader52.i ], [ %i.dy, %middle.block ], [ %i.gb, %.lr.ph62.i ]
  %i.fk = icmp ult ptr %.043.lcssa.i, %i.dk
  br i1 %i.fk, label %.lr.ph66.i.preheader, label %Vec_IntTwoRemoveCommon.exit

.lr.ph66.i.preheader:                             ; preds = %.preheader.i
  %i.fl = ptrtoaddr ptr %.val14.i427 to i64
  %5 = add i64 %.idx68.i, %i.fl
  %i.fm = add i64 %.043.lcssa.i1279, 4
  %6 = tail call i64 @llvm.umax.i64(i64 %5, i64 %i.fm)
  %i.fn = xor i64 %.043.lcssa.i1279, -1
  %i.fo = add i64 %6, %i.fn                       ; 2 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check1282 = icmp ult i64 %i.fo, 44
  %i.fr = sub i64 %.043.lcssa.i1279, %.0.lcssa.i4381278
  %diff.check1280 = icmp ugt i64 %i.fr, -32
  %or.cond1335 = select i1 %min.iters.check1282, i1 true, i1 %diff.check1280
  br i1 %or.cond1335, label %.lr.ph66.i.preheader1374, label %vector.ph1283

vector.ph1283:                                    ; preds = %.lr.ph66.i.preheader
  %n.vec1284 = and i64 %i.fq, 9223372036854775800 ; 3 uses
  %i.fs = shl i64 %n.vec1284, 2                   ; 2 uses
  %i.ft = getelementptr i8, ptr %.0.lcssa.i438, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %.043.lcssa.i, i64 %i.fs
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1291, %vector.body1285 ] ; 2 uses
  %i.fv = shl i64 %index1286, 2                   ; 2 uses
  %next.gep1287 = getelementptr i8, ptr %.0.lcssa.i438, i64 %i.fv ; 2 uses
  %next.gep1288 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.fv ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep1288, i64 16
  %wide.load1289 = load <4 x i32>, ptr %next.gep1288, align 4, !tbaa !42
  %wide.load1290 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !42
  %i.fx = getelementptr i8, ptr %next.gep1287, i64 16
  store <4 x i32> %wide.load1289, ptr %next.gep1287, align 4, !tbaa !42
  store <4 x i32> %wide.load1290, ptr %i.fx, align 4, !tbaa !42
  %index.next1291 = add nuw i64 %index1286, 8     ; 2 uses
  %i.fy = icmp eq i64 %index.next1291, %n.vec1284
  br i1 %i.fy, label %middle.block1292, label %vector.body1285, !llvm.loop !183

middle.block1292:                                 ; preds = %vector.body1285
  %cmp.n1293 = icmp eq i64 %i.fq, %n.vec1284
  br i1 %cmp.n1293, label %Vec_IntTwoRemoveCommon.exit, label %.lr.ph66.i.preheader1374

.lr.ph66.i.preheader1374:                         ; preds = %.lr.ph66.i.preheader, %middle.block1292
  %.265.i.ph = phi ptr [ %.0.lcssa.i438, %.lr.ph66.i.preheader ], [ %i.ft, %middle.block1292 ]
  %.24564.i.ph = phi ptr [ %.043.lcssa.i, %.lr.ph66.i.preheader ], [ %i.fu, %middle.block1292 ]
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader1376, %.lr.ph62.i
  %.24261.i = phi ptr [ %i.gb, %.lr.ph62.i ], [ %.24261.i.ph, %.lr.ph62.i.preheader1376 ] ; 2 uses
  %.24860.i = phi ptr [ %i.fz, %.lr.ph62.i ], [ %.24860.i.ph, %.lr.ph62.i.preheader1376 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.24860.i, i64 4 ; 2 uses
  %i.ga = load i32, ptr %.24860.i, align 4, !tbaa !42
  %i.gb = getelementptr inbounds nuw i8, ptr %.24261.i, i64 4 ; 2 uses
  store i32 %i.ga, ptr %.24261.i, align 4, !tbaa !42
  %i.gc = icmp ult ptr %i.fz, %i.di
  br i1 %i.gc, label %.lr.ph62.i, label %.preheader.i, !llvm.loop !184

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader1374, %.lr.ph66.i
  %.265.i = phi ptr [ %i.gf, %.lr.ph66.i ], [ %.265.i.ph, %.lr.ph66.i.preheader1374 ] ; 2 uses
  %.24564.i = phi ptr [ %i.gd, %.lr.ph66.i ], [ %.24564.i.ph, %.lr.ph66.i.preheader1374 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.24564.i, i64 4 ; 2 uses
  %i.ge = load i32, ptr %.24564.i, align 4, !tbaa !42
  %i.gf = getelementptr inbounds nuw i8, ptr %.265.i, i64 4 ; 2 uses
  store i32 %i.ge, ptr %.265.i, align 4, !tbaa !42
  %i.gg = icmp ult ptr %i.gd, %i.dk
  br i1 %i.gg, label %.lr.ph66.i, label %Vec_IntTwoRemoveCommon.exit, !llvm.loop !185

Vec_IntTwoRemoveCommon.exit:                      ; preds = %.lr.ph66.i, %middle.block1292, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.0.lcssa.i438, %.preheader.i ], [ %i.ft, %middle.block1292 ], [ %i.gf, %.lr.ph66.i ]
  %i.gh = load ptr, ptr %i.dd, align 8, !tbaa !41
  %i.gi = ptrtoint ptr %.242.lcssa.i to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 2
  %i.gm = trunc i64 %i.gl to i32
  store i32 %i.gm, ptr %i.bw, align 4, !tbaa !39
  %i.gn = load ptr, ptr %i.df, align 8, !tbaa !41
  %i.go = ptrtoint ptr %.2.lcssa.i to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = lshr exact i64 %i.gq, 2
  %i.gs = trunc i64 %i.gr to i32
  store i32 %i.gs, ptr %i.co, align 4, !tbaa !39
  %.pre1047 = load ptr, ptr %0, align 8, !tbaa !104
  br label %bb.af

bb.af:                                            ; preds = %Vec_IntTwoRemoveCommon.exit, %Fx_ManDivFindPivots.exit
  %i.gt = phi ptr [ %.pre1047, %Vec_IntTwoRemoveCommon.exit ], [ %.pre1048, %Fx_ManDivFindPivots.exit ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !111
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %.val370 = load ptr, ptr %i.gw, align 8, !tbaa !13 ; 2 uses
  %i.gx = sext i32 %.2859 to i64
  %i.gy = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 4      ; 3 uses
  %.val1216.i451 = load i32, ptr %i.gz, align 4, !tbaa !39 ; 2 uses
  %i.ha = icmp sgt i32 %.val1216.i451, 0
  br i1 %i.ha, label %.lr.ph.i453, label %Fx_ManCompressCubes.exit464

.lr.ph.i453:                                      ; preds = %bb.af
  %i.hb = getelementptr i8, ptr %i.gy, i64 8
  %.val14.i454 = load ptr, ptr %i.hb, align 8, !tbaa !41 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gt, i64 8
  %.val13.i455 = load ptr, ptr %i.hc, align 8, !tbaa !13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i453
  %.val1220.i456 = phi i32 [ %.val1216.i451, %.lr.ph.i453 ], [ %.val12.i460, %bb.ai ]
  %indvars.iv.i457 = phi i64 [ 0, %.lr.ph.i453 ], [ %indvars.iv.next.i462, %bb.ai ] ; 2 uses
  %.018.i458 = phi i32 [ 0, %.lr.ph.i453 ], [ %.1.i461, %bb.ai ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val14.i454, i64 %indvars.iv.i457
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !42 ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [16 x i8], ptr %.val13.i455, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  %.val.i459 = load i32, ptr %i.hh, align 4, !tbaa !39
  %i.hi = icmp sgt i32 %.val.i459, 0
  br i1 %i.hi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hj = add nsw i32 %.018.i458, 1
  %i.hk = sext i32 %.018.i458 to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %.val14.i454, i64 %i.hk
  store i32 %i.he, ptr %i.hl, align 4, !tbaa !42
  %.val12.pre.i463 = load i32, ptr %i.gz, align 4, !tbaa !39
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.val12.i460 = phi i32 [ %.val12.pre.i463, %bb.ah ], [ %.val1220.i456, %bb.ag ] ; 2 uses
  %.1.i461 = phi i32 [ %i.hj, %bb.ah ], [ %.018.i458, %bb.ag ] ; 2 uses
  %indvars.iv.next.i462 = add nuw nsw i64 %indvars.iv.i457, 1 ; 2 uses
  %i.hm = sext i32 %.val12.i460 to i64
  %i.hn = icmp slt i64 %indvars.iv.next.i462, %i.hm
  br i1 %i.hn, label %bb.ag, label %Fx_ManCompressCubes.exit464, !llvm.loop !180

Fx_ManCompressCubes.exit464:                      ; preds = %bb.ai, %bb.af
  %.0.lcssa.i452 = phi i32 [ 0, %bb.af ], [ %.1.i461, %bb.ai ]
  store i32 %.0.lcssa.i452, ptr %i.gz, align 4, !tbaa !39
  %i.ho = sext i32 %.3856 to i64
  %i.hp = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.ho ; 3 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 4      ; 3 uses
  %.val1216.i465 = load i32, ptr %i.hq, align 4, !tbaa !39 ; 2 uses
  %i.hr = icmp sgt i32 %.val1216.i465, 0
  br i1 %i.hr, label %.lr.ph.i467, label %Fx_ManCompressCubes.exit478

.lr.ph.i467:                                      ; preds = %Fx_ManCompressCubes.exit464
  %i.hs = getelementptr i8, ptr %i.hp, i64 8
  %.val14.i468 = load ptr, ptr %i.hs, align 8, !tbaa !41 ; 2 uses
  %i.ht = getelementptr i8, ptr %i.gt, i64 8
  %.val13.i469 = load ptr, ptr %i.ht, align 8, !tbaa !13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i467
  %.val1220.i470 = phi i32 [ %.val1216.i465, %.lr.ph.i467 ], [ %.val12.i474, %bb.al ]
  %indvars.iv.i471 = phi i64 [ 0, %.lr.ph.i467 ], [ %indvars.iv.next.i476, %bb.al ] ; 2 uses
  %.018.i472 = phi i32 [ 0, %.lr.ph.i467 ], [ %.1.i475, %bb.al ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.val14.i468, i64 %indvars.iv.i471
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !42 ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [16 x i8], ptr %.val13.i469, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %.val.i473 = load i32, ptr %i.hy, align 4, !tbaa !39
  %i.hz = icmp sgt i32 %.val.i473, 0
  br i1 %i.hz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ia = add nsw i32 %.018.i472, 1
  %i.ib = sext i32 %.018.i472 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %.val14.i468, i64 %i.ib
  store i32 %i.hv, ptr %i.ic, align 4, !tbaa !42
  %.val12.pre.i477 = load i32, ptr %i.hq, align 4, !tbaa !39
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.val12.i474 = phi i32 [ %.val12.pre.i477, %bb.ak ], [ %.val1220.i470, %bb.aj ] ; 2 uses
  %.1.i475 = phi i32 [ %i.ia, %bb.ak ], [ %.018.i472, %bb.aj ] ; 2 uses
  %indvars.iv.next.i476 = add nuw nsw i64 %indvars.iv.i471, 1 ; 2 uses
  %i.id = sext i32 %.val12.i474 to i64
  %i.ie = icmp slt i64 %indvars.iv.next.i476, %i.id
  br i1 %i.ie, label %bb.aj, label %Fx_ManCompressCubes.exit478, !llvm.loop !180

Fx_ManCompressCubes.exit478:                      ; preds = %bb.al, %Fx_ManCompressCubes.exit464
  %.0.lcssa.i466 = phi i32 [ 0, %Fx_ManCompressCubes.exit464 ], [ %.1.i475, %bb.al ]
  store i32 %.0.lcssa.i466, ptr %i.hq, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !106
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !107
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108
  tail call void @Fx_ManFindCommonPairs(ptr noundef %i.gt, ptr noundef %i.gy, ptr noundef %i.hp, ptr noundef %i.ig, ptr noundef %i.ii, ptr noundef %i.b, ptr noundef %i.ik, ptr poison)
  %i.il = load ptr, ptr %i.bm, align 8, !tbaa !105 ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 4
  %.val341903 = load i32, ptr %i.im, align 4, !tbaa !39
  %i.in = icmp sgt i32 %.val341903, 0
  br i1 %i.in, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Fx_ManCompressCubes.exit478, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ 0, %Fx_ManCompressCubes.exit478 ] ; 2 uses
  %i.io = phi ptr [ %i.ix, %bb.am ], [ %i.il, %Fx_ManCompressCubes.exit478 ] ; 2 uses
  %i.ip = load ptr, ptr %0, align 8, !tbaa !104
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  %.val366 = load ptr, ptr %i.iq, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %.val366, null
  br i1 %.not, label %.critedge, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.ir = getelementptr i8, ptr %i.io, i64 8
end_hunk_0
begin_hunk_1_@Fx_ManUpdate:bb.a
  %.pre.i807 = load i32, ptr %i.bbl, align 4, !tbaa !39
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.bca = phi i32 [ %.pre.i807, %bb.id ], [ %i.bbs, %bb.ic ] ; 2 uses
  %.1.i808 = phi i32 [ %i.bbx, %bb.id ], [ %.024.i, %bb.ic ] ; 2 uses
  %indvars.iv.next.i809 = add nuw nsw i64 %indvars.iv.i805, 1 ; 2 uses
  %i.bcb = sext i32 %i.bca to i64
  %i.bcc = icmp slt i64 %indvars.iv.next.i809, %i.bcb
  br i1 %i.bcc, label %bb.ic, label %._crit_edge.i802, !llvm.loop !202

._crit_edge.i802:                                 ; preds = %bb.ie, %bb.ib
  %.0.lcssa.i803 = phi i32 [ 1, %bb.ib ], [ %.1.i808, %bb.ie ]
  store i32 %.0.lcssa.i803, ptr %i.bbl, align 4, !tbaa !39
  %.pre1089 = load ptr, ptr %i.bbj, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert1090 = getelementptr i8, ptr %.pre1089, i64 4
  %.val324967.pre = load i32, ptr %.phi.trans.insert1090, align 4, !tbaa !39
  br label %Vec_IntUniqify.exit

Vec_IntUniqify.exit:                              ; preds = %bb.ia, %._crit_edge.i802
  %.val324967 = phi i32 [ %.val325, %bb.ia ], [ %.val324967.pre, %._crit_edge.i802 ]
  %i.bcd = phi ptr [ %i.bbk, %bb.ia ], [ %.pre1089, %._crit_edge.i802 ] ; 2 uses
  %i.bce = icmp sgt i32 %.val324967, 0
  br i1 %i.bce, label %.lr.ph969, label %.critedge19

.lr.ph969:                                        ; preds = %Vec_IntUniqify.exit
  %i.bcf = getelementptr i8, ptr %0, i64 56
  br label %bb.if

bb.if:                                            ; preds = %.lr.ph969, %bb.ig
  %indvars.iv1035 = phi i64 [ 0, %.lr.ph969 ], [ %indvars.iv.next1036, %bb.ig ] ; 2 uses
  %i.bcg = phi ptr [ %i.bcd, %.lr.ph969 ], [ %i.bcu, %bb.ig ] ; 2 uses
  %i.bch = load ptr, ptr %0, align 8, !tbaa !104
  %i.bci = getelementptr i8, ptr %i.bch, i64 8
  %.val353 = load ptr, ptr %i.bci, align 8, !tbaa !13 ; 2 uses
  %.not319 = icmp eq ptr %.val353, null
  br i1 %.not319, label %.critedge19, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bcj = getelementptr i8, ptr %i.bcg, i64 8
  %.val378 = load ptr, ptr %i.bcj, align 8, !tbaa !41
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %.val378, i64 %indvars.iv1035
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !42
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds [16 x i8], ptr %.val353, i64 %i.bcm ; 3 uses
  %.val400 = load ptr, ptr %i.bcf, align 8, !tbaa !120
  %i.bco = getelementptr i8, ptr %i.bcn, i64 8
  %.val401 = load ptr, ptr %i.bco, align 8, !tbaa !41
  %i.bcp = getelementptr i8, ptr %.val400, i64 8
  %.val400.val = load ptr, ptr %i.bcp, align 8, !tbaa !41
  %.val401.val = load i32, ptr %.val401, align 4, !tbaa !42
  %i.bcq = sext i32 %.val401.val to i64
  %i.bcr = getelementptr inbounds [4 x i8], ptr %.val400.val, i64 %i.bcq
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !42
  tail call void @Fx_ManCubeDoubleCubeDivisors(ptr noundef nonnull %0, i32 noundef %i.bcs, ptr noundef nonnull %i.bcn, i32 noundef 1, i32 noundef 1, ptr poison)
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcn, i64 4
  store i32 0, ptr %i.bct, align 4, !tbaa !39
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 1 ; 2 uses
  %i.bcu = load ptr, ptr %i.bbj, align 8, !tbaa !110 ; 3 uses
  %i.bcv = getelementptr i8, ptr %i.bcu, i64 4
  %.val324 = load i32, ptr %i.bcv, align 4, !tbaa !39
  %i.bcw = sext i32 %.val324 to i64
  %i.bcx = icmp slt i64 %indvars.iv.next1036, %i.bcw
  br i1 %i.bcx, label %bb.if, label %.critedge19, !llvm.loop !203

.critedge19:                                      ; preds = %bb.if, %bb.ig, %Vec_IntUniqify.exit
  %.lcssa966 = phi ptr [ %i.bcd, %Vec_IntUniqify.exit ], [ %i.bcu, %bb.ig ], [ %i.bcg, %bb.if ]
  %i.bcy = getelementptr i8, ptr %.lcssa966, i64 4
  store i32 0, ptr %i.bcy, align 4, !tbaa !39
  br label %bb.ih

bb.ih:                                            ; preds = %.critedge19, %Vec_WecUnmarkLevels.exit801
  %.val323 = load i32, ptr %i.g, align 4, !tbaa !39 ; 2 uses
  %i.bcz = icmp sgt i32 %.val323, 2
  br i1 %i.bcz, label %bb.ii, label %.critedge23

bb.ii:                                            ; preds = %bb.ih
  %i.bda = load ptr, ptr %0, align 8, !tbaa !104  ; 2 uses
  %i.bdb = getelementptr i8, ptr %i.bda, i64 4
  %.val344 = load i32, ptr %i.bdb, align 4, !tbaa !8
  %i.bdc = getelementptr i8, ptr %i.bda, i64 8
  %.val352 = load ptr, ptr %i.bdc, align 8, !tbaa !13
  %i.bdd = sext i32 %.val344 to i64
  %i.bde = getelementptr [16 x i8], ptr %.val352, i64 %i.bdd ; 6 uses
  %i.bdf = getelementptr i8, ptr %i.bde, i64 -32  ; 2 uses
  %i.bdg = getelementptr i8, ptr %i.bde, i64 -16  ; 2 uses
  %i.bdh = tail call i32 @Fx_ManCubeSingleCubeDivisors(ptr noundef nonnull %0, ptr noundef %i.bdf, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bdi = tail call i32 @Fx_ManCubeSingleCubeDivisors(ptr noundef nonnull %0, ptr noundef %i.bdg, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.bdj = getelementptr i8, ptr %i.bde, i64 -28  ; 2 uses
  %.val322973 = load i32, ptr %i.bdj, align 4, !tbaa !39
  %i.bdk = icmp sgt i32 %.val322973, 1
  br i1 %i.bdk, label %.lr.ph976, label %.critedge21.preheader

.lr.ph976:                                        ; preds = %bb.ii
  %i.bdl = getelementptr i8, ptr %i.bde, i64 -24
  %i.bdm = ptrtoint ptr %i.bdf to i64
  br label %bb.ij

.critedge21.preheader:                            ; preds = %bb.ij, %bb.ii
  %i.bdn = getelementptr i8, ptr %i.bde, i64 -12  ; 2 uses
  %.val321977 = load i32, ptr %i.bdn, align 4, !tbaa !39
  %i.bdo = icmp sgt i32 %.val321977, 1
  br i1 %i.bdo, label %.lr.ph979, label %.critedge23thread-pre-split

.lr.ph979:                                        ; preds = %.critedge21.preheader
  %i.bdp = getelementptr i8, ptr %i.bde, i64 -8
  %i.bdq = ptrtoint ptr %i.bdg to i64
  br label %.critedge21

bb.ij:                                            ; preds = %.lr.ph976, %bb.ij
  %indvars.iv1038 = phi i64 [ 1, %.lr.ph976 ], [ %indvars.iv.next1039, %bb.ij ] ; 2 uses
  %.val377 = load ptr, ptr %i.bdl, align 8, !tbaa !41
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %.val377, i64 %indvars.iv1038
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !42
  %i.bdt = load ptr, ptr %i.gu, align 8, !tbaa !111
  %i.bdu = load ptr, ptr %0, align 8, !tbaa !104
  %i.bdv = getelementptr i8, ptr %i.bdu, i64 8
  %.val393 = load ptr, ptr %i.bdv, align 8, !tbaa !13
  %i.bdw = ptrtoint ptr %.val393 to i64
  %i.bdx = sub i64 %i.bdm, %i.bdw
  %i.bdy = lshr exact i64 %i.bdx, 4
  %i.bdz = trunc i64 %i.bdy to i32
  tail call fastcc void @Vec_WecPush(ptr noundef %i.bdt, i32 noundef %i.bds, i32 noundef %i.bdz)
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 1 ; 2 uses
  %.val322 = load i32, ptr %i.bdj, align 4, !tbaa !39
  %i.bea = sext i32 %.val322 to i64
  %i.beb = icmp slt i64 %indvars.iv.next1039, %i.bea
  br i1 %i.beb, label %bb.ij, label %.critedge21.preheader, !llvm.loop !204

.critedge21:                                      ; preds = %.lr.ph979, %.critedge21
  %indvars.iv1041 = phi i64 [ 1, %.lr.ph979 ], [ %indvars.iv.next1042, %.critedge21 ] ; 2 uses
  %.val376 = load ptr, ptr %i.bdp, align 8, !tbaa !41
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.val376, i64 %indvars.iv1041
  %i.bed = load i32, ptr %i.bec, align 4, !tbaa !42
  %i.bee = load ptr, ptr %i.gu, align 8, !tbaa !111
  %i.bef = load ptr, ptr %0, align 8, !tbaa !104
  %i.beg = getelementptr i8, ptr %i.bef, i64 8
  %.val392 = load ptr, ptr %i.beg, align 8, !tbaa !13
  %i.beh = ptrtoint ptr %.val392 to i64
  %i.bei = sub i64 %i.bdq, %i.beh
  %i.bej = lshr exact i64 %i.bei, 4
  %i.bek = trunc i64 %i.bej to i32
  tail call fastcc void @Vec_WecPush(ptr noundef %i.bee, i32 noundef %i.bed, i32 noundef %i.bek)
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 1 ; 2 uses
  %.val321 = load i32, ptr %i.bdn, align 4, !tbaa !39
  %i.bel = sext i32 %.val321 to i64
  %i.bem = icmp slt i64 %indvars.iv.next1042, %i.bel
  br i1 %i.bem, label %.critedge21, label %.critedge23thread-pre-split, !llvm.loop !205

.critedge23thread-pre-split:                      ; preds = %.critedge21, %.critedge21.preheader
  %.val320980.pr = load i32, ptr %i.g, align 4, !tbaa !39
  br label %.critedge23

.critedge23:                                      ; preds = %.critedge23thread-pre-split, %bb.ih
  %.val320980 = phi i32 [ %.val320980.pr, %.critedge23thread-pre-split ], [ %.val323, %bb.ih ]
  %i.ben = icmp sgt i32 %.val320980, 0
  br i1 %i.ben, label %.lr.ph982, label %.critedge25

.lr.ph982:                                        ; preds = %.critedge23
  %i.beo = getelementptr i8, ptr %i.b, i64 8
  %.val375 = load ptr, ptr %i.beo, align 8, !tbaa !41
  %i.bep = load ptr, ptr %i.gu, align 8, !tbaa !111
  %i.beq = getelementptr i8, ptr %i.bep, i64 8
  %.val350 = load ptr, ptr %i.beq, align 8, !tbaa !13 ; 2 uses
  %i.ber = load ptr, ptr %i.if, align 8, !tbaa !106 ; 2 uses
  %i.bes = getelementptr i8, ptr %i.ber, i64 4    ; 2 uses
  %i.bet = getelementptr i8, ptr %i.ber, i64 8
  %.val415 = load ptr, ptr %i.bet, align 8, !tbaa !41 ; 4 uses
  br label %bb.ik

bb.ik:                                            ; preds = %.lr.ph982, %bb.ix
  %indvars.iv1044 = phi i64 [ 0, %.lr.ph982 ], [ %indvars.iv.next1045, %bb.ix ] ; 3 uses
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %.val375, i64 %indvars.iv1044
  %i.bev = load i32, ptr %i.beu, align 4, !tbaa !42
  %i.bew = ashr i32 %i.bev, 1                     ; 2 uses
  %i.bex = sext i32 %i.bew to i64
  %i.bey = getelementptr inbounds [16 x i8], ptr %.val350, i64 %i.bex ; 2 uses
  %.val414 = load i32, ptr %i.bes, align 4, !tbaa !39 ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !41 ; 7 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bey, i64 4 ; 2 uses
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !39 ; 2 uses
  %i.bfd = sext i32 %i.bfc to i64
  %.idx.i810 = shl nsw i64 %i.bfd, 2              ; 2 uses
  %i.bfe = getelementptr inbounds i8, ptr %i.bfa, i64 %.idx.i810 ; 3 uses
  %i.bff = sext i32 %.val414 to i64
  %.idx9.i = shl nsw i64 %i.bff, 2
  %i.bfg = getelementptr inbounds i8, ptr %.val415, i64 %.idx9.i
  %i.bfh = icmp sgt i32 %i.bfc, 0
  %i.bfi = icmp sgt i32 %.val414, 0
  %i.bfj = select i1 %i.bfh, i1 %i.bfi, i1 false
  br i1 %i.bfj, label %.lr.ph.i815, label %.preheader.i811

.preheader.i811:                                  ; preds = %bb.ip, %bb.ik
  %.030.lcssa.i = phi ptr [ %i.bfa, %bb.ik ], [ %.131.i, %bb.ip ] ; 5 uses
  %.0.lcssa.i812 = phi ptr [ %i.bfa, %bb.ik ], [ %.1.i816, %bb.ip ] ; 5 uses
  %i.bfk = icmp ult ptr %.030.lcssa.i, %i.bfe
  br i1 %i.bfk, label %.lr.ph7.i.preheader, label %Vec_IntTwoRemove.exit

.lr.ph7.i.preheader:                              ; preds = %.preheader.i811
  %.030.lcssa.i1317 = ptrtoaddr ptr %.030.lcssa.i to i64 ; 3 uses
  %.0.lcssa.i8121316 = ptrtoaddr ptr %.0.lcssa.i812 to i64
  %i.bfl = ptrtoaddr ptr %i.bfa to i64
  %7 = add i64 %.idx.i810, %i.bfl
  %i.bfm = add i64 %.030.lcssa.i1317, 4
  %8 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.bfm)
  %i.bfn = xor i64 %.030.lcssa.i1317, -1
  %i.bfo = add i64 %8, %i.bfn                     ; 2 uses
  %i.bfp = lshr i64 %i.bfo, 2
  %i.bfq = add nuw nsw i64 %i.bfp, 1              ; 2 uses
  %min.iters.check1320 = icmp ult i64 %i.bfo, 28
  %i.bfr = sub i64 %.030.lcssa.i1317, %.0.lcssa.i8121316
  %diff.check1318 = icmp ugt i64 %i.bfr, -32
  %or.cond1336 = select i1 %min.iters.check1320, i1 true, i1 %diff.check1318
  br i1 %or.cond1336, label %.lr.ph7.i.preheader1339, label %vector.ph1321

vector.ph1321:                                    ; preds = %.lr.ph7.i.preheader
  %n.vec1322 = and i64 %i.bfq, 9223372036854775800 ; 3 uses
  %i.bfs = shl i64 %n.vec1322, 2                  ; 2 uses
  %i.bft = getelementptr i8, ptr %.0.lcssa.i812, i64 %i.bfs ; 2 uses
  %i.bfu = getelementptr i8, ptr %.030.lcssa.i, i64 %i.bfs
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1321
  %index1324 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1329, %vector.body1323 ] ; 2 uses
  %i.bfv = shl i64 %index1324, 2                  ; 2 uses
  %next.gep1325 = getelementptr i8, ptr %.0.lcssa.i812, i64 %i.bfv ; 2 uses
  %next.gep1326 = getelementptr i8, ptr %.030.lcssa.i, i64 %i.bfv ; 2 uses
  %i.bfw = getelementptr i8, ptr %next.gep1326, i64 16
  %wide.load1327 = load <4 x i32>, ptr %next.gep1326, align 4, !tbaa !42
  %wide.load1328 = load <4 x i32>, ptr %i.bfw, align 4, !tbaa !42
  %i.bfx = getelementptr i8, ptr %next.gep1325, i64 16
  store <4 x i32> %wide.load1327, ptr %next.gep1325, align 4, !tbaa !42
  store <4 x i32> %wide.load1328, ptr %i.bfx, align 4, !tbaa !42
  %index.next1329 = add nuw i64 %index1324, 8     ; 2 uses
  %i.bfy = icmp eq i64 %index.next1329, %n.vec1322
  br i1 %i.bfy, label %middle.block1330, label %vector.body1323, !llvm.loop !206

middle.block1330:                                 ; preds = %vector.body1323
  %cmp.n1331 = icmp eq i64 %i.bfq, %n.vec1322
  br i1 %cmp.n1331, label %Vec_IntTwoRemove.exit, label %.lr.ph7.i.preheader1339

.lr.ph7.i.preheader1339:                          ; preds = %.lr.ph7.i.preheader, %middle.block1330
  %.26.i.ph = phi ptr [ %.0.lcssa.i812, %.lr.ph7.i.preheader ], [ %i.bft, %middle.block1330 ]
  %.2325.i.ph = phi ptr [ %.030.lcssa.i, %.lr.ph7.i.preheader ], [ %i.bfu, %middle.block1330 ]
  br label %.lr.ph7.i

.lr.ph.i815:                                      ; preds = %bb.ik, %bb.ip
  %.03.i = phi ptr [ %.1.i816, %bb.ip ], [ %i.bfa, %bb.ik ] ; 4 uses
  %.0282.i = phi ptr [ %.129.i, %bb.ip ], [ %.val415, %bb.ik ] ; 4 uses
  %.0301.i = phi ptr [ %.131.i, %bb.ip ], [ %i.bfa, %bb.ik ] ; 4 uses
  %i.bfz = load i32, ptr %.0301.i, align 4, !tbaa !42 ; 3 uses
  %i.bga = load i32, ptr %.0282.i, align 4, !tbaa !42 ; 2 uses
  %i.bgb = icmp eq i32 %i.bfz, %i.bga
  br i1 %i.bgb, label %bb.il, label %bb.im

bb.il:                                            ; preds = %.lr.ph.i815
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0301.i, i64 4
  %i.bgd = getelementptr inbounds nuw i8, ptr %.0282.i, i64 4
  br label %bb.ip

bb.im:                                            ; preds = %.lr.ph.i815
  %i.bge = icmp slt i32 %i.bfz, %i.bga
  br i1 %i.bge, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.bgf = getelementptr inbounds nuw i8, ptr %.0301.i, i64 4
  %i.bgg = getelementptr inbounds nuw i8, ptr %.03.i, i64 4
  store i32 %i.bfz, ptr %.03.i, align 4, !tbaa !42
  br label %bb.ip

bb.io:                                            ; preds = %bb.im
  %i.bgh = getelementptr inbounds nuw i8, ptr %.0282.i, i64 4
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %bb.il
  %.131.i = phi ptr [ %i.bgc, %bb.il ], [ %i.bgf, %bb.in ], [ %.0301.i, %bb.io ] ; 3 uses
  %.129.i = phi ptr [ %i.bgd, %bb.il ], [ %.0282.i, %bb.in ], [ %i.bgh, %bb.io ] ; 2 uses
  %.1.i816 = phi ptr [ %.03.i, %bb.il ], [ %i.bgg, %bb.in ], [ %.03.i, %bb.io ] ; 2 uses
  %i.bgi = icmp ult ptr %.131.i, %i.bfe
  %i.bgj = icmp ult ptr %.129.i, %i.bfg
  %i.bgk = select i1 %i.bgi, i1 %i.bgj, i1 false
  br i1 %i.bgk, label %.lr.ph.i815, label %.preheader.i811, !llvm.loop !207

.lr.ph7.i:                                        ; preds = %.lr.ph7.i.preheader1339, %.lr.ph7.i
  %.26.i = phi ptr [ %i.bgn, %.lr.ph7.i ], [ %.26.i.ph, %.lr.ph7.i.preheader1339 ] ; 2 uses
  %.2325.i = phi ptr [ %i.bgl, %.lr.ph7.i ], [ %.2325.i.ph, %.lr.ph7.i.preheader1339 ] ; 2 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %.2325.i, i64 4 ; 2 uses
  %i.bgm = load i32, ptr %.2325.i, align 4, !tbaa !42
  %i.bgn = getelementptr inbounds nuw i8, ptr %.26.i, i64 4 ; 2 uses
  store i32 %i.bgm, ptr %.26.i, align 4, !tbaa !42
  %i.bgo = icmp ult ptr %i.bgl, %i.bfe
  br i1 %i.bgo, label %.lr.ph7.i, label %Vec_IntTwoRemove.exit, !llvm.loop !208

Vec_IntTwoRemove.exit:                            ; preds = %.lr.ph7.i, %middle.block1330, %.preheader.i811
  %.2.lcssa.i814 = phi ptr [ %.0.lcssa.i812, %.preheader.i811 ], [ %i.bft, %middle.block1330 ], [ %i.bgn, %.lr.ph7.i ]
  %i.bgp = ptrtoint ptr %.2.lcssa.i814 to i64
  %i.bgq = ptrtoint ptr %i.bfa to i64
  %i.bgr = sub i64 %i.bgp, %i.bgq
  %i.bgs = lshr exact i64 %i.bgr, 2
  %i.bgt = trunc i64 %i.bgs to i32
  store i32 %i.bgt, ptr %i.bfb, align 4, !tbaa !39
  %i.bgu = load i32, ptr %i.akx, align 4, !tbaa !195
  %i.bgv = icmp ne i32 %i.bgu, 0
  %i.bgw = icmp samesign ugt i64 %indvars.iv1044, 1
  %or.cond27 = select i1 %i.bgv, i1 %i.bgw, i1 false
  br i1 %or.cond27, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %Vec_IntTwoRemove.exit
  %.val = load i32, ptr %i.g, align 4, !tbaa !39  ; 2 uses
  %i.bgx = icmp eq i32 %.val, 2
  br i1 %i.bgx, label %bb.ir, label %bb.ix

bb.ir:                                            ; preds = %Vec_IntTwoRemove.exit, %bb.iq
  %i.bgy = xor i32 %i.bew, 1
  %i.bgz = sext i32 %i.bgy to i64
  %i.bha = getelementptr inbounds [16 x i8], ptr %.val350, i64 %i.bgz ; 2 uses
  %.val412 = load i32, ptr %i.bes, align 4, !tbaa !39 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !41 ; 7 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bha, i64 4 ; 2 uses
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !39 ; 2 uses
  %i.bhf = sext i32 %i.bhe to i64
  %.idx.i817 = shl nsw i64 %i.bhf, 2              ; 2 uses
  %i.bhg = getelementptr inbounds i8, ptr %i.bhc, i64 %.idx.i817 ; 3 uses
  %i.bhh = sext i32 %.val412 to i64
  %.idx9.i818 = shl nsw i64 %i.bhh, 2
  %i.bhi = getelementptr inbounds i8, ptr %.val415, i64 %.idx9.i818
  %i.bhj = icmp sgt i32 %i.bhe, 0
  %i.bhk = icmp sgt i32 %.val412, 0
  %i.bhl = select i1 %i.bhj, i1 %i.bhk, i1 false
  br i1 %i.bhl, label %.lr.ph.i827, label %.preheader.i819

.preheader.i819:                                  ; preds = %bb.iw, %bb.ir
  %.030.lcssa.i820 = phi ptr [ %i.bhc, %bb.ir ], [ %.131.i831, %bb.iw ] ; 5 uses
  %.0.lcssa.i821 = phi ptr [ %i.bhc, %bb.ir ], [ %.1.i833, %bb.iw ] ; 5 uses
  %i.bhm = icmp ult ptr %.030.lcssa.i820, %i.bhg
  br i1 %i.bhm, label %.lr.ph7.i824.preheader, label %Vec_IntTwoRemove.exit834

.lr.ph7.i824.preheader:                           ; preds = %.preheader.i819
  %.030.lcssa.i8201298 = ptrtoaddr ptr %.030.lcssa.i820 to i64 ; 3 uses
  %.0.lcssa.i8211297 = ptrtoaddr ptr %.0.lcssa.i821 to i64
  %i.bhn = ptrtoaddr ptr %i.bhc to i64
  %9 = add i64 %.idx.i817, %i.bhn
  %i.bho = add i64 %.030.lcssa.i8201298, 4
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.bho)
  %i.bhp = xor i64 %.030.lcssa.i8201298, -1
  %i.bhq = add i64 %10, %i.bhp                    ; 2 uses
  %i.bhr = lshr i64 %i.bhq, 2
  %i.bhs = add nuw nsw i64 %i.bhr, 1              ; 2 uses
  %min.iters.check1301 = icmp ult i64 %i.bhq, 28
  %i.bht = sub i64 %.030.lcssa.i8201298, %.0.lcssa.i8211297
  %diff.check1299 = icmp ugt i64 %i.bht, -32
  %or.cond1337 = select i1 %min.iters.check1301, i1 true, i1 %diff.check1299
  br i1 %or.cond1337, label %.lr.ph7.i824.preheader1338, label %vector.ph1302

vector.ph1302:                                    ; preds = %.lr.ph7.i824.preheader
  %n.vec1303 = and i64 %i.bhs, 9223372036854775800 ; 3 uses
  %i.bhu = shl i64 %n.vec1303, 2                  ; 2 uses
  %i.bhv = getelementptr i8, ptr %.0.lcssa.i821, i64 %i.bhu ; 2 uses
  %i.bhw = getelementptr i8, ptr %.030.lcssa.i820, i64 %i.bhu
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1310, %vector.body1304 ] ; 2 uses
  %i.bhx = shl i64 %index1305, 2                  ; 2 uses
  %next.gep1306 = getelementptr i8, ptr %.0.lcssa.i821, i64 %i.bhx ; 2 uses
  %next.gep1307 = getelementptr i8, ptr %.030.lcssa.i820, i64 %i.bhx ; 2 uses
  %i.bhy = getelementptr i8, ptr %next.gep1307, i64 16
  %wide.load1308 = load <4 x i32>, ptr %next.gep1307, align 4, !tbaa !42
  %wide.load1309 = load <4 x i32>, ptr %i.bhy, align 4, !tbaa !42
  %i.bhz = getelementptr i8, ptr %next.gep1306, i64 16
  store <4 x i32> %wide.load1308, ptr %next.gep1306, align 4, !tbaa !42
  store <4 x i32> %wide.load1309, ptr %i.bhz, align 4, !tbaa !42
  %index.next1310 = add nuw i64 %index1305, 8     ; 2 uses
  %i.bia = icmp eq i64 %index.next1310, %n.vec1303
  br i1 %i.bia, label %middle.block1311, label %vector.body1304, !llvm.loop !209

middle.block1311:                                 ; preds = %vector.body1304
  %cmp.n1312 = icmp eq i64 %i.bhs, %n.vec1303
  br i1 %cmp.n1312, label %Vec_IntTwoRemove.exit834, label %.lr.ph7.i824.preheader1338

.lr.ph7.i824.preheader1338:                       ; preds = %.lr.ph7.i824.preheader, %middle.block1311
  %.26.i825.ph = phi ptr [ %.0.lcssa.i821, %.lr.ph7.i824.preheader ], [ %i.bhv, %middle.block1311 ]
  %.2325.i826.ph = phi ptr [ %.030.lcssa.i820, %.lr.ph7.i824.preheader ], [ %i.bhw, %middle.block1311 ]
  br label %.lr.ph7.i824

.lr.ph.i827:                                      ; preds = %bb.ir, %bb.iw
  %.03.i828 = phi ptr [ %.1.i833, %bb.iw ], [ %i.bhc, %bb.ir ] ; 4 uses
  %.0282.i829 = phi ptr [ %.129.i832, %bb.iw ], [ %.val415, %bb.ir ] ; 4 uses
  %.0301.i830 = phi ptr [ %.131.i831, %bb.iw ], [ %i.bhc, %bb.ir ] ; 4 uses
  %i.bib = load i32, ptr %.0301.i830, align 4, !tbaa !42 ; 3 uses
  %i.bic = load i32, ptr %.0282.i829, align 4, !tbaa !42 ; 2 uses
  %i.bid = icmp eq i32 %i.bib, %i.bic
  br i1 %i.bid, label %bb.is, label %bb.it

bb.is:                                            ; preds = %.lr.ph.i827
  %i.bie = getelementptr inbounds nuw i8, ptr %.0301.i830, i64 4
  %i.bif = getelementptr inbounds nuw i8, ptr %.0282.i829, i64 4
  br label %bb.iw

bb.it:                                            ; preds = %.lr.ph.i827
  %i.big = icmp slt i32 %i.bib, %i.bic
  br i1 %i.big, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.bih = getelementptr inbounds nuw i8, ptr %.0301.i830, i64 4
  %i.bii = getelementptr inbounds nuw i8, ptr %.03.i828, i64 4
  store i32 %i.bib, ptr %.03.i828, align 4, !tbaa !42
  br label %bb.iw

bb.iv:                                            ; preds = %bb.it
  %i.bij = getelementptr inbounds nuw i8, ptr %.0282.i829, i64 4
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %bb.is
  %.131.i831 = phi ptr [ %i.bie, %bb.is ], [ %i.bih, %bb.iu ], [ %.0301.i830, %bb.iv ] ; 3 uses
  %.129.i832 = phi ptr [ %i.bif, %bb.is ], [ %.0282.i829, %bb.iu ], [ %i.bij, %bb.iv ] ; 2 uses
  %.1.i833 = phi ptr [ %.03.i828, %bb.is ], [ %i.bii, %bb.iu ], [ %.03.i828, %bb.iv ] ; 2 uses
  %i.bik = icmp ult ptr %.131.i831, %i.bhg
  %i.bil = icmp ult ptr %.129.i832, %i.bhi
  %i.bim = select i1 %i.bik, i1 %i.bil, i1 false
  br i1 %i.bim, label %.lr.ph.i827, label %.preheader.i819, !llvm.loop !207

.lr.ph7.i824:                                     ; preds = %.lr.ph7.i824.preheader1338, %.lr.ph7.i824
  %.26.i825 = phi ptr [ %i.bip, %.lr.ph7.i824 ], [ %.26.i825.ph, %.lr.ph7.i824.preheader1338 ] ; 2 uses
  %.2325.i826 = phi ptr [ %i.bin, %.lr.ph7.i824 ], [ %.2325.i826.ph, %.lr.ph7.i824.preheader1338 ] ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %.2325.i826, i64 4 ; 2 uses
  %i.bio = load i32, ptr %.2325.i826, align 4, !tbaa !42
  %i.bip = getelementptr inbounds nuw i8, ptr %.26.i825, i64 4 ; 2 uses
  store i32 %i.bio, ptr %.26.i825, align 4, !tbaa !42
  %i.biq = icmp ult ptr %i.bin, %i.bhg
  br i1 %i.biq, label %.lr.ph7.i824, label %Vec_IntTwoRemove.exit834, !llvm.loop !210

Vec_IntTwoRemove.exit834:                         ; preds = %.lr.ph7.i824, %middle.block1311, %.preheader.i819
  %.2.lcssa.i823 = phi ptr [ %.0.lcssa.i821, %.preheader.i819 ], [ %i.bhv, %middle.block1311 ], [ %i.bip, %.lr.ph7.i824 ]
  %i.bir = ptrtoint ptr %.2.lcssa.i823 to i64
  %i.bis = ptrtoint ptr %i.bhc to i64
  %i.bit = sub i64 %i.bir, %i.bis
  %i.biu = lshr exact i64 %i.bit, 2
  %i.biv = trunc i64 %i.biu to i32
  store i32 %i.biv, ptr %i.bhd, align 4, !tbaa !39
  %.val320.pre = load i32, ptr %i.g, align 4, !tbaa !39
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iq, %Vec_IntTwoRemove.exit834
  %.val320 = phi i32 [ %.val, %bb.iq ], [ %.val320.pre, %Vec_IntTwoRemove.exit834 ]
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %i.biw = sext i32 %.val320 to i64
  %i.bix = icmp slt i64 %indvars.iv.next1045, %i.biw
  br i1 %i.bix, label %bb.ik, label %.critedge25, !llvm.loop !211

.critedge25:                                      ; preds = %bb.ix, %.critedge23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @Fx_PrintStats(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val8.i = load i32, ptr %i.b, align 4, !tbaa !8 ; 3 uses
  %i.c = icmp sgt i32 %.val8.i, 0
  br i1 %i.c, label %.lr.ph.i, label %Vec_WecSizeUsed.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %.val9.i = load ptr, ptr %i.d, align 8, !tbaa !13 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %.val8.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val8.i, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.e = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = select i1 %i.f, i64 8, i64 %i.e
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.g   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %index
  %i.p = getelementptr i8, ptr %i.h, i64 4
  %i.q = getelementptr i8, ptr %i.i, i64 20
  %i.r = getelementptr i8, ptr %i.j, i64 36
  %i.s = getelementptr i8, ptr %i.k, i64 52
  %i.t = getelementptr i8, ptr %i.l, i64 68
  %i.u = getelementptr i8, ptr %i.m, i64 84
  %i.v = getelementptr i8, ptr %i.n, i64 100
  %i.w = getelementptr i8, ptr %i.o, i64 116
  %i.x = load i32, ptr %i.p, align 4, !tbaa !39
  %i.y = load i32, ptr %i.q, align 4, !tbaa !39
  %i.z = load i32, ptr %i.r, align 4, !tbaa !39
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !39
  %i.ab = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 1
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 2
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 3
  %i.af = load i32, ptr %i.t, align 4, !tbaa !39
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !39
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !39
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !39
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = icmp sgt <4 x i32> %i.ae, zeroinitializer
  %i.ao = icmp sgt <4 x i32> %i.am, zeroinitializer
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = zext <4 x i1> %i.ao to <4 x i32>
  %i.ar = add <4 x i32> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <4 x i32> %vec.phi22, %i.aq         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.as, %i.ar
  %i.au = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.011.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.011.i = phi i32 [ %i.az, %scalar.ph ], [ %.011.i.ph, %scalar.ph.preheader ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val9.i, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val.i = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.ax = icmp sgt i32 %.val.i, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = add nuw nsw i32 %.011.i, %i.ay          ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_WecSizeUsed.exit, label %scalar.ph, !llvm.loop !213

end_hunk_1
begin_hunk_2_@Fx_PrintDiv:bb.a
  %.val.pre.i = load i32, ptr %i.ab, align 4, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph23.i
  %.val.i = phi i32 [ %.val30.i, %.lr.ph23.i ], [ %.val.pre.i, %bb.d ] ; 2 uses
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %i.at = sext i32 %.val.i to i64
  %i.au = icmp slt i64 %indvars.iv.next26.i, %i.at
  br i1 %i.au, label %.lr.ph23.i, label %Fx_PrintDivArray.exit, !llvm.loop !217

Fx_PrintDivArray.exit:                            ; preds = %bb.e, %.critedge.i
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !113 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val.i.i14 = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val.i.i14, i64 %i.h
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !42
  %i.bd = getelementptr i8, ptr %i.ax, i64 8
  %.val3.i.i15 = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.val3.i.i15, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !155 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !157
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 44
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !158
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !159
  %i.bl = icmp slt i32 %i.bg, 13
  br i1 %i.bl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Fx_PrintDivArray.exit
  %i.bm = add nsw i32 %i.bg, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi i32 [ %i.bn, %.lr.ph ], [ %i.bm, %.lr.ph.preheader ]
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  %i.bn = add i32 %.016, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, 16
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph, %Fx_PrintDivArray.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !129
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.bp) ; 0 uses
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val13 = load ptr, ptr %i.bs, align 8, !tbaa !117
  %i.bt = getelementptr i8, ptr %.val13, i64 4
  %.val13.val = load i32, ptr %i.bt, align 4, !tbaa !39
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.val13.val) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.bv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #29
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %Abc_Clock.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.bx = load i64, ptr %2, align 8, !tbaa !71
  %i.by = mul nsw i64 %i.bx, 1000000
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !74
  %i.cb = sdiv i64 %i.ca, 1000
  %i.cc = add nsw i64 %i.cb, %i.by
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %._crit_edge, %bb.f
  %.0.i = phi i64 [ %i.cc, %bb.f ], [ -1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !86
  %i.cf = sub nsw i64 %.0.i, %i.ce
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14)
  %i.cg = sitofp i64 %i.cf to double
  %i.ch = fdiv double %i.cg, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.16, double noundef %i.ch)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #20 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !42
  %i.b = load i32, ptr %1, align 4, !tbaa !42
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !42
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #29 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #29
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #29 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !219
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #31
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #29 ; 0 uses
  call void @free(ptr noundef %i.d) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !219, !noalias !221
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #29, !inline_history !224 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #22

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #22

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !5, i64 4}
!9 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{!15, !18, i64 32}
!15 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !19, i64 160, !5, i64 168, !20, i64 176, !19, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !21, i64 208, !5, i64 216, !22, i64 224, !24, i64 240, !25, i64 248, !11, i64 256, !26, i64 264, !11, i64 272, !27, i64 280, !5, i64 284, !10, i64 288, !18, i64 296, !23, i64 304, !28, i64 312, !18, i64 320, !19, i64 328, !11, i64 336, !11, i64 344, !19, i64 352, !11, i64 360, !11, i64 368, !10, i64 376, !10, i64 384, !16, i64 392, !29, i64 400, !18, i64 408, !10, i64 416, !10, i64 424, !18, i64 432, !10, i64 440, !10, i64 448, !10, i64 456}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!18 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !23, i64 8}
!23 = !{!"p1 int", !11, i64 0}
!24 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!25 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!26 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!29 = !{!"p1 float", !11, i64 0}
!30 = !{!31, !5, i64 4}
!31 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !32, i64 8}
!32 = !{!"any p2 pointer", !11, i64 0}
!33 = !{!31, !32, i64 8}
!34 = !{!11, !11, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!37, !5, i64 16}
!37 = !{!"Abc_Obj_t_", !19, i64 0, !38, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !22, i64 24, !22, i64 40, !11, i64 56, !6, i64 64, !6, i64 72}
!38 = !{!"p1 _ZTS10Abc_Obj_t_", !11, i64 0}
!39 = !{!22, !5, i64 4}
!40 = !{!22, !5, i64 0}
!41 = !{!22, !23, i64 8}
!42 = !{!5, !5, i64 0}
!43 = !{!37, !23, i64 32}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = !{!37, !5, i64 28}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !45}
!59 = !{!15, !11, i64 256}
!60 = distinct !{!60, !45}
!61 = distinct !{!61, !45}
!62 = !{!37, !19, i64 0}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !47}
!65 = distinct !{!65, !45}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !45}
!68 = distinct !{!68, !45}
!69 = distinct !{!69, !45}
!70 = distinct !{!70, !45}
!71 = !{!72, !73, i64 0}
!72 = !{!"timespec", !73, i64 0, !73, i64 8}
!73 = !{!"long", !6, i64 0}
!74 = !{!72, !73, i64 8}
!75 = !{!76, !5, i64 8}
!76 = !{!"Fx_Man_t_", !77, i64 0, !5, i64 8, !5, i64 12, !77, i64 16, !10, i64 24, !78, i64 32, !79, i64 40, !80, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !73, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !6, i64 156}
!77 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!78 = !{!"p1 _ZTS13Hsh_VecMan_t_", !11, i64 0}
!79 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!80 = !{!"p1 _ZTS10Vec_Que_t_", !11, i64 0}
!81 = !{!76, !5, i64 12}
!82 = !{!76, !79, i64 40}
!83 = !{!84, !5, i64 4}
!84 = !{!"Vec_Flt_t_", !5, i64 0, !5, i64 4, !29, i64 8}
!85 = distinct !{!85, !45}
!86 = !{!76, !73, i64 120}
!87 = !{!76, !80, i64 48}
!88 = !{!89, !5, i64 4}
!89 = !{!"Vec_Que_t_", !5, i64 0, !5, i64 4, !23, i64 8, !23, i64 16, !90, i64 24}
!90 = !{!"p2 float", !32, i64 0}
!91 = !{!89, !23, i64 8}
!92 = !{!89, !90, i64 24}
!93 = !{!29, !29, i64 0}
!94 = !{!27, !27, i64 0}
!95 = !{!89, !23, i64 16}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !45}
!98 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 8, !99}
!99 = !{!23, !23, i64 0}
!100 = distinct !{!100, !45}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !47}
!103 = distinct !{!103, !45}
!104 = !{!76, !77, i64 0}
!105 = !{!76, !10, i64 72}
!106 = !{!76, !10, i64 80}
!107 = !{!76, !10, i64 88}
!108 = !{!76, !10, i64 96}
!109 = !{!76, !10, i64 104}
!110 = !{!76, !10, i64 112}
!111 = !{!76, !77, i64 16}
!112 = !{!76, !10, i64 24}
!113 = !{!76, !78, i64 32}
!114 = !{!115, !10, i64 0}
!115 = !{!"Hsh_VecMan_t_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !22, i64 40, !22, i64 56, !22, i64 72}
!116 = !{!115, !10, i64 8}
!117 = !{!115, !10, i64 16}
!118 = !{!10, !10, i64 0}
!119 = !{!84, !29, i64 8}
!120 = !{!76, !10, i64 56}
!121 = !{!76, !10, i64 64}
!122 = !{!76, !5, i64 128}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45}
!129 = !{!76, !5, i64 132}
!130 = !{!131}
!131 = distinct !{!131, !132}
!132 = distinct !{!132, !"LVerDomain"}
!133 = distinct !{!133, !45, !134, !135}
!134 = !{!"llvm.loop.isvectorized", i32 1}
!135 = !{!"llvm.loop.unroll.runtime.disable"}
!136 = !{!137}
!137 = distinct !{!137, !132}
!138 = distinct !{!138, !47}
!139 = distinct !{!139, !45, !134}
!140 = distinct !{!140, !45}
!141 = distinct !{!141, !45}
!142 = distinct !{!142, !45}
!143 = distinct !{!143, !45}
!144 = distinct !{!144, !45}
!145 = distinct !{!145, !45}
!146 = distinct !{!146, !45}
!147 = distinct !{!147, !45}
!148 = distinct !{!148, !45}
!149 = !{!84, !5, i64 0}
!150 = !{!76, !5, i64 152}
!151 = !{!76, !5, i64 144}
!152 = !{!89, !5, i64 0}
!153 = distinct !{!153, !45}
!154 = distinct !{!154, !45}
!155 = !{!156, !5, i64 0}
!156 = !{!"Hsh_VecObj_t_", !5, i64 0, !5, i64 4, !6, i64 8}
!157 = !{!115, !5, i64 40}
!158 = !{!115, !5, i64 44}
!159 = !{!115, !23, i64 48}
!160 = distinct !{!160, !45}
end_hunk_2
