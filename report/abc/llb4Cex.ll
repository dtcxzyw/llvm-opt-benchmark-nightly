Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb4Cex?download=true
inline.NumInlined: 125
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Llb4_Nonlin4TransformCex:bb.a
Vec_IntAlloc.exit:                                ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !48
  %i.x = icmp sgt i32 %.val200, 1
  br i1 %i.x, label %.lr.ph311, label %.critedge

.lr.ph311:                                        ; preds = %Vec_IntAlloc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr i8, ptr %0, i64 112
  %i.ac = getelementptr i8, ptr %i.d, i64 328
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph311, %.critedge6
  %.val227383 = phi ptr [ %i.v, %.lr.ph311 ], [ %.val227, %.critedge6 ] ; 2 uses
  %.promoted287 = phi i32 [ %spec.store.select.i, %.lr.ph311 ], [ %.promoted287377, %.critedge6 ] ; 2 uses
  %indvars.iv356 = phi i64 [ 1, %.lr.ph311 ], [ %indvars.iv.next357, %.critedge6 ] ; 3 uses
  %.0310 = phi i32 [ %.val190, %.lr.ph311 ], [ %i.ed, %.critedge6 ] ; 2 uses
  %.0170308 = phi ptr [ %i.n, %.lr.ph311 ], [ %i.af, %.critedge6 ]
  %.val209 = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val209, i64 %indvars.iv356
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !49
  %.val189285 = load i32, ptr %i.a, align 8, !tbaa !23
  %i.ag = icmp sgt i32 %.val189285, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge4

.critedge2.preheader:                             ; preds = %Vec_IntPush.exit
  %i.ah = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ah, ptr %i.r, align 4, !tbaa !49
  store i32 %spec.select.sink.i288, ptr %i.p, align 8
  store ptr %storemerge277292, ptr %i.w, align 8
  %i.ai = icmp sgt i32 %.val189, 0
  br i1 %i.ai, label %.lr.ph295, label %.critedge4

.lr.ph:                                           ; preds = %bb.g, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.g ] ; 7 uses
  %storemerge277291 = phi ptr [ %storemerge277292, %Vec_IntPush.exit ], [ %.val227383, %bb.g ] ; 6 uses
  %spec.select.sink.i289 = phi i32 [ %spec.select.sink.i288, %Vec_IntPush.exit ], [ %.promoted287, %bb.g ] ; 3 uses
  %.0168286 = phi i32 [ %i.br, %Vec_IntPush.exit ], [ 0, %bb.g ] ; 4 uses
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !33
  %.val197 = load i32, ptr %i.h, align 4, !tbaa !25
  %i.ak = add nsw i32 %.val197, %.0168286
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val208 = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val208, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.aq = getelementptr i8, ptr %i.ao, i64 36
  %.val217 = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.ar = sext i32 %.val217 to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = lshr i32 %.0168286, 5
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0170308, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24
  %i.ay = and i32 %.0168286, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = and i32 %i.az, 1
  %i.bb = shl nsw i32 %i.at, 1
  %i.bc = or disjoint i32 %i.ba, %i.bb
  %i.bd = xor i32 %i.bc, 1
  %i.be = trunc nsw i64 %indvars.iv to i32
  %i.bf = icmp eq i32 %spec.select.sink.i289, %i.be
  br i1 %i.bf, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bg = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bg, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %storemerge277291, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge277291, i64 noundef 64) #15
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.h
  %i.bj = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bk = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %i.bl = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bl
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %storemerge277291, null
  %i.bm = zext nneg i32 %spec.select.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %storemerge277291, i64 noundef %i.bn) #15
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #14
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %.lr.ph, %bb.l
  %storemerge277292 = phi ptr [ %storemerge277291, %.lr.ph ], [ %storemerge277291, %bb.l ], [ %i.bi, %bb.k ], [ %i.bh, %bb.j ], [ %i.bo, %bb.n ], [ %i.bp, %bb.o ] ; 5 uses
  %spec.select.sink.i288 = phi i32 [ %spec.select.sink.i289, %.lr.ph ], [ %spec.select.sink.i289, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %storemerge277292, i64 %indvars.iv
  store i32 %i.bd, ptr %i.bq, align 4, !tbaa !24
  %i.br = add nuw nsw i32 %.0168286, 1            ; 2 uses
  %.val189 = load i32, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.bs = icmp slt i32 %i.br, %.val189
  br i1 %i.bs, label %.lr.ph, label %.critedge2.preheader, !llvm.loop !38

.lr.ph295:                                        ; preds = %.critedge2.preheader, %Vec_IntPush.exit240
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %Vec_IntPush.exit240 ], [ %indvars.iv.next, %.critedge2.preheader ] ; 7 uses
  %storemerge276302 = phi ptr [ %storemerge276303, %Vec_IntPush.exit240 ], [ %storemerge277292, %.critedge2.preheader ] ; 3 uses
  %spec.select.sink.i237300 = phi i32 [ %spec.select.sink.i237299, %Vec_IntPush.exit240 ], [ %spec.select.sink.i288, %.critedge2.preheader ] ; 3 uses
  %.1294 = phi i32 [ %i.cy, %Vec_IntPush.exit240 ], [ 0, %.critedge2.preheader ] ; 4 uses
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !35
  %.val221 = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.bu = add nsw i32 %.val221, %.1294
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  %.val207 = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %.val207, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ca = getelementptr i8, ptr %i.by, i64 36
  %.val216 = load i32, ptr %i.ca, align 4, !tbaa !53
  %i.cb = sext i32 %.val216 to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.ce = lshr i32 %.1294, 5
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !24
  %i.ci = and i32 %.1294, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = and i32 %i.cj, 1
  %i.cl = shl nsw i32 %i.cd, 1
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = xor i32 %i.cm, 1
  %i.co = trunc nsw i64 %indvars.iv350 to i32
  %i.cp = icmp eq i32 %spec.select.sink.i237300, %i.co
  br i1 %i.cp, label %bb.p, label %Vec_IntPush.exit240

