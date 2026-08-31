Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTruth?download=true
inline.NumInlined: 491
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ObjComputeTruthTable:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.af, ptr %i.bf, align 4, !tbaa !70
  store i32 %i.af, ptr %i.be, align 8, !tbaa !73
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.an, ptr %i.bg, align 8, !tbaa !74
  %i.bh = icmp sgt i32 %.fr.i, 0
  br i1 %i.bh, label %.lr.ph33.split.us.split.us.preheader.i, label %Vec_PtrAllocTruthTables.exit

.lr.ph33.split.us.split.us.preheader.i:           ; preds = %Vec_PtrAllocSimInfo.exit.i
  %wide.trip.count67.i = zext nneg i32 %.fr.i to i64 ; 6 uses
  %min.iters.check282 = icmp ult i32 %.fr.i, 8
  %n.vec284 = and i64 %wide.trip.count67.i, 2147483640 ; 3 uses
  %cmp.n291 = icmp eq i64 %n.vec284, %wide.trip.count67.i
  %min.iters.check = icmp ult i32 %.fr.i, 8
  %n.vec = and i64 %wide.trip.count67.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67.i
  br label %.lr.ph33.split.us.split.us.i

.lr.ph33.split.us.split.us.i:                     ; preds = %..loopexit27_crit_edge.us.us.i, %.lr.ph33.split.us.split.us.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.lr.ph33.split.us.split.us.preheader.i ], [ %indvars.iv.next75.i, %..loopexit27_crit_edge.us.us.i ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv74.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 4 uses
  %i.bk = icmp samesign ult i64 %indvars.iv74.i, 5
  br i1 %i.bk, label %.preheader.us.us.i, label %.preheader26.us.us.i

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %scalar.ph281 ], [ %indvars.iv64.i.ph, %scalar.ph281.preheader ] ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv64.i to i32
  %i.bm = and i32 %i.bw, %i.bl
  %.not.us.us.i = icmp ne i32 %i.bm, 0
  %spec.select.i = sext i1 %.not.us.us.i to i32
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv64.i
  store i32 %spec.select.i, ptr %i.bn, align 4, !tbaa !33
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph281, !llvm.loop !75

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %scalar.ph ], [ %indvars.iv69.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv69.i
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !33
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count67.i
  br i1 %exitcond73.not.i, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph, !llvm.loop !78

..loopexit27_crit_edge.us.us.i:                   ; preds = %scalar.ph281, %scalar.ph, %middle.block290, %middle.block
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %i.al
  br i1 %exitcond78.not.i, label %Vec_PtrAllocTruthTables.exit.loopexit, label %.lr.ph33.split.us.split.us.i, !llvm.loop !79

.preheader.us.us.i:                               ; preds = %.lr.ph33.split.us.split.us.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_PtrAllocTruthTables.Masks, i64 %indvars.iv74.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4, !tbaa !33
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv69.i.ph = phi i64 [ 0, %.preheader.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader26.us.us.i:                             ; preds = %.lr.ph33.split.us.split.us.i
  %i.bu = trunc i64 %indvars.iv74.i to i32
  %i.bv = add i32 %i.bu, -5
  %i.bw = shl nuw i32 1, %i.bv                    ; 2 uses
  br i1 %min.iters.check282, label %scalar.ph281.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %.preheader26.us.us.i
  %broadcast.splatinsert285 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat286 = shufflevector <4 x i32> %broadcast.splatinsert285, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph283
  %index288 = phi i64 [ 0, %vector.ph283 ], [ %index.next289, %vector.body287 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph283 ], [ %vec.ind.next, %vector.body287 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bx = and <4 x i32> %broadcast.splat286, %vec.ind
  %i.by = and <4 x i32> %broadcast.splat286, %step.add
  %i.bz = icmp ne <4 x i32> %i.bx, zeroinitializer
  %i.ca = icmp ne <4 x i32> %i.by, zeroinitializer
  %i.cb = sext <4 x i1> %i.bz to <4 x i32>
  %i.cc = sext <4 x i1> %i.ca to <4 x i32>
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index288 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x i32> %i.cb, ptr %i.cd, align 4, !tbaa !33
  store <4 x i32> %i.cc, ptr %i.ce, align 4, !tbaa !33
  %index.next289 = add nuw i64 %index288, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cf = icmp eq i64 %index.next289, %n.vec284
  br i1 %i.cf, label %middle.block290, label %vector.body287, !llvm.loop !81

middle.block290:                                  ; preds = %vector.body287
  br i1 %cmp.n291, label %..loopexit27_crit_edge.us.us.i, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader26.us.us.i, %middle.block290
  %indvars.iv64.i.ph = phi i64 [ 0, %.preheader26.us.us.i ], [ %n.vec284, %middle.block290 ]
  br label %scalar.ph281

Vec_PtrAllocTruthTables.exit.loopexit:            ; preds = %..loopexit27_crit_edge.us.us.i
  %.pre = load i32, ptr %i.m, align 4, !tbaa !64
  br label %Vec_PtrAllocTruthTables.exit

Vec_PtrAllocTruthTables.exit:                     ; preds = %Vec_PtrAllocTruthTables.exit.loopexit, %Vec_PtrAllocSimInfo.exit.i
  %i.cg = phi i32 [ %.pre, %Vec_PtrAllocTruthTables.exit.loopexit ], [ %i.l, %Vec_PtrAllocSimInfo.exit.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr %i.be, ptr %i.ch, align 8, !tbaa !82
  %i.ci = shl nsw i32 %i.cg, 8                    ; 3 uses
  %i.cj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !57
  %.not.i.i141 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i141, label %Vec_WrdStart.exit, label %bb.d

bb.d:                                             ; preds = %Vec_PtrAllocTruthTables.exit
  %i.ck = sext i32 %i.ci to i64
  %i.cl = shl nsw i64 %i.ck, 3                    ; 2 uses
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.cl) #25
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_PtrAllocTruthTables.exit, %bb.d
  %.pre-phi245 = phi i64 [ %i.cl, %bb.d ], [ 0, %Vec_PtrAllocTruthTables.exit ]
  %i.cn = phi ptr [ %i.cm, %bb.d ], [ null, %Vec_PtrAllocTruthTables.exit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !46
  store i32 %i.ci, ptr %i.co, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %.pre-phi245, i1 false)
  store ptr %i.cj, ptr %i.a, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %Vec_WrdStart.exit
  %i.cq = phi ptr [ %.pre228, %._crit_edge ], [ %i.p, %Vec_WrdStart.exit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 4      ; 3 uses
  %.val120 = load i32, ptr %i.cs, align 4, !tbaa !38 ; 4 uses
  %i.ct = getelementptr i8, ptr %0, i64 24
  %.val125 = load i32, ptr %i.ct, align 8, !tbaa !65 ; 8 uses
  %i.cu = icmp slt i32 %.val120, %.val125
  br i1 %i.cu, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.cv = load i32, ptr %i.cq, align 8, !tbaa !39 ; 4 uses
  %i.cw = shl nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = icmp sgt i32 %.val125, %i.cw
  %.not.i.i143 = icmp slt i32 %i.cv, %.val125     ; 2 uses
  br i1 %i.cx, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i143, label %bb.h, label %Vec_IntGrow.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.cz, null
  %i.da = sext i32 %.val125 to i64
  %i.db = shl nsw i64 %i.da, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef %i.db) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.de = phi ptr [ %i.dc, %bb.i ], [ %i.dd, %bb.j ]
  store ptr %i.de, ptr %i.cy, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

bb.l:                                             ; preds = %bb.f
  br i1 %.not.i.i143, label %bb.m, label %Vec_IntGrow.exit.i

bb.m:                                             ; preds = %bb.l
  %i.df = icmp slt i32 %i.cv, 1073741823
  %spec.select.i144 = select i1 %i.df, i32 %i.cw, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp slt i32 %i.cv, %spec.select.i144
  br i1 %.not.i22.i, label %bb.n, label %Vec_IntGrow.exit.i

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.dh, null
  %i.di = sext i32 %spec.select.i144 to i64
  %i.dj = shl nuw nsw i64 %i.di, 2                ; 2 uses
  br i1 %.not9.i23.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = tail call ptr @realloc(ptr noundef nonnull %i.dh, i64 noundef %i.dj) #26
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dl = tail call noalias ptr @malloc(i64 noundef %i.dj) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dm = phi ptr [ %i.dk, %bb.o ], [ %i.dl, %bb.p ]
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.q, %bb.k
  %spec.select.sink.i = phi i32 [ %spec.select.i144, %bb.q ], [ %.val125, %bb.k ]
  store i32 %spec.select.sink.i, ptr %i.cq, align 8, !tbaa !39
  %.pre229 = load i32, ptr %i.cs, align 4, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.m, %bb.l, %bb.g
  %i.dn = phi i32 [ %.pre229, %Vec_IntGrow.exit.sink.split.i ], [ %.val120, %bb.m ], [ %.val120, %bb.l ], [ %.val120, %bb.g ] ; 2 uses
  %i.do = icmp slt i32 %i.dn, %.val125
  br i1 %i.do, label %.lr.ph.i, label %Vec_IntFillExtra.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !32
  %i.dr = sext i32 %i.dn to i64                   ; 2 uses
  %wide.trip.count.i = sext i32 %.val125 to i64
  %i.ds = shl nsw i64 %i.dr, 2
  %scevgep = getelementptr i8, ptr %i.dq, i64 %i.ds
  %i.dt = sub nsw i64 %wide.trip.count.i, %i.dr
  %i.du = shl nsw i64 %i.dt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.du, i1 false), !tbaa !33
  br label %Vec_IntFillExtra.exit

Vec_IntFillExtra.exit:                            ; preds = %.lr.ph.i, %Vec_IntGrow.exit.i
  store i32 %.val125, ptr %i.cs, align 4, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %Vec_IntFillExtra.exit, %bb.e
  %.val128 = load i64, ptr %1, align 4            ; 2 uses
  %i.dv = and i64 %.val128, 2147483648
  %.not.i145 = icmp eq i64 %i.dv, 0
  %i.dw = and i64 %.val128, 536870911             ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 536870911
  %narrow.i.not = or i1 %.not.i145, %i.dx
  %i.dy = sub nsw i64 0, %i.dw
  %.idx = select i1 %narrow.i.not, i64 0, i64 %i.dy
  %i.dz = getelementptr inbounds [12 x i8], ptr %1, i64 %.idx ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 0, ptr %i.ec, align 4, !tbaa !38
  tail call void @Gia_ObjCollectInternal_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.dz)
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !61  ; 6 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4      ; 3 uses
  %.val121 = load i32, ptr %i.ee, align 4, !tbaa !56 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 5 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !64
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val119 = load i32, ptr %i.ei, align 4, !tbaa !38 ; 2 uses
  %i.ej = add nsw i32 %.val119, 2
  %i.ek = mul nsw i32 %i.ej, %i.eg                ; 8 uses
  %i.el = icmp slt i32 %.val121, %i.ek
  br i1 %i.el, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.em = load i32, ptr %i.ed, align 8, !tbaa !57 ; 4 uses
  %i.en = shl nsw i32 %i.em, 1                    ; 2 uses
  %i.eo = icmp sgt i32 %i.ek, %i.en
  %.not.i.i147 = icmp slt i32 %i.em, %i.ek        ; 2 uses
  br i1 %i.eo, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i147, label %bb.u, label %Vec_WrdGrow.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i154 = icmp eq ptr %i.eq, null
  %i.er = sext i32 %i.ek to i64
  %i.es = shl nsw i64 %i.er, 3                    ; 2 uses
  br i1 %.not9.i.i154, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = tail call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.es) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = phi ptr [ %i.et, %bb.v ], [ %i.eu, %bb.w ]
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

