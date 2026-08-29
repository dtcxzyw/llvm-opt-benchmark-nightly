Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDup?download=true
inline.NumInlined: 4042
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Gia_ManCreateNodeSupps:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val5188 = load i32, ptr %i.x, align 4, !tbaa !8
  %i.y = icmp sgt i32 %.val5188, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_WecStart.exit73, %Vec_IntPush.exit
  %i.z = phi ptr [ %i.ay, %Vec_IntPush.exit ], [ %i.w, %Vec_WecStart.exit73 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_WecStart.exit73 ] ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val58.val = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val58.val, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13 ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %.critedge.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.ad ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8  ; 7 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !50
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp slt i32 %i.ag, 16
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.al, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.al, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.an = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ao = phi ptr [ %i.am, %bb.h ], [ %i.an, %bb.i ]
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.ap = icmp samesign ult i32 %i.ag, 1073741823
  %i.aq = shl nuw nsw i32 %i.ag, 1
  %spec.select.i = select i1 %i.ap, i32 %i.aq, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ag, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.as, null
  %i.at = zext nneg i32 %spec.select.i to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = call ptr @realloc(ptr noundef nonnull %i.as, i64 noundef %i.au) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aw = call noalias ptr @malloc(i64 noundef %i.au) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = phi ptr [ %i.av, %bb.l ], [ %i.aw, %bb.m ]
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ae, align 8, !tbaa !50
  %.pre = load i32, ptr %i.af, align 4, !tbaa !8
  %.pre106 = load ptr, ptr %i.v, align 8, !tbaa !46
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.ay = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.j ], [ %.pre106, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.az = phi i32 [ %i.ag, %bb.e ], [ %i.ag, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.af, align 4, !tbaa !8
  %i.bd = sext i32 %i.az to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 4
  %.val51 = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bh = sext i32 %.val51 to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !503

.critedge.loopexit:                               ; preds = %Vec_IntPush.exit, %.lr.ph
  %.pre107 = load i32, ptr %i.n, align 8, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_WecStart.exit73
  %i.bj = phi i32 [ %.pre107, %.critedge.loopexit ], [ %.val56, %Vec_WecStart.exit73 ] ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bl = icmp sgt i32 %i.bj, 0
  br i1 %i.bl, label %.lr.ph92, label %.critedge2

.lr.ph92:                                         ; preds = %.critedge, %bb.z
  %i.bm = phi i32 [ %i.ez, %bb.z ], [ %i.bj, %.critedge ]
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.z ], [ 0, %.critedge ] ; 5 uses
  %.val55 = load ptr, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %.not47 = icmp eq ptr %.val55, null
  br i1 %.not47, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %.lr.ph92
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.val55, i64 %indvars.iv100
  %.val61 = load i64, ptr %i.bn, align 4          ; 4 uses
  %i.bo = and i64 %.val61, 2147483648
  %.not.i = icmp ne i64 %i.bo, 0
  %i.bp = and i64 %.val61, 536870911
  %i.bq = icmp eq i64 %i.bp, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bq
  br i1 %narrow.i.not, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = and i64 %.val61, 536870911
  %i.bs = sub nsw i64 %indvars.iv100, %i.br
  %sext = shl i64 %i.bs, 32
  %i.bt = ashr exact i64 %sext, 28
  %i.bu = getelementptr inbounds i8, ptr %i.s, i64 %i.bt ; 2 uses
  %i.bv = lshr i64 %.val61, 32
  %i.bw = and i64 %i.bv, 536870911
  %i.bx = sub nsw i64 %indvars.iv100, %i.bw
  %sext126 = shl i64 %i.bx, 32
  %i.by = ashr exact i64 %sext126, 28
  %i.bz = getelementptr inbounds i8, ptr %i.s, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv100 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bu, i64 4      ; 2 uses
  %.val6.i = load i32, ptr %i.cb, align 4, !tbaa !8 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.bz, i64 4      ; 2 uses
  %.val.i = load i32, ptr %i.cc, align 4, !tbaa !8 ; 3 uses
  %i.cd = add nsw i32 %.val.i, %.val6.i           ; 3 uses
  %i.ce = load i32, ptr %i.ca, align 8, !tbaa !50
  %.not.i.i74 = icmp slt i32 %i.ce, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i.i74, label %bb.q, label %Vec_IntGrow.exit.i75

bb.q:                                             ; preds = %bb.p
  %.not9.i.i76 = icmp eq ptr %i.cg, null
  %i.ch = sext i32 %i.cd to i64
  %i.ci = shl nsw i64 %i.ch, 2                    ; 2 uses
  br i1 %.not9.i.i76, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = call ptr @realloc(ptr noundef nonnull %i.cg, i64 noundef %i.ci) #34
  %.val7.pre.pre.i = load i32, ptr %i.cb, align 4, !tbaa !8
  %.val9.pre.pre.i = load i32, ptr %i.cc, align 4, !tbaa !8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ck = call noalias ptr @malloc(i64 noundef %i.ci) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.r ], [ %.val.i, %bb.s ]
  %.val7.pre.i = phi i32 [ %.val7.pre.pre.i, %bb.r ], [ %.val6.i, %bb.s ]
  %i.cl = phi ptr [ %i.cj, %bb.r ], [ %i.ck, %bb.s ] ; 2 uses
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !12
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !50
  br label %Vec_IntGrow.exit.i75