bb.p:                                             ; preds = %.lr.ph295
  %i.cq = icmp samesign ult i64 %indvars.iv350, 16
  br i1 %i.cq, label %Vec_IntPush.exit240.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = icmp samesign ult i64 %indvars.iv350, 1073741823
  %indvars.iv350.tr = trunc nsw i64 %indvars.iv350 to i32
  %i.cs = shl nsw i32 %indvars.iv350.tr, 1
  %spec.select.i233 = select i1 %i.cr, i32 %i.cs, i32 2147483647 ; 3 uses
  %i.ct = sext i32 %spec.select.i233 to i64
  %.not.i9.i234 = icmp samesign ult i64 %indvars.iv350, %i.ct
  br i1 %.not.i9.i234, label %bb.r, label %Vec_IntPush.exit240

bb.r:                                             ; preds = %bb.q
  %i.cu = zext nneg i32 %spec.select.i233 to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  br label %Vec_IntPush.exit240.sink.split

Vec_IntPush.exit240.sink.split:                   ; preds = %bb.p, %bb.r
  %.sink = phi i64 [ %i.cv, %bb.r ], [ 64, %bb.p ]
  %spec.select.sink.i237299.ph = phi i32 [ %spec.select.i233, %bb.r ], [ 16, %bb.p ]
  %i.cw = tail call ptr @realloc(ptr noundef nonnull %storemerge276302, i64 noundef %.sink) #15
  br label %Vec_IntPush.exit240

Vec_IntPush.exit240:                              ; preds = %Vec_IntPush.exit240.sink.split, %.lr.ph295, %bb.q
  %storemerge276303 = phi ptr [ %storemerge276302, %.lr.ph295 ], [ %storemerge276302, %bb.q ], [ %i.cw, %Vec_IntPush.exit240.sink.split ] ; 4 uses
  %spec.select.sink.i237299 = phi i32 [ %spec.select.sink.i237300, %.lr.ph295 ], [ %spec.select.sink.i237300, %bb.q ], [ %spec.select.sink.i237299.ph, %Vec_IntPush.exit240.sink.split ] ; 3 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %storemerge276303, i64 %indvars.iv350
  store i32 %i.cn, ptr %i.cx, align 4, !tbaa !24
  %i.cy = add nuw nsw i32 %.1294, 1               ; 2 uses
  %.val188 = load i32, ptr %i.a, align 8, !tbaa !23
  %i.cz = icmp slt i32 %i.cy, %.val188
  br i1 %i.cz, label %.lr.ph295, label %.critedge2..critedge4_crit_edge, !llvm.loop !39