bb.y:                                             ; preds = %bb.s
  br i1 %.not.i.i147, label %bb.z, label %Vec_WrdGrow.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ew = icmp slt i32 %i.em, 1073741823
  %spec.select.i150 = select i1 %i.ew, i32 %i.en, i32 2147483647 ; 3 uses
  %.not.i22.i151 = icmp slt i32 %i.em, %spec.select.i150
  br i1 %.not.i22.i151, label %bb.aa, label %Vec_WrdGrow.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i152 = icmp eq ptr %i.ey, null
  %i.ez = sext i32 %spec.select.i150 to i64
  %i.fa = shl nuw nsw i64 %i.ez, 3                ; 2 uses
  br i1 %.not9.i23.i152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef %i.fa) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fd = phi ptr [ %i.fb, %bb.ab ], [ %i.fc, %bb.ac ]
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

Vec_WrdGrow.exit.sink.split.i:                    ; preds = %bb.ad, %bb.x
  %spec.select.sink.i153 = phi i32 [ %spec.select.i150, %bb.ad ], [ %i.ek, %bb.x ]
  store i32 %spec.select.sink.i153, ptr %i.ed, align 8, !tbaa !57
  %.pre230 = load i32, ptr %i.ee, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.z, %bb.y, %bb.t
  %i.fe = phi i32 [ %.pre230, %Vec_WrdGrow.exit.sink.split.i ], [ %.val121, %bb.z ], [ %.val121, %bb.y ], [ %.val121, %bb.t ] ; 3 uses
  %i.ff = icmp slt i32 %i.fe, %i.ek
  br i1 %i.ff, label %.lr.ph.i149, label %Vec_WrdFillExtra.exit

.lr.ph.i149:                                      ; preds = %Vec_WrdGrow.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !46
  %i.fi = sext i32 %i.fe to i64
  %i.fj = shl nsw i64 %i.fi, 3
  %scevgep.i = getelementptr i8, ptr %i.fh, i64 %i.fj
  %i.fk = xor i32 %i.fe, -1
  %i.fl = add i32 %i.ek, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fo, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i149
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !56
  %.pre231 = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert232 = getelementptr i8, ptr %.pre231, i64 4
  %.val117217.pre = load i32, ptr %.phi.trans.insert232, align 4, !tbaa !38
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_WrdFillExtra.exit, %bb.r
  %.val117217 = phi i32 [ %.val117217.pre, %Vec_WrdFillExtra.exit ], [ %.val119, %bb.r ]
  %i.fp = phi ptr [ %.pre231, %Vec_WrdFillExtra.exit ], [ %i.eh, %bb.r ]
  %i.fq = icmp sgt i32 %.val117217, 0
  br i1 %i.fq, label %.lr.ph219, label %.critedge