Vec_IntGrow.exit.i75:                             ; preds = %bb.t, %bb.p
  %i.cm = phi ptr [ %i.cl, %bb.t ], [ %i.cg, %bb.p ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.t ], [ %.val.i, %bb.p ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.pre.i, %bb.t ], [ %.val6.i, %bb.p ] ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bu, i64 8
  %.val8.i = load ptr, ptr %i.cn, align 8, !tbaa !12 ; 4 uses
  %i.co = getelementptr i8, ptr %i.bz, i64 8
  %.val10.i = load ptr, ptr %i.co, align 8, !tbaa !12 ; 4 uses
  %i.cp = sext i32 %.val7.i to i64
  %.idx.i.i = shl nsw i64 %i.cp, 2                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.cr = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.cr, 2              ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.ct = icmp sgt i32 %.val7.i, 0
  %i.cu = icmp sgt i32 %.val9.i, 0
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.y, %Vec_IntGrow.exit.i75
  %.036.lcssa.i.i = phi ptr [ %i.cm, %Vec_IntGrow.exit.i75 ], [ %.137.i.i, %bb.y ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i75 ], [ %.134.i.i, %bb.y ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i75 ], [ %.1.i.i, %bb.y ] ; 5 uses
  %.0.lcssa.i.i130 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %i.cw = icmp ult ptr %.033.lcssa.i.i, %i.cq
  br i1 %i.cw, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i136 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %.036.lcssa.i.i135 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.cx = ptrtoaddr ptr %.val8.i to i64
  %i.cy = add i64 %.idx.i.i, %i.cx
  %i.cz = xor i64 %.033.lcssa.i.i136, -1
  %i.da = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.da, 28
  %i.dd = sub i64 %.033.lcssa.i.i136, %.036.lcssa.i.i135
  %diff.check137 = icmp ugt i64 %i.dd, -32
  %or.cond = select i1 %min.iters.check139, i1 true, i1 %diff.check137
  br i1 %or.cond, label %.lr.ph13.i.i.preheader155, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec141 = and i64 %i.dc, 9223372036854775800  ; 3 uses
  %i.de = shl i64 %n.vec141, 2                    ; 2 uses
  %i.df = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.de
  %i.dg = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.de ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next148, %vector.body142 ] ; 2 uses
  %i.dh = shl i64 %index143, 2                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.dh ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load146 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !13
  %wide.load147 = load <4 x i32>, ptr %i.di, align 4, !tbaa !13
  %i.dj = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %wide.load146, ptr %next.gep145, align 4, !tbaa !13
  store <4 x i32> %wide.load147, ptr %i.dj, align 4, !tbaa !13
  %index.next148 = add nuw i64 %index143, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.dk, label %middle.block149, label %vector.body142, !llvm.loop !504

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.dc, %n.vec141
  br i1 %cmp.n150, label %.preheader.i.i, label %.lr.ph13.i.i.preheader155

.lr.ph13.i.i.preheader155:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block149
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.df, %middle.block149 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.dg, %middle.block149 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i75, %bb.y
  %.08.i.i = phi ptr [ %.1.i.i, %bb.y ], [ %.val10.i, %Vec_IntGrow.exit.i75 ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.y ], [ %.val8.i, %Vec_IntGrow.exit.i75 ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.y ], [ %i.cm, %Vec_IntGrow.exit.i75 ] ; 4 uses
  %i.dl = load i32, ptr %.0337.i.i, align 4, !tbaa !13 ; 4 uses
  %i.dm = load i32, ptr %.08.i.i, align 4, !tbaa !13 ; 3 uses
  %i.dn = icmp eq i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.dl, ptr %.0366.i.i, align 4, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dq = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.dl, ptr %.0366.i.i, align 4, !tbaa !13
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.dm, ptr %.0366.i.i, align 4, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.134.i.i = phi ptr [ %i.do, %bb.u ], [ %i.dr, %bb.w ], [ %.0337.i.i, %bb.x ] ; 3 uses
  %.1.i.i = phi ptr [ %i.dp, %bb.u ], [ %.08.i.i, %bb.w ], [ %i.ds, %bb.x ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.dt = icmp ult ptr %.134.i.i, %i.cq
  %i.du = icmp ult ptr %.1.i.i, %i.cs
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %i.dv, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !505

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block149, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.dg, %middle.block149 ], [ %i.en, %.lr.ph13.i.i ] ; 5 uses
  %i.dw = icmp ult ptr %.0.lcssa.i.i, %i.cs
  br i1 %i.dw, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i129 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.dx = ptrtoaddr ptr %.val10.i to i64
  %i.dy = add i64 %.idx19.i.i, %i.dx
  %i.dz = xor i64 %.0.lcssa.i.i130, -1
  %i.ea = add i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = lshr i64 %i.ea, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ea, 28
  %i.ed = sub i64 %.0.lcssa.i.i130, %.238.lcssa.i.i129
  %diff.check = icmp ugt i64 %i.ed, -32
  %or.cond153 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond153, label %.lr.ph17.i.i.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.ec, 9223372036854775800     ; 3 uses
  %i.ee = shl i64 %n.vec, 2                       ; 2 uses
  %i.ef = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ee
  %i.eg = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.ee ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.eh ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !13
  %wide.load132 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !13
  %i.ej = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x i32> %wide.load, ptr %next.gep131, align 4, !tbaa !13
  store <4 x i32> %wide.load132, ptr %i.ej, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !506

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader154

