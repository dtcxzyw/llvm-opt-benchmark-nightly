Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/xsatSolver?download=true
inline.NumInlined: 383
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@xSAT_SolverRebuildOrderHeap:bb.a
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %.pre19 = phi ptr [ %.pre18, %.lr.ph ], [ %.pre, %Vec_IntPush.exit ]
  %i.ai = phi ptr [ %i.j, %.lr.ph ], [ %.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.aj = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %Vec_IntPush.exit ] ; 2 uses
  %i.ak = phi ptr [ %i.l, %.lr.ph ], [ %i.ac, %Vec_IntPush.exit ]
  %i.al = phi i32 [ %i.m, %.lr.ph ], [ %i.ad, %Vec_IntPush.exit ]
  %i.am = phi i32 [ %i.n, %.lr.ph ], [ %i.ae, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ai, i64 4
  %.val = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ao = sext i32 %.val to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.l, %Vec_IntAlloc.exit
  %i.aq = phi ptr [ %i.h, %Vec_IntAlloc.exit ], [ %i.aj, %bb.l ] ; 3 uses
  %.val2434.i = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %i.am, %bb.l ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4      ; 3 uses
  %.val2532.i = load i32, ptr %i.av, align 4, !tbaa !38
  %i.aw = icmp sgt i32 %.val2532.i, 0
  br i1 %i.aw, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ax = getelementptr i8, ptr %i.au, i64 8
  %.val27.i = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !40
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val29.i = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val27.i, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.val29.i, i64 %i.bd
  store i32 -1, ptr %i.be, align 4, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val25.i = load i32, ptr %i.av, align 4, !tbaa !38
  %i.bf = sext i32 %.val25.i to i64
  %i.bg = icmp slt i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %bb.m, label %.critedge.i, !llvm.loop !79

.critedge.i:                                      ; preds = %bb.m, %._crit_edge
  store i32 0, ptr %i.av, align 4, !tbaa !38
  %i.bh = icmp sgt i32 %.val2434.i, 0
  br i1 %i.bh, label %.lr.ph36.i, label %xSAT_HeapBuild.exit

.lr.ph36.i:                                       ; preds = %.critedge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bj = zext nneg i32 %.val2434.i to i64
  br label %bb.n

bb.n:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph36.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next41.i, %Vec_IntPush.exit.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv40.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !31 ; 2 uses
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %.val28.i = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val28.i, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv40.i to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !31
  %i.br = load ptr, ptr %i.at, align 8, !tbaa !35 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !38 ; 7 uses
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !41
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.o, label %Vec_IntPush.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp slt i32 %i.bt, 16
  br i1 %i.bw, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.by, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ca = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.r, %bb.q
  %i.cb = phi ptr [ %i.bz, %bb.q ], [ %i.ca, %bb.r ]
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.s:                                             ; preds = %bb.o
  %i.cc = icmp samesign ult i32 %i.bt, 1073741823
  %i.cd = shl nuw nsw i32 %i.bt, 1
  %spec.select.i.i = select i1 %i.cc, i32 %i.cd, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bt, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.t, label %Vec_IntPush.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.cf, null
  %i.cg = zext nneg i32 %spec.select.i.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef %i.ch) #19
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ck = phi ptr [ %i.ci, %bb.u ], [ %i.cj, %bb.v ]
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.w, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.w ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.br, align 8, !tbaa !41
  %.pre.i = load i32, ptr %i.bs, align 4, !tbaa !38
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.s, %bb.n
  %i.cl = phi i32 [ %i.bt, %bb.n ], [ %i.bt, %bb.s ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !39
  %i.co = add nsw i32 %i.cl, 1
  store i32 %i.co, ptr %i.bs, align 4, !tbaa !38
  %i.cp = sext i32 %i.cl to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %i.bl, ptr %i.cq, align 4, !tbaa !31
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41.i, %i.bj
  br i1 %exitcond.not, label %.critedge2.i, label %bb.n, !llvm.loop !80

.critedge2.i:                                     ; preds = %Vec_IntPush.exit.i
  %.pre46.i = load ptr, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre46.i, i64 4 ; 3 uses
  %.val.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38 ; 2 uses
  %i.cr = icmp sgt i32 %.val.pre.i, 1
  br i1 %i.cr, label %.lr.ph38.i, label %xSAT_HeapBuild.exit.thread

.lr.ph38.i:                                       ; preds = %.critedge2.i
  %i.cs = lshr i32 %.val.pre.i, 1
  %i.ct = getelementptr i8, ptr %.pre46.i, i64 8
  %.val40.i.i = load ptr, ptr %i.ct, align 8, !tbaa !39 ; 6 uses
  %i.cu = load ptr, ptr %i.bi, align 8, !tbaa !40
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val41.i.i = load ptr, ptr %i.cv, align 8, !tbaa !39 ; 2 uses
  %i.cw = zext nneg i32 %i.cs to i64
  br label %bb.x

bb.x:                                             ; preds = %xSAT_HeapPercolateDown.exit.i, %.lr.ph38.i
  %indvars.iv43.i = phi i64 [ %i.cw, %.lr.ph38.i ], [ %indvars.iv.next44.i, %xSAT_HeapPercolateDown.exit.i ] ; 2 uses
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, -1 ; 5 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %indvars.iv.next44.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !31 ; 3 uses
  %i.cz = shl nuw nsw i64 %indvars.iv.next44.i, 1 ; 2 uses
  %i.da = or disjoint i64 %i.cz, 1                ; 2 uses
  %.val3450.i.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38 ; 2 uses
  %i.db = sext i32 %.val3450.i.i to i64
  %i.dc = icmp slt i64 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph.i.i, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.x
  %.pre63.i.i = sext i32 %i.cy to i64
  %i.dd = trunc nsw i64 %indvars.iv.next44.i to i32
  br label %xSAT_HeapPercolateDown.exit.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %.val45.i.i = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.de = getelementptr i8, ptr %.val45.i.i, i64 8
  %.val45.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !39 ; 4 uses
  %i.df = sext i32 %i.cy to i64                   ; 3 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i, i64 %i.df
  %i.dh = trunc nuw nsw i64 %i.da to i32
  %i.di = trunc nuw nsw i64 %i.cz to i32
  %i.dj = trunc nsw i64 %indvars.iv.next44.i to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i.i
  %.val3452.i.i = phi i32 [ %.val3450.i.i, %.lr.ph.i.i ], [ %.val34.i.i, %bb.ab ]
  %i.dk = phi i32 [ %i.dh, %.lr.ph.i.i ], [ %i.eg, %bb.ab ] ; 4 uses
  %i.dl = phi i32 [ %i.di, %.lr.ph.i.i ], [ %i.ef, %bb.ab ]
  %.03251.i.i = phi i32 [ %i.dj, %.lr.ph.i.i ], [ %i.eb, %bb.ab ] ; 3 uses
  %i.dm = add nuw nsw i32 %i.dl, 2                ; 3 uses
  %i.dn = icmp slt i32 %i.dm, %.val3452.i.i
  br i1 %i.dn, label %bb.z, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.y
  %.pre48.phi.trans.insert.i = zext i32 %i.dk to i64
  %.phi.trans.insert.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %.pre48.phi.trans.insert.i
  %.pre55.pre.i.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 4, !tbaa !31 ; 2 uses
  %.phi.trans.insert56.phi.trans.insert.i.i = sext i32 %.pre55.pre.i.i to i64 ; 2 uses
  %.phi.trans.insert57.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i, i64 %.phi.trans.insert56.phi.trans.insert.i.i
  %.pre58.pre.i.i = load i32, ptr %.phi.trans.insert57.phi.trans.insert.i.i, align 4, !tbaa !31
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %1 = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %1
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !31 ; 2 uses
  %i.dq = zext nneg i32 %i.dk to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !31 ; 2 uses
  %i.dt = sext i32 %i.dp to i64                   ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !31 ; 2 uses
  %i.dw = sext i32 %i.ds to i64                   ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !31 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.dv, %i.dy
  br i1 %.not.i.i, label %bb.aa, label %._crit_edge62.i.i

._crit_edge62.i.i:                                ; preds = %bb.z
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge62.i.i, %bb.z, %._crit_edge.i.i
  %.pre-phi61.i.i = phi i64 [ %i.dt, %bb.z ], [ %.phi.trans.insert56.phi.trans.insert.i.i, %._crit_edge.i.i ], [ %i.dw, %._crit_edge62.i.i ]
  %i.dz = phi i32 [ %i.dv, %bb.z ], [ %.pre58.pre.i.i, %._crit_edge.i.i ], [ %i.dy, %._crit_edge62.i.i ]
  %i.ea = phi i32 [ %i.dp, %bb.z ], [ %.pre55.pre.i.i, %._crit_edge.i.i ], [ %i.ds, %._crit_edge62.i.i ]
  %i.eb = phi i32 [ %i.dm, %bb.z ], [ %i.dk, %._crit_edge.i.i ], [ %i.dk, %._crit_edge62.i.i ] ; 3 uses
  %i.ec = load i32, ptr %i.dg, align 4, !tbaa !31
  %.not49.i.i = icmp ugt i32 %i.dz, %i.ec
  br i1 %.not49.i.i, label %bb.ab, label %xSAT_HeapPercolateDown.exit.i

bb.ab:                                            ; preds = %bb.aa
  %2 = zext nneg i32 %.03251.i.i to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %2
  store i32 %i.ea, ptr %i.ed, align 4, !tbaa !31
  %i.ee = getelementptr inbounds [4 x i8], ptr %.val41.i.i, i64 %.pre-phi61.i.i
  store i32 %.03251.i.i, ptr %i.ee, align 4, !tbaa !31
  %i.ef = shl nuw nsw i32 %i.eb, 1                ; 2 uses
  %i.eg = or disjoint i32 %i.ef, 1                ; 2 uses
  %.val34.i.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38 ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %.val34.i.i
  br i1 %i.eh, label %bb.y, label %xSAT_HeapPercolateDown.exit.i

xSAT_HeapPercolateDown.exit.i:                    ; preds = %bb.ab, %bb.aa, %..thread_crit_edge.i.i
  %.pre-phi64.i.i = phi i64 [ %.pre63.i.i, %..thread_crit_edge.i.i ], [ %i.df, %bb.aa ], [ %i.df, %bb.ab ]
  %.032.lcssa.i.i = phi i32 [ %i.dd, %..thread_crit_edge.i.i ], [ %i.eb, %bb.ab ], [ %.03251.i.i, %bb.aa ] ; 2 uses
  %3 = zext nneg i32 %.032.lcssa.i.i to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %3
  store i32 %i.cy, ptr %i.ei, align 4, !tbaa !31
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val41.i.i, i64 %.pre-phi64.i.i
  store i32 %.032.lcssa.i.i, ptr %i.ej, align 4, !tbaa !31
  %i.ek = icmp sgt i64 %indvars.iv43.i, 1
  br i1 %i.ek, label %bb.x, label %xSAT_HeapBuild.exit, !llvm.loop !81

xSAT_HeapBuild.exit:                              ; preds = %xSAT_HeapPercolateDown.exit.i, %.critedge.i
  %.not.i12 = icmp eq ptr %i.aq, null
  br i1 %.not.i12, label %Vec_IntFree.exit, label %xSAT_HeapBuild.exit.thread

xSAT_HeapBuild.exit.thread:                       ; preds = %.critedge2.i, %xSAT_HeapBuild.exit
  tail call void @free(ptr noundef nonnull %i.aq) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %xSAT_HeapBuild.exit, %xSAT_HeapBuild.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @xSAT_SolverClaNew(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %2, 3
  %i.b = getelementptr i8, ptr %1, i64 4          ; 7 uses
  %.val70 = load i32, ptr %i.b, align 4, !tbaa !38
  %i.c = add nsw i32 %i.a, %.val70                ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !43     ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  %i.f = add i32 %i.e, %i.c                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i32 %i.h, %i.f
  br i1 %.not.i.i, label %.lr.ph.i.i, label %xSAT_MemAppend.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.i = phi i32 [ %i.o, %.lr.ph.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = lshr i32 %i.i, 3
  %i.l = add nuw i32 %i.j, %i.k
  %i.m = and i32 %i.l, -2
  %i.n = add i32 %i.i, 2
  %i.o = add i32 %i.n, %i.m                       ; 4 uses
  %i.p = icmp ult i32 %i.o, %i.f
  br i1 %i.p, label %.lr.ph.i.i, label %bb.b, !llvm.loop !0

bb.b:                                             ; preds = %.lr.ph.i.i
  store i32 %i.o, ptr %i.g, align 4, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %.not14.i.i = icmp eq ptr %i.r, null
  %i.s = zext i32 %i.o to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not14.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #19
  %.pre.pre.i = load i32, ptr %i.d, align 8, !tbaa !45 ; 2 uses
  %.pre8.i = add i32 %.pre.pre.i, %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre7.pre-phi.i = phi i32 [ %i.f, %bb.d ], [ %.pre8.i, %bb.c ]
  %.pre.i = phi i32 [ %i.e, %bb.d ], [ %.pre.pre.i, %bb.c ]
  %i.w = phi ptr [ %i.v, %bb.d ], [ %i.u, %bb.c ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !47
  br label %xSAT_MemAppend.exit

xSAT_MemAppend.exit:                              ; preds = %bb.a, %bb.e
  %.pre-phi.i = phi i32 [ %i.f, %bb.a ], [ %.pre7.pre-phi.i, %bb.e ]
  %i.x = phi i32 [ %i.e, %bb.a ], [ %.pre.i, %bb.e ] ; 6 uses
  store i32 %.pre-phi.i, ptr %i.d, align 8, !tbaa !45
  %.not.i.i77 = icmp eq i32 %i.x, -1
  br i1 %.not.i.i77, label %xSAT_SolverReadClause.exit, label %bb.f

bb.f:                                             ; preds = %xSAT_MemAppend.exit
  %.val71 = load ptr, ptr %0, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %.val71, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  br label %xSAT_SolverReadClause.exit

xSAT_SolverReadClause.exit:                       ; preds = %xSAT_MemAppend.exit, %bb.f
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %xSAT_MemAppend.exit ] ; 7 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %2, 1                           ; 2 uses
  %i.af = and i32 %i.ad, -16
  %i.ag = shl nuw nsw i32 %i.ae, 3
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.ae
  store i32 %i.ai, ptr %i.ac, align 4
  %.val69 = load i32, ptr %i.b, align 4, !tbaa !38 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 4 uses
  store i32 %.val69, ptr %i.aj, align 4, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val72 = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.am = sext i32 %.val69 to i64
  %i.an = shl nsw i64 %i.am, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %.val72, i64 %i.an, i1 false)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.u, label %bb.g

bb.g:                                             ; preds = %xSAT_SolverReadClause.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38 ; 7 uses
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.au = icmp slt i32 %i.ar, 16
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ay = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.az = phi ptr [ %i.ax, %bb.j ], [ %i.ay, %bb.k ]
  store ptr %i.az, ptr %i.av, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ba = icmp samesign ult i32 %i.ar, 1073741823
  %i.bb = shl nuw nsw i32 %i.ar, 1
  %spec.select.i = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ar, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bd, null
  %i.be = zext nneg i32 %spec.select.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %i.bd, i64 noundef %i.bf) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = phi ptr [ %i.bg, %bb.n ], [ %i.bh, %bb.o ]
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ap, align 8, !tbaa !41
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !38
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.bj = phi i32 [ %i.ar, %bb.g ], [ %i.ar, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !39
  %i.bm = add nsw i32 %i.bj, 1
  store i32 %i.bm, ptr %i.aq, align 4, !tbaa !38
  %i.bn = sext i32 %i.bj to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  store i32 %i.x, ptr %i.bo, align 4, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !51
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !51
  %.val20.i = load i32, ptr %i.b, align 4, !tbaa !38 ; 2 uses
  %i.bs = icmp sgt i32 %.val20.i, 0
  br i1 %i.bs, label %.lr.ph.i, label %xSAT_SolverClaCalcLBD2.exit

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %.val18.i = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
end_hunk_0
begin_hunk_1_@xSAT_SolverSearch:bb.a
bb.dx:                                            ; preds = %xSAT_SolverAnalyze.exit
  %i.afh = add nsw i32 %i.aeq, 1
  store i32 %i.afh, ptr %i.aep, align 8, !tbaa !140
  %.phi.trans.insert.i90 = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  %.pre.i91 = load i64, ptr %.phi.trans.insert.i90, align 8, !tbaa !144
  %.phi.trans.insert17.i92 = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %.pre18.i93 = load ptr, ptr %.phi.trans.insert17.i92, align 8, !tbaa !142
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.afi = phi ptr [ %.pre18.i93, %bb.dx ], [ %i.aev, %bb.dw ]
  %i.afj = phi i64 [ %.pre.i91, %bb.dx ], [ %i.afe, %bb.dw ]
  %i.afk = zext i32 %.0.lcssa.i214.i to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  %i.afm = add i64 %i.afj, %i.afk
  store i64 %i.afm, ptr %i.afl, align 8, !tbaa !144
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aep, i64 12 ; 4 uses
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !145
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds [4 x i8], ptr %i.afi, i64 %i.afp
  store i32 %.0.lcssa.i214.i, ptr %i.afq, align 4, !tbaa !31
  %i.afr = load i32, ptr %i.afn, align 4, !tbaa !145
  %i.afs = add nsw i32 %i.afr, 1                  ; 2 uses
  store i32 %i.afs, ptr %i.afn, align 4, !tbaa !145
  %i.aft = load i32, ptr %i.aer, align 4, !tbaa !141
  %i.afu = icmp eq i32 %i.afs, %i.aft
  br i1 %i.afu, label %bb.dz, label %xSAT_BQueuePush.exit94

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.afn, align 4, !tbaa !145
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  store i32 0, ptr %i.afv, align 8, !tbaa !143
  br label %xSAT_BQueuePush.exit94

xSAT_BQueuePush.exit94:                           ; preds = %bb.dy, %bb.dz
  tail call void @xSAT_SolverCancelUntil(ptr noundef nonnull %0, i32 noundef %storemerge.i211)
  %i.afw = load ptr, ptr %i.k, align 8, !tbaa !149 ; 3 uses
  %i.afx = getelementptr i8, ptr %i.afw, i64 4
  %.val74 = load i32, ptr %i.afx, align 4, !tbaa !38
  %i.afy = icmp eq i32 %.val74, 1
  br i1 %i.afy, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %xSAT_BQueuePush.exit94
  %i.afz = tail call i32 @xSAT_SolverClaNew(ptr noundef nonnull %0, ptr noundef nonnull %i.afw, i32 noundef 1)
  %.pre157 = load ptr, ptr %i.k, align 8, !tbaa !149
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %xSAT_BQueuePush.exit94
  %i.aga = phi ptr [ %.pre157, %bb.ea ], [ %i.afw, %xSAT_BQueuePush.exit94 ]
  %i.agb = phi i32 [ %i.afz, %bb.ea ], [ -1, %xSAT_BQueuePush.exit94 ]
  %i.agc = getelementptr i8, ptr %i.aga, i64 8
  %.val77 = load ptr, ptr %i.agc, align 8, !tbaa !39
  %i.agd = load i32, ptr %.val77, align 4, !tbaa !31
  %i.age = tail call i32 @xSAT_SolverEnqueue(ptr noundef nonnull %0, i32 noundef %i.agd, i32 noundef %i.agb) ; 0 uses
  %i.agf = load i32, ptr %i.v, align 8, !tbaa !153 ; 2 uses
  %i.agg = ashr i32 %i.agf, 4
  %i.agh = add nsw i32 %i.agg, %i.agf
  store i32 %i.agh, ptr %i.v, align 8, !tbaa !153
  %i.agi = load i32, ptr %i.o, align 4, !tbaa !55 ; 2 uses
  %i.agj = ashr i32 %i.agi, 10
  %i.agk = add nsw i32 %i.agj, %i.agi
  store i32 %i.agk, ptr %i.o, align 4, !tbaa !55
  br label %.backedge

.backedge:                                        ; preds = %bb.eb, %bb.ey
  br label %bb.b

bb.ec:                                            ; preds = %bb.b
  %i.agl = load ptr, ptr %i.i, align 8, !tbaa !147 ; 5 uses
  %.val80 = load i32, ptr %i.agl, align 8, !tbaa !140 ; 2 uses
  %i.agm = getelementptr i8, ptr %i.agl, i64 4
  %.val81 = load i32, ptr %i.agm, align 4, !tbaa !141
  %.not127 = icmp eq i32 %.val81, %.val80
  br i1 %.not127, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.agn = getelementptr i8, ptr %i.agl, i64 16
  %.val85 = load i64, ptr %i.agn, align 8, !tbaa !144
  %i.ago = sext i32 %.val80 to i64
  %i.agp = udiv i64 %.val85, %i.ago
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = uitofp i32 %i.agq to double
  %i.ags = load double, ptr %i.ac, align 8, !tbaa !158
  %i.agt = fmul double %i.ags, %i.agr
  %i.agu = load float, ptr %i.ab, align 8, !tbaa !157
  %i.agv = load i64, ptr %i.d, align 8, !tbaa !137
  %i.agw = sitofp i64 %i.agv to float
  %i.agx = fdiv float %i.agu, %i.agw
  %i.agy = fpext float %i.agx to double
  %i.agz = fcmp ogt double %i.agt, %i.agy
  br i1 %i.agz, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  store i32 0, ptr %i.agl, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  tail call void @xSAT_SolverCancelUntil(ptr noundef nonnull %0, i32 noundef 0)
  br label %.thread

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  %.val78 = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.ahb = getelementptr i8, ptr %.val78, i64 4
  %.val78.val = load i32, ptr %i.ahb, align 4, !tbaa !38
  %i.ahc = icmp eq i32 %.val78.val, 0
  br i1 %i.ahc, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ahd = tail call i32 @xSAT_SolverSimplify(ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ahe = load i64, ptr %i.d, align 8, !tbaa !137 ; 2 uses
  %i.ahf = load i32, ptr %i.ad, align 4, !tbaa !159
  %i.ahg = sext i32 %i.ahf to i64
  %.not71 = icmp slt i64 %i.ahe, %i.ahg
  br i1 %.not71, label %xSAT_HeapRemoveMin.exit.i.preheader, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ahh = load i32, ptr %i.ae, align 8, !tbaa !77
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = sdiv i64 %i.ahe, %i.ahi
  %i.ahk = add nsw i64 %i.ahj, 1
  store i64 %i.ahk, ptr %i.af, align 8, !tbaa !160
  tail call void @xSAT_SolverReduceDB(ptr noundef nonnull %0)
  %i.ahl = load i32, ptr %i.ag, align 8, !tbaa !161
  %i.ahm = load i32, ptr %i.ae, align 8, !tbaa !77
  %i.ahn = add nsw i32 %i.ahm, %i.ahl             ; 2 uses
  store i32 %i.ahn, ptr %i.ae, align 8, !tbaa !77
  %i.aho = load i64, ptr %i.af, align 8, !tbaa !160
  %i.ahp = trunc i64 %i.aho to i32
  %i.ahq = mul i32 %i.ahn, %i.ahp
  store i32 %i.ahq, ptr %i.ad, align 4, !tbaa !159
  br label %xSAT_HeapRemoveMin.exit.i.preheader

xSAT_HeapRemoveMin.exit.i.preheader:              ; preds = %bb.ei, %bb.eh
  br label %xSAT_HeapRemoveMin.exit.i

xSAT_HeapRemoveMin.exit.i:                        ; preds = %xSAT_HeapRemoveMin.exit.i.backedge, %xSAT_HeapRemoveMin.exit.i.preheader
  %.0.i = phi i32 [ -1, %xSAT_HeapRemoveMin.exit.i.preheader ], [ %i.aic, %xSAT_HeapRemoveMin.exit.i.backedge ] ; 3 uses
  %i.ahr = icmp eq i32 %.0.i, -1
  br i1 %i.ahr, label %.critedge.i97, label %bb.ej

bb.ej:                                            ; preds = %xSAT_HeapRemoveMin.exit.i
  %i.ahs = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.aht = getelementptr i8, ptr %i.ahs, i64 8
  %.val.i95 = load ptr, ptr %i.aht, align 8, !tbaa !29
  %i.ahu = sext i32 %.0.i to i64                  ; 2 uses
  %i.ahv = getelementptr inbounds i8, ptr %.val.i95, i64 %i.ahu
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !30
  %.not.i96 = icmp eq i8 %i.ahw, 3
  br i1 %.not.i96, label %xSAT_SolverDecide.exit, label %.critedge.i97

.critedge.i97:                                    ; preds = %bb.ej, %xSAT_HeapRemoveMin.exit.i
  %i.ahx = load ptr, ptr %i.w, align 8, !tbaa !33 ; 3 uses
  %i.ahy = getelementptr i8, ptr %i.ahx, i64 16
  %.val5.i = load ptr, ptr %i.ahy, align 8, !tbaa !35 ; 2 uses
  %i.ahz = getelementptr i8, ptr %.val5.i, i64 4  ; 4 uses
  %.val5.val.i = load i32, ptr %i.ahz, align 4, !tbaa !38 ; 2 uses
  %i.aia = icmp eq i32 %.val5.val.i, 0
  br i1 %i.aia, label %.thread, label %bb.ek

bb.ek:                                            ; preds = %.critedge.i97
  %i.aib = getelementptr i8, ptr %.val5.i, i64 8
  %.val11.i.i98 = load ptr, ptr %i.aib, align 8, !tbaa !39 ; 9 uses
  %i.aic = load i32, ptr %.val11.i.i98, align 4, !tbaa !31 ; 2 uses
  %i.aid = sext i32 %.val5.val.i to i64
  %i.aie = getelementptr [4 x i8], ptr %.val11.i.i98, i64 %i.aid
  %i.aif = getelementptr i8, ptr %i.aie, i64 -4
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !31 ; 2 uses
  store i32 %i.aig, ptr %.val11.i.i98, align 4, !tbaa !31
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !40
  %i.aij = getelementptr i8, ptr %i.aii, i64 8
  %.val13.i.i = load ptr, ptr %i.aij, align 8, !tbaa !39 ; 4 uses
  %i.aik = sext i32 %i.aig to i64
  %i.ail = getelementptr inbounds [4 x i8], ptr %.val13.i.i, i64 %i.aik
  store i32 0, ptr %i.ail, align 4, !tbaa !31
  %i.aim = sext i32 %i.aic to i64
  %i.ain = getelementptr inbounds [4 x i8], ptr %.val13.i.i, i64 %i.aim
  store i32 -1, ptr %i.ain, align 4, !tbaa !31
  %i.aio = load i32, ptr %i.ahz, align 4, !tbaa !38 ; 2 uses
  %i.aip = add nsw i32 %i.aio, -1                 ; 2 uses
  store i32 %i.aip, ptr %i.ahz, align 4, !tbaa !38
  %i.aiq = icmp sgt i32 %i.aio, 2
  br i1 %i.aiq, label %.lr.ph.i.i.i99, label %xSAT_HeapRemoveMin.exit.i.backedge

.lr.ph.i.i.i99:                                   ; preds = %bb.ek
  %i.air = load i32, ptr %.val11.i.i98, align 4, !tbaa !31 ; 2 uses
  %.val45.i.i.i = load ptr, ptr %i.ahx, align 8, !tbaa !42
  %i.ais = getelementptr i8, ptr %.val45.i.i.i, i64 8
  %.val45.val.i.i.i = load ptr, ptr %i.ais, align 8, !tbaa !39 ; 4 uses
  %i.ait = sext i32 %i.air to i64                 ; 2 uses
  %i.aiu = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i.i, i64 %i.ait
  br label %bb.el

bb.el:                                            ; preds = %bb.eo, %.lr.ph.i.i.i99
  %.val3452.i.i.i = phi i32 [ %i.aip, %.lr.ph.i.i.i99 ], [ %.val34.i.i.i, %bb.eo ]
  %i.aiv = phi i32 [ 1, %.lr.ph.i.i.i99 ], [ %i.ajr, %bb.eo ] ; 4 uses
  %i.aiw = phi i32 [ 0, %.lr.ph.i.i.i99 ], [ %i.ajq, %bb.eo ]
  %.03251.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i99 ], [ %i.ajm, %bb.eo ] ; 3 uses
  %i.aix = add nuw nsw i32 %i.aiw, 2              ; 3 uses
  %i.aiy = icmp slt i32 %i.aix, %.val3452.i.i.i
  br i1 %i.aiy, label %bb.em, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.el
  %.pre.phi.trans.insert.i.i = zext i32 %i.aiv to i64
  %.phi.trans.insert.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i98, i64 %.pre.phi.trans.insert.i.i
  %.pre55.pre.i.i.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i.i.i, align 4, !tbaa !31 ; 2 uses
  %.phi.trans.insert56.phi.trans.insert.i.i.i = sext i32 %.pre55.pre.i.i.i to i64 ; 2 uses
  %.phi.trans.insert57.phi.trans.insert.i.i.i = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i.i, i64 %.phi.trans.insert56.phi.trans.insert.i.i.i
  %.pre58.pre.i.i.i = load i32, ptr %.phi.trans.insert57.phi.trans.insert.i.i.i, align 4, !tbaa !31
  br label %bb.en

bb.em:                                            ; preds = %bb.el
  %1 = zext nneg i32 %i.aix to i64
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i98, i64 %1
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !31 ; 2 uses
  %i.ajb = zext nneg i32 %i.aiv to i64
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i98, i64 %i.ajb
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !31 ; 2 uses
  %i.aje = sext i32 %i.aja to i64                 ; 2 uses
  %i.ajf = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i.i, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !31 ; 2 uses
  %i.ajh = sext i32 %i.ajd to i64                 ; 2 uses
  %i.aji = getelementptr inbounds [4 x i8], ptr %.val45.val.i.i.i, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !31 ; 2 uses
  %.not.i.i.i100 = icmp ugt i32 %i.ajg, %i.ajj
  br i1 %.not.i.i.i100, label %bb.en, label %._crit_edge62.i.i.i

._crit_edge62.i.i.i:                              ; preds = %bb.em
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge62.i.i.i, %bb.em, %._crit_edge.i.i.i
  %.pre-phi61.i.i.i = phi i64 [ %i.aje, %bb.em ], [ %.phi.trans.insert56.phi.trans.insert.i.i.i, %._crit_edge.i.i.i ], [ %i.ajh, %._crit_edge62.i.i.i ]
  %i.ajk = phi i32 [ %i.ajg, %bb.em ], [ %.pre58.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ajj, %._crit_edge62.i.i.i ]
  %i.ajl = phi i32 [ %i.aja, %bb.em ], [ %.pre55.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ajd, %._crit_edge62.i.i.i ]
  %i.ajm = phi i32 [ %i.aix, %bb.em ], [ %i.aiv, %._crit_edge.i.i.i ], [ %i.aiv, %._crit_edge62.i.i.i ] ; 3 uses
  %i.ajn = load i32, ptr %i.aiu, align 4, !tbaa !31
  %.not49.i.i.i = icmp ugt i32 %i.ajk, %i.ajn
  br i1 %.not49.i.i.i, label %bb.eo, label %xSAT_HeapPercolateDown.exit.i.i

bb.eo:                                            ; preds = %bb.en
  %2 = zext nneg i32 %.03251.i.i.i to i64
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i98, i64 %2
  store i32 %i.ajl, ptr %i.ajo, align 4, !tbaa !31
  %i.ajp = getelementptr inbounds [4 x i8], ptr %.val13.i.i, i64 %.pre-phi61.i.i.i
  store i32 %.03251.i.i.i, ptr %i.ajp, align 4, !tbaa !31
  %i.ajq = shl nuw nsw i32 %i.ajm, 1              ; 2 uses
  %i.ajr = or disjoint i32 %i.ajq, 1              ; 2 uses
  %.val34.i.i.i = load i32, ptr %i.ahz, align 4, !tbaa !38 ; 2 uses
  %i.ajs = icmp slt i32 %i.ajr, %.val34.i.i.i
  br i1 %i.ajs, label %bb.el, label %xSAT_HeapPercolateDown.exit.i.i

xSAT_HeapPercolateDown.exit.i.i:                  ; preds = %bb.eo, %bb.en
  %.032.lcssa.i.i.i = phi i32 [ %i.ajm, %bb.eo ], [ %.03251.i.i.i, %bb.en ] ; 2 uses
  %3 = zext nneg i32 %.032.lcssa.i.i.i to i64
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i98, i64 %3
  store i32 %i.air, ptr %i.ajt, align 4, !tbaa !31
  %i.aju = getelementptr inbounds [4 x i8], ptr %.val13.i.i, i64 %i.ait
  store i32 %.032.lcssa.i.i.i, ptr %i.aju, align 4, !tbaa !31
  br label %xSAT_HeapRemoveMin.exit.i.backedge

xSAT_HeapRemoveMin.exit.i.backedge:               ; preds = %xSAT_HeapPercolateDown.exit.i.i, %bb.ek
  br label %xSAT_HeapRemoveMin.exit.i, !llvm.loop !135

xSAT_SolverDecide.exit:                           ; preds = %bb.ej
  %i.ajv = load ptr, ptr %i.ah, align 8, !tbaa !72
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 8
  %.val = load ptr, ptr %i.ajw, align 8, !tbaa !29
  %i.ajx = getelementptr inbounds i8, ptr %.val, i64 %i.ahu
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !30
  %i.ajz = shl nsw i32 %.0.i, 1
  %i.aka = icmp ne i8 %i.ajy, 0
  %i.akb = zext i1 %i.aka to i32
  %i.akc = or disjoint i32 %i.ajz, %i.akb
  %i.akd = load i64, ptr %i.ai, align 8, !tbaa !162
  %i.ake = add nsw i64 %i.akd, 1
  store i64 %i.ake, ptr %i.ai, align 8, !tbaa !162
  %i.akf = load ptr, ptr %i.e, align 8, !tbaa !69 ; 6 uses
  %i.akg = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.akh = getelementptr i8, ptr %i.akg, i64 4
  %.val.i101 = load i32, ptr %i.akh, align 4, !tbaa !38
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 4 ; 3 uses
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !38 ; 7 uses
  %i.akk = load i32, ptr %i.akf, align 8, !tbaa !41
  %i.akl = icmp eq i32 %i.akj, %i.akk
  br i1 %i.akl, label %bb.ep, label %bb.ey

bb.ep:                                            ; preds = %xSAT_SolverDecide.exit
  %i.akm = icmp slt i32 %i.akj, 16
  br i1 %i.akm, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akf, i64 8 ; 2 uses
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i.i109 = icmp eq ptr %i.ako, null
  br i1 %.not9.i.i.i109, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.akp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ako, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i.i110

bb.es:                                            ; preds = %bb.eq
  %i.akq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i.i110

Vec_IntGrow.exit.i.i110:                          ; preds = %bb.es, %bb.er
  %i.akr = phi ptr [ %i.akp, %bb.er ], [ %i.akq, %bb.es ]
  store ptr %i.akr, ptr %i.akn, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i106

bb.et:                                            ; preds = %bb.ep
  %i.aks = icmp samesign ult i32 %i.akj, 1073741823
  %i.akt = shl nuw nsw i32 %i.akj, 1
  %spec.select.i.i103 = select i1 %i.aks, i32 %i.akt, i32 2147483647 ; 3 uses
  %.not.i9.i.i104 = icmp samesign ult i32 %i.akj, %spec.select.i.i103
  br i1 %.not.i9.i.i104, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akf, i64 8 ; 2 uses
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !39 ; 2 uses
  %.not9.i10.i.i105 = icmp eq ptr %i.akv, null
  %i.akw = zext nneg i32 %spec.select.i.i103 to i64
  %i.akx = shl nuw nsw i64 %i.akw, 2              ; 2 uses
  br i1 %.not9.i10.i.i105, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aky = tail call ptr @realloc(ptr noundef nonnull %i.akv, i64 noundef %i.akx) #19
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.akz = tail call noalias ptr @malloc(i64 noundef %i.akx) #18
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ala = phi ptr [ %i.aky, %bb.ev ], [ %i.akz, %bb.ew ]
  store ptr %i.ala, ptr %i.aku, align 8, !tbaa !39
  br label %Vec_IntGrow.exit11.sink.split.i.i106

Vec_IntGrow.exit11.sink.split.i.i106:             ; preds = %bb.ex, %Vec_IntGrow.exit.i.i110
  %spec.select.sink.i.i107 = phi i32 [ %spec.select.i.i103, %bb.ex ], [ 16, %Vec_IntGrow.exit.i.i110 ]
  store i32 %spec.select.sink.i.i107, ptr %i.akf, align 8, !tbaa !41
  %.pre.i108 = load i32, ptr %i.aki, align 4, !tbaa !38
  br label %bb.ey

bb.ey:                                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i106, %bb.et, %xSAT_SolverDecide.exit
  %i.alb = phi i32 [ %i.akj, %xSAT_SolverDecide.exit ], [ %i.akj, %bb.et ], [ %.pre.i108, %Vec_IntGrow.exit11.sink.split.i.i106 ] ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !39
  %i.ale = add nsw i32 %i.alb, 1
  store i32 %i.ale, ptr %i.aki, align 4, !tbaa !38
  %i.alf = sext i32 %i.alb to i64
  %i.alg = getelementptr inbounds [4 x i8], ptr %i.ald, i64 %i.alf
  store i32 %.val.i101, ptr %i.alg, align 4, !tbaa !31
  %i.alh = tail call i32 @xSAT_SolverEnqueue(ptr noundef nonnull %0, i32 noundef %i.akc, i32 noundef -1) ; 0 uses
  br label %.backedge

.thread:                                          ; preds = %bb.c, %.critedge.i97, %bb.ee
  %.4.ph = phi i8 [ 1, %.critedge.i97 ], [ 0, %bb.ee ], [ -1, %bb.c ]
  ret i8 %.4.ph
}

declare i32 @xSAT_SolverSimplify(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @xSAT_SolverClaRealloc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
xSAT_MemClauseHand.exit:
  %i.a = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %.not.i = icmp ne i32 %i.a, -1
  tail call void @llvm.assume(i1 %.not.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = sext i32 %i.a to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d ; 7 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %xSAT_MemClauseHand.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  br label %bb.h

bb.b:                                             ; preds = %xSAT_MemClauseHand.exit
  %i.j = and i32 %i.f, 1
  %i.k = add nuw nsw i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49
  %i.n = add nsw i32 %i.k, %i.m                   ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.p = add i32 %i.o, %i.n                       ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %.not.i.i = icmp ult i32 %i.r, %i.p
  br i1 %.not.i.i, label %.lr.ph.i.i, label %xSAT_MemAppend.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.s = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.t = lshr i32 %i.s, 1
  %i.u = lshr i32 %i.s, 3
  %i.v = add nuw i32 %i.t, %i.u
  %i.w = and i32 %i.v, -2
  %i.x = add i32 %i.s, 2
  %i.y = add i32 %i.x, %i.w                       ; 4 uses
  %i.z = icmp ult i32 %i.y, %i.p
  br i1 %i.z, label %.lr.ph.i.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph.i.i
  store i32 %i.y, ptr %i.q, align 4, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ab, null
  %i.ac = zext i32 %i.y to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #19
  %.pre.pre.i = load i32, ptr %0, align 8, !tbaa !45 ; 2 uses
  %.pre8.i = add i32 %.pre.pre.i, %i.n
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre7.pre-phi.i = phi i32 [ %i.p, %bb.e ], [ %.pre8.i, %bb.d ]
  %.pre.i = phi i32 [ %i.o, %bb.e ], [ %.pre.pre.i, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ %i.ae, %bb.d ]
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !47
  br label %xSAT_MemAppend.exit

xSAT_MemAppend.exit:                              ; preds = %bb.b, %bb.f
  %.pre-phi.i = phi i32 [ %i.p, %bb.b ], [ %.pre7.pre-phi.i, %bb.f ]
  %i.ah = phi i32 [ %i.o, %bb.b ], [ %.pre.i, %bb.f ] ; 4 uses
  store i32 %.pre-phi.i, ptr %0, align 8, !tbaa !45
  %.not.i18 = icmp eq i32 %i.ah, -1
  br i1 %.not.i18, label %xSAT_MemClauseHand.exit19, label %bb.g

bb.g:                                             ; preds = %xSAT_MemAppend.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  br label %xSAT_MemClauseHand.exit19

xSAT_MemClauseHand.exit19:                        ; preds = %xSAT_MemAppend.exit, %bb.g
  %i.am = phi ptr [ %i.al, %bb.g ], [ null, %xSAT_MemAppend.exit ]
  %i.an = load i32, ptr %i.e, align 4
  %i.ao = and i32 %i.an, 1
  %i.ap = add nuw nsw i32 %i.ao, 3
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !49
  %i.ar = add nsw i32 %i.ap, %i.aq
  %i.as = shl nsw i32 %i.ar, 2
  %i.at = sext i32 %i.as to i64
end_hunk_1