.lr.ph219:                                        ; preds = %bb.ae
  %i.fr = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.fs = getelementptr i8, ptr %0, i64 968       ; 2 uses
  %.val.pre = load ptr, ptr %i.fr, align 8, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph219, %.loopexit
  %.val = phi ptr [ %.val.pre, %.lr.ph219 ], [ %.val4.i, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.ft = phi ptr [ %i.fp, %.lr.ph219 ], [ %i.nx, %.loopexit ]
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %.val116 = load ptr, ptr %i.fu, align 8, !tbaa !32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !33
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.fx ; 5 uses
  %.not95 = icmp eq ptr %.val, null
  br i1 %.not95, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = load i64, ptr %i.fy, align 4            ; 5 uses
  %i.ga = and i64 %i.fz, -1073741825
  store i64 %i.ga, ptr %i.fy, align 4
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %.val.i = load ptr, ptr %i.gc, align 8, !tbaa !46 ; 4 uses
  %.val.i293 = ptrtoaddr ptr %.val.i to i64       ; 16 uses
  %i.gd = load i32, ptr %i.ef, align 4, !tbaa !64 ; 5 uses
  %.val4.i = load ptr, ptr %i.fr, align 8, !tbaa !8 ; 2 uses
  %.val5.i = load ptr, ptr %i.cr, align 8, !tbaa !60
  %i.ge = getelementptr i8, ptr %.val5.i, i64 8
  %.val5.val.i = load ptr, ptr %i.ge, align 8, !tbaa !32 ; 3 uses
  %i.gf = ptrtoint ptr %i.fy to i64
  %i.gg = ptrtoint ptr %.val4.i to i64            ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 12
  %sext.i.i = shl i64 %i.gi, 32
  %i.gj = ashr exact i64 %sext.i.i, 30
  %i.gk = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !33
  %i.gm = mul i32 %i.gl, %i.gd
  %i.gn = sext i32 %i.gm to i64                   ; 9 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.gn ; 17 uses
  %i.gp = sext i32 %i.gd to i64
  %.idx221 = shl nsw i64 %i.gp, 3                 ; 5 uses
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 %.idx221 ; 4 uses
  %i.gr = and i64 %i.fz, 536870911
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds [12 x i8], ptr %i.fy, i64 %i.gs ; 2 uses
  %.val115 = load i64, ptr %i.gt, align 4         ; 3 uses
  %i.gu = and i64 %.val115, 2147483648
  %.not.i155 = icmp ne i64 %i.gu, 0
  %i.gv = and i64 %.val115, 536870911
  %i.gw = icmp eq i64 %i.gv, 536870911
  %narrow.i156.not = or i1 %.not.i155, %i.gw
  br i1 %narrow.i156.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gx, %i.gg
  %i.gz = sdiv exact i64 %i.gy, 12
  %sext.i.i161 = shl i64 %i.gz, 32
  %i.ha = ashr exact i64 %sext.i.i161, 30
  %i.hb = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !33
  %i.hd = mul nsw i32 %i.hc, %i.gd
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.he
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.hg = lshr i64 %.val115, 32
  %i.hh = and i64 %i.hg, 536870911
  %.val131 = load ptr, ptr %i.fs, align 8, !tbaa !82
  %i.hi = getelementptr i8, ptr %.val131, i64 8
  %.val131.val = load ptr, ptr %i.hi, align 8, !tbaa !74
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val131.val, i64 %i.hh
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !66
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hl = phi ptr [ %i.hf, %bb.ah ], [ %i.hk, %bb.ai ] ; 17 uses
  %i.hm = ptrtoaddr ptr %i.hl to i64              ; 4 uses
  %i.hn = lshr i64 %i.fz, 32
  %i.ho = and i64 %i.hn, 536870911
  %i.hp = sub nsw i64 0, %i.ho
  %i.hq = getelementptr inbounds [12 x i8], ptr %i.fy, i64 %i.hp ; 2 uses
  %.val114 = load i64, ptr %i.hq, align 4         ; 3 uses
  %i.hr = and i64 %.val114, 2147483648
  %.not.i162 = icmp ne i64 %i.hr, 0
  %i.hs = and i64 %.val114, 536870911
  %i.ht = icmp eq i64 %i.hs, 536870911
  %narrow.i163.not = or i1 %.not.i162, %i.ht
  br i1 %narrow.i163.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.hu, %i.gg
  %i.hw = sdiv exact i64 %i.hv, 12
  %sext.i.i168 = shl i64 %i.hw, 32
  %i.hx = ashr exact i64 %sext.i.i168, 30
  %i.hy = getelementptr inbounds i8, ptr %.val5.val.i, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !33
  %i.ia = mul nsw i32 %i.hz, %i.gd
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ib
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.id = lshr i64 %.val114, 32
  %i.ie = and i64 %i.id, 536870911
  %.val130 = load ptr, ptr %i.fs, align 8, !tbaa !82
  %i.if = getelementptr i8, ptr %.val130, i64 8
  %.val130.val = load ptr, ptr %i.if, align 8, !tbaa !74
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.val130.val, i64 %i.ie
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !66
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ii = phi ptr [ %i.ic, %bb.ak ], [ %i.ih, %bb.al ] ; 17 uses
  %i.ij = ptrtoaddr ptr %i.ii to i64              ; 4 uses
  %i.ik = and i64 %i.fz, 536870912
  %.not102 = icmp eq i64 %i.ik, 0
  %i.il = and i64 %i.fz, 2305843009213693952
  %.not103 = icmp eq i64 %i.il, 0                 ; 2 uses
  %i.im = icmp sgt i32 %i.gd, 0                   ; 4 uses
  br i1 %.not102, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not103, label %.preheader197, label %.preheader199

.preheader199:                                    ; preds = %bb.an
  br i1 %i.im, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader199
  %i.in = shl nsw i64 %i.gn, 3                    ; 3 uses
  %i.io = add i64 %.idx221, %.val.i293
  %i.ip = add i64 %i.io, %i.in
  %i.iq = add i64 %i.in, %.val.i293
  %i.ir = add i64 %i.iq, 8
  %i.is = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.ir)
  %i.it = xor i64 %.val.i293, -1
  %i.iu = add i64 %i.is, %i.it
  %i.iv = sub i64 %i.iu, %i.in                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 3
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check363 = icmp ult i64 %i.iv, 56
end_hunk_0
begin_hunk_1_@Gia_ObjCollectInternalCut_rec:bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = add nsw i32 %i.am, 1
  store i32 %i.ap, ptr %i.s, align 4, !tbaa !38
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  store i32 %1, ptr %i.ar, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ObjCollectInternalCut(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val1316 = load i32, ptr %i.a, align 4, !tbaa !38 ; 2 uses
  %i.b = icmp sgt i32 %.val1316, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr i8, ptr %0, i64 952
  %.val14 = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr i8, ptr %.val14, i64 8
  %.val14.val = load ptr, ptr %i.e, align 8, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val1319 = phi i32 [ %.val1316, %.lr.ph ], [ %.val13, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %.val14.val, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33
  %i.k = icmp slt i32 %i.j, -999999999
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %indvars.iv to i32
  %i.m = sub i32 0, %i.l
  store i32 %i.m, ptr %i.i, align 4, !tbaa !33
  %.val13.pre = load i32, ptr %i.a, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val13 = phi i32 [ %.val1319, %bb.b ], [ %.val13.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %.val13 to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !112

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !38
  %i.s = load i32, ptr %i.q, align 8, !tbaa !39
  %i.t = icmp eq i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 3 uses
  br i1 %i.t, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %.critedge
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #26
  %.pre21.pre = load i32, ptr %i.r, align 4, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.f, %bb.g
  %.pre21 = phi i32 [ %.pre21.pre, %bb.f ], [ 0, %bb.g ]
  %i.y = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !32
  store i32 16, ptr %i.q, align 8, !tbaa !39
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge, %Vec_IntGrow.exit11.sink.split.i
  %i.z = phi i32 [ %.pre21, %Vec_IntGrow.exit11.sink.split.i ], [ 0, %.critedge ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %Vec_IntGrow.exit11.sink.split.i ], [ %i.v, %.critedge ]
  %i.ab = add nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !38
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  store i32 -1, ptr %i.ad, align 4, !tbaa !33
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Gia_ObjComputeTruthTableCut(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val129 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %.val129 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 12
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %Vec_IntFind.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = icmp eq i32 %i.m, %i.f
  br i1 %i.n, label %Vec_IntFind.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit.thread, label %bb.b, !llvm.loop !113

Vec_IntFind.exit:                                 ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 968
  %.val142 = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr i8, ptr %.val142, i64 8
  %.val142.val = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val142.val, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66
  br label %.critedge4

Vec_IntFind.exit.thread:                          ; preds = %bb.c, %bb.a
  %.val119 = load i64, ptr %1, align 4
  %i.s = and i64 %.val119, 2305843005455597567
  %narrow.i.not = icmp eq i64 %i.s, 2305843005455597567
  br i1 %narrow.i.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %Vec_IntFind.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 7 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4        ; 3 uses
  %.val137 = load i32, ptr %i.v, align 4, !tbaa !56 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64   ; 9 uses
  %i.y = icmp slt i32 %.val137, %i.x
  br i1 %i.y, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.u, align 8, !tbaa !57   ; 4 uses
  %i.aa = shl nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = icmp sgt i32 %i.x, %i.aa
  %.not.i.i = icmp slt i32 %i.z, %i.x             ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %bb.g, label %Vec_WrdGrow.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ad, null
  %i.ae = sext i32 %i.x to i64
  %i.af = shl nsw i64 %i.ae, 3                    ; 2 uses
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = phi ptr [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

bb.k:                                             ; preds = %bb.e
  br i1 %.not.i.i, label %bb.l, label %Vec_WrdGrow.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp slt i32 %i.z, 1073741823
  %spec.select.i = select i1 %i.aj, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i22.i = icmp slt i32 %i.z, %spec.select.i
  br i1 %.not.i22.i, label %bb.m, label %Vec_WrdGrow.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.al, null
  %i.am = sext i32 %spec.select.i to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  br i1 %.not9.i23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.an) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = phi ptr [ %i.ao, %bb.n ], [ %i.ap, %bb.o ]
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i

Vec_WrdGrow.exit.sink.split.i:                    ; preds = %bb.p, %bb.j
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ %i.x, %bb.j ]
  store i32 %spec.select.sink.i, ptr %i.u, align 8, !tbaa !57
  %.pre247 = load i32, ptr %i.v, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %Vec_WrdGrow.exit.sink.split.i, %bb.l, %bb.k, %bb.f
  %i.ar = phi i32 [ %.pre247, %Vec_WrdGrow.exit.sink.split.i ], [ %.val137, %bb.l ], [ %.val137, %bb.k ], [ %.val137, %bb.f ] ; 3 uses
  %i.as = icmp slt i32 %i.ar, %i.x
  br i1 %i.as, label %.lr.ph.i156, label %Vec_WrdFillExtra.exit

.lr.ph.i156:                                      ; preds = %Vec_WrdGrow.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.av = sext i32 %i.ar to i64
  %i.aw = shl nsw i64 %i.av, 3
  %scevgep.i = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ax = xor i32 %i.ar, -1
  %i.ay = add i32 %i.x, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bb, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i156
  store i32 %i.x, ptr %i.v, align 4, !tbaa !56
  %.val143.pr = load i32, ptr %i.w, align 4, !tbaa !64
  %.val144.pre = load ptr, ptr %i.t, align 8, !tbaa !61 ; 2 uses
  %.phi.trans.insert249 = getelementptr i8, ptr %.val144.pre, i64 4
  %.val144.val.pre = load i32, ptr %.phi.trans.insert249, align 4, !tbaa !56
  br label %bb.q

bb.q:                                             ; preds = %Vec_WrdFillExtra.exit, %bb.d
  %.val144.val = phi i32 [ %.val144.val.pre, %Vec_WrdFillExtra.exit ], [ %.val137, %bb.d ]
  %.val144 = phi ptr [ %.val144.pre, %Vec_WrdFillExtra.exit ], [ %i.u, %bb.d ]
  %.val143 = phi i32 [ %.val143.pr, %Vec_WrdFillExtra.exit ], [ %i.x, %bb.d ] ; 3 uses
  %i.bc = getelementptr i8, ptr %.val144, i64 8
  %.val144.val145 = load ptr, ptr %i.bc, align 8, !tbaa !46
  %i.bd = sext i32 %.val144.val to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val144.val145, i64 %i.bd
  %i.bf = sext i32 %.val143 to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i32 %.val143, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %.critedge4

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.bj = zext nneg i32 %.val143 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.bk, i1 false), !tbaa !30
  br label %.critedge4

bb.r:                                             ; preds = %Vec_IntFind.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 4      ; 3 uses
  %.val135 = load i32, ptr %i.bn, align 4, !tbaa !38 ; 4 uses
  %i.bo = getelementptr i8, ptr %0, i64 24
  %.val139 = load i32, ptr %i.bo, align 8, !tbaa !65 ; 8 uses
  %i.bp = icmp slt i32 %.val135, %.val139
  br i1 %i.bp, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !39 ; 4 uses
  %i.br = shl nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = icmp sgt i32 %.val139, %i.br
  %.not.i.i159 = icmp slt i32 %i.bq, %.val139     ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i159, label %bb.u, label %Vec_IntGrow.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i170 = icmp eq ptr %i.bu, null
  %i.bv = sext i32 %.val139 to i64
  %i.bw = shl nsw i64 %i.bv, 2                    ; 2 uses
  br i1 %.not9.i.i170, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = tail call ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef %i.bw) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bw) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bz = phi ptr [ %i.bx, %bb.v ], [ %i.by, %bb.w ]
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