.critedge2..critedge4_crit_edge:                  ; preds = %Vec_IntPush.exit240
  %i.da = trunc nsw i64 %indvars.iv.next351 to i32
  store i32 %i.da, ptr %i.r, align 4, !tbaa !49
  store i32 %spec.select.sink.i237299, ptr %i.p, align 8
  store ptr %storemerge276303, ptr %i.w, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %bb.g, %.critedge2..critedge4_crit_edge, %.critedge2.preheader
  %.val230 = phi i64 [ %indvars.iv.next351, %.critedge2..critedge4_crit_edge ], [ %indvars.iv.next, %.critedge2.preheader ], [ 0, %bb.g ]
  %.val227 = phi ptr [ %storemerge276303, %.critedge2..critedge4_crit_edge ], [ %storemerge277292, %.critedge2.preheader ], [ %.val227383, %bb.g ] ; 6 uses
  %.promoted287377 = phi i32 [ %spec.select.sink.i237299, %.critedge2..critedge4_crit_edge ], [ %spec.select.sink.i288, %.critedge2.preheader ], [ %.promoted287, %bb.g ] ; 2 uses
  %4 = getelementptr inbounds [4 x i8], ptr %.val227, i64 %.val230
  %i.db = tail call i32 @sat_solver_solve(ptr noundef nonnull %i.d, ptr noundef %.val227, ptr noundef %4, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #13
  %.not179 = icmp eq i32 %i.db, 1
  br i1 %.not179, label %.preheader281, label %bb.s

.preheader281:                                    ; preds = %.critedge4
  %.val196304 = load i32, ptr %i.h, align 4, !tbaa !25 ; 3 uses
  %i.dc = icmp sgt i32 %.val196304, 0
  br i1 %i.dc, label %.lr.ph306, label %.critedge6

.lr.ph306:                                        ; preds = %.preheader281
  %i.dd = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val206 = load ptr, ptr %i.de, align 8, !tbaa !31
  %i.df = load ptr, ptr %i.z, align 8, !tbaa !52
  %.val232 = load ptr, ptr %i.ac, align 8, !tbaa !63
  br label %bb.u

bb.s:                                             ; preds = %.critedge4
  %i.dg = trunc nuw nsw i64 %indvars.iv356 to i32 ; 2 uses
  %i.dh = add nsw i32 %i.dg, -1
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dh, i32 noundef %i.dg) ; 0 uses
  %.not.i241 = icmp eq ptr %.val227, null
  br i1 %.not.i241, label %Vec_IntFree.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %.val227) #13
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.s, %bb.t
  tail call void @free(ptr noundef nonnull %i.p) #13
  tail call void @sat_solver_delete(ptr noundef nonnull %i.d) #13
  tail call void @Cnf_DataFree(ptr noundef %i.c) #13
  tail call void @free(ptr noundef %i.j) #13
  br label %bb.bm

bb.u:                                             ; preds = %.lr.ph306, %bb.w
  %.val196386 = phi i32 [ %.val196304, %.lr.ph306 ], [ %.val196, %bb.w ]
  %indvars.iv353 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next354, %bb.w ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val206, i64 %indvars.iv353
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !32
  %i.dl = getelementptr i8, ptr %i.dk, i64 36
  %.val215 = load i32, ptr %i.dl, align 4, !tbaa !53
  %i.dm = sext i32 %.val215 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !24
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.val232, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !24
  %.not275 = icmp eq i32 %i.dr, 1
  br i1 %.not275, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = trunc i64 %indvars.iv353 to i32
  %i.dt = add i32 %.0310, %i.ds                   ; 2 uses
  %i.du = and i32 %i.dt, 31
  %i.dv = shl nuw i32 1, %i.du
  %i.dw = ashr i32 %i.dt, 5
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !24
  %i.ea = or i32 %i.dz, %i.dv
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !24
  %.val196.pre = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.val196 = phi i32 [ %.val196386, %bb.u ], [ %.val196.pre, %bb.v ] ; 3 uses
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %i.eb = sext i32 %.val196 to i64
  %i.ec = icmp slt i64 %indvars.iv.next354, %i.eb
  br i1 %i.ec, label %bb.u, label %.critedge6, !llvm.loop !40