.lr.ph17.i.i.preheader154:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.ef, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.eg, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader155, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.el, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader155 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.en, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader155 ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.em = load i32, ptr %.23512.i.i, align 4, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.em, ptr %.23811.i.i, align 4, !tbaa !13
  %i.eo = icmp ult ptr %i.el, %i.cq
  br i1 %i.eo, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !507

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader154, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.ep, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader154 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.er, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader154 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.eq = load i32, ptr %.216.i.i, align 4, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.eq, ptr %.315.i.i, align 4, !tbaa !13
  %i.es = icmp ult ptr %i.ep, %i.cs
  br i1 %i.es, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !508

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.eg, %middle.block ], [ %i.er, %.lr.ph17.i.i ]
  %i.et = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.eu = ptrtoint ptr %i.cm to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = lshr exact i64 %i.ev, 2
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !8
  %.pre108 = load i32, ptr %i.n, align 8, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %Vec_IntTwoMerge2.exit, %bb.o
  %i.ez = phi i32 [ %.pre108, %Vec_IntTwoMerge2.exit ], [ %i.bm, %bb.o ] ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %indvars.iv.next101, %i.fa
  br i1 %i.fb, label %.lr.ph92, label %.critedge2, !llvm.loop !509

.critedge2:                                       ; preds = %.lr.ph92, %bb.z, %.critedge
  %.val94 = load i32, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.fc = icmp sgt i32 %.val94, 0
  br i1 %i.fc, label %.lr.ph96, label %.critedge4