bb.y:                                             ; preds = %bb.s
  br i1 %.not.i.i159, label %bb.z, label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ca = icmp slt i32 %i.bq, 1073741823
  %spec.select.i166 = select i1 %i.ca, i32 %i.br, i32 2147483647 ; 3 uses
  %.not.i22.i167 = icmp slt i32 %i.bq, %spec.select.i166
  br i1 %.not.i22.i167, label %bb.aa, label %Vec_IntGrow.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %.not9.i23.i168 = icmp eq ptr %i.cc, null
  %i.cd = sext i32 %spec.select.i166 to i64
  %i.ce = shl nuw nsw i64 %i.cd, 2                ; 2 uses
  br i1 %.not9.i23.i168, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = tail call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.ce) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.ce) #25
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ch = phi ptr [ %i.cf, %bb.ab ], [ %i.cg, %bb.ac ]
  store ptr %i.ch, ptr %i.cb, align 8, !tbaa !32
  br label %Vec_IntGrow.exit.sink.split.i

Vec_IntGrow.exit.sink.split.i:                    ; preds = %bb.ad, %bb.x
  %spec.select.sink.i169 = phi i32 [ %spec.select.i166, %bb.ad ], [ %.val139, %bb.x ]
  store i32 %spec.select.sink.i169, ptr %i.bm, align 8, !tbaa !39
  %.pre = load i32, ptr %i.bn, align 4, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %Vec_IntGrow.exit.sink.split.i, %bb.z, %bb.y, %bb.t
  %i.ci = phi i32 [ %.pre, %Vec_IntGrow.exit.sink.split.i ], [ %.val135, %bb.z ], [ %.val135, %bb.y ], [ %.val135, %bb.t ] ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %.val139
  br i1 %i.cj, label %.lr.ph.i161, label %Vec_IntFillExtra.exit

