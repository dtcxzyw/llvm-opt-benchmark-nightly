Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcClp?download=true
inline.NumInlined: 556
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Bmc_CollapseOneInt2:bb.a
  br i1 %.not.i9.i, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i = icmp eq ptr %storemerge341, null
  %i.bm = zext nneg i32 %spec.select.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %storemerge341, i64 noundef %i.bn) #16
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.l, %bb.k, %bb.p, %bb.o, %.lr.ph, %bb.m
  %storemerge342 = phi ptr [ %storemerge341, %.lr.ph ], [ %storemerge341, %bb.m ], [ %i.bi, %bb.l ], [ %i.bh, %bb.k ], [ %i.bo, %bb.o ], [ %i.bp, %bb.p ] ; 3 uses
  %spec.select.sink.i338 = phi i32 [ %spec.select.sink.i339, %.lr.ph ], [ %spec.select.sink.i339, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %storemerge342, i64 %indvars.iv
  store i32 %i.bd, ptr %i.bq, align 4, !tbaa !34
  %i.br = icmp samesign ugt i32 %.0130.in335, 1
  br i1 %i.br, label %.lr.ph, label %.loopexit, !llvm.loop !140

.lr.ph344:                                        ; preds = %.preheader, %Vec_IntPush.exit190
  %indvars.iv404 = phi i64 [ %indvars.iv.next405, %Vec_IntPush.exit190 ], [ 0, %.preheader ] ; 7 uses
  %storemerge330351 = phi ptr [ %storemerge330352, %Vec_IntPush.exit190 ], [ %.promoted350, %.preheader ] ; 6 uses
  %spec.select.sink.i187349 = phi i32 [ %spec.select.sink.i187348, %Vec_IntPush.exit190 ], [ %spec.store.select.i, %.preheader ] ; 3 uses
  %.1343 = phi i32 [ %i.cg, %Vec_IntPush.exit190 ], [ 0, %.preheader ] ; 2 uses
  %i.bs = add nsw i32 %.1343, %i.bb
  %i.bt = trunc nsw i64 %indvars.iv404 to i32
  %i.bu = icmp eq i32 %spec.select.sink.i187349, %i.bt
  br i1 %i.bu, label %bb.q, label %Vec_IntPush.exit190

bb.q:                                             ; preds = %.lr.ph344
  %i.bv = icmp samesign ult i64 %indvars.iv404, 16
  br i1 %i.bv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i188 = icmp eq ptr %storemerge330351, null
  br i1 %.not9.i.i188, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge330351, i64 noundef 64) #16
  br label %Vec_IntPush.exit190

bb.t:                                             ; preds = %bb.r
  %i.bx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit190

bb.u:                                             ; preds = %bb.q
  %i.by = icmp samesign ult i64 %indvars.iv404, 1073741823
  %indvars.iv404.tr = trunc nsw i64 %indvars.iv404 to i32
  %i.bz = shl nsw i32 %indvars.iv404.tr, 1
  %spec.select.i183 = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 4 uses
  %i.ca = sext i32 %spec.select.i183 to i64
  %.not.i9.i184 = icmp samesign ult i64 %indvars.iv404, %i.ca
  br i1 %.not.i9.i184, label %bb.v, label %Vec_IntPush.exit190

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i185 = icmp eq ptr %storemerge330351, null
  %i.cb = zext nneg i32 %spec.select.i183 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  br i1 %.not9.i10.i185, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = tail call ptr @realloc(ptr noundef nonnull %storemerge330351, i64 noundef %i.cc) #16
  br label %Vec_IntPush.exit190

bb.x:                                             ; preds = %bb.v
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cc) #17
  br label %Vec_IntPush.exit190