.lr.ph96:                                         ; preds = %.critedge2
  %i.fd = getelementptr i8, ptr %1, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph96, %Vec_IntAppend.exit
  %.val109 = phi i32 [ %.val94, %.lr.ph96 ], [ %.val, %Vec_IntAppend.exit ]
  %indvars.iv103 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next104, %Vec_IntAppend.exit ] ; 3 uses
  %.val54 = load ptr, ptr %i.bk, align 8, !tbaa !14
  %.not48 = icmp eq ptr %.val54, null
  br i1 %.not48, label %.critedge4, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val53 = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %indvars.iv103
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !13
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv103 ; 4 uses
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.fh ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 4      ; 2 uses
  %.val7.i77 = load i32, ptr %i.fj, align 4, !tbaa !8
  %i.fk = icmp sgt i32 %.val7.i77, 0
  br i1 %i.fk, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.ab
  %i.fl = getelementptr i8, ptr %i.fi, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i78 = load ptr, ptr %i.fl, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val6.i78, i64 %indvars.iv.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !13
  %i.fq = load i32, ptr %i.fm, align 4, !tbaa !8  ; 7 uses
  %i.fr = load i32, ptr %i.fg, align 8, !tbaa !50
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ad, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.fn, align 8, !tbaa !12
  br label %Vec_IntPush.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.ft = icmp slt i32 %i.fq, 16
  br i1 %i.ft, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not9.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fu, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fw = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.fx = icmp samesign ult i32 %i.fq, 1073741823
  %i.fy = shl nuw nsw i32 %i.fq, 1
  %spec.select.i.i = select i1 %i.fx, i32 %i.fy, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.fq, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.fn, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.ai, label %Vec_IntPush.exit.i

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.fz = zext nneg i32 %spec.select.i.i to i64
  %i.ga = shl nuw nsw i64 %i.fz, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gb = call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.ga) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.gc = call noalias ptr @malloc(i64 noundef %i.ga) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.af
  %i.gd = phi ptr [ %i.fw, %bb.ag ], [ %i.fv, %bb.af ], [ %i.gb, %bb.aj ], [ %i.gc, %bb.ak ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ag ], [ 16, %bb.af ], [ %spec.select.i.i, %bb.aj ], [ %spec.select.i.i, %bb.ak ]
  store ptr %i.gd, ptr %i.fn, align 8, !tbaa !12
  store i32 %spec.select.sink.i.i, ptr %i.fg, align 8, !tbaa !50
  %.pre11.i = load i32, ptr %i.fm, align 4, !tbaa !8
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ah, %.Vec_IntPush.exit_crit_edge.i
  %i.ge = phi i32 [ %i.fq, %.Vec_IntPush.exit_crit_edge.i ], [ %i.fq, %bb.ah ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.gf = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.ah ], [ %i.gd, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.gg = add nsw i32 %i.ge, 1
  store i32 %i.gg, ptr %i.fm, align 4, !tbaa !8
  %i.gh = sext i32 %i.ge to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gh
  store i32 %i.fp, ptr %i.gi, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i79 = load i32, ptr %i.fj, align 4, !tbaa !8
  %i.gj = sext i32 %.val.i79 to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i, %i.gj
  br i1 %i.gk, label %bb.ac, label %Vec_IntAppend.exit.loopexit, !llvm.loop !359

Vec_IntAppend.exit.loopexit:                      ; preds = %Vec_IntPush.exit.i
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !8
  br label %Vec_IntAppend.exit

Vec_IntAppend.exit:                               ; preds = %Vec_IntAppend.exit.loopexit, %bb.ab
  %.val = phi i32 [ %.val.pre, %Vec_IntAppend.exit.loopexit ], [ %.val109, %bb.ab ] ; 2 uses
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.gl = sext i32 %.val to i64
  %i.gm = icmp slt i64 %indvars.iv.next104, %i.gl
  br i1 %i.gm, label %bb.aa, label %.critedge4, !llvm.loop !510

.critedge4:                                       ; preds = %bb.aa, %Vec_IntAppend.exit, %.critedge2
  %i.gn = load i32, ptr %i.o, align 8, !tbaa !499 ; 2 uses
end_hunk_0
begin_hunk_1_@Gia_ManCreateCoSupps:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val5087 = load i32, ptr %i.y, align 4, !tbaa !8
  %i.z = icmp sgt i32 %.val5087, 0
  br i1 %i.z, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_WecStart.exit72, %Vec_IntPush.exit
  %i.aa = phi ptr [ %i.az, %Vec_IntPush.exit ], [ %i.x, %Vec_WecStart.exit72 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_WecStart.exit72 ] ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val54.val = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val54.val, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13 ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.critedge.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.ae ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8  ; 7 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !50
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ao = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ap = phi ptr [ %i.an, %bb.h ], [ %i.ao, %bb.i ]
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i32 %i.ah, 1073741823
  %i.ar = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.at, null
  %i.au = zext nneg i32 %spec.select.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = call ptr @realloc(ptr noundef nonnull %i.at, i64 noundef %i.av) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ax = call noalias ptr @malloc(i64 noundef %i.av) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %i.aw, %bb.l ], [ %i.ax, %bb.m ]
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.af, align 8, !tbaa !50
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !8
  %.pre105 = load ptr, ptr %i.w, align 8, !tbaa !46
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %bb.j ], [ %.pre105, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ba = phi i32 [ %i.ah, %bb.e ], [ %i.ah, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  %i.bd = add nsw i32 %i.ba, 1
  store i32 %i.bd, ptr %i.ag, align 4, !tbaa !8
  %i.be = sext i32 %i.ba to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.az, i64 4
  %.val50 = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bi = sext i32 %.val50 to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !512

.critedge.loopexit:                               ; preds = %Vec_IntPush.exit, %.lr.ph
  %.pre106 = load i32, ptr %i.o, align 8, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_WecStart.exit72
  %i.bk = phi i32 [ %.pre106, %.critedge.loopexit ], [ %.val52, %Vec_WecStart.exit72 ] ; 2 uses
  %i.bl = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bm = icmp sgt i32 %i.bk, 0
  br i1 %i.bm, label %.lr.ph91, label %.critedge2

.lr.ph91:                                         ; preds = %.critedge, %bb.z
  %i.bn = phi i32 [ %i.fa, %bb.z ], [ %i.bk, %.critedge ]
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.z ], [ 0, %.critedge ] ; 5 uses
  %.val51 = load ptr, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %.not46 = icmp eq ptr %.val51, null
  br i1 %.not46, label %.critedge2, label %bb.o

bb.o:                                             ; preds = %.lr.ph91
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %.val51, i64 %indvars.iv99
  %.val59 = load i64, ptr %i.bo, align 4          ; 4 uses
  %i.bp = and i64 %.val59, 2147483648
  %.not.i = icmp ne i64 %i.bp, 0
  %i.bq = and i64 %.val59, 536870911
  %i.br = icmp eq i64 %i.bq, 536870911
  %narrow.i.not = or i1 %.not.i, %i.br
  br i1 %narrow.i.not, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = and i64 %.val59, 536870911
  %i.bt = sub nsw i64 %indvars.iv99, %i.bs
  %sext = shl i64 %i.bt, 32
  %i.bu = ashr exact i64 %sext, 28
  %i.bv = getelementptr inbounds i8, ptr %i.t, i64 %i.bu ; 2 uses
  %i.bw = lshr i64 %.val59, 32
  %i.bx = and i64 %i.bw, 536870911
  %i.by = sub nsw i64 %indvars.iv99, %i.bx
  %sext124 = shl i64 %i.by, 32
  %i.bz = ashr exact i64 %sext124, 28
  %i.ca = getelementptr inbounds i8, ptr %i.t, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv99 ; 4 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  %.val6.i = load i32, ptr %i.cc, align 4, !tbaa !8 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.ca, i64 4      ; 2 uses
  %.val.i = load i32, ptr %i.cd, align 4, !tbaa !8 ; 3 uses
  %i.ce = add nsw i32 %.val.i, %.val6.i           ; 3 uses
  %i.cf = load i32, ptr %i.cb, align 8, !tbaa !50
  %.not.i.i73 = icmp slt i32 %i.cf, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i.i73, label %bb.q, label %Vec_IntGrow.exit.i74

bb.q:                                             ; preds = %bb.p
  %.not9.i.i75 = icmp eq ptr %i.ch, null
  %i.ci = sext i32 %i.ce to i64
  %i.cj = shl nsw i64 %i.ci, 2                    ; 2 uses
  br i1 %.not9.i.i75, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = call ptr @realloc(ptr noundef nonnull %i.ch, i64 noundef %i.cj) #34
  %.val7.pre.pre.i = load i32, ptr %i.cc, align 4, !tbaa !8
  %.val9.pre.pre.i = load i32, ptr %i.cd, align 4, !tbaa !8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cl = call noalias ptr @malloc(i64 noundef %i.cj) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.val9.pre.i = phi i32 [ %.val9.pre.pre.i, %bb.r ], [ %.val.i, %bb.s ]
  %.val7.pre.i = phi i32 [ %.val7.pre.pre.i, %bb.r ], [ %.val6.i, %bb.s ]
  %i.cm = phi ptr [ %i.ck, %bb.r ], [ %i.cl, %bb.s ] ; 2 uses
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !12
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !50
  br label %Vec_IntGrow.exit.i74

Vec_IntGrow.exit.i74:                             ; preds = %bb.t, %bb.p
  %i.cn = phi ptr [ %i.cm, %bb.t ], [ %i.ch, %bb.p ] ; 3 uses
  %.val9.i = phi i32 [ %.val9.pre.i, %bb.t ], [ %.val.i, %bb.p ] ; 2 uses
  %.val7.i = phi i32 [ %.val7.pre.i, %bb.t ], [ %.val6.i, %bb.p ] ; 2 uses
  %i.co = getelementptr i8, ptr %i.bv, i64 8
  %.val8.i = load ptr, ptr %i.co, align 8, !tbaa !12 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.ca, i64 8
  %.val10.i = load ptr, ptr %i.cp, align 8, !tbaa !12 ; 4 uses
  %i.cq = sext i32 %.val7.i to i64
  %.idx.i.i = shl nsw i64 %i.cq, 2                ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.val8.i, i64 %.idx.i.i ; 3 uses
  %i.cs = sext i32 %.val9.i to i64
  %.idx19.i.i = shl nsw i64 %i.cs, 2              ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.val10.i, i64 %.idx19.i.i ; 3 uses
  %i.cu = icmp sgt i32 %.val7.i, 0
  %i.cv = icmp sgt i32 %.val9.i, 0
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.lr.ph.i.i, label %.preheader5.i.i

.preheader5.i.i:                                  ; preds = %bb.y, %Vec_IntGrow.exit.i74
  %.036.lcssa.i.i = phi ptr [ %i.cn, %Vec_IntGrow.exit.i74 ], [ %.137.i.i, %bb.y ] ; 5 uses
  %.033.lcssa.i.i = phi ptr [ %.val8.i, %Vec_IntGrow.exit.i74 ], [ %.134.i.i, %bb.y ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %.val10.i, %Vec_IntGrow.exit.i74 ], [ %.1.i.i, %bb.y ] ; 5 uses
  %.0.lcssa.i.i128 = ptrtoaddr ptr %.0.lcssa.i.i to i64 ; 2 uses
  %i.cx = icmp ult ptr %.033.lcssa.i.i, %i.cr
  br i1 %i.cx, label %.lr.ph13.i.i.preheader, label %.preheader.i.i

.lr.ph13.i.i.preheader:                           ; preds = %.preheader5.i.i
  %.033.lcssa.i.i134 = ptrtoaddr ptr %.033.lcssa.i.i to i64 ; 2 uses
  %.036.lcssa.i.i133 = ptrtoaddr ptr %.036.lcssa.i.i to i64
  %i.cy = ptrtoaddr ptr %.val8.i to i64
  %i.cz = add i64 %.idx.i.i, %i.cy
  %i.da = xor i64 %.033.lcssa.i.i134, -1
  %i.db = add i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.db, 28
  %i.de = sub i64 %.033.lcssa.i.i134, %.036.lcssa.i.i133
  %diff.check135 = icmp ugt i64 %i.de, -32
  %or.cond = select i1 %min.iters.check137, i1 true, i1 %diff.check135
  br i1 %or.cond, label %.lr.ph13.i.i.preheader153, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph13.i.i.preheader
  %n.vec139 = and i64 %i.dd, 9223372036854775800  ; 3 uses
  %i.df = shl i64 %n.vec139, 2                    ; 2 uses
  %i.dg = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.df
  %i.dh = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.df ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %i.di = shl i64 %index141, 2                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.033.lcssa.i.i, i64 %i.di ; 2 uses
  %next.gep143 = getelementptr i8, ptr %.036.lcssa.i.i, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load144 = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !13
  %wide.load145 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !13
  %i.dk = getelementptr i8, ptr %next.gep143, i64 16
  store <4 x i32> %wide.load144, ptr %next.gep143, align 4, !tbaa !13
  store <4 x i32> %wide.load145, ptr %i.dk, align 4, !tbaa !13
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.dl, label %middle.block147, label %vector.body140, !llvm.loop !513

middle.block147:                                  ; preds = %vector.body140
  %cmp.n148 = icmp eq i64 %i.dd, %n.vec139
  br i1 %cmp.n148, label %.preheader.i.i, label %.lr.ph13.i.i.preheader153

.lr.ph13.i.i.preheader153:                        ; preds = %.lr.ph13.i.i.preheader, %middle.block147
  %.23512.i.i.ph = phi ptr [ %.033.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.dg, %middle.block147 ]
  %.23811.i.i.ph = phi ptr [ %.036.lcssa.i.i, %.lr.ph13.i.i.preheader ], [ %i.dh, %middle.block147 ]
  br label %.lr.ph13.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i74, %bb.y
  %.08.i.i = phi ptr [ %.1.i.i, %bb.y ], [ %.val10.i, %Vec_IntGrow.exit.i74 ] ; 4 uses
  %.0337.i.i = phi ptr [ %.134.i.i, %bb.y ], [ %.val8.i, %Vec_IntGrow.exit.i74 ] ; 4 uses
  %.0366.i.i = phi ptr [ %.137.i.i, %bb.y ], [ %i.cn, %Vec_IntGrow.exit.i74 ] ; 4 uses
  %i.dm = load i32, ptr %.0337.i.i, align 4, !tbaa !13 ; 4 uses
  %i.dn = load i32, ptr %.08.i.i, align 4, !tbaa !13 ; 3 uses
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.dm, ptr %.0366.i.i, align 4, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dr = icmp slt i32 %i.dm, %i.dn
  br i1 %i.dr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.0337.i.i, i64 4
  store i32 %i.dm, ptr %.0366.i.i, align 4, !tbaa !13
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.dn, ptr %.0366.i.i, align 4, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.134.i.i = phi ptr [ %i.dp, %bb.u ], [ %i.ds, %bb.w ], [ %.0337.i.i, %bb.x ] ; 3 uses
  %.1.i.i = phi ptr [ %i.dq, %bb.u ], [ %.08.i.i, %bb.w ], [ %i.dt, %bb.x ] ; 3 uses
  %.137.i.i = getelementptr inbounds nuw i8, ptr %.0366.i.i, i64 4 ; 2 uses
  %i.du = icmp ult ptr %.134.i.i, %i.cr
  %i.dv = icmp ult ptr %.1.i.i, %i.ct
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph.i.i, label %.preheader5.i.i, !llvm.loop !505

.preheader.i.i:                                   ; preds = %.lr.ph13.i.i, %middle.block147, %.preheader5.i.i
  %.238.lcssa.i.i = phi ptr [ %.036.lcssa.i.i, %.preheader5.i.i ], [ %i.dh, %middle.block147 ], [ %i.eo, %.lr.ph13.i.i ] ; 5 uses
  %i.dx = icmp ult ptr %.0.lcssa.i.i, %i.ct
  br i1 %i.dx, label %.lr.ph17.i.i.preheader, label %Vec_IntTwoMerge2.exit

.lr.ph17.i.i.preheader:                           ; preds = %.preheader.i.i
  %.238.lcssa.i.i127 = ptrtoaddr ptr %.238.lcssa.i.i to i64
  %i.dy = ptrtoaddr ptr %.val10.i to i64
  %i.dz = add i64 %.idx19.i.i, %i.dy
  %i.ea = xor i64 %.0.lcssa.i.i128, -1
  %i.eb = add i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eb, 28
  %i.ee = sub i64 %.0.lcssa.i.i128, %.238.lcssa.i.i127
  %diff.check = icmp ugt i64 %i.ee, -32
  %or.cond151 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond151, label %.lr.ph17.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph17.i.i.preheader
  %n.vec = and i64 %i.ed, 9223372036854775800     ; 3 uses
  %i.ef = shl i64 %n.vec, 2                       ; 2 uses
  %i.eg = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ef
  %i.eh = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.ef ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ei ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.238.lcssa.i.i, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !13
  %wide.load130 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !13
  %i.ek = getelementptr i8, ptr %next.gep129, i64 16
  store <4 x i32> %wide.load, ptr %next.gep129, align 4, !tbaa !13
  store <4 x i32> %wide.load130, ptr %i.ek, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %Vec_IntTwoMerge2.exit, label %.lr.ph17.i.i.preheader152

.lr.ph17.i.i.preheader152:                        ; preds = %.lr.ph17.i.i.preheader, %middle.block
  %.216.i.i.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.eg, %middle.block ]
  %.315.i.i.ph = phi ptr [ %.238.lcssa.i.i, %.lr.ph17.i.i.preheader ], [ %i.eh, %middle.block ]
  br label %.lr.ph17.i.i

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.i.preheader153, %.lr.ph13.i.i
  %.23512.i.i = phi ptr [ %i.em, %.lr.ph13.i.i ], [ %.23512.i.i.ph, %.lr.ph13.i.i.preheader153 ] ; 2 uses
  %.23811.i.i = phi ptr [ %i.eo, %.lr.ph13.i.i ], [ %.23811.i.i.ph, %.lr.ph13.i.i.preheader153 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.23512.i.i, i64 4 ; 2 uses
  %i.en = load i32, ptr %.23512.i.i, align 4, !tbaa !13
  %i.eo = getelementptr inbounds nuw i8, ptr %.23811.i.i, i64 4 ; 2 uses
  store i32 %i.en, ptr %.23811.i.i, align 4, !tbaa !13
  %i.ep = icmp ult ptr %i.em, %i.cr
  br i1 %i.ep, label %.lr.ph13.i.i, label %.preheader.i.i, !llvm.loop !515

.lr.ph17.i.i:                                     ; preds = %.lr.ph17.i.i.preheader152, %.lr.ph17.i.i
  %.216.i.i = phi ptr [ %i.eq, %.lr.ph17.i.i ], [ %.216.i.i.ph, %.lr.ph17.i.i.preheader152 ] ; 2 uses
  %.315.i.i = phi ptr [ %i.es, %.lr.ph17.i.i ], [ %.315.i.i.ph, %.lr.ph17.i.i.preheader152 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.216.i.i, i64 4 ; 2 uses
  %i.er = load i32, ptr %.216.i.i, align 4, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %.315.i.i, i64 4 ; 2 uses
  store i32 %i.er, ptr %.315.i.i, align 4, !tbaa !13
  %i.et = icmp ult ptr %i.eq, %i.ct
  br i1 %i.et, label %.lr.ph17.i.i, label %Vec_IntTwoMerge2.exit, !llvm.loop !516

Vec_IntTwoMerge2.exit:                            ; preds = %.lr.ph17.i.i, %middle.block, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.238.lcssa.i.i, %.preheader.i.i ], [ %i.eh, %middle.block ], [ %i.es, %.lr.ph17.i.i ]
  %i.eu = ptrtoint ptr %.3.lcssa.i.i to i64
  %i.ev = ptrtoint ptr %i.cn to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 2
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !8
  %.pre107 = load i32, ptr %i.o, align 8, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %Vec_IntTwoMerge2.exit, %bb.o
  %i.fa = phi i32 [ %.pre107, %Vec_IntTwoMerge2.exit ], [ %i.bn, %bb.o ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp slt i64 %indvars.iv.next100, %i.fb
  br i1 %i.fc, label %.lr.ph91, label %.critedge2, !llvm.loop !517

.critedge2:                                       ; preds = %.lr.ph91, %bb.z, %.critedge
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !48  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  %.val93 = load i32, ptr %i.fe, align 4, !tbaa !8
  %i.ff = icmp sgt i32 %.val93, 0
  br i1 %i.ff, label %.lr.ph95, label %.critedge4

.lr.ph95:                                         ; preds = %.critedge2, %Vec_IntAppend.exit
  %i.fg = phi ptr [ %i.gu, %Vec_IntAppend.exit ], [ %i.fd, %.critedge2 ] ; 2 uses
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %Vec_IntAppend.exit ], [ 0, %.critedge2 ] ; 3 uses
  %.val56 = load ptr, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %.not47 = icmp eq ptr %.val56, null
  br i1 %.not47, label %.critedge4, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph95
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %.val57.val = load ptr, ptr %i.fh, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.val57.val, i64 %indvars.iv102
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !13 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [12 x i8], ptr %.val56, i64 %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv102 ; 4 uses
  %.val3.i = load i64, ptr %i.fl, align 4
  %i.fn = trunc i64 %.val3.i to i32
  %i.fo = and i32 %i.fn, 536870911
  %i.fp = sub nsw i32 %i.fj, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.fq ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 4      ; 2 uses
  %.val7.i76 = load i32, ptr %i.fs, align 4, !tbaa !8
  %i.ft = icmp sgt i32 %.val7.i76, 0
  br i1 %i.ft, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.aa
  %i.fu = getelementptr i8, ptr %i.fr, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i77 = load ptr, ptr %i.fu, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val6.i77, i64 %indvars.iv.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !13
  %i.fz = load i32, ptr %i.fv, align 4, !tbaa !8  ; 7 uses
  %i.ga = load i32, ptr %i.fm, align 8, !tbaa !50
  %i.gb = icmp eq i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.ac, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.ab
  %.pre.i = load ptr, ptr %i.fw, align 8, !tbaa !12
  br label %Vec_IntPush.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.gc = icmp slt i32 %i.fz, 16
  br i1 %i.gc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not9.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gd, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.af:                                            ; preds = %bb.ad
  %i.gf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.gg = icmp samesign ult i32 %i.fz, 1073741823
  %i.gh = shl nuw nsw i32 %i.fz, 1
  %spec.select.i.i = select i1 %i.gg, i32 %i.gh, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.fz, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.fw, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.ah, label %Vec_IntPush.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.gi = zext nneg i32 %spec.select.i.i to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.gj) #34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gl = call noalias ptr @malloc(i64 noundef %i.gj) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.aj, %bb.ai, %bb.af, %bb.ae
  %i.gm = phi ptr [ %i.gf, %bb.af ], [ %i.ge, %bb.ae ], [ %i.gk, %bb.ai ], [ %i.gl, %bb.aj ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i, %bb.ai ], [ %spec.select.i.i, %bb.aj ]
  store ptr %i.gm, ptr %i.fw, align 8, !tbaa !12
  store i32 %spec.select.sink.i.i, ptr %i.fm, align 8, !tbaa !50
  %.pre11.i = load i32, ptr %i.fv, align 4, !tbaa !8
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ag, %.Vec_IntPush.exit_crit_edge.i
  %i.gn = phi i32 [ %i.fz, %.Vec_IntPush.exit_crit_edge.i ], [ %i.fz, %bb.ag ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.go = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.ag ], [ %i.gm, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.gp = add nsw i32 %i.gn, 1
  store i32 %i.gp, ptr %i.fv, align 4, !tbaa !8
  %i.gq = sext i32 %i.gn to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gq
  store i32 %i.fy, ptr %i.gr, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i78 = load i32, ptr %i.fs, align 4, !tbaa !8
  %i.gs = sext i32 %.val.i78 to i64
  %i.gt = icmp slt i64 %indvars.iv.next.i, %i.gs
  br i1 %i.gt, label %bb.ab, label %Vec_IntAppend.exit.loopexit, !llvm.loop !359

Vec_IntAppend.exit.loopexit:                      ; preds = %Vec_IntPush.exit.i
  %.pre108 = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %Vec_IntAppend.exit

Vec_IntAppend.exit:                               ; preds = %Vec_IntAppend.exit.loopexit, %bb.aa
  %i.gu = phi ptr [ %.pre108, %Vec_IntAppend.exit.loopexit ], [ %i.fg, %bb.aa ] ; 2 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
end_hunk_1
begin_hunk_2_@Gia_ManAppendObj:bb.a
bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !14
  %i.s = load i32, ptr %i.c, align 4, !tbaa !217  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !216  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #34 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !216
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !217 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !217
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !8
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !50
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #34
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !12 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #34
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !12
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !50
  %.pre = load i32, ptr %i.al, align 4, !tbaa !8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !8
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !38
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #25

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #25

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32>) #28

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { nounwind allocsize(0) }
attributes #34 = { nounwind allocsize(1) }
attributes #35 = { nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { cold noreturn nounwind }

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
!9 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !17, i64 32}
!15 = !{!"Gia_Man_t_", !16, i64 0, !16, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !17, i64 32, !10, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !9, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !9, i64 128, !10, i64 144, !10, i64 152, !18, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !10, i64 184, !19, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !5, i64 224, !5, i64 228, !10, i64 232, !5, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !20, i64 272, !20, i64 280, !18, i64 288, !11, i64 296, !18, i64 304, !18, i64 312, !21, i64 320, !16, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !22, i64 376, !22, i64 384, !23, i64 392, !9, i64 400, !9, i64 416, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !18, i64 488, !18, i64 496, !18, i64 504, !18, i64 512, !16, i64 520, !24, i64 528, !25, i64 536, !26, i64 544, !26, i64 552, !18, i64 560, !18, i64 568, !18, i64 576, !18, i64 584, !18, i64 592, !5, i64 600, !27, i64 604, !27, i64 608, !18, i64 616, !10, i64 624, !5, i64 632, !23, i64 640, !23, i64 648, !23, i64 656, !18, i64 664, !18, i64 672, !18, i64 680, !18, i64 688, !18, i64 696, !18, i64 704, !18, i64 712, !18, i64 720, !18, i64 728, !28, i64 736, !26, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !29, i64 776, !29, i64 784, !11, i64 792, !10, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !30, i64 856, !30, i64 864, !30, i64 872, !30, i64 880, !18, i64 888, !18, i64 896, !18, i64 904, !31, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !18, i64 936, !5, i64 944, !5, i64 948, !18, i64 952, !18, i64 960, !23, i64 968, !30, i64 976, !18, i64 984, !18, i64 992, !5, i64 1000, !5, i64 1004, !30, i64 1008, !9, i64 1016, !9, i64 1032, !9, i64 1048, !32, i64 1064, !21, i64 1072, !21, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !21, i64 1104, !18, i64 1112, !18, i64 1120, !18, i64 1128, !23, i64 1136}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!18 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!21 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!22 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!23 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!25 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!26 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!31 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!32 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!33 = !{!34, !5, i64 8}
!34 = !{!"Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!15, !19, i64 192}
!38 = !{!15, !5, i64 24}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !36}
!41 = !{!15, !10, i64 200}
!42 = distinct !{!42, !36}
!43 = distinct !{!43, !36}
!44 = distinct !{!44, !36}
!45 = distinct !{!45, !36}
!46 = !{!15, !18, i64 64}
!47 = distinct !{!47, !36}
!48 = !{!15, !18, i64 72}
!49 = distinct !{!49, !36}
!50 = !{!9, !5, i64 0}
!51 = !{!15, !10, i64 232}
!52 = !{!15, !5, i64 116}
!53 = !{!15, !5, i64 832}
!54 = !{!15, !30, i64 1008}
!55 = !{!15, !16, i64 0}
!56 = !{!15, !16, i64 8}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = !{!15, !5, i64 16}
!60 = distinct !{!60, !36}
!61 = distinct !{!61, !36}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, !36}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = distinct !{!81, !36}
!82 = distinct !{!82, !36}
!83 = distinct !{!83, !36}
!84 = distinct !{!84, !36}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = !{!98, !5, i64 8}
!98 = !{!"Abc_Cex_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!99 = !{!98, !5, i64 12}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = !{!15, !10, i64 208}
!107 = !{!15, !5, i64 56}
!108 = distinct !{!108, !36}
!109 = !{!15, !22, i64 384}
!110 = distinct !{!110, !36}
!111 = distinct !{!111, !36}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = distinct !{!114, !36}
!115 = !{!15, !11, i64 752}
!116 = !{!15, !25, i64 536}
!117 = !{!15, !5, i64 816}
!118 = !{!15, !18, i64 480}
!119 = !{!15, !18, i64 488}
!120 = !{!15, !18, i64 312}
!121 = !{!15, !21, i64 320}
!122 = !{!123, !5, i64 4}
!123 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !16, i64 8}
!124 = !{!123, !5, i64 0}
!125 = !{!123, !16, i64 8}
!126 = !{!15, !16, i64 328}
!127 = !{!15, !23, i64 640}
!128 = !{!129, !5, i64 4}
!129 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !130, i64 8}
!130 = !{!"any p2 pointer", !11, i64 0}
!131 = !{!129, !5, i64 0}
!132 = !{!129, !130, i64 8}
!133 = !{!11, !11, i64 0}
!134 = distinct !{!134, !36}
!135 = !{!15, !23, i64 648}
!136 = distinct !{!136, !36}
!137 = distinct !{!137, !36}
!138 = distinct !{!138, !36}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !36}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !36}
!145 = distinct !{!145, !36}
end_hunk_2