.lr.ph.i161:                                      ; preds = %Vec_IntGrow.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %i.cm = sext i32 %i.ci to i64                   ; 4 uses
  %wide.trip.count.i162 = sext i32 %.val139 to i64 ; 2 uses
  %i.cn = sub nsw i64 %wide.trip.count.i162, %i.cm ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i161
  %n.vec = and i64 %i.cn, -8                      ; 3 uses
  %i.co = add nsw i64 %n.vec, %i.cm
  %invariant.gep = getelementptr [4 x i8], ptr %i.cl, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 -1000000000), ptr %gep, align 4, !tbaa !33
  store <4 x i32> splat (i32 -1000000000), ptr %i.cp, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %Vec_IntFillExtra.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i161, %middle.block
  %indvars.iv.i163.ph = phi i64 [ %i.cm, %.lr.ph.i161 ], [ %i.co, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %scalar.ph ], [ %indvars.iv.i163.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv.i163
  store i32 -1000000000, ptr %i.cr, align 4, !tbaa !33
  %indvars.iv.next.i164 = add nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %exitcond.not.i165 = icmp eq i64 %indvars.iv.next.i164, %wide.trip.count.i162
  br i1 %exitcond.not.i165, label %Vec_IntFillExtra.exit, label %scalar.ph, !llvm.loop !115

Vec_IntFillExtra.exit:                            ; preds = %scalar.ph, %middle.block, %Vec_IntGrow.exit.i
  store i32 %.val139, ptr %i.bn, align 4, !tbaa !38
  %.val128.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.val1316.i.pre = load i32, ptr %i.g, align 4, !tbaa !38
  %.pre252 = ptrtoint ptr %.val128.pre to i64
  %.pre253 = sub i64 %i.b, %.pre252
  %.pre255 = sdiv exact i64 %.pre253, 12
  %.pre257 = trunc i64 %.pre255 to i32
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_IntFillExtra.exit, %bb.r
  %.pre-phi258 = phi i32 [ %.pre257, %Vec_IntFillExtra.exit ], [ %i.f, %bb.r ]
  %.val1316.i = phi i32 [ %.val1316.i.pre, %Vec_IntFillExtra.exit ], [ %i.h, %bb.r ] ; 2 uses
  %i.cs = icmp sgt i32 %.val1316.i, 0
  br i1 %i.cs, label %.lr.ph.i171, label %.critedge.i

.lr.ph.i171:                                      ; preds = %bb.ae
  %i.ct = getelementptr i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ct, align 8, !tbaa !32
  %.val14.i = load ptr, ptr %i.bl, align 8, !tbaa !60
  %i.cu = getelementptr i8, ptr %.val14.i, i64 8
  %.val14.val.i = load ptr, ptr %i.cu, align 8, !tbaa !32
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i171
  %.val1319.i = phi i32 [ %.val1316.i, %.lr.ph.i171 ], [ %.val13.i, %bb.ah ]
  %indvars.iv.i172 = phi i64 [ 0, %.lr.ph.i171 ], [ %indvars.iv.next.i173, %bb.ah ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.i172
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !33
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val14.val.i, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !33
  %i.da = icmp slt i32 %i.cz, -999999999
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = trunc i64 %indvars.iv.i172 to i32
  %i.dc = sub i32 0, %i.db
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !33
  %.val13.pre.i = load i32, ptr %i.g, align 4, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.val13.i = phi i32 [ %.val1319.i, %bb.af ], [ %.val13.pre.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i173 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %i.dd = sext i32 %.val13.i to i64
  %i.de = icmp slt i64 %indvars.iv.next.i173, %i.dd
  br i1 %i.de, label %bb.af, label %.critedge.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.ah, %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !59 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 3 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !38
  %i.di = load i32, ptr %i.dg, align 8, !tbaa !39
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !32 ; 3 uses
  br i1 %i.dj, label %bb.ai, label %Gia_ObjCollectInternalCut.exit

bb.ai:                                            ; preds = %.critedge.i
  %.not9.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not9.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dl, i64 noundef 64) #26
  %.pre21.pre.i = load i32, ptr %i.dh, align 4, !tbaa !38
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ak, %bb.aj
  %.pre21.i = phi i32 [ %.pre21.pre.i, %bb.aj ], [ 0, %bb.ak ]
  %i.do = phi ptr [ %i.dm, %bb.aj ], [ %i.dn, %bb.ak ] ; 2 uses
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !32
  store i32 16, ptr %i.dg, align 8, !tbaa !39
  br label %Gia_ObjCollectInternalCut.exit

Gia_ObjCollectInternalCut.exit:                   ; preds = %.critedge.i, %Vec_IntGrow.exit11.sink.split.i.i
  %i.dp = phi i32 [ %.pre21.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ 0, %.critedge.i ] ; 2 uses
  %i.dq = phi ptr [ %i.do, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.dl, %.critedge.i ]
  %i.dr = add nsw i32 %i.dp, 1
  store i32 %i.dr, ptr %i.dh, align 4, !tbaa !38
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ds
  store i32 -1, ptr %i.dt, align 4, !tbaa !33
  tail call void @Gia_ObjCollectInternalCut_rec(ptr noundef nonnull %0, i32 noundef %.pre-phi258)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !61 ; 7 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 4      ; 3 uses
  %.val136 = load i32, ptr %i.dw, align 4, !tbaa !56 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !64
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %.val134 = load i32, ptr %i.ea, align 4, !tbaa !38 ; 2 uses
  %i.eb = add nsw i32 %.val134, 2
  %i.ec = mul nsw i32 %i.eb, %i.dy                ; 8 uses
  %i.ed = icmp slt i32 %.val136, %i.ec
  br i1 %i.ed, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %Gia_ObjCollectInternalCut.exit
  %i.ee = load i32, ptr %i.dv, align 8, !tbaa !57 ; 4 uses
  %i.ef = shl nsw i32 %i.ee, 1                    ; 2 uses
  %i.eg = icmp sgt i32 %i.ec, %i.ef
  %.not.i.i175 = icmp slt i32 %i.ee, %i.ec        ; 2 uses
  br i1 %i.eg, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.an, label %Vec_WrdGrow.exit.i176

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i185 = icmp eq ptr %i.ei, null
  %i.ej = sext i32 %i.ec to i64
  %i.ek = shl nsw i64 %i.ej, 3                    ; 2 uses
  br i1 %.not9.i.i185, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.el = tail call ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef %i.ek) #26
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.ek) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.en = phi ptr [ %i.el, %bb.ao ], [ %i.em, %bb.ap ]
  store ptr %i.en, ptr %i.eh, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i183

bb.ar:                                            ; preds = %bb.al
  br i1 %.not.i.i175, label %bb.as, label %Vec_WrdGrow.exit.i176

bb.as:                                            ; preds = %bb.ar
  %i.eo = icmp slt i32 %i.ee, 1073741823
  %spec.select.i180 = select i1 %i.eo, i32 %i.ef, i32 2147483647 ; 3 uses
  %.not.i22.i181 = icmp slt i32 %i.ee, %spec.select.i180
  br i1 %.not.i22.i181, label %bb.at, label %Vec_WrdGrow.exit.i176

bb.at:                                            ; preds = %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !46 ; 2 uses
  %.not9.i23.i182 = icmp eq ptr %i.eq, null
  %i.er = sext i32 %spec.select.i180 to i64
  %i.es = shl nuw nsw i64 %i.er, 3                ; 2 uses
  br i1 %.not9.i23.i182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = tail call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.es) #26
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ev = phi ptr [ %i.et, %bb.au ], [ %i.eu, %bb.av ]
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !46
  br label %Vec_WrdGrow.exit.sink.split.i183

Vec_WrdGrow.exit.sink.split.i183:                 ; preds = %bb.aw, %bb.aq
  %spec.select.sink.i184 = phi i32 [ %spec.select.i180, %bb.aw ], [ %i.ec, %bb.aq ]
  store i32 %spec.select.sink.i184, ptr %i.dv, align 8, !tbaa !57
  %.pre235 = load i32, ptr %i.dw, align 4, !tbaa !56
  br label %Vec_WrdGrow.exit.i176

Vec_WrdGrow.exit.i176:                            ; preds = %Vec_WrdGrow.exit.sink.split.i183, %bb.as, %bb.ar, %bb.am
  %i.ew = phi i32 [ %.pre235, %Vec_WrdGrow.exit.sink.split.i183 ], [ %.val136, %bb.as ], [ %.val136, %bb.ar ], [ %.val136, %bb.am ] ; 3 uses
  %i.ex = icmp slt i32 %i.ew, %i.ec
  br i1 %i.ex, label %.lr.ph.i178, label %Vec_WrdFillExtra.exit186

.lr.ph.i178:                                      ; preds = %Vec_WrdGrow.exit.i176
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  %i.fa = sext i32 %i.ew to i64
  %i.fb = shl nsw i64 %i.fa, 3
  %scevgep.i179 = getelementptr i8, ptr %i.ez, i64 %i.fb
  %i.fc = xor i32 %i.ew, -1
  %i.fd = add i32 %i.ec, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i179, i8 0, i64 %i.fg, i1 false), !tbaa !30
  br label %Vec_WrdFillExtra.exit186

Vec_WrdFillExtra.exit186:                         ; preds = %Vec_WrdGrow.exit.i176, %.lr.ph.i178
  store i32 %i.ec, ptr %i.dw, align 4, !tbaa !56
  %.pre236 = load ptr, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre236, i64 4
  %.val132.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !38
  %.pre238.pre = load ptr, ptr %i.du, align 8, !tbaa !61
  br label %bb.ax