.critedge6:                                       ; preds = %bb.w, %.preheader281
  %.val196.lcssa = phi i32 [ %.val196304, %.preheader281 ], [ %.val196, %bb.w ]
  %i.ed = add nsw i32 %.val196.lcssa, %.0310      ; 2 uses
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %.val199 = load i32, ptr %i.i, align 4, !tbaa !27
  %i.ee = sext i32 %.val199 to i64
  %i.ef = icmp slt i64 %indvars.iv.next357, %i.ee
  br i1 %i.ef, label %bb.g, label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %.critedge6, %Vec_IntAlloc.exit
  %.promoted322 = phi ptr [ %i.v, %Vec_IntAlloc.exit ], [ %.val227, %.critedge6 ] ; 5 uses
  %.promoted319 = phi i32 [ %spec.store.select.i, %Vec_IntAlloc.exit ], [ %.promoted287377, %.critedge6 ] ; 2 uses
  %.0170.lcssa = phi ptr [ %i.n, %Vec_IntAlloc.exit ], [ %i.af, %.critedge6 ]
  %.0.lcssa = phi i32 [ %.val190, %Vec_IntAlloc.exit ], [ %i.ed, %.critedge6 ]
  store i32 0, ptr %i.r, align 4, !tbaa !49
  %i.eg = icmp sgt i32 %2, -1
  %i.eh = getelementptr i8, ptr %0, i64 112       ; 3 uses
  %.val220325 = load i32, ptr %i.eh, align 8, !tbaa !36 ; 2 uses
  %i.ei = icmp sgt i32 %.val220325, 0             ; 2 uses
  br i1 %i.eg, label %.preheader278, label %.preheader279

.preheader279:                                    ; preds = %.critedge
  br i1 %i.ei, label %.lr.ph316, label %.critedge8

.lr.ph316:                                        ; preds = %.preheader279
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.ai

.preheader278:                                    ; preds = %.critedge
  br i1 %i.ei, label %.lr.ph327, label %.critedge8

.lr.ph327:                                        ; preds = %.preheader278
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.en = zext nneg i32 %2 to i64                 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph327, %bb.ah
  %.val220390 = phi i32 [ %.val220325, %.lr.ph327 ], [ %.val220, %bb.ah ]
  %i.eo = phi ptr [ %.promoted322, %.lr.ph327 ], [ %i.fs, %bb.ah ] ; 3 uses
  %i.ep = phi ptr [ %.promoted322, %.lr.ph327 ], [ %i.ft, %bb.ah ] ; 5 uses
  %i.eq = phi i32 [ %.promoted319, %.lr.ph327 ], [ %i.fu, %bb.ah ] ; 8 uses
  %i.er = phi i32 [ 0, %.lr.ph327 ], [ %i.fv, %bb.ah ] ; 4 uses
  %indvars.iv366 = phi i64 [ 0, %.lr.ph327 ], [ %indvars.iv.next367, %bb.ah ] ; 2 uses
  %i.es = icmp eq i64 %indvars.iv366, %i.en
  br i1 %i.es, label %bb.y, label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.et = load ptr, ptr %i.el, align 8, !tbaa !35
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %.val205 = load ptr, ptr %i.eu, align 8, !tbaa !31
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.val205, i64 %i.en
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !52
  %i.ey = getelementptr i8, ptr %i.ew, i64 36
  %.val214 = load i32, ptr %i.ey, align 4, !tbaa !53
  %i.ez = sext i32 %.val214 to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !24
  %i.fc = shl nsw i32 %i.fb, 1
  %i.fd = icmp eq i32 %i.er, %i.eq
  br i1 %i.fd, label %bb.z, label %Vec_IntPush.exit249