Vec_IntPush.exit190:                              ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %.lr.ph344, %bb.u
  %storemerge330352 = phi ptr [ %storemerge330351, %.lr.ph344 ], [ %storemerge330351, %bb.u ], [ %i.bx, %bb.t ], [ %i.bw, %bb.s ], [ %i.cd, %bb.w ], [ %i.ce, %bb.x ] ; 3 uses
  %spec.select.sink.i187348 = phi i32 [ %spec.select.sink.i187349, %.lr.ph344 ], [ %spec.select.sink.i187349, %bb.u ], [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i183, %bb.w ], [ %spec.select.i183, %bb.x ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %storemerge330352, i64 %indvars.iv404
  store i32 %i.bs, ptr %i.cf, align 4, !tbaa !34
  %i.cg = add nuw nsw i32 %.1343, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %.val150.val
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph344, !llvm.loop !141

.loopexit:                                        ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit190
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next405, %Vec_IntPush.exit190 ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 3 uses
  %spec.select.sink.i338.lcssa.sink = phi i32 [ %spec.select.sink.i187348, %Vec_IntPush.exit190 ], [ %spec.select.sink.i338, %Vec_IntPush.exit ]
  %storemerge342.lcssa.sink = phi ptr [ %storemerge330352, %Vec_IntPush.exit190 ], [ %storemerge342, %Vec_IntPush.exit ] ; 2 uses
  %i.ch = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32
  store i32 %i.ch, ptr %i.g, align 4, !tbaa !32
  store i32 %spec.select.sink.i338.lcssa.sink, ptr %i.e, align 8
  store ptr %storemerge342.lcssa.sink, ptr %i.k, align 8
  %.promoted355 = load i32, ptr %i.t, align 4, !tbaa !32
  %.promoted357 = load i32, ptr %i.s, align 8, !tbaa !44
  %.promoted360 = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ci = sext i32 %.promoted355 to i64
  %wide.trip.count = and i64 %indvars.iv.next.lcssa.sink, 4294967295
  br label %bb.y

..critedge.preheader_crit_edge:                   ; preds = %Vec_IntPush.exit198
  %i.cj = trunc nsw i64 %indvars.iv.next408 to i32
  store i32 %i.cj, ptr %i.t, align 4, !tbaa !32
  store i32 %spec.select.sink.i195358, ptr %i.s, align 8
  store ptr %storemerge329362, ptr %i.y, align 8
  %i.ck = and i64 %indvars.iv.next.lcssa.sink, 4294967295
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.preheader, %.preheader331, %..critedge.preheader_crit_edge
  %i.cl = phi i1 [ false, %.preheader ], [ true, %..critedge.preheader_crit_edge ], [ false, %.preheader331 ] ; 2 uses
  %.val145496 = phi i64 [ 0, %.preheader ], [ %i.ck, %..critedge.preheader_crit_edge ], [ 0, %.preheader331 ] ; 4 uses
  %i.cm = icmp sgt i32 %3, -2
  br i1 %i.cm, label %.lr.ph364, label %.critedge.preheader.Vec_StrPush.exit237_crit_edge

.critedge.preheader.Vec_StrPush.exit237_crit_edge: ; preds = %.critedge.preheader
  %.pre451 = sext i32 %2 to i64
  br label %Vec_StrPush.exit237

.lr.ph364:                                        ; preds = %.critedge.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.co = sext i32 %2 to i64                      ; 2 uses
  %i.cp = add i32 %3, 2
  %wide.trip.count418 = zext i32 %i.cp to i64
  br label %bb.ah

bb.y:                                             ; preds = %.loopexit, %Vec_IntPush.exit198
  %indvars.iv409 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next410, %Vec_IntPush.exit198 ] ; 2 uses
  %indvars.iv407 = phi i64 [ %i.ci, %.loopexit ], [ %indvars.iv.next408, %Vec_IntPush.exit198 ] ; 7 uses
  %storemerge329361 = phi ptr [ %.promoted360, %.loopexit ], [ %storemerge329362, %Vec_IntPush.exit198 ] ; 6 uses
  %spec.select.sink.i195359 = phi i32 [ %.promoted357, %.loopexit ], [ %spec.select.sink.i195358, %Vec_IntPush.exit198 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %storemerge342.lcssa.sink, i64 %indvars.iv409
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !34
  %i.cs = shl nsw i32 %i.cr, 1
  %i.ct = or disjoint i32 %i.cs, 1
  %i.cu = trunc nsw i64 %indvars.iv407 to i32
  %i.cv = icmp eq i32 %spec.select.sink.i195359, %i.cu
  br i1 %i.cv, label %bb.z, label %Vec_IntPush.exit198

bb.z:                                             ; preds = %bb.y
  %i.cw = icmp slt i64 %indvars.iv407, 16
  br i1 %i.cw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i196 = icmp eq ptr %storemerge329361, null
  br i1 %.not9.i.i196, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge329361, i64 noundef 64) #16
  br label %Vec_IntPush.exit198

bb.ac:                                            ; preds = %bb.aa
  %i.cy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit198

bb.ad:                                            ; preds = %bb.z
  %i.cz = icmp samesign ult i64 %indvars.iv407, 1073741823
  %indvars.iv407.tr = trunc nsw i64 %indvars.iv407 to i32
  %i.da = shl nsw i32 %indvars.iv407.tr, 1
  %spec.select.i191 = select i1 %i.cz, i32 %i.da, i32 2147483647 ; 4 uses
  %i.db = sext i32 %spec.select.i191 to i64
  %.not.i9.i192 = icmp samesign ult i64 %indvars.iv407, %i.db
  br i1 %.not.i9.i192, label %bb.ae, label %Vec_IntPush.exit198

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i193 = icmp eq ptr %storemerge329361, null
  %i.dc = zext nneg i32 %spec.select.i191 to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2                ; 2 uses
  br i1 %.not9.i10.i193, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = tail call ptr @realloc(ptr noundef nonnull %storemerge329361, i64 noundef %i.dd) #16
  br label %Vec_IntPush.exit198

bb.ag:                                            ; preds = %bb.ae
  %i.df = tail call noalias ptr @malloc(i64 noundef %i.dd) #17
  br label %Vec_IntPush.exit198