bb.ax:                                            ; preds = %Vec_WrdFillExtra.exit186, %Gia_ObjCollectInternalCut.exit
  %.pre238 = phi ptr [ %.pre238.pre, %Vec_WrdFillExtra.exit186 ], [ %i.dv, %Gia_ObjCollectInternalCut.exit ] ; 2 uses
  %.val132 = phi i32 [ %.val132.pre, %Vec_WrdFillExtra.exit186 ], [ %.val134, %Gia_ObjCollectInternalCut.exit ] ; 3 uses
  %i.fh = phi ptr [ %.pre236, %Vec_WrdFillExtra.exit186 ], [ %i.dz, %Gia_ObjCollectInternalCut.exit ] ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4      ; 2 uses
  %i.fj = icmp sgt i32 %.val132, 1
  br i1 %i.fj, label %.lr.ph214, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.ax
  %.phi.trans.insert239 = getelementptr i8, ptr %.pre238, i64 8
  %.val.i187.pre = load ptr, ptr %.phi.trans.insert239, align 8, !tbaa !46
  %.pre241 = load i32, ptr %i.dx, align 4, !tbaa !64
  %.val4.i.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.val5.i.pre = load ptr, ptr %i.bl, align 8, !tbaa !60
  %.phi.trans.insert244 = getelementptr i8, ptr %.val5.i.pre, i64 8
  %.val5.val.i.pre = load ptr, ptr %.phi.trans.insert244, align 8, !tbaa !32
  br label %.critedge

.lr.ph214:                                        ; preds = %bb.ax
  %i.fk = getelementptr i8, ptr %i.fh, i64 8
  %.val127 = load ptr, ptr %i.fk, align 8, !tbaa !32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.val150 = load i32, ptr %i.dx, align 4, !tbaa !64 ; 8 uses
  %i.fl = getelementptr i8, ptr %.pre238, i64 8
  %.val151.val = load ptr, ptr %i.fl, align 8, !tbaa !46 ; 5 uses
  %.val151.val289 = ptrtoaddr ptr %.val151.val to i64 ; 13 uses
  %i.fm = sext i32 %.val150 to i64                ; 18 uses
  %.val153 = load ptr, ptr %i.bl, align 8, !tbaa !60
  %i.fn = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.fn, align 8, !tbaa !32 ; 3 uses
  %i.fo = getelementptr i8, ptr %0, i64 968       ; 2 uses
  %wide.trip.count = zext nneg i32 %.val132 to i64
  %.idx = shl nsw i64 %i.fm, 3                    ; 10 uses
  %i.fp = icmp sgt i32 %.val150, 0
  %i.fq = icmp sgt i32 %.val150, 0
  %i.fr = icmp sgt i32 %.val150, 0
  %i.fs = icmp sgt i32 %.val150, 0
  %i.ft = add i64 %.idx, %.val151.val289
  %i.fu = shl nsw i64 %i.fm, 3
  %i.fv = xor i64 %.val151.val289, -1
  %i.fw = sub i64 %i.fv, %.idx
  %i.fx = mul nsw i64 %i.fm, -8
  %i.fy = shl nsw i64 %i.fm, 4
  %i.fz = add i64 %i.fy, %.val151.val289
  %i.ga = shl nsw i64 %i.fm, 3
  %i.gb = add i64 %.idx, %.val151.val289          ; 2 uses
  %i.gc = add i64 %i.gb, 8
  %i.gd = shl nsw i64 %i.fm, 3
  %i.ge = xor i64 %.val151.val289, -1
  %i.gf = sub i64 %i.ge, %.idx
  %i.gg = mul nsw i64 %i.fm, -8
  %i.gh = shl nsw i64 %i.fm, 4
  %i.gi = add i64 %i.gh, %.val151.val289
  %i.gj = shl nsw i64 %i.fm, 3
  %i.gk = add i64 %.idx, %.val151.val289          ; 2 uses
  %i.gl = add i64 %i.gk, 8
  %i.gm = shl nsw i64 %i.fm, 3
  %i.gn = xor i64 %.val151.val289, -1
  %i.go = sub i64 %i.gn, %.idx
  %i.gp = mul nsw i64 %i.fm, -8
  %i.gq = shl nsw i64 %i.fm, 4
  %i.gr = add i64 %i.gq, %.val151.val289
  %i.gs = shl nsw i64 %i.fm, 3
  %i.gt = add i64 %.idx, %.val151.val289          ; 2 uses
  %i.gu = add i64 %i.gt, 8
  %i.gv = shl nsw i64 %i.fm, 3
  %i.gw = xor i64 %.val151.val289, -1
  %i.gx = sub i64 %i.gw, %.idx
  %i.gy = mul nsw i64 %i.fm, -8
  %i.gz = shl nsw i64 %i.fm, 4
  %i.ha = add i64 %i.gz, %.val151.val289
  %i.hb = shl nsw i64 %i.fm, 3
  %i.hc = add i64 %.idx, %.val151.val289
  %i.hd = add i64 %i.hc, 8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph214, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph214 ], [ %indvar.next, %.loopexit ] ; 13 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph214 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.he = mul i64 %i.gy, %indvar
  %i.hf = add i64 %i.gx, %i.he
  %i.hg = mul i64 %i.hb, %indvar                  ; 2 uses
  %i.hh = add i64 %i.ha, %i.hg
  %i.hi = add i64 %i.hd, %i.hg
  %i.hj = mul i64 %i.gv, %indvar
  %i.hk = add i64 %i.gt, %i.hj                    ; 2 uses
  %i.hl = mul i64 %i.gp, %indvar
  %i.hm = add i64 %i.go, %i.hl
  %i.hn = mul i64 %i.gs, %indvar                  ; 2 uses
  %i.ho = add i64 %i.gr, %i.hn
  %i.hp = add i64 %i.gu, %i.hn
  %i.hq = mul i64 %i.gm, %indvar
  %i.hr = add i64 %i.gk, %i.hq                    ; 2 uses
  %i.hs = mul i64 %i.gg, %indvar
  %i.ht = add i64 %i.gf, %i.hs
  %i.hu = mul i64 %i.gj, %indvar                  ; 2 uses
  %i.hv = add i64 %i.gi, %i.hu
  %i.hw = add i64 %i.gl, %i.hu
  %i.hx = mul i64 %i.gd, %indvar
  %i.hy = add i64 %i.gb, %i.hx                    ; 2 uses
  %i.hz = mul i64 %i.fx, %indvar
  %i.ia = add i64 %i.fw, %i.hz
  %i.ib = mul i64 %i.ga, %indvar                  ; 2 uses
  %i.ic = add i64 %i.fz, %i.ib
  %i.id = add i64 %i.gc, %i.ib
  %i.ie = mul i64 %i.fu, %indvar
  %i.if = add i64 %i.ft, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !33 ; 3 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.ii
  %i.ik = mul nsw i64 %indvars.iv, %i.fm
  %i.il = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.ik ; 17 uses
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 %.idx ; 4 uses
  %.val120 = load i64, ptr %i.ij, align 4         ; 3 uses
  %i.in = trunc i64 %.val120 to i32               ; 2 uses
  %i.io = and i32 %i.in, 536870911
  %i.ip = sub nsw i32 %i.ih, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %.val153.val, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !33 ; 3 uses
  %i.it = lshr i64 %.val120, 32
  %i.iu = trunc nuw i64 %i.it to i32
  %i.iv = and i32 %i.iu, 536870911
  %i.iw = sub nsw i32 %i.ih, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %.val153.val, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !33 ; 3 uses
  %i.ja = icmp sgt i32 %i.is, 0
  br i1 %i.ja, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jb = mul nsw i32 %i.is, %.val150
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %.val151.val, i64 %i.jc
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.je = sub nsw i32 0, %i.is
  %.val141 = load ptr, ptr %i.fo, align 8, !tbaa !82
  %i.jf = getelementptr i8, ptr %.val141, i64 8
  %.val141.val = load ptr, ptr %i.jf, align 8, !tbaa !74
  %i.jg = zext nneg i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.val141.val, i64 %i.jg
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !66
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jj = phi ptr [ %i.jd, %bb.az ], [ %i.ji, %bb.ba ] ; 17 uses
  %i.jk = ptrtoaddr ptr %i.jj to i64              ; 4 uses
  %i.jl = icmp sgt i32 %i.iz, 0
  br i1 %i.jl, label %bb.bc, label %bb.bd
