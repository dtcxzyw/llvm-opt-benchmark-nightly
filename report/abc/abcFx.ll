Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcFx?download=true
inline.NumInlined: 642
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@Fx_ManUpdate:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #27
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.aq = phi ptr [ %i.aj, %bb.f ], [ %i.ai, %bb.e ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %bb.j ]
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !47
  store i32 %spec.select.sink.i.i, ptr %i.b, align 8, !tbaa !46
  %.pre11.i = load i32, ptr %i.g, align 4, !tbaa !45
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.g, %.Vec_IntPush.exit_crit_edge.i
  %i.ar = phi i32 [ %i.ad, %.Vec_IntPush.exit_crit_edge.i ], [ %i.ad, %bb.g ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.as = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.g ], [ %i.aq, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.g, align 4, !tbaa !45
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.au
  store i32 %i.ac, ptr %i.av, align 4, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !45
  %i.aw = sext i32 %.val.i to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.b, label %Vec_IntAppend.exit, !llvm.loop !178

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.a
  %.val16.i = load i32, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  %i.ay = icmp sgt i32 %.val16.i, 0
  br i1 %i.ay, label %.lr.ph.i416, label %Fx_ManDivFindPivots.exit

.lr.ph.i416:                                      ; preds = %Vec_IntAppend.exit
  %i.az = getelementptr i8, ptr %i.b, i64 8
  %.val15.i = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.ba = zext nneg i32 %.val16.i to i64
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.i, %.lr.ph.i416
  %.0857 = phi i32 [ -1, %.lr.ph.i416 ], [ %.1858, %thread-pre-split.i ] ; 2 uses
  %.0853 = phi i32 [ -1, %.lr.ph.i416 ], [ %.2855, %thread-pre-split.i ] ; 2 uses
  %indvars.iv.i417 = phi i64 [ 0, %.lr.ph.i416 ], [ %indvars.iv.next.i418, %thread-pre-split.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %indvars.iv.i417
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !48 ; 2 uses
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
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 5 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !45
  %.val342 = load i32, ptr %i.g, align 4, !tbaa !45
  %i.bp = icmp eq i32 %.val342, 2
  %.pre1048 = load ptr, ptr %0, align 8, !tbaa !76 ; 3 uses
  br i1 %i.bp, label %bb.k, label %bb.af

bb.k:                                             ; preds = %Fx_ManDivFindPivots.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !83
  %i.bs = xor i32 %.2859, 1
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  %.val374 = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %.val374, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 5 uses
  %.val1216.i = load i32, ptr %i.bw, align 4, !tbaa !45 ; 2 uses
  %i.bx = icmp sgt i32 %.val1216.i, 0
  br i1 %i.bx, label %.lr.ph.i420, label %Fx_ManCompressCubes.exit

.lr.ph.i420:                                      ; preds = %bb.k
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %.val14.i = load ptr, ptr %i.by, align 8, !tbaa !47 ; 2 uses
  %i.bz = getelementptr i8, ptr %.pre1048, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i420
  %.val1220.i = phi i32 [ %.val1216.i, %.lr.ph.i420 ], [ %.val12.i, %bb.n ]
  %indvars.iv.i421 = phi i64 [ 0, %.lr.ph.i420 ], [ %indvars.iv.next.i423, %bb.n ] ; 2 uses
  %.018.i = phi i32 [ 0, %.lr.ph.i420 ], [ %.1.i, %bb.n ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i421
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %.val13.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %.val.i422 = load i32, ptr %i.ce, align 4, !tbaa !45
  %i.cf = icmp sgt i32 %.val.i422, 0
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = add nsw i32 %.018.i, 1
  %i.ch = sext i32 %.018.i to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.val14.i, i64 %i.ch
  store i32 %i.cb, ptr %i.ci, align 4, !tbaa !48
  %.val12.pre.i = load i32, ptr %i.bw, align 4, !tbaa !45
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
  store i32 %.0.lcssa.i, ptr %i.bw, align 4, !tbaa !45
  %i.cl = xor i32 %.3856, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %.val374, i64 %i.cm ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 4      ; 4 uses
  %.val1216.i424 = load i32, ptr %i.co, align 4, !tbaa !45 ; 2 uses
  %i.cp = icmp sgt i32 %.val1216.i424, 0
  %i.cq = getelementptr i8, ptr %i.cn, i64 8
  %.val14.i427 = load ptr, ptr %i.cq, align 8, !tbaa !47 ; 8 uses
  %.val14.i4271284 = ptrtoaddr ptr %.val14.i427 to i64
  br i1 %i.cp, label %.lr.ph.i426, label %Fx_ManCompressCubes.exit437

.lr.ph.i426:                                      ; preds = %Fx_ManCompressCubes.exit
  %i.cr = getelementptr i8, ptr %.pre1048, i64 8
  %.val13.i428 = load ptr, ptr %i.cr, align 8, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i426
  %.val1220.i429 = phi i32 [ %.val1216.i424, %.lr.ph.i426 ], [ %.val12.i433, %bb.q ]
  %indvars.iv.i430 = phi i64 [ 0, %.lr.ph.i426 ], [ %indvars.iv.next.i435, %bb.q ] ; 2 uses
  %.018.i431 = phi i32 [ 0, %.lr.ph.i426 ], [ %.1.i434, %bb.q ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val14.i427, i64 %indvars.iv.i430
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !48 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr %.val13.i428, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %.val.i432 = load i32, ptr %i.cw, align 4, !tbaa !45
  %i.cx = icmp sgt i32 %.val.i432, 0
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = add nsw i32 %.018.i431, 1
  %i.cz = sext i32 %.018.i431 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.val14.i427, i64 %i.cz
  store i32 %i.ct, ptr %i.da, align 4, !tbaa !48
  %.val12.pre.i436 = load i32, ptr %i.co, align 4, !tbaa !45
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
  store i32 %.0.lcssa.i425, ptr %i.co, align 4, !tbaa !45
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47 ; 6 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.dh = load i32, ptr %i.bw, align 4, !tbaa !45 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %.idx.i = shl nsw i64 %i.di, 2                  ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.de, i64 %.idx.i ; 3 uses
  %i.dk = sext i32 %.0.lcssa.i425 to i64
  %.idx68.i = shl nsw i64 %i.dk, 2                ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.val14.i427, i64 %.idx68.i ; 3 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !45
  %i.dm = icmp sgt i32 %i.dh, 0
  %i.dn = icmp sgt i32 %.0.lcssa.i425, 0
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.i440, label %.preheader52.i

.lr.ph.i440:                                      ; preds = %Fx_ManCompressCubes.exit437
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  br label %bb.r

.preheader52.i:                                   ; preds = %bb.ae, %Fx_ManCompressCubes.exit437
  %.046.lcssa.i = phi ptr [ %i.de, %Fx_ManCompressCubes.exit437 ], [ %.147.i, %bb.ae ] ; 5 uses
  %.043.lcssa.i = phi ptr [ %.val14.i427, %Fx_ManCompressCubes.exit437 ], [ %.144.i, %bb.ae ] ; 5 uses
  %.040.lcssa.i = phi ptr [ %i.de, %Fx_ManCompressCubes.exit437 ], [ %.141.i, %bb.ae ] ; 5 uses
  %.0.lcssa.i438 = phi ptr [ %.val14.i427, %Fx_ManCompressCubes.exit437 ], [ %.1.i441, %bb.ae ] ; 5 uses
  %.043.lcssa.i1283 = ptrtoaddr ptr %.0.lcssa.i438 to i64
  %.0.lcssa.i4381285 = ptrtoaddr ptr %.043.lcssa.i to i64 ; 2 uses
  %i.dq = icmp ult ptr %.046.lcssa.i, %i.dj
  br i1 %i.dq, label %.lr.ph62.i.preheader, label %.preheader.i

.lr.ph62.i.preheader:                             ; preds = %.preheader52.i
  %.040.lcssa.i1275 = ptrtoaddr ptr %.046.lcssa.i to i64 ; 2 uses
  %.046.lcssa.i1274 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.dr = add i64 %.idx.i, %i.df
  %i.ds = xor i64 %.040.lcssa.i1275, -1
  %i.dt = add i64 %i.dr, %i.ds                    ; 2 uses
  %i.du = lshr i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 44
  %i.dw = sub i64 %.040.lcssa.i1275, %.046.lcssa.i1274
  %diff.check = icmp ugt i64 %i.dw, -32
  %or.cond1341 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1341, label %.lr.ph62.i.preheader1383, label %vector.ph

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
  %next.gep1276 = getelementptr i8, ptr %.046.lcssa.i, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep1276, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1276, align 4, !tbaa !48
  %wide.load1277 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !48
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48
  store <4 x i32> %wide.load1277, ptr %i.ec, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph62.i.preheader1383

.lr.ph62.i.preheader1383:                         ; preds = %.lr.ph62.i.preheader, %middle.block
  %.24261.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph62.i.preheader ], [ %i.dy, %middle.block ]
  %.24860.i.ph = phi ptr [ %.046.lcssa.i, %.lr.ph62.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph62.i

bb.r:                                             ; preds = %bb.ae, %.lr.ph.i440
  %.056.i = phi ptr [ %.val14.i427, %.lr.ph.i440 ], [ %.1.i441, %bb.ae ] ; 4 uses
  %.04055.i = phi ptr [ %i.de, %.lr.ph.i440 ], [ %.141.i, %bb.ae ] ; 4 uses
  %.04354.i = phi ptr [ %.val14.i427, %.lr.ph.i440 ], [ %.144.i, %bb.ae ] ; 4 uses
  %.04653.i = phi ptr [ %i.de, %.lr.ph.i440 ], [ %.147.i, %bb.ae ] ; 4 uses
  %i.ee = load i32, ptr %.04653.i, align 4, !tbaa !48 ; 4 uses
  %i.ef = load i32, ptr %.04354.i, align 4, !tbaa !48 ; 3 uses
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.eh = load i32, ptr %i.bo, align 4, !tbaa !45 ; 7 uses
  %i.ei = load i32, ptr %i.bn, align 8, !tbaa !46
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.t, label %.Vec_IntPush.exit_crit_edge.i442

.Vec_IntPush.exit_crit_edge.i442:                 ; preds = %bb.s
  %.pre.i443 = load ptr, ptr %i.dp, align 8, !tbaa !47
  br label %Vec_IntPush.exit.i444

bb.t:                                             ; preds = %bb.s
  %i.ek = icmp slt i32 %i.eh, 16
  br i1 %i.ek, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %i.dp, align 8, !tbaa !47 ; 2 uses
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
  %.pre70.i = load ptr, ptr %i.dp, align 8, !tbaa !47 ; 3 uses
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
  store ptr %i.eu, ptr %i.dp, align 8, !tbaa !47
  store i32 %spec.select.sink.i.i449, ptr %i.bn, align 8, !tbaa !46
  %.pre71.i = load i32, ptr %i.bo, align 4, !tbaa !45
  br label %Vec_IntPush.exit.i444

Vec_IntPush.exit.i444:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i448, %bb.x, %.Vec_IntPush.exit_crit_edge.i442
  %i.ev = phi i32 [ %i.eh, %.Vec_IntPush.exit_crit_edge.i442 ], [ %i.eh, %bb.x ], [ %.pre71.i, %Vec_IntGrow.exit11.sink.split.i.i448 ] ; 2 uses
  %i.ew = phi ptr [ %.pre.i443, %.Vec_IntPush.exit_crit_edge.i442 ], [ %.pre70.i, %bb.x ], [ %i.eu, %Vec_IntGrow.exit11.sink.split.i.i448 ]
  %i.ex = add nsw i32 %i.ev, 1
  store i32 %i.ex, ptr %i.bo, align 4, !tbaa !45
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  store i32 %i.ee, ptr %i.ez, align 4, !tbaa !48
  %i.fa = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.04354.i, i64 4
  br label %bb.ae

bb.ab:                                            ; preds = %bb.r
  %i.fc = icmp slt i32 %i.ee, %i.ef
  br i1 %i.fc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %.04653.i, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.04055.i, i64 4
  store i32 %i.ee, ptr %.04055.i, align 4, !tbaa !48
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %.04354.i, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.056.i, i64 4
  store i32 %i.ef, ptr %.056.i, align 4, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %Vec_IntPush.exit.i444
  %.147.i = phi ptr [ %i.fa, %Vec_IntPush.exit.i444 ], [ %i.fd, %bb.ac ], [ %.04653.i, %bb.ad ] ; 3 uses
  %.144.i = phi ptr [ %i.fb, %Vec_IntPush.exit.i444 ], [ %.04354.i, %bb.ac ], [ %i.ff, %bb.ad ] ; 3 uses
  %.141.i = phi ptr [ %.04055.i, %Vec_IntPush.exit.i444 ], [ %i.fe, %bb.ac ], [ %.04055.i, %bb.ad ] ; 2 uses
  %.1.i441 = phi ptr [ %.056.i, %Vec_IntPush.exit.i444 ], [ %.056.i, %bb.ac ], [ %i.fg, %bb.ad ] ; 2 uses
  %i.fh = icmp ult ptr %.147.i, %i.dj
  %i.fi = icmp ult ptr %.144.i, %i.dl
  %i.fj = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %i.fj, label %bb.r, label %.preheader52.i, !llvm.loop !182

.preheader.i:                                     ; preds = %.lr.ph62.i, %middle.block, %.preheader52.i
  %.242.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader52.i ], [ %i.dy, %middle.block ], [ %i.ga, %.lr.ph62.i ]
  %i.fk = icmp ult ptr %.043.lcssa.i, %i.dl
  br i1 %i.fk, label %.lr.ph66.i.preheader, label %Vec_IntTwoRemoveCommon.exit

.lr.ph66.i.preheader:                             ; preds = %.preheader.i
  %i.fl = add i64 %.idx68.i, %.val14.i4271284
  %i.fm = xor i64 %.0.lcssa.i4381285, -1
  %i.fn = add i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = lshr i64 %i.fn, 2
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check1287 = icmp ult i64 %i.fn, 44
  %i.fq = sub i64 %.0.lcssa.i4381285, %.043.lcssa.i1283
  %diff.check1289 = icmp ugt i64 %i.fq, -32
  %or.cond1342 = select i1 %min.iters.check1287, i1 true, i1 %diff.check1289
  br i1 %or.cond1342, label %.lr.ph66.i.preheader1381, label %vector.ph1290

vector.ph1290:                                    ; preds = %.lr.ph66.i.preheader
  %n.vec1291 = and i64 %i.fp, 9223372036854775800 ; 3 uses
  %i.fr = shl i64 %n.vec1291, 2                   ; 2 uses
  %i.fs = getelementptr i8, ptr %.0.lcssa.i438, i64 %i.fr ; 2 uses
  %i.ft = getelementptr i8, ptr %.043.lcssa.i, i64 %i.fr
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1298, %vector.body1292 ] ; 2 uses
  %i.fu = shl i64 %index1293, 2                   ; 2 uses
  %next.gep1294 = getelementptr i8, ptr %.0.lcssa.i438, i64 %i.fu ; 2 uses
  %next.gep1295 = getelementptr i8, ptr %.043.lcssa.i, i64 %i.fu ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep1295, i64 16
  %wide.load1296 = load <4 x i32>, ptr %next.gep1295, align 4, !tbaa !48
  %wide.load1297 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !48
  %i.fw = getelementptr i8, ptr %next.gep1294, i64 16
  store <4 x i32> %wide.load1296, ptr %next.gep1294, align 4, !tbaa !48
  store <4 x i32> %wide.load1297, ptr %i.fw, align 4, !tbaa !48
  %index.next1298 = add nuw i64 %index1293, 8     ; 2 uses
  %i.fx = icmp eq i64 %index.next1298, %n.vec1291
  br i1 %i.fx, label %middle.block1299, label %vector.body1292, !llvm.loop !183

middle.block1299:                                 ; preds = %vector.body1292
  %cmp.n1300 = icmp eq i64 %i.fp, %n.vec1291
  br i1 %cmp.n1300, label %Vec_IntTwoRemoveCommon.exit, label %.lr.ph66.i.preheader1381

.lr.ph66.i.preheader1381:                         ; preds = %.lr.ph66.i.preheader, %middle.block1299
  %.265.i.ph = phi ptr [ %.0.lcssa.i438, %.lr.ph66.i.preheader ], [ %i.fs, %middle.block1299 ]
  %.24564.i.ph = phi ptr [ %.043.lcssa.i, %.lr.ph66.i.preheader ], [ %i.ft, %middle.block1299 ]
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader1383, %.lr.ph62.i
  %.24261.i = phi ptr [ %i.ga, %.lr.ph62.i ], [ %.24261.i.ph, %.lr.ph62.i.preheader1383 ] ; 2 uses
  %.24860.i = phi ptr [ %i.fy, %.lr.ph62.i ], [ %.24860.i.ph, %.lr.ph62.i.preheader1383 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.24860.i, i64 4 ; 2 uses
  %i.fz = load i32, ptr %.24860.i, align 4, !tbaa !48
  %i.ga = getelementptr inbounds nuw i8, ptr %.24261.i, i64 4 ; 2 uses
  store i32 %i.fz, ptr %.24261.i, align 4, !tbaa !48
  %i.gb = icmp ult ptr %i.fy, %i.dj
  br i1 %i.gb, label %.lr.ph62.i, label %.preheader.i, !llvm.loop !184

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader1381, %.lr.ph66.i
  %.265.i = phi ptr [ %i.ge, %.lr.ph66.i ], [ %.265.i.ph, %.lr.ph66.i.preheader1381 ] ; 2 uses
  %.24564.i = phi ptr [ %i.gc, %.lr.ph66.i ], [ %.24564.i.ph, %.lr.ph66.i.preheader1381 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.24564.i, i64 4 ; 2 uses
  %i.gd = load i32, ptr %.24564.i, align 4, !tbaa !48
  %i.ge = getelementptr inbounds nuw i8, ptr %.265.i, i64 4 ; 2 uses
  store i32 %i.gd, ptr %.265.i, align 4, !tbaa !48
  %i.gf = icmp ult ptr %i.gc, %i.dl
  br i1 %i.gf, label %.lr.ph66.i, label %Vec_IntTwoRemoveCommon.exit, !llvm.loop !185

Vec_IntTwoRemoveCommon.exit:                      ; preds = %.lr.ph66.i, %middle.block1299, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.0.lcssa.i438, %.preheader.i ], [ %i.fs, %middle.block1299 ], [ %i.ge, %.lr.ph66.i ]
  %i.gg = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.gh = ptrtoint ptr %.242.lcssa.i to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = lshr exact i64 %i.gj, 2
  %i.gl = trunc i64 %i.gk to i32
  store i32 %i.gl, ptr %i.bw, align 4, !tbaa !45
  %i.gm = load ptr, ptr %i.dg, align 8, !tbaa !47
  %i.gn = ptrtoint ptr %.2.lcssa.i to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = lshr exact i64 %i.gp, 2
  %i.gr = trunc i64 %i.gq to i32
  store i32 %i.gr, ptr %i.co, align 4, !tbaa !45
  %.pre1047 = load ptr, ptr %0, align 8, !tbaa !76
  br label %bb.af

bb.af:                                            ; preds = %Vec_IntTwoRemoveCommon.exit, %Fx_ManDivFindPivots.exit
  %i.gs = phi ptr [ %.pre1047, %Vec_IntTwoRemoveCommon.exit ], [ %.pre1048, %Fx_ManDivFindPivots.exit ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !83
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %.val370 = load ptr, ptr %i.gv, align 8, !tbaa !19 ; 2 uses
  %i.gw = sext i32 %.2859 to i64
  %i.gx = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.gw ; 3 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 4      ; 3 uses
  %.val1216.i451 = load i32, ptr %i.gy, align 4, !tbaa !45 ; 2 uses
  %i.gz = icmp sgt i32 %.val1216.i451, 0
  br i1 %i.gz, label %.lr.ph.i453, label %Fx_ManCompressCubes.exit464

.lr.ph.i453:                                      ; preds = %bb.af
  %i.ha = getelementptr i8, ptr %i.gx, i64 8
  %.val14.i454 = load ptr, ptr %i.ha, align 8, !tbaa !47 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gs, i64 8
  %.val13.i455 = load ptr, ptr %i.hb, align 8, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i453
  %.val1220.i456 = phi i32 [ %.val1216.i451, %.lr.ph.i453 ], [ %.val12.i460, %bb.ai ]
  %indvars.iv.i457 = phi i64 [ 0, %.lr.ph.i453 ], [ %indvars.iv.next.i462, %bb.ai ] ; 2 uses
  %.018.i458 = phi i32 [ 0, %.lr.ph.i453 ], [ %.1.i461, %bb.ai ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.val14.i454, i64 %indvars.iv.i457
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !48 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [16 x i8], ptr %.val13.i455, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 4
  %.val.i459 = load i32, ptr %i.hg, align 4, !tbaa !45
  %i.hh = icmp sgt i32 %.val.i459, 0
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hi = add nsw i32 %.018.i458, 1
  %i.hj = sext i32 %.018.i458 to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %.val14.i454, i64 %i.hj
  store i32 %i.hd, ptr %i.hk, align 4, !tbaa !48
  %.val12.pre.i463 = load i32, ptr %i.gy, align 4, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.val12.i460 = phi i32 [ %.val12.pre.i463, %bb.ah ], [ %.val1220.i456, %bb.ag ] ; 2 uses
  %.1.i461 = phi i32 [ %i.hi, %bb.ah ], [ %.018.i458, %bb.ag ] ; 2 uses
  %indvars.iv.next.i462 = add nuw nsw i64 %indvars.iv.i457, 1 ; 2 uses
  %i.hl = sext i32 %.val12.i460 to i64
  %i.hm = icmp slt i64 %indvars.iv.next.i462, %i.hl
  br i1 %i.hm, label %bb.ag, label %Fx_ManCompressCubes.exit464, !llvm.loop !180

Fx_ManCompressCubes.exit464:                      ; preds = %bb.ai, %bb.af
  %.0.lcssa.i452 = phi i32 [ 0, %bb.af ], [ %.1.i461, %bb.ai ]
  store i32 %.0.lcssa.i452, ptr %i.gy, align 4, !tbaa !45
  %i.hn = sext i32 %.3856 to i64
  %i.ho = getelementptr inbounds [16 x i8], ptr %.val370, i64 %i.hn ; 3 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 4      ; 3 uses
  %.val1216.i465 = load i32, ptr %i.hp, align 4, !tbaa !45 ; 2 uses
  %i.hq = icmp sgt i32 %.val1216.i465, 0
  br i1 %i.hq, label %.lr.ph.i467, label %Fx_ManCompressCubes.exit478

.lr.ph.i467:                                      ; preds = %Fx_ManCompressCubes.exit464
  %i.hr = getelementptr i8, ptr %i.ho, i64 8
  %.val14.i468 = load ptr, ptr %i.hr, align 8, !tbaa !47 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.gs, i64 8
  %.val13.i469 = load ptr, ptr %i.hs, align 8, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i467
  %.val1220.i470 = phi i32 [ %.val1216.i465, %.lr.ph.i467 ], [ %.val12.i474, %bb.al ]
  %indvars.iv.i471 = phi i64 [ 0, %.lr.ph.i467 ], [ %indvars.iv.next.i476, %bb.al ] ; 2 uses
  %.018.i472 = phi i32 [ 0, %.lr.ph.i467 ], [ %.1.i475, %bb.al ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.val14.i468, i64 %indvars.iv.i471
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !48 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [16 x i8], ptr %.val13.i469, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  %.val.i473 = load i32, ptr %i.hx, align 4, !tbaa !45
  %i.hy = icmp sgt i32 %.val.i473, 0
  br i1 %i.hy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hz = add nsw i32 %.018.i472, 1
  %i.ia = sext i32 %.018.i472 to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %.val14.i468, i64 %i.ia
  store i32 %i.hu, ptr %i.ib, align 4, !tbaa !48
  %.val12.pre.i477 = load i32, ptr %i.hp, align 4, !tbaa !45
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.val12.i474 = phi i32 [ %.val12.pre.i477, %bb.ak ], [ %.val1220.i470, %bb.aj ] ; 2 uses
  %.1.i475 = phi i32 [ %i.hz, %bb.ak ], [ %.018.i472, %bb.aj ] ; 2 uses
  %indvars.iv.next.i476 = add nuw nsw i64 %indvars.iv.i471, 1 ; 2 uses
  %i.ic = sext i32 %.val12.i474 to i64
  %i.id = icmp slt i64 %indvars.iv.next.i476, %i.ic
  br i1 %i.id, label %bb.aj, label %Fx_ManCompressCubes.exit478, !llvm.loop !180

Fx_ManCompressCubes.exit478:                      ; preds = %bb.al, %Fx_ManCompressCubes.exit464
  %.0.lcssa.i466 = phi i32 [ 0, %Fx_ManCompressCubes.exit464 ], [ %.1.i475, %bb.al ]
  store i32 %.0.lcssa.i466, ptr %i.hp, align 4, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !78
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !79
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !80
  tail call void @Fx_ManFindCommonPairs(ptr noundef %i.gs, ptr noundef %i.gx, ptr noundef %i.ho, ptr noundef %i.if, ptr noundef %i.ih, ptr noundef %i.b, ptr noundef %i.ij, ptr poison)
  %i.ik = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 3 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %.val341903 = load i32, ptr %i.il, align 4, !tbaa !45
  %i.im = icmp sgt i32 %.val341903, 0
  br i1 %i.im, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Fx_ManCompressCubes.exit478, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ 0, %Fx_ManCompressCubes.exit478 ] ; 2 uses
  %i.in = phi ptr [ %i.iw, %bb.am ], [ %i.ik, %Fx_ManCompressCubes.exit478 ] ; 2 uses
  %i.io = load ptr, ptr %0, align 8, !tbaa !76
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %.val366 = load ptr, ptr %i.ip, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %.val366, null
  br i1 %.not, label %.critedge, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.iq = getelementptr i8, ptr %i.in, i64 8
  %.val390 = load ptr, ptr %i.iq, align 8, !tbaa !47
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.val390, i64 %indvars.iv
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !48
  %i.it = sext i32 %i.is to i64
end_hunk_0