Vec_IntPush.exit198:                              ; preds = %bb.ac, %bb.ab, %bb.ag, %bb.af, %bb.y, %bb.ad
  %storemerge329362 = phi ptr [ %storemerge329361, %bb.y ], [ %storemerge329361, %bb.ad ], [ %i.cy, %bb.ac ], [ %i.cx, %bb.ab ], [ %i.de, %bb.af ], [ %i.df, %bb.ag ] ; 3 uses
  %spec.select.sink.i195358 = phi i32 [ %spec.select.sink.i195359, %bb.y ], [ %spec.select.sink.i195359, %bb.ad ], [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i191, %bb.af ], [ %spec.select.i191, %bb.ag ] ; 2 uses
  %indvars.iv.next408 = add nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %storemerge329362, i64 %indvars.iv407
  store i32 %i.ct, ptr %i.dg, align 4, !tbaa !34
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count
  br i1 %exitcond414.not, label %..critedge.preheader_crit_edge, label %bb.y, !llvm.loop !142

bb.ah:                                            ; preds = %.lr.ph364, %.critedge
  %indvars.iv415 = phi i64 [ 0, %.lr.ph364 ], [ %indvars.iv.next416, %.critedge ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv415 to i32
  %i.di = and i32 %i.dh, 1                        ; 3 uses
  %i.dj = or disjoint i32 %i.di, 2
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !34
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv415
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !72 ; 2 uses
  %i.dm = call i32 @sat_solver_addclause(ptr noundef %i.dl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cn) #18
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i, label %bb.bo

.lr.ph.i:                                         ; preds = %bb.ah
  %.not141 = icmp eq i32 %i.di, %6
  %7 = select i1 %.not141, ptr @.str.13, ptr @.str.12 ; 3 uses
  %8 = load i8, ptr %7, align 1, !tbaa !52
  %i.do = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.dp = load i32, ptr %i.an, align 8, !tbaa !70
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.ai, label %.Vec_StrPush.exit_crit_edge.i

.Vec_StrPush.exit_crit_edge.i:                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.dr = icmp slt i32 %i.do, 16
  br i1 %i.dr, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ds, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.al:                                            ; preds = %bb.aj
  %i.du = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.am:                                            ; preds = %bb.ai
  %i.dv = icmp samesign ult i32 %i.do, 1073741823
  %i.dw = shl nuw nsw i32 %i.do, 1
  %spec.select.i.i = select i1 %i.dv, i32 %i.dw, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.do, %spec.select.i.i
  %.pre8.i = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.an, label %Vec_StrPush.exit.i

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i.i = icmp eq ptr %.pre8.i, null
  %i.dx = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = call ptr @realloc(ptr noundef nonnull %.pre8.i, i64 noundef %i.dx) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ap:                                            ; preds = %bb.an
  %i.dz = call noalias ptr @malloc(i64 noundef %i.dx) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  %i.ea = phi ptr [ %i.du, %bb.al ], [ %i.dt, %bb.ak ], [ %i.dy, %bb.ao ], [ %i.dz, %bb.ap ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i.i, %bb.ao ], [ %spec.select.i.i, %bb.ap ]
  store ptr %i.ea, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i, %bb.am, %.Vec_StrPush.exit_crit_edge.i
  %i.eb = phi ptr [ %.pre.i, %.Vec_StrPush.exit_crit_edge.i ], [ %.pre8.i, %bb.am ], [ %i.ea, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.ec = add nsw i32 %i.do, 1
  store i32 %i.ec, ptr %i.ao, align 4, !tbaa !57
  %i.ed = sext i32 %i.do to i64
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  store i8 %8, ptr %i.ee, align 1, !tbaa !52
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !52
  %i.ef = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.eg = load i32, ptr %i.an, align 8, !tbaa !70
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.aq, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i.1

bb.aq:                                            ; preds = %Vec_StrPush.exit.i
  %i.ei = icmp slt i32 %i.ef, 16
  br i1 %i.ei, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ej = icmp samesign ult i32 %i.ef, 1073741823
  %i.ek = shl nuw nsw i32 %i.ef, 1
  %spec.select.i.i.1 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.ef, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.as, label %Vec_StrPush.exit.i.1

bb.as:                                            ; preds = %bb.ar
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.el = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.em = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.el) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.au:                                            ; preds = %bb.as
  %i.en = call noalias ptr @malloc(i64 noundef %i.el) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.av:                                            ; preds = %bb.aq
  %i.eo = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.eo, null
  br i1 %.not9.i.i.i.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.eo, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ax:                                            ; preds = %bb.av
  %i.eq = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at
  %i.er = phi ptr [ %i.eq, %bb.ax ], [ %i.ep, %bb.aw ], [ %i.em, %bb.at ], [ %i.en, %bb.au ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.ax ], [ 16, %bb.aw ], [ %spec.select.i.i.1, %bb.at ], [ %spec.select.i.i.1, %bb.au ]
  store ptr %i.er, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i.1, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.ar, %.Vec_StrPush.exit_crit_edge.i.1
  %i.es = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.ar ], [ %i.er, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.et = add nsw i32 %i.ef, 1
  store i32 %i.et, ptr %i.ao, align 4, !tbaa !57
  %i.eu = sext i32 %i.ef to i64
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.eu
  store i8 %10, ptr %i.ev, align 1, !tbaa !52
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !52
  %i.ew = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.ex = load i32, ptr %i.an, align 8, !tbaa !70
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ay, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i.2

bb.ay:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.ez = icmp slt i32 %i.ew, 16
  br i1 %i.ez, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = icmp samesign ult i32 %i.ew, 1073741823
  %i.fb = shl nuw nsw i32 %i.ew, 1
  %spec.select.i.i.2 = select i1 %i.fa, i32 %i.fb, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.ew, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ba, label %Vec_StrPush.exit.i.2

bb.ba:                                            ; preds = %bb.az
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.fc = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.2, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = call ptr @realloc(ptr noundef nonnull %.pre8.i.2, i64 noundef %i.fc) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.bc:                                            ; preds = %bb.ba
  %i.fe = call noalias ptr @malloc(i64 noundef %i.fc) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.bd:                                            ; preds = %bb.ay
  %i.ff = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i.2 = icmp eq ptr %i.ff, null
  br i1 %.not9.i.i.i.2, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fg = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ff, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.bf:                                            ; preds = %bb.bd
  %i.fh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

Vec_StrGrow.exit11.sink.split.i.i.2:              ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %i.fi = phi ptr [ %i.fh, %bb.bf ], [ %i.fg, %bb.be ], [ %i.fd, %bb.bb ], [ %i.fe, %bb.bc ] ; 2 uses
  %spec.select.sink.i.i.2 = phi i32 [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i.i.2, %bb.bb ], [ %spec.select.i.i.2, %bb.bc ]
  store ptr %i.fi, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i.2, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i.2

Vec_StrPush.exit.i.2:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.2, %bb.az, %.Vec_StrPush.exit_crit_edge.i.2
  %i.fj = phi ptr [ %.pre.i.2, %.Vec_StrPush.exit_crit_edge.i.2 ], [ %.pre8.i.2, %bb.az ], [ %i.fi, %Vec_StrGrow.exit11.sink.split.i.i.2 ]
  %i.fk = add nsw i32 %i.ew, 1
  store i32 %i.fk, ptr %i.ao, align 4, !tbaa !57
  %i.fl = sext i32 %i.ew to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 %i.fl
  store i8 %12, ptr %i.fm, align 1, !tbaa !52
  %i.fn = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.fo = load i32, ptr %i.an, align 8, !tbaa !70
  %i.fp = icmp eq i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.bg, label %Vec_StrPush.exit.i.2.Vec_StrPush.exit_crit_edge

Vec_StrPush.exit.i.2.Vec_StrPush.exit_crit_edge:  ; preds = %Vec_StrPush.exit.i.2
  %.pre449 = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit

bb.bg:                                            ; preds = %Vec_StrPush.exit.i.2
  %i.fq = icmp slt i32 %i.fn, 16
  br i1 %i.fq, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.fr = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i203 = icmp eq ptr %i.fr, null
  br i1 %.not9.i.i203, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fs = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fr, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i

bb.bj:                                            ; preds = %bb.bh
  %i.ft = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i

bb.bk:                                            ; preds = %bb.bg
  %i.fu = icmp samesign ult i32 %i.fn, 1073741823
  %i.fv = shl nuw nsw i32 %i.fn, 1
  %spec.select.i199 = select i1 %i.fu, i32 %i.fv, i32 2147483647 ; 4 uses
  %.not.i9.i200 = icmp samesign ult i32 %i.fn, %spec.select.i199
  %.pre450 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i200, label %bb.bl, label %Vec_StrPush.exit

bb.bl:                                            ; preds = %bb.bk
  %.not9.i10.i201 = icmp eq ptr %.pre450, null
  %i.fw = zext nneg i32 %spec.select.i199 to i64  ; 2 uses
  br i1 %.not9.i10.i201, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fx = call ptr @realloc(ptr noundef nonnull %.pre450, i64 noundef %i.fw) #16
  br label %Vec_StrGrow.exit11.sink.split.i

bb.bn:                                            ; preds = %bb.bl
  %i.fy = call noalias ptr @malloc(i64 noundef %i.fw) #17
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.bm, %bb.bn, %bb.bi, %bb.bj
  %storemerge328 = phi ptr [ %i.ft, %bb.bj ], [ %i.fs, %bb.bi ], [ %i.fx, %bb.bm ], [ %i.fy, %bb.bn ] ; 2 uses
  %spec.select.sink.i202 = phi i32 [ 16, %bb.bj ], [ 16, %bb.bi ], [ %spec.select.i199, %bb.bm ], [ %spec.select.i199, %bb.bn ]
  store ptr %storemerge328, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i202, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Vec_StrPush.exit.i.2.Vec_StrPush.exit_crit_edge, %bb.bk, %Vec_StrGrow.exit11.sink.split.i
  %i.fz = phi ptr [ %.pre449, %Vec_StrPush.exit.i.2.Vec_StrPush.exit_crit_edge ], [ %.pre450, %bb.bk ], [ %storemerge328, %Vec_StrGrow.exit11.sink.split.i ]
  %i.ga = add nsw i32 %i.fn, 1
  store i32 %i.ga, ptr %i.ao, align 4, !tbaa !57
  %i.gb = sext i32 %i.fn to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fz, i64 %i.gb
  store i8 0, ptr %i.gc, align 1, !tbaa !52
  br label %Vec_StrFreeP.exit

bb.bo:                                            ; preds = %bb.ah
  %i.gd = call i32 @sat_solver_solve(ptr noundef %i.dl, ptr noundef null, ptr noundef null, i64 noundef %i.co, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  switch i32 %i.gd, label %.critedge [
    i32 0, label %bb.bp
    i32 -1, label %.lr.ph.i205
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ge = icmp eq ptr %i.an, null
  br i1 %i.ge, label %Vec_StrFreeP.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i204 = icmp eq ptr %i.ap, null
  br i1 %.not.i204, label %bb.br, label %.thread.i

.thread.i:                                        ; preds = %bb.bq
  call void @free(ptr noundef nonnull %i.ap) #18
  br label %bb.br

bb.br:                                            ; preds = %.thread.i, %bb.bq
  call void @free(ptr noundef nonnull %i.an) #18
  br label %Vec_StrFreeP.exit

.lr.ph.i205:                                      ; preds = %bb.bo
  %.not140 = icmp eq i32 %i.di, %6
  %13 = select i1 %.not140, ptr @.str.13, ptr @.str.12 ; 3 uses
  %14 = load i8, ptr %13, align 1, !tbaa !52
  %i.gf = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.gg = load i32, ptr %i.an, align 8, !tbaa !70
  %i.gh = icmp eq i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bs, label %.Vec_StrPush.exit_crit_edge.i208

.Vec_StrPush.exit_crit_edge.i208:                 ; preds = %.lr.ph.i205
  %.pre.i209 = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i210

bb.bs:                                            ; preds = %.lr.ph.i205
  %i.gi = icmp slt i32 %i.gf, 16
  br i1 %i.gi, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.gj = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i220 = icmp eq ptr %i.gj, null
  br i1 %.not9.i.i.i220, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gk = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.gj, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i217

bb.bv:                                            ; preds = %bb.bt
  %i.gl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i217

bb.bw:                                            ; preds = %bb.bs
  %i.gm = icmp samesign ult i32 %i.gf, 1073741823
  %i.gn = shl nuw nsw i32 %i.gf, 1
  %spec.select.i.i213 = select i1 %i.gm, i32 %i.gn, i32 2147483647 ; 4 uses
  %.not.i9.i.i214 = icmp samesign ult i32 %i.gf, %spec.select.i.i213
  %.pre8.i215 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i214, label %bb.bx, label %Vec_StrPush.exit.i210

bb.bx:                                            ; preds = %bb.bw
  %.not9.i10.i.i216 = icmp eq ptr %.pre8.i215, null
  %i.go = zext nneg i32 %spec.select.i.i213 to i64 ; 2 uses
  br i1 %.not9.i10.i.i216, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gp = call ptr @realloc(ptr noundef nonnull %.pre8.i215, i64 noundef %i.go) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i217

bb.bz:                                            ; preds = %bb.bx
  %i.gq = call noalias ptr @malloc(i64 noundef %i.go) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i217

Vec_StrGrow.exit11.sink.split.i.i217:             ; preds = %bb.bz, %bb.by, %bb.bv, %bb.bu
  %i.gr = phi ptr [ %i.gl, %bb.bv ], [ %i.gk, %bb.bu ], [ %i.gp, %bb.by ], [ %i.gq, %bb.bz ] ; 2 uses
  %spec.select.sink.i.i218 = phi i32 [ 16, %bb.bv ], [ 16, %bb.bu ], [ %spec.select.i.i213, %bb.by ], [ %spec.select.i.i213, %bb.bz ]
  store ptr %i.gr, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i218, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i210

Vec_StrPush.exit.i210:                            ; preds = %Vec_StrGrow.exit11.sink.split.i.i217, %bb.bw, %.Vec_StrPush.exit_crit_edge.i208
  %i.gs = phi ptr [ %.pre.i209, %.Vec_StrPush.exit_crit_edge.i208 ], [ %.pre8.i215, %bb.bw ], [ %i.gr, %Vec_StrGrow.exit11.sink.split.i.i217 ]
  %i.gt = add nsw i32 %i.gf, 1
  store i32 %i.gt, ptr %i.ao, align 4, !tbaa !57
  %i.gu = sext i32 %i.gf to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gs, i64 %i.gu
  store i8 %14, ptr %i.gv, align 1, !tbaa !52
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !52
  %i.gw = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.gx = load i32, ptr %i.an, align 8, !tbaa !70
  %i.gy = icmp eq i32 %i.gw, %i.gx
  br i1 %i.gy, label %bb.ca, label %.Vec_StrPush.exit_crit_edge.i208.1

.Vec_StrPush.exit_crit_edge.i208.1:               ; preds = %Vec_StrPush.exit.i210
  %.pre.i209.1 = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i210.1

bb.ca:                                            ; preds = %Vec_StrPush.exit.i210
  %i.gz = icmp slt i32 %i.gw, 16
  br i1 %i.gz, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ha = icmp samesign ult i32 %i.gw, 1073741823
  %i.hb = shl nuw nsw i32 %i.gw, 1
  %spec.select.i.i213.1 = select i1 %i.ha, i32 %i.hb, i32 2147483647 ; 4 uses
  %.not.i9.i.i214.1 = icmp samesign ult i32 %i.gw, %spec.select.i.i213.1
  %.pre8.i215.1 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i214.1, label %bb.cc, label %Vec_StrPush.exit.i210.1

bb.cc:                                            ; preds = %bb.cb
  %.not9.i10.i.i216.1 = icmp eq ptr %.pre8.i215.1, null
  %i.hc = zext nneg i32 %spec.select.i.i213.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i216.1, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hd = call ptr @realloc(ptr noundef nonnull %.pre8.i215.1, i64 noundef %i.hc) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i217.1

bb.ce:                                            ; preds = %bb.cc
  %i.he = call noalias ptr @malloc(i64 noundef %i.hc) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i217.1

bb.cf:                                            ; preds = %bb.ca
  %i.hf = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i220.1 = icmp eq ptr %i.hf, null
  br i1 %.not9.i.i.i220.1, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hg = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.hf, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i217.1

bb.ch:                                            ; preds = %bb.cf
  %i.hh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i217.1

Vec_StrGrow.exit11.sink.split.i.i217.1:           ; preds = %bb.ch, %bb.cg, %bb.ce, %bb.cd
  %i.hi = phi ptr [ %i.hh, %bb.ch ], [ %i.hg, %bb.cg ], [ %i.hd, %bb.cd ], [ %i.he, %bb.ce ] ; 2 uses
  %spec.select.sink.i.i218.1 = phi i32 [ 16, %bb.ch ], [ 16, %bb.cg ], [ %spec.select.i.i213.1, %bb.cd ], [ %spec.select.i.i213.1, %bb.ce ]
  store ptr %i.hi, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i218.1, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i210.1

Vec_StrPush.exit.i210.1:                          ; preds = %Vec_StrGrow.exit11.sink.split.i.i217.1, %bb.cb, %.Vec_StrPush.exit_crit_edge.i208.1
  %i.hj = phi ptr [ %.pre.i209.1, %.Vec_StrPush.exit_crit_edge.i208.1 ], [ %.pre8.i215.1, %bb.cb ], [ %i.hi, %Vec_StrGrow.exit11.sink.split.i.i217.1 ]
  %i.hk = add nsw i32 %i.gw, 1
  store i32 %i.hk, ptr %i.ao, align 4, !tbaa !57
  %i.hl = sext i32 %i.gw to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hj, i64 %i.hl
  store i8 %16, ptr %i.hm, align 1, !tbaa !52
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !52
  %i.hn = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.ho = load i32, ptr %i.an, align 8, !tbaa !70
  %i.hp = icmp eq i32 %i.hn, %i.ho
  br i1 %i.hp, label %bb.ci, label %.Vec_StrPush.exit_crit_edge.i208.2

.Vec_StrPush.exit_crit_edge.i208.2:               ; preds = %Vec_StrPush.exit.i210.1
  %.pre.i209.2 = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit.i210.2

bb.ci:                                            ; preds = %Vec_StrPush.exit.i210.1
  %i.hq = icmp slt i32 %i.hn, 16
  br i1 %i.hq, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hr = icmp samesign ult i32 %i.hn, 1073741823
  %i.hs = shl nuw nsw i32 %i.hn, 1
  %spec.select.i.i213.2 = select i1 %i.hr, i32 %i.hs, i32 2147483647 ; 4 uses
  %.not.i9.i.i214.2 = icmp samesign ult i32 %i.hn, %spec.select.i.i213.2
  %.pre8.i215.2 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i.i214.2, label %bb.ck, label %Vec_StrPush.exit.i210.2

bb.ck:                                            ; preds = %bb.cj
  %.not9.i10.i.i216.2 = icmp eq ptr %.pre8.i215.2, null
  %i.ht = zext nneg i32 %spec.select.i.i213.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i216.2, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hu = call ptr @realloc(ptr noundef nonnull %.pre8.i215.2, i64 noundef %i.ht) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i217.2

bb.cm:                                            ; preds = %bb.ck
  %i.hv = call noalias ptr @malloc(i64 noundef %i.ht) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i217.2

bb.cn:                                            ; preds = %bb.ci
  %i.hw = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i.i220.2 = icmp eq ptr %i.hw, null
  br i1 %.not9.i.i.i220.2, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hx = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.hw, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i217.2

bb.cp:                                            ; preds = %bb.cn
  %i.hy = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i217.2

Vec_StrGrow.exit11.sink.split.i.i217.2:           ; preds = %bb.cp, %bb.co, %bb.cm, %bb.cl
  %i.hz = phi ptr [ %i.hy, %bb.cp ], [ %i.hx, %bb.co ], [ %i.hu, %bb.cl ], [ %i.hv, %bb.cm ] ; 2 uses
  %spec.select.sink.i.i218.2 = phi i32 [ 16, %bb.cp ], [ 16, %bb.co ], [ %spec.select.i.i213.2, %bb.cl ], [ %spec.select.i.i213.2, %bb.cm ]
  store ptr %i.hz, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i.i218.2, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit.i210.2

Vec_StrPush.exit.i210.2:                          ; preds = %Vec_StrGrow.exit11.sink.split.i.i217.2, %bb.cj, %.Vec_StrPush.exit_crit_edge.i208.2
  %i.ia = phi ptr [ %.pre.i209.2, %.Vec_StrPush.exit_crit_edge.i208.2 ], [ %.pre8.i215.2, %bb.cj ], [ %i.hz, %Vec_StrGrow.exit11.sink.split.i.i217.2 ]
  %i.ib = add nsw i32 %i.hn, 1
  store i32 %i.ib, ptr %i.ao, align 4, !tbaa !57
  %i.ic = sext i32 %i.hn to i64
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 %i.ic
  store i8 %18, ptr %i.id, align 1, !tbaa !52
  %i.ie = load i32, ptr %i.ao, align 4, !tbaa !57 ; 7 uses
  %i.if = load i32, ptr %i.an, align 8, !tbaa !70
  %i.ig = icmp eq i32 %i.ie, %i.if
  br i1 %i.ig, label %bb.cq, label %Vec_StrPush.exit.i210.2.Vec_StrPush.exit229_crit_edge

Vec_StrPush.exit.i210.2.Vec_StrPush.exit229_crit_edge: ; preds = %Vec_StrPush.exit.i210.2
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !46
  br label %Vec_StrPush.exit229

bb.cq:                                            ; preds = %Vec_StrPush.exit.i210.2
  %i.ih = icmp slt i32 %i.ie, 16
  br i1 %i.ih, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.ii = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i227 = icmp eq ptr %i.ii, null
  br i1 %.not9.i.i227, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ij = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ii, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i225

bb.ct:                                            ; preds = %bb.cr
  %i.ik = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i225

bb.cu:                                            ; preds = %bb.cq
  %i.il = icmp samesign ult i32 %i.ie, 1073741823
  %i.im = shl nuw nsw i32 %i.ie, 1
  %spec.select.i222 = select i1 %i.il, i32 %i.im, i32 2147483647 ; 4 uses
  %.not.i9.i223 = icmp samesign ult i32 %i.ie, %spec.select.i222
  %.pre445 = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 3 uses
  br i1 %.not.i9.i223, label %bb.cv, label %Vec_StrPush.exit229

bb.cv:                                            ; preds = %bb.cu
  %.not9.i10.i224 = icmp eq ptr %.pre445, null
  %i.in = zext nneg i32 %spec.select.i222 to i64  ; 2 uses
  br i1 %.not9.i10.i224, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.io = call ptr @realloc(ptr noundef nonnull %.pre445, i64 noundef %i.in) #16
  br label %Vec_StrGrow.exit11.sink.split.i225

bb.cx:                                            ; preds = %bb.cv
  %i.ip = call noalias ptr @malloc(i64 noundef %i.in) #17
  br label %Vec_StrGrow.exit11.sink.split.i225

Vec_StrGrow.exit11.sink.split.i225:               ; preds = %bb.cw, %bb.cx, %bb.cs, %bb.ct
  %storemerge327 = phi ptr [ %i.ik, %bb.ct ], [ %i.ij, %bb.cs ], [ %i.io, %bb.cw ], [ %i.ip, %bb.cx ] ; 2 uses
  %spec.select.sink.i226 = phi i32 [ 16, %bb.ct ], [ 16, %bb.cs ], [ %spec.select.i222, %bb.cw ], [ %spec.select.i222, %bb.cx ]
  store ptr %storemerge327, ptr %i.aq, align 8, !tbaa !46
  store i32 %spec.select.sink.i226, ptr %i.an, align 8, !tbaa !70
  br label %Vec_StrPush.exit229

Vec_StrPush.exit229:                              ; preds = %Vec_StrPush.exit.i210.2.Vec_StrPush.exit229_crit_edge, %bb.cu, %Vec_StrGrow.exit11.sink.split.i225
  %i.iq = phi ptr [ %.pre, %Vec_StrPush.exit.i210.2.Vec_StrPush.exit229_crit_edge ], [ %.pre445, %bb.cu ], [ %storemerge327, %Vec_StrGrow.exit11.sink.split.i225 ]
  %i.ir = add nsw i32 %i.ie, 1
  store i32 %i.ir, ptr %i.ao, align 4, !tbaa !57
  %i.is = sext i32 %i.ie to i64
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 %i.is
  store i8 0, ptr %i.it, align 1, !tbaa !52
  br label %Vec_StrFreeP.exit

.critedge:                                        ; preds = %bb.bo
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419 = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419, label %Vec_StrPush.exit237, label %bb.ah, !llvm.loop !143

Vec_StrPush.exit237:                              ; preds = %.critedge, %.critedge.preheader.Vec_StrPush.exit237_crit_edge
  %.pre-phi = phi i64 [ %.pre451, %.critedge.preheader.Vec_StrPush.exit237_crit_edge ], [ %i.co, %.critedge ]
  %i.iu = load ptr, ptr %i.aq, align 8, !tbaa !46
  store i32 1, ptr %i.ao, align 4, !tbaa !57
  store i8 0, ptr %i.iu, align 1, !tbaa !52
  %i.iv = getelementptr inbounds nuw i8, ptr %i.as, i64 216 ; 5 uses
  %i.iw = icmp sgt i32 %1, 0
  %i.ix = getelementptr i8, ptr %i.as, i64 328
  %.not136 = icmp eq i32 %6, 0
  %i.iy = select i1 %.not136, i8 49, i8 48
  %i.iz = add nsw i64 %.val145496, -1
  %xtraiter = and i64 %.val145496, 3              ; 3 uses
  %i.ja = icmp ult i64 %i.iz, 3
  %unroll_iter = and i64 %.val145496, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod513 = icmp ne i64 %xtraiter, 0
  br label %bb.cy

bb.cy:                                            ; preds = %.backedge, %Vec_StrPush.exit237
  %.0 = phi i32 [ 0, %Vec_StrPush.exit237 ], [ %i.of, %.backedge ] ; 2 uses
  br i1 %.not, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @sat_solver_set_resource_limits(ptr noundef %i.as, i64 noundef %.pre-phi, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !33
  %.val.i = load i32, ptr %i.t, align 4, !tbaa !32
  %i.jb = call i32 @sat_solver_solve_lexsat(ptr noundef %i.as, ptr noundef %.val4.i, i32 noundef %.val.i) #18
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %.val153 = load ptr, ptr %i.k, align 8, !tbaa !33 ; 5 uses
  br i1 %i.cl, label %.lr.ph.i238.preheader, label %sat_solver_clean_polarity.exit

.lr.ph.i238.preheader:                            ; preds = %bb.da
  br i1 %i.ja, label %.lr.ph.i238.epil.preheader, label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.lr.ph.i238.preheader, %.lr.ph.i238
  %indvars.iv.i240 = phi i64 [ %indvars.iv.next.i241.3, %.lr.ph.i238 ], [ 0, %.lr.ph.i238.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i238 ], [ 0, %.lr.ph.i238.preheader ]
  %i.jc = load ptr, ptr %i.iv, align 8, !tbaa !76
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !34
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.jc, i64 %i.jf
  store i8 0, ptr %i.jg, align 1, !tbaa !52
  %i.jh = load ptr, ptr %i.iv, align 8, !tbaa !76
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !34
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds i8, ptr %i.jh, i64 %i.jl
  store i8 0, ptr %i.jm, align 1, !tbaa !52
  %i.jn = load ptr, ptr %i.iv, align 8, !tbaa !76
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !34
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.jn, i64 %i.jr
  store i8 0, ptr %i.js, align 1, !tbaa !52
  %i.jt = load ptr, ptr %i.iv, align 8, !tbaa !76
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !34
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds i8, ptr %i.jt, i64 %i.jx
  store i8 0, ptr %i.jy, align 1, !tbaa !52
  %indvars.iv.next.i241.3 = add nuw nsw i64 %indvars.iv.i240, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %.lr.ph.i238, !llvm.loop !0

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i238
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.lr.ph.i238.epil.preheader

.lr.ph.i238.epil.preheader:                       ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i238.preheader
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i238.preheader ], [ %indvars.iv.next.i241.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod513)
  br label %.lr.ph.i238.epil

.lr.ph.i238.epil:                                 ; preds = %.lr.ph.i238.epil, %.lr.ph.i238.epil.preheader
  %indvars.iv.i240.epil = phi i64 [ %indvars.iv.next.i241.epil, %.lr.ph.i238.epil ], [ %indvars.iv.i240.epil.init, %.lr.ph.i238.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i238.epil ], [ 0, %.lr.ph.i238.epil.preheader ]
  %i.jz = load ptr, ptr %i.iv, align 8, !tbaa !76
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240.epil
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !34
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %i.jz, i64 %i.kc
  store i8 0, ptr %i.kd, align 1, !tbaa !52
  %indvars.iv.next.i241.epil = add nuw nsw i64 %indvars.iv.i240.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %.lr.ph.i238.epil, !llvm.loop !144

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i238.epil, %bb.da
  %i.ke = call i32 @sat_solver_solve(ptr noundef %i.as, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %bb.db

bb.db:                                            ; preds = %sat_solver_clean_polarity.exit, %bb.cz
  %.0131 = phi i32 [ %i.jb, %bb.cz ], [ %i.ke, %sat_solver_clean_polarity.exit ]
  switch i32 %.0131, label %bb.df [
    i32 0, label %bb.dc
    i32 -1, label %Vec_StrFreeP.exit
  ]

bb.dc:                                            ; preds = %bb.db
  %i.kf = icmp eq ptr %i.an, null
  br i1 %i.kf, label %Vec_StrFreeP.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kg = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not.i243 = icmp eq ptr %i.kg, null
  br i1 %.not.i243, label %bb.de, label %.thread.i244

.thread.i244:                                     ; preds = %bb.dd
  call void @free(ptr noundef nonnull %i.kg) #18
  br label %bb.de

bb.de:                                            ; preds = %.thread.i244, %bb.dd
  call void @free(ptr noundef nonnull %i.an) #18
  br label %Vec_StrFreeP.exit

bb.df:                                            ; preds = %bb.db
  %i.kh = icmp eq i32 %.0, %1
  %or.cond = select i1 %i.iw, i1 %i.kh, i1 false
  br i1 %or.cond, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.ki = icmp eq ptr %i.an, null
  br i1 %i.ki, label %Vec_StrFreeP.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kj = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
end_hunk_0