end_hunk_1
begin_hunk_2_@Gia_ManIsoNpnReduce:bb.a
  %i.rh = icmp samesign ult i32 %i.qw, 1073741823
  %i.ri = shl nuw nsw i32 %i.qw, 1
  %spec.select.i.i = select i1 %i.rh, i32 %i.ri, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.qw, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.de, label %Vec_IntPush.exit.i

bb.de:                                            ; preds = %bb.dd
  %.not9.i10.i.i = icmp eq ptr %i.qv, null
  %i.rj = zext nneg i32 %spec.select.i.i to i64
  %i.rk = shl nuw nsw i64 %i.rj, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rl = call ptr @realloc(ptr noundef nonnull %i.qv, i64 noundef %i.rk) #26
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.dg:                                            ; preds = %bb.de
  %i.rm = call noalias ptr @malloc(i64 noundef %i.rk) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.dg, %bb.df, %bb.dc, %bb.db
  %storemerge.i = phi ptr [ %i.rg, %bb.dc ], [ %i.rf, %bb.db ], [ %i.rl, %bb.df ], [ %i.rm, %bb.dg ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.dc ], [ 16, %bb.db ], [ %spec.select.i.i, %bb.df ], [ %spec.select.i.i, %bb.dg ] ; 2 uses
  store ptr %storemerge.i, ptr %i.qs, align 8, !tbaa !32
  store i32 %spec.select.sink.i.i, ptr %i.ql, align 8, !tbaa !39
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.dd, %bb.cy
  %i.rn = phi ptr [ %i.qu, %bb.cy ], [ %i.qu, %bb.dd ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.ro = phi i32 [ %i.qw, %bb.cy ], [ %i.qw, %bb.dd ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.rp = add nsw i32 %i.qx, 1                    ; 2 uses
  store i32 %i.rp, ptr %i.qn, align 4, !tbaa !38
  %i.rq = sext i32 %i.qx to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.rq
  store i32 %i.rc, ptr %i.rr, align 4, !tbaa !33
  %.val10.pre.i = load i32, ptr %i.f, align 4, !tbaa !127
  br label %bb.dh

bb.dh:                                            ; preds = %Vec_IntPush.exit.i, %.lr.ph.i183
  %.val10.i = phi i32 [ %.val1016.i, %.lr.ph.i183 ], [ %.val10.pre.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val113.pr = phi ptr [ %i.qu, %.lr.ph.i183 ], [ %i.rn, %Vec_IntPush.exit.i ] ; 2 uses
  %i.rs = phi ptr [ %i.qv, %.lr.ph.i183 ], [ %i.rn, %Vec_IntPush.exit.i ]
  %i.rt = phi i32 [ %i.qw, %.lr.ph.i183 ], [ %i.ro, %Vec_IntPush.exit.i ]
  %i.ru = phi i32 [ %i.qx, %.lr.ph.i183 ], [ %i.rp, %Vec_IntPush.exit.i ]
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %i.rv = sext i32 %.val10.i to i64
  %i.rw = icmp slt i64 %indvars.iv.next.i185, %i.rv
  br i1 %i.rw, label %.lr.ph.i183, label %Vec_WecCollectFirsts.exitthread-pre-split, !llvm.loop !166

Vec_WecCollectFirsts.exitthread-pre-split:        ; preds = %bb.dh
  %.val99.pre = load i32, ptr %i.qn, align 4, !tbaa !38
  br label %Vec_WecCollectFirsts.exit

Vec_WecCollectFirsts.exit:                        ; preds = %Vec_WecCollectFirsts.exitthread-pre-split, %Vec_IntAlloc.exit.i182
  %.val99 = phi i32 [ %.val99.pre, %Vec_WecCollectFirsts.exitthread-pre-split ], [ 0, %Vec_IntAlloc.exit.i182 ]
  %.val113 = phi ptr [ %.val113.pr, %Vec_WecCollectFirsts.exitthread-pre-split ], [ %i.qr, %Vec_IntAlloc.exit.i182 ] ; 3 uses
  %i.rx = call ptr @Gia_ManDupCones(ptr noundef nonnull %0, ptr noundef %.val113, i32 noundef %.val99, i32 noundef 0) #24
  %.not.i186 = icmp eq ptr %.val113, null
  br i1 %.not.i186, label %Vec_IntFree.exit187, label %bb.di

bb.di:                                            ; preds = %Vec_WecCollectFirsts.exit
  call void @free(ptr noundef nonnull %.val113) #24
  br label %Vec_IntFree.exit187

Vec_IntFree.exit187:                              ; preds = %Vec_WecCollectFirsts.exit, %bb.di
  call void @free(ptr noundef nonnull %i.ql) #24
  %.not89 = icmp eq i32 %2, 0
  br i1 %.not89, label %Vec_WecPrint.exit, label %bb.dj

bb.dj:                                            ; preds = %Vec_IntFree.exit187
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.val1822.i = load i32, ptr %i.f, align 4, !tbaa !127 ; 2 uses
  %i.ry = icmp sgt i32 %.val1822.i, 0
  br i1 %i.ry, label %.lr.ph24.i.preheader, label %Vec_WecPrint.exit

.lr.ph24.i.preheader:                             ; preds = %bb.dj
  %.val19.i = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.rz = zext nneg i32 %.val1822.i to i64
  br label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.preheader, %bb.dm
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %bb.dm ], [ 0, %.lr.ph24.i.preheader ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %.val19.i, i64 %indvars.iv26.i ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 4      ; 3 uses
  %.val17.i = load i32, ptr %i.sb, align 4, !tbaa !38
  %i.sc = icmp eq i32 %.val17.i, 1
  br i1 %i.sc, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph24.i
  %i.sd = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.se = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.sd) ; 0 uses
  %.val1620.i = load i32, ptr %i.sb, align 4, !tbaa !38
  %i.sf = icmp sgt i32 %.val1620.i, 0
  br i1 %i.sf, label %.lr.ph.i188, label %.critedge2.i

.lr.ph.i188:                                      ; preds = %bb.dk
  %i.sg = getelementptr i8, ptr %i.sa, i64 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ 0, %.lr.ph.i188 ], [ %indvars.iv.next.i191, %bb.dl ] ; 2 uses
  %.val.i190 = load ptr, ptr %i.sg, align 8, !tbaa !32
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.val.i190, i64 %indvars.iv.i189
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !33
  %i.sj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.si) ; 0 uses
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i189, 1 ; 2 uses
  %.val16.i = load i32, ptr %i.sb, align 4, !tbaa !38
  %i.sk = sext i32 %.val16.i to i64
  %i.sl = icmp slt i64 %indvars.iv.next.i191, %i.sk
  br i1 %i.sl, label %bb.dl, label %.critedge2.i, !llvm.loop !167

.critedge2.i:                                     ; preds = %bb.dl, %bb.dk
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.critedge2.i, %.lr.ph24.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.sm = icmp samesign ult i64 %indvars.iv.next27.i, %i.rz
  br i1 %i.sm, label %.lr.ph24.i, label %Vec_WecPrint.exit, !llvm.loop !168

Vec_WecPrint.exit:                                ; preds = %bb.dm, %bb.dj, %Vec_IntFree.exit187
  %.not90 = icmp eq ptr %1, null
  br i1 %.not90, label %bb.dy, label %bb.dn