bb.z:                                             ; preds = %bb.y
  %i.fe = icmp slt i32 %i.eq, 16
  br i1 %i.fe, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i247 = icmp eq ptr %i.ep, null
  br i1 %.not9.i.i247, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i245

bb.ac:                                            ; preds = %bb.aa
  %i.fg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i245

bb.ad:                                            ; preds = %bb.z
  %i.fh = icmp samesign ult i32 %i.eq, 1073741823
  %i.fi = shl nuw nsw i32 %i.eq, 1
  %spec.select.i242 = select i1 %i.fh, i32 %i.fi, i32 2147483647 ; 4 uses
  %.not.i9.i243 = icmp samesign ult i32 %i.eq, %spec.select.i242
  br i1 %.not.i9.i243, label %bb.ae, label %Vec_IntPush.exit249

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i244 = icmp eq ptr %i.ep, null
  %i.fj = zext nneg i32 %spec.select.i242 to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2                ; 2 uses
  br i1 %.not9.i10.i244, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = tail call ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef %i.fk) #15
  br label %Vec_IntGrow.exit11.sink.split.i245

bb.ag:                                            ; preds = %bb.ae
  %i.fm = tail call noalias ptr @malloc(i64 noundef %i.fk) #14
  br label %Vec_IntGrow.exit11.sink.split.i245

Vec_IntGrow.exit11.sink.split.i245:               ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %storemerge274 = phi ptr [ %i.fg, %bb.ac ], [ %i.ff, %bb.ab ], [ %i.fl, %bb.af ], [ %i.fm, %bb.ag ] ; 2 uses
  %spec.select.sink.i246 = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i242, %bb.af ], [ %spec.select.i242, %bb.ag ] ; 2 uses
  store ptr %storemerge274, ptr %i.w, align 8, !tbaa !48
  store i32 %spec.select.sink.i246, ptr %i.p, align 8, !tbaa !47
  br label %Vec_IntPush.exit249

Vec_IntPush.exit249:                              ; preds = %bb.y, %bb.ad, %Vec_IntGrow.exit11.sink.split.i245
  %i.fn = phi ptr [ %i.eo, %bb.y ], [ %i.eo, %bb.ad ], [ %storemerge274, %Vec_IntGrow.exit11.sink.split.i245 ] ; 3 uses
  %i.fo = phi i32 [ %i.eq, %bb.y ], [ %i.eq, %bb.ad ], [ %spec.select.sink.i246, %Vec_IntGrow.exit11.sink.split.i245 ]
  %i.fp = add nsw i32 %i.er, 1                    ; 2 uses
  store i32 %i.fp, ptr %i.r, align 4, !tbaa !49
  %i.fq = sext i32 %i.er to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fq
  store i32 %i.fc, ptr %i.fr, align 4, !tbaa !24
  %.val220.pre = load i32, ptr %i.eh, align 8, !tbaa !36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.x, %Vec_IntPush.exit249
  %.val220 = phi i32 [ %.val220390, %bb.x ], [ %.val220.pre, %Vec_IntPush.exit249 ] ; 2 uses
  %i.fs = phi ptr [ %i.eo, %bb.x ], [ %i.fn, %Vec_IntPush.exit249 ] ; 2 uses
  %i.ft = phi ptr [ %i.ep, %bb.x ], [ %i.fn, %Vec_IntPush.exit249 ]
  %i.fu = phi i32 [ %i.eq, %bb.x ], [ %i.fo, %Vec_IntPush.exit249 ]
  %i.fv = phi i32 [ %i.er, %bb.x ], [ %i.fp, %Vec_IntPush.exit249 ] ; 2 uses
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.fw = sext i32 %.val220 to i64
  %i.fx = icmp slt i64 %indvars.iv.next367, %i.fw
  br i1 %i.fx, label %bb.x, label %.critedge8.loopexit, !llvm.loop !42
end_hunk_0