bb.dn:                                            ; preds = %Vec_WecPrint.exit
  %.val8.i192 = load i32, ptr %i.f, align 4, !tbaa !127 ; 3 uses
  %i.sn = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.so = add i32 %.val8.i192, -1
  %or.cond.i.i193 = icmp ult i32 %i.so, 7
  %spec.store.select.i.i194 = select i1 %or.cond.i.i193, i32 8, i32 %.val8.i192 ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 4 ; 2 uses
  store i32 0, ptr %i.sp, align 4, !tbaa !70
  store i32 %spec.store.select.i.i194, ptr %i.sn, align 8, !tbaa !73
  %.not.i.i195 = icmp eq i32 %spec.store.select.i.i194, 0
  br i1 %.not.i.i195, label %Vec_PtrAlloc.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sq = sext i32 %spec.store.select.i.i194 to i64
  %i.sr = shl nsw i64 %i.sq, 3
  %i.ss = call noalias ptr @malloc(i64 noundef %i.sr) #25
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.do, %bb.dn
  %.promoted16.i = phi ptr [ %i.ss, %bb.do ], [ null, %bb.dn ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.st, align 8, !tbaa !74
  %i.su = icmp sgt i32 %.val8.i192, 0
  br i1 %i.su, label %.lr.ph.i196, label %Vec_WecConvertToVecPtr.exit

.lr.ph.i196:                                      ; preds = %Vec_PtrAlloc.exit.i, %Vec_PtrPush.exit.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ], [ 0, %Vec_PtrAlloc.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %storemerge18.i, %Vec_PtrPush.exit.i ], [ %.promoted16.i, %Vec_PtrAlloc.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ], [ %spec.store.select.i.i194, %Vec_PtrAlloc.exit.i ] ; 4 uses
  %.val9.i198 = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %.val9.i198, i64 %indvars.iv19.i ; 2 uses
  %i.sw = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !38 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !38
  store i32 %i.sy, ptr %i.sw, align 8, !tbaa !39
  %.not.i10.i = icmp eq i32 %i.sy, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i196
  %i.ta = sext i32 %i.sy to i64
  %i.tb = shl nsw i64 %i.ta, 2                    ; 2 uses
  %i.tc = call noalias ptr @malloc(i64 noundef %i.tb) #25
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.dp, %.lr.ph.i196
  %.pre-phi12.i.i = phi i64 [ %i.tb, %bb.dp ], [ 0, %.lr.ph.i196 ]
  %i.td = phi ptr [ %i.tc, %bb.dp ], [ null, %.lr.ph.i196 ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr %i.td, ptr %i.te, align 8, !tbaa !32
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.td, ptr align 4 %i.tg, i64 %.pre-phi12.i.i, i1 false)
  %i.th = trunc nsw i64 %indvars.iv19.i to i32
  %i.ti = icmp eq i32 %spec.select.sink.i15.i, %i.th
  br i1 %i.ti, label %bb.dq, label %Vec_PtrPush.exit.i

bb.dq:                                            ; preds = %Vec_IntDup.exit.i
  %i.tj = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.tj, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %.not9.i.i.i202 = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i202, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tk = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #26
  br label %Vec_PtrPush.exit.i

bb.dt:                                            ; preds = %bb.dr
  %i.tl = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrPush.exit.i

bb.du:                                            ; preds = %bb.dq
  %i.tm = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.tn = shl nuw nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i201 = select i1 %i.tm, i32 %i.tn, i32 2147483647 ; 3 uses
  %3 = zext nneg i32 %spec.select.i.i201 to i64   ; 2 uses
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %3
  br i1 %.not.i10.i.i, label %bb.dv, label %Vec_PtrPush.exit.i

bb.dv:                                            ; preds = %bb.du
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.to = shl nuw nsw i64 %3, 3                   ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tp = call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.to) #26
  br label %Vec_PtrPush.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.tq = call noalias ptr @malloc(i64 noundef %i.to) #25
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dt, %bb.ds, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.du ], [ %i.tl, %bb.dt ], [ %i.tk, %bb.ds ], [ %i.tp, %bb.dw ], [ %i.tq, %bb.dx ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.du ], [ 16, %bb.dt ], [ 16, %bb.ds ], [ %spec.select.i.i201, %bb.dw ], [ %spec.select.i.i201, %bb.dx ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.sw, ptr %i.tr, align 8, !tbaa !66
  %.val.i200 = load i32, ptr %i.f, align 4, !tbaa !127
  %i.ts = sext i32 %.val.i200 to i64
  %i.tt = icmp slt i64 %indvars.iv.next20.i, %i.ts
  br i1 %i.tt, label %.lr.ph.i196, label %..critedge_crit_edge.i, !llvm.loop !169

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.tu = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.tu, ptr %i.sp, align 4, !tbaa !70
  store i32 %spec.select.sink.i14.i, ptr %i.sn, align 8
  store ptr %storemerge18.i, ptr %i.st, align 8
  br label %Vec_WecConvertToVecPtr.exit

Vec_WecConvertToVecPtr.exit:                      ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  store ptr %i.sn, ptr %1, align 8, !tbaa !110
  br label %bb.dy

bb.dy:                                            ; preds = %Vec_WecConvertToVecPtr.exit, %Vec_WecPrint.exit
  %i.tv = load i32, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  %.pre.i.i203 = load ptr, ptr %i.h, align 8, !tbaa !130 ; 4 uses
  br i1 %i.tw, label %.lr.ph.i.i205.preheader, label %._crit_edge.i.i

.lr.ph.i.i205.preheader:                          ; preds = %bb.dy
  %i.tx = zext nneg i32 %i.tv to i64
  br label %.lr.ph.i.i205

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.preheader, %bb.ea
  %indvars.iv.i.i206 = phi i64 [ %indvars.iv.next.i.i208, %bb.ea ], [ 0, %.lr.ph.i.i205.preheader ] ; 3 uses
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i203, i64 %indvars.iv.i.i206
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !32 ; 2 uses
  %.not15.i.i207 = icmp eq ptr %i.ua, null
  br i1 %.not15.i.i207, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i.i205
  call void @free(ptr noundef nonnull %i.ua) #24
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i203, i64 %indvars.iv.i.i206
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store ptr null, ptr %i.uc, align 8, !tbaa !32
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph.i.i205
  %indvars.iv.next.i.i208 = add nuw nsw i64 %indvars.iv.i.i206, 1 ; 2 uses
  %i.ud = icmp samesign ult i64 %indvars.iv.next.i.i208, %i.tx
  br i1 %i.ud, label %.lr.ph.i.i205, label %._crit_edge.thread.i.i, !llvm.loop !170

._crit_edge.i.i:                                  ; preds = %bb.dy
  %.not.i.i204 = icmp eq ptr %.pre.i.i203, null
  br i1 %.not.i.i204, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ea, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i203) #24
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.rx
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WecPush(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !127  ; 2 uses
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1                        ; 2 uses
  %i.d = shl nsw i32 %i.b, 1
  %i.e = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 %i.c) ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !129    ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.e
  br i1 %.not.i, label %bb.c, label %Vec_WecGrow.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130  ; 2 uses
  %.not13.i = icmp eq ptr %i.h, null
  %i.i = sext i32 %i.e to i64
  %i.j = shl nsw i64 %i.i, 4                      ; 2 uses
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #26
  %.pre.i = load i32, ptr %0, align 8, !tbaa !129
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !130
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = sub nsw i32 %i.e, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 %i.e, ptr %0, align 8, !tbaa !129
  br label %Vec_WecGrow.exit

Vec_WecGrow.exit:                                 ; preds = %bb.b, %bb.f
  store i32 %i.c, ptr %i.a, align 4, !tbaa !127
  br label %bb.g

bb.g:                                             ; preds = %Vec_WecGrow.exit, %bb.a
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 7 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !39
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ]
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i32 %i.x, 1073741823
  %i.ah = shl nuw nsw i32 %i.x, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.x, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aj, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef %i.al) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = phi ptr [ %i.am, %bb.n ], [ %i.an, %bb.o ]
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !32
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.v, align 8, !tbaa !39
  %.pre = load i32, ptr %i.w, align 4, !tbaa !38
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ap = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.l ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_2
