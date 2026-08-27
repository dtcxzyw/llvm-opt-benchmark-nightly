Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauTree?download=true
inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Dss_NtkCreate_rec:bb.a

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

.fold.split:                                      ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.fold.split, %bb.g, %bb.h
  %.063 = phi i32 [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 0, %.fold.split ] ; 2 uses
  %storemerge115 = getelementptr inbounds nuw i8, ptr %.pn114, i64 1 ; 2 uses
  store ptr %storemerge115, ptr %1, align 8, !tbaa !43
  %i.al = icmp ult ptr %storemerge115, %i.aj
  br i1 %i.al, label %.lr.ph.preheader, label %.split16.i.thread

.thread170:                                       ; preds = %bb.f
  %storemerge115172 = getelementptr inbounds nuw i8, ptr %.pn114, i64 1 ; 2 uses
  store ptr %storemerge115172, ptr %1, align 8, !tbaa !43
  %i.am = icmp ult ptr %storemerge115172, %i.aj
  br i1 %i.am, label %.lr.ph.preheader, label %.thread176

.thread176:                                       ; preds = %.thread170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  br label %.lr.ph18.preheader.i

.lr.ph.preheader:                                 ; preds = %.thread170, %bb.i
  %.063173 = phi i32 [ 6, %.thread170 ], [ %.063, %bb.i ]
  %i.an = phi i1 [ true, %.thread170 ], [ false, %bb.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Vec_IntPush.exit
  %i.ao = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %i.bc, %Vec_IntPush.exit ] ; 6 uses
  %i.ap = phi i32 [ 16, %.lr.ph.preheader ], [ %i.bd, %Vec_IntPush.exit ] ; 7 uses
  %i.aq = phi i32 [ 0, %.lr.ph.preheader ], [ %i.be, %Vec_IntPush.exit ] ; 5 uses
  %i.ar = tail call i32 @Dss_NtkCreate_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.as = icmp eq i32 %i.aq, %i.ap
  br i1 %i.as, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %.lr.ph
  %i.at = icmp slt i32 %i.ap, 16
  br i1 %i.at, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.aw = icmp samesign ult i32 %i.ap, 1073741823
  %i.ax = shl nuw nsw i32 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ap, %spec.select.i
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %i.ao, null
  %i.ay = zext nneg i32 %spec.select.i to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.az) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %storemerge107 = phi ptr [ %i.av, %bb.m ], [ %i.au, %bb.l ], [ %i.ba, %bb.p ], [ %i.bb, %bb.q ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ] ; 2 uses
  store ptr %storemerge107, ptr %i.ac, align 8, !tbaa !27
  store i32 %spec.select.sink.i, ptr %i.z, align 8, !tbaa !46
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.n, %Vec_IntGrow.exit11.sink.split.i
  %i.bc = phi ptr [ %i.ao, %.lr.ph ], [ %i.ao, %bb.n ], [ %storemerge107, %Vec_IntGrow.exit11.sink.split.i ] ; 7 uses
  %i.bd = phi i32 [ %i.ap, %.lr.ph ], [ %i.ap, %bb.n ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.be = add i32 %i.aq, 1                        ; 7 uses
  store i32 %i.be, ptr %i.aa, align 4, !tbaa !24
  %i.bf = zext nneg i32 %i.aq to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bf
  store i32 %i.ar, ptr %i.bg, align 4, !tbaa !28
  %.pn = load ptr, ptr %1, align 8, !tbaa !43
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  store ptr %storemerge, ptr %1, align 8, !tbaa !43
  %i.bh = icmp ult ptr %storemerge, %i.aj
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  br i1 %i.an, label %bb.r, label %.lr.ph.i96

.split16.i.thread:                                ; preds = %bb.i
  %i.bi = tail call ptr @Dss_ObjAllocNtk(ptr noundef %3, i32 noundef %.063, i32 noundef 0, i32 noundef 0)
  br label %Dss_ObjCreateNtk.exit103

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.bj = icmp ult i32 %i.aq, 6
  br i1 %i.bj, label %.lr.ph18.preheader.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.aq, -5                   ; 2 uses
  %i.bl = shl nuw i32 1, %i.bk
  %.not = icmp eq i32 %i.bk, 31
  br i1 %.not, label %Abc_TtCopy.exit, label %.lr.ph18.preheader.i

.lr.ph18.preheader.i:                             ; preds = %bb.r, %.thread176, %bb.s
  %i.bm = phi i32 [ %i.bl, %bb.s ], [ 1, %.thread176 ], [ 1, %bb.r ] ; 2 uses
  %.val160180190 = phi i32 [ %i.be, %bb.s ], [ 0, %.thread176 ], [ %i.be, %bb.r ]
  %.val75158182188 = phi ptr [ %i.bc, %bb.s ], [ %i.ab, %.thread176 ], [ %i.bc, %bb.r ]
  %wide.trip.count24.i = zext nneg i32 %i.bm to i64
  %i.bn = shl nuw nsw i64 %wide.trip.count24.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.bn, i1 false), !tbaa !36
  %i.bo = zext nneg i32 %i.bm to i64
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph18.preheader.i, %bb.s
  %i.bp = phi i1 [ true, %.lr.ph18.preheader.i ], [ false, %bb.s ]
  %wide.trip.count24.i87 = phi i64 [ %i.bo, %.lr.ph18.preheader.i ], [ 2147483648, %bb.s ] ; 6 uses
  %.val160180189 = phi i32 [ %.val160180190, %.lr.ph18.preheader.i ], [ %i.be, %bb.s ] ; 6 uses
  %.val75158182187 = phi ptr [ %.val75158182188, %.lr.ph18.preheader.i ], [ %i.bc, %bb.s ]
  %i.bq = call i32 @Abc_TtCanonicize(ptr noundef nonnull %i.a, i32 noundef %.val160180189, ptr noundef nonnull %i.c) #32 ; 2 uses
  %i.br = lshr i32 %i.bq, %.val160180189
  %i.bs = and i32 %i.br, 1
  %i.bt = add nsw i32 %.val160180189, -1
  %or.cond.i = icmp ult i32 %i.bt, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val160180189 ; 3 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.t

bb.t:                                             ; preds = %Abc_TtCopy.exit
  %i.bu = sext i32 %spec.store.select.i to i64
  %i.bv = shl nsw i64 %i.bu, 2
  %i.bw = call noalias ptr @malloc(i64 noundef %i.bv) #30
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Abc_TtCopy.exit, %bb.t
  %.promoted124 = phi ptr [ %i.bw, %bb.t ], [ null, %Abc_TtCopy.exit ] ; 2 uses
  %i.bx = icmp sgt i32 %.val160180189, 0
  br i1 %i.bx, label %.lr.ph117, label %.thread

.thread:                                          ; preds = %Vec_IntAlloc.exit
  %i.by = call ptr @Dss_ObjAllocNtk(ptr noundef %3, i32 noundef 6, i32 noundef 0, i32 noundef 0) ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.pre142 = load i32, ptr %.phi.trans.insert, align 4
  br label %Dss_ObjCreateNtk.exit

.lr.ph117:                                        ; preds = %Vec_IntAlloc.exit
  %wide.trip.count = zext nneg i32 %.val160180189 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph117, %Vec_IntPush.exit85
  %indvars.iv130 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next131, %Vec_IntPush.exit85 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next, %Vec_IntPush.exit85 ] ; 7 uses
  %storemerge106125 = phi ptr [ %.promoted124, %.lr.ph117 ], [ %storemerge106126, %Vec_IntPush.exit85 ] ; 6 uses
  %spec.select.sink.i82123 = phi i32 [ %spec.store.select.i, %.lr.ph117 ], [ %spec.select.sink.i82122, %Vec_IntPush.exit85 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv130
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %.val75158182187, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = trunc nuw nsw i64 %indvars.iv130 to i32
  %i.cf = lshr i32 %i.bq, %i.ce
  %i.cg = and i32 %i.cf, 1
  %i.ch = xor i32 %i.cd, %i.cg
  %i.ci = trunc nsw i64 %indvars.iv to i32
  %i.cj = icmp eq i32 %spec.select.sink.i82123, %i.ci
  br i1 %i.cj, label %bb.v, label %Vec_IntPush.exit85

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ck, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.not9.i.i83 = icmp eq ptr %storemerge106125, null
  br i1 %.not9.i.i83, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge106125, i64 noundef 64) #29
  br label %Vec_IntPush.exit85

bb.y:                                             ; preds = %bb.w
  %i.cm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntPush.exit85

bb.z:                                             ; preds = %bb.v
  %i.cn = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.co = shl i32 %indvars.iv.tr, 1
  %spec.select.i78 = select i1 %i.cn, i32 %i.co, i32 2147483647 ; 4 uses
  %i.cp = sext i32 %spec.select.i78 to i64
  %.not.i9.i79 = icmp samesign ult i64 %indvars.iv, %i.cp
  br i1 %.not.i9.i79, label %bb.aa, label %Vec_IntPush.exit85

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i80 = icmp eq ptr %storemerge106125, null
  %i.cq = zext nneg i32 %spec.select.i78 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  br i1 %.not9.i10.i80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = call ptr @realloc(ptr noundef nonnull %storemerge106125, i64 noundef %i.cr) #29
  br label %Vec_IntPush.exit85

bb.ac:                                            ; preds = %bb.aa
  %i.ct = call noalias ptr @malloc(i64 noundef %i.cr) #30
  br label %Vec_IntPush.exit85

Vec_IntPush.exit85:                               ; preds = %bb.y, %bb.x, %bb.ac, %bb.ab, %bb.u, %bb.z
  %storemerge106126 = phi ptr [ %storemerge106125, %bb.u ], [ %storemerge106125, %bb.z ], [ %i.cm, %bb.y ], [ %i.cl, %bb.x ], [ %i.cs, %bb.ab ], [ %i.ct, %bb.ac ] ; 4 uses
  %spec.select.sink.i82122 = phi i32 [ %spec.select.sink.i82123, %bb.u ], [ %spec.select.sink.i82123, %bb.z ], [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i78, %bb.ab ], [ %spec.select.i78, %bb.ac ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %storemerge106126, i64 %indvars.iv
  store i32 %i.ch, ptr %i.cu, align 4, !tbaa !28
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count
  br i1 %exitcond135.not, label %.lr.ph.i, label %bb.u, !llvm.loop !48

.lr.ph.i:                                         ; preds = %Vec_IntPush.exit85
  %i.cv = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cw = call ptr @Dss_ObjAllocNtk(ptr noundef %3, i32 noundef 6, i32 noundef %i.cv, i32 noundef %i.cv) ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %.pre.i = load i32, ptr %i.cz, align 4
  %i.da = and i64 %indvars.iv.next, 4294967295
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.db = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.dr, %bb.ad ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ad ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %storemerge106126, i64 %indvars.iv.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !28 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !28
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !15
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %.val21.i = load ptr, ptr %i.dg, align 8, !tbaa !22
  %i.dh = ashr i32 %i.dd, 1
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %.val21.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 2040
  %i.do = add i32 %i.dn, %i.db
  %i.dp = and i32 %i.do, 2040
  %i.dq = and i32 %i.db, -2041
  %i.dr = or disjoint i32 %i.dp, %i.dq            ; 3 uses
  store i32 %i.dr, ptr %i.cz, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next.i, %i.da
  br i1 %exitcond136.not, label %Dss_ObjCreateNtk.exit, label %bb.ad, !llvm.loop !29

Dss_ObjCreateNtk.exit:                            ; preds = %bb.ad, %.thread
  %i.ds = phi ptr [ %i.by, %.thread ], [ %i.cw, %bb.ad ] ; 3 uses
  %i.dt = phi ptr [ %.promoted124, %.thread ], [ %storemerge106126, %bb.ad ] ; 2 uses
  %i.du = phi i32 [ %.pre142, %.thread ], [ %i.dr, %bb.ad ]
  %i.dv = ptrtoaddr ptr %i.ds to i64
  %i.dw = lshr i32 %i.du, 19
  %i.dx = and i32 %i.dw, 63
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy ; 6 uses
  br i1 %i.bp, label %.lr.ph18.preheader.i86, label %Abc_TtCopy.exit92

.lr.ph18.preheader.i86:                           ; preds = %Dss_ObjCreateNtk.exit
  %min.iters.check = icmp samesign ult i64 %wide.trip.count24.i87, 14
  br i1 %min.iters.check, label %.lr.ph18.i88.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph18.preheader.i86
  %i.ea = shl nuw nsw i64 %i.dy, 3
  %i.eb = add i64 %i.ea, %i.dv
  %i.ec = sub i64 %i.b, %i.eb
  %diff.check = icmp ugt i64 %i.ec, -32
  br i1 %diff.check, label %.lr.ph18.i88.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count24.i87, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <2 x i64>, ptr %i.ed, align 16, !tbaa !36
  %wide.load202 = load <2 x i64>, ptr %i.ee, align 16, !tbaa !36
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x i64> %wide.load, ptr %i.ef, align 8, !tbaa !36
  store <2 x i64> %wide.load202, ptr %i.eg, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count24.i87, %n.vec
  br i1 %cmp.n, label %Abc_TtCopy.exit92, label %.lr.ph18.i88.preheader

.lr.ph18.i88.preheader:                           ; preds = %vector.memcheck, %.lr.ph18.preheader.i86, %middle.block
  %indvars.iv21.i89.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18.preheader.i86 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count24.i87, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i88.prol.loopexit, label %.lr.ph18.i88.prol

.lr.ph18.i88.prol:                                ; preds = %.lr.ph18.i88.preheader, %.lr.ph18.i88.prol
  %indvars.iv21.i89.prol = phi i64 [ %indvars.iv.next22.i90.prol, %.lr.ph18.i88.prol ], [ %indvars.iv21.i89.ph, %.lr.ph18.i88.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i88.prol ], [ 0, %.lr.ph18.i88.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i89.prol
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !36
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv21.i89.prol
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !36
  %indvars.iv.next22.i90.prol = add nuw nsw i64 %indvars.iv21.i89.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i88.prol.loopexit, label %.lr.ph18.i88.prol, !llvm.loop !52

.lr.ph18.i88.prol.loopexit:                       ; preds = %.lr.ph18.i88.prol, %.lr.ph18.i88.preheader
  %indvars.iv21.i89.unr = phi i64 [ %indvars.iv21.i89.ph, %.lr.ph18.i88.preheader ], [ %indvars.iv.next22.i90.prol, %.lr.ph18.i88.prol ]
  %i.el = sub nsw i64 %indvars.iv21.i89.ph, %wide.trip.count24.i87
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %Abc_TtCopy.exit92, label %.lr.ph18.i88

.lr.ph18.i88:                                     ; preds = %.lr.ph18.i88.prol.loopexit, %.lr.ph18.i88
  %indvars.iv21.i89 = phi i64 [ %indvars.iv.next22.i90.3, %.lr.ph18.i88 ], [ %indvars.iv21.i89.unr, %.lr.ph18.i88.prol.loopexit ] ; 6 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i89
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !36
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv21.i89
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !36
  %indvars.iv.next22.i90 = add nuw nsw i64 %indvars.iv21.i89, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i90
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next22.i90
  store i64 %i.er, ptr %i.es, align 8, !tbaa !36
  %indvars.iv.next22.i90.1 = add nuw nsw i64 %indvars.iv21.i89, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i90.1
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next22.i90.1
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !36
  %indvars.iv.next22.i90.2 = add nuw nsw i64 %indvars.iv21.i89, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i90.2
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !36
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next22.i90.2
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !36
  %indvars.iv.next22.i90.3 = add nuw nsw i64 %indvars.iv21.i89, 4 ; 2 uses
  %exitcond25.not.i91.3 = icmp eq i64 %indvars.iv.next22.i90.3, %wide.trip.count24.i87
  br i1 %exitcond25.not.i91.3, label %Abc_TtCopy.exit92, label %.lr.ph18.i88, !llvm.loop !54

Abc_TtCopy.exit92:                                ; preds = %.lr.ph18.i88.prol.loopexit, %.lr.ph18.i88, %middle.block, %Dss_ObjCreateNtk.exit
  %.not.i93 = icmp eq ptr %i.dt, null
  br i1 %.not.i93, label %Vec_IntFree.exit, label %bb.ae

bb.ae:                                            ; preds = %Abc_TtCopy.exit92
  call void @free(ptr noundef nonnull %i.dt) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Abc_TtCopy.exit92, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.pre143 = load ptr, ptr %i.ac, align 8, !tbaa !27
  br label %Dss_ObjCreateNtk.exit103

.lr.ph.i96:                                       ; preds = %._crit_edge
  %i.ez = tail call ptr @Dss_ObjAllocNtk(ptr noundef %3, i32 noundef %.063173, i32 noundef %i.be, i32 noundef 0) ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 2 uses
  %.pre.i97 = load i32, ptr %i.fc, align 4
  %i.fd = zext nneg i32 %i.be to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i96
  %i.fe = phi i32 [ %.pre.i97, %.lr.ph.i96 ], [ %i.fu, %bb.af ] ; 2 uses
  %indvars.iv.i98 = phi i64 [ 0, %.lr.ph.i96 ], [ %indvars.iv.next.i101, %bb.af ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i98
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !28 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv.i98
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !28
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !15
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %.val21.i100 = load ptr, ptr %i.fj, align 8, !tbaa !22
  %i.fk = ashr i32 %i.fg, 1
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %.val21.i100, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !23
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = and i32 %i.fp, 2040
  %i.fr = add i32 %i.fq, %i.fe
  %i.fs = and i32 %i.fr, 2040
end_hunk_0
begin_hunk_1_@Dss_ManOperation:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i

bb.af:                                            ; preds = %bb.ab
  %i.nd = icmp samesign ult i32 %i.mu, 1073741823
  %i.ne = shl nuw nsw i32 %i.mu, 1
  %spec.select.i217 = select i1 %i.nd, i32 %i.ne, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.mu, %spec.select.i217
  br i1 %.not.i9.i, label %bb.ag, label %Vec_IntPush.exit

bb.ag:                                            ; preds = %bb.af
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ng, null
  %i.nh = zext nneg i32 %spec.select.i217 to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nj = tail call ptr @realloc(ptr noundef nonnull %i.ng, i64 noundef %i.ni) #29
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.nk = tail call noalias ptr @malloc(i64 noundef %i.ni) #30
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.nl = phi ptr [ %i.nj, %bb.ah ], [ %i.nk, %bb.ai ]
  store ptr %i.nl, ptr %i.nf, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aj, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i217, %bb.aj ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.mi, align 8, !tbaa !46
  %.pre371 = load i32, ptr %i.mt, align 4, !tbaa !24
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph287, %bb.af, %Vec_IntGrow.exit11.sink.split.i
  %i.nm = phi i32 [ %i.mu, %.lr.ph287 ], [ %i.mu, %bb.af ], [ %.pre371, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !27
  %i.np = add nsw i32 %i.nm, 1
  store i32 %i.np, ptr %i.mt, align 4, !tbaa !24
  %i.nq = sext i32 %i.nm to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.nq
  store i32 %i.ms, ptr %i.nr, align 4, !tbaa !28
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %._crit_edge288.loopexit, label %.lr.ph287, !llvm.loop !168

._crit_edge288.loopexit:                          ; preds = %Vec_IntPush.exit
  %.pre372 = load ptr, ptr %i.mh, align 8, !tbaa !103
  br label %._crit_edge288

._crit_edge288:                                   ; preds = %Dss_ObjSort.exit197.thread, %._crit_edge288.loopexit, %Dss_ObjSort.exit197
  %.2150402 = phi i32 [ %.2150409, %._crit_edge288.loopexit ], [ %.2150, %Dss_ObjSort.exit197 ], [ %.2150.ph, %Dss_ObjSort.exit197.thread ]
  %i.ns = phi ptr [ %.pre372, %._crit_edge288.loopexit ], [ %i.me, %Dss_ObjSort.exit197 ], [ %i.la, %Dss_ObjSort.exit197.thread ] ; 2 uses
  %i.nt = tail call ptr @Dss_ObjHashLookup(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef readonly %i.ns, ptr noundef readonly %5) ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !28 ; 2 uses
  %.not.i = icmp eq i32 %i.nu, 0
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !70 ; 2 uses
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge288
  %i.nx = getelementptr i8, ptr %i.nw, i64 8
  %.val15.i = load ptr, ptr %i.nx, align 8, !tbaa !22
  %i.ny = sext i32 %i.nu to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %.val15.i, i64 %i.ny
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !23
  br label %Dss_ObjFindOrAdd.exit

bb.al:                                            ; preds = %._crit_edge288
  %i.ob = getelementptr i8, ptr %i.nw, i64 4
  %.val.i = load i32, ptr %i.ob, align 4, !tbaa !16
  store i32 %.val.i, ptr %i.nt, align 4, !tbaa !28
  %i.oc = tail call ptr @Dss_ObjCreate(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef readonly %i.ns, ptr noundef readonly %5)
  br label %Dss_ObjFindOrAdd.exit

Dss_ObjFindOrAdd.exit:                            ; preds = %bb.ak, %bb.al
  %.0.i = phi ptr [ %i.oa, %bb.ak ], [ %i.oc, %bb.al ]
  %i.od = load i32, ptr %.0.i, align 4, !tbaa !19
  %i.oe = shl nsw i32 %i.od, 1
  %i.of = add nuw nsw i32 %i.oe, %.2150402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 %i.of
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @Dss_ManOperationFun(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @Dss_ManOperation(ptr noundef %0, i32 noundef 3, ptr noundef %1, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Dss_ManOperationFun.Buffer, i64 4), ptr noundef null)
  %i.b = and i32 %i.a, 67108863
  %i.c = shl i32 %2, 26
  %i.d = or disjoint i32 %i.b, %i.c
  store i32 %i.d, ptr @Dss_ManOperationFun.Buffer, align 16
  ret ptr @Dss_ManOperationFun.Buffer
}

; Function Attrs: nofree nounwind uwtable
define void @Dss_EntPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 134217727
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i32 %i.f, 134217727
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.d, i32 noundef %i.g) ; 0 uses
  %i.i = load i64, ptr %i.a, align 8
  %.not = icmp ult i64 %i.i, 576460752303423488
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !40
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.n, i32 noundef %i.q) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i64, ptr %i.a, align 8
  %i.t = lshr i64 %i.s, 59
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.v = load i32, ptr %1, align 4
  %i.w = and i32 %i.v, 67108863
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.w) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Dss_ManBooleanAnd(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 19 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [2000 x i8], align 16             ; 4 uses
  %i.d = alloca [12 x i32], align 16              ; 10 uses
  %i.e = alloca [12 x i32], align 16              ; 15 uses
  %i.f = alloca [12 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 134217727                  ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %.val72 = load ptr, ptr %i.m, align 8, !tbaa !22 ; 2 uses
  %i.n = lshr i32 %i.l, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val72, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = lshr i32 %i.s, 3
  %i.u = and i32 %i.t, 255                        ; 9 uses
  %sum.shift = lshr i64 %i.j, 33
  %i.v = and i64 %sum.shift, 67108863
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val72, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, 3                        ; 3 uses
  %i.ab = and i32 %i.aa, 255                      ; 3 uses
  %.not88 = icmp eq i32 %i.u, 0
  br i1 %.not88, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next122, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %vec.ind, ptr %i.ac, align 16, !tbaa !28
  store <4 x i32> %step.add, ptr %i.ad, align 16, !tbaa !28
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.af = shl <4 x i32> %vec.ind120, splat (i32 1)
  %step.add121 = shl <4 x i32> %vec.ind120, splat (i32 1)
  %i.ag = add <4 x i32> %step.add121, splat (i32 8)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %i.af, ptr %i.ae, align 16, !tbaa !28
  store <4 x i32> %i.ag, ptr %i.ah, align 16, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next122 = add <4 x i32> %vec.ind120, splat (i32 8)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader153

.lr.ph.preheader153:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader153, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader153 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.am = shl i32 %indvars.iv.tr, 1
  store i32 %i.am, ptr %i.al, align 4, !tbaa !28
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.an = load i32, ptr %0, align 8, !tbaa !101
  %i.ao = call ptr @Dss_ManComputeTruth(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.an, ptr noundef nonnull %i.e) ; 7 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !101   ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 7
  %i.ar = add nsw i32 %i.ap, -6
  %i.as = shl nuw i32 1, %i.ar
  %i.at = select i1 %i.aq, i32 1, i32 %i.as       ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %._crit_edge
  %i.av = ptrtoaddr ptr %i.ao to i64
  %wide.trip.count24.i = zext nneg i32 %i.at to i64 ; 3 uses
  %min.iters.check124 = icmp ult i32 %i.at, 8
  %i.aw = sub i64 %i.av, %i.b
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond150 = select i1 %min.iters.check124, i1 true, i1 %diff.check
  br i1 %or.cond150, label %.lr.ph18.i.preheader, label %vector.ph125

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i
  %xtraiter = and i64 %wide.trip.count24.i, 3     ; 3 uses
  %i.ax = icmp ult i32 %i.at, 4
  br i1 %i.ax, label %.lr.ph18.i.epil.preheader, label %.lr.ph18.i.preheader.new

.lr.ph18.i.preheader.new:                         ; preds = %.lr.ph18.i.preheader
  %unroll_iter = and i64 %wide.trip.count24.i, 2147483644
  br label %.lr.ph18.i

vector.ph125:                                     ; preds = %.lr.ph18.preheader.i
  %n.vec126 = and i64 %wide.trip.count24.i, 2147483644
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !36
  %wide.load129 = load <2 x i64>, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load, ptr %i.ba, align 16, !tbaa !36
  store <2 x i64> %wide.load129, ptr %i.bb, align 16, !tbaa !36
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next130, %n.vec126
  br i1 %i.bc, label %Abc_TtCopy.exit, label %vector.body127, !llvm.loop !172

.lr.ph18.i:                                       ; preds = %.lr.ph18.i, %.lr.ph18.i.preheader.new
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph18.i.preheader.new ], [ %indvars.iv.next22.i.3, %.lr.ph18.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.i.preheader.new ], [ %niter.next.3, %.lr.ph18.i ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv21.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !36
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i
  store i64 %i.be, ptr %i.bf, align 16, !tbaa !36
  %indvars.iv.next22.i = or disjoint i64 %indvars.iv21.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next22.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !36
  %indvars.iv.next22.i.1 = or disjoint i64 %indvars.iv21.i, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next22.i.1
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.1
  store i64 %i.bk, ptr %i.bl, align 16, !tbaa !36
  %indvars.iv.next22.i.2 = or disjoint i64 %indvars.iv21.i, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next22.i.2
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.2
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !36
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph18.i, !llvm.loop !173

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph18.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TtCopy.exit, label %.lr.ph18.i.epil.preheader

.lr.ph18.i.epil.preheader:                        ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.preheader
  %indvars.iv21.i.epil.init = phi i64 [ 0, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph18.i.epil

.lr.ph18.i.epil:                                  ; preds = %.lr.ph18.i.epil, %.lr.ph18.i.epil.preheader
  %indvars.iv21.i.epil = phi i64 [ %indvars.iv.next22.i.epil, %.lr.ph18.i.epil ], [ %indvars.iv21.i.epil.init, %.lr.ph18.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph18.i.epil ], [ 0, %.lr.ph18.i.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv21.i.epil
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i.epil
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %indvars.iv.next22.i.epil = add nuw nsw i64 %indvars.iv21.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph18.i.epil, !llvm.loop !174

Abc_TtCopy.exit:                                  ; preds = %vector.body127, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.epil, %._crit_edge
  %.not89 = icmp eq i32 %i.ab, 0                  ; 2 uses
  br i1 %.not89, label %.preheader73, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %Abc_TtCopy.exit
  %i.bs = shl nuw nsw i32 %i.aa, 2
  %i.bt = and i32 %i.bs, 1020
  %i.bu = zext nneg i32 %i.bt to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 -1, i64 %i.bu, i1 false), !tbaa !28
  br label %.preheader73

.preheader73:                                     ; preds = %.lr.ph77.preheader, %Abc_TtCopy.exit
  %i.bv = load i64, ptr %i.i, align 8             ; 3 uses
  %i.bw = lshr i64 %i.bv, 59                      ; 3 uses
  %.not90 = icmp eq i64 %i.bw, 0
  br i1 %.not90, label %.preheader, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader73
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %xtraiter155 = and i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp ult i64 %i.bv, 2305843009213693952
  br i1 %i.by, label %.epil.preheader, label %.lr.ph79.new

.lr.ph79.new:                                     ; preds = %.lr.ph79
  %unroll_iter159 = and i64 %i.bw, 28
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph79
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next100.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.epil.preheader ], [ %indvars.iv.next100.epil, %bb.b ] ; 2 uses
  %epil.iter156 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter156.next, %bb.b ]
  %i.bz = shl nuw nsw i64 %indvars.iv99.epil, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !40
  %i.cd = zext i8 %i.cc to i32
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !40
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf
  store i32 %i.cd, ptr %i.cg, align 4, !tbaa !28
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %.preheader, label %bb.b, !llvm.loop !175

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.preheader73
  br i1 %.not89, label %._crit_edge84, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %.preheader
  %wide.trip.count107 = zext nneg i32 %i.ab to i64 ; 2 uses
  %xtraiter161 = and i64 %wide.trip.count107, 1
  %i.ch = icmp eq i32 %i.ab, 1
  br i1 %i.ch, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter166 = and i64 %wide.trip.count107, 254
  br label %.lr.ph83

bb.c:                                             ; preds = %bb.c, %.lr.ph79.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph79.new ], [ %indvars.iv.next100.3, %bb.c ] ; 5 uses
  %niter160 = phi i64 [ 0, %.lr.ph79.new ], [ %niter160.next.3, %bb.c ]
  %i.ci = shl nuw nsw i64 %indvars.iv99, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !40
  %i.cm = zext i8 %i.cl to i32
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !40
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.co
  store i32 %i.cm, ptr %i.cp, align 4, !tbaa !28
  %indvars.iv.next100 = shl nuw i64 %indvars.iv99, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next100 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !40
  %i.cu = zext i8 %i.ct to i32
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !40
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cw
  store i32 %i.cu, ptr %i.cx, align 4, !tbaa !28
  %indvars.iv.next100.1 = shl nuw i64 %indvars.iv99, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next100.1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 5
  %i.db = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dc = zext i8 %i.db to i32
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !40
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.de
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !28
  %indvars.iv.next100.2 = shl nuw i64 %indvars.iv99, 1
end_hunk_1
begin_hunk_2_@Dss_ManBooleanAnd:bb.a
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.gw = trunc i64 %i.gq to i32
  %i.gx = and i32 %i.gw, 1
  br label %Dss_NtkRebuild.exit

bb.j:                                             ; preds = %bb.h
  %i.gy = trunc i64 %i.gq to i32
  %i.gz = and i32 %i.gy, 1
  %i.ha = lshr i32 %i.gu, 10
  %i.hb = and i32 %i.ha, 510
  %i.hc = add nuw nsw i32 %i.hb, 2
  %i.hd = or disjoint i32 %i.hc, %i.gz
  br label %Dss_NtkRebuild.exit

bb.k:                                             ; preds = %bb.h
  %i.he = call i32 @Dss_NtkRebuild_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.gn, ptr noundef %i.gp)
  br label %Dss_NtkRebuild.exit

Dss_NtkRebuild.exit:                              ; preds = %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.gx, %bb.i ], [ %i.hd, %bb.j ], [ %i.he, %bb.k ]
  %i.hf = load i32, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.hg = and i32 %.0.i, 67108863
  %i.hh = and i32 %i.hf, -67108864
  %i.hi = or disjoint i32 %i.hh, %i.hg
  store i32 %i.hi, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !15 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.l

bb.l:                                             ; preds = %Dss_NtkRebuild.exit
  call void @free(ptr noundef nonnull %i.hm) #32
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.l, %Dss_NtkRebuild.exit
  call void @free(ptr noundef nonnull %i.hk) #32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq ptr %i.ho, null
  br i1 %.not.i, label %Dss_NtkFree.exit, label %bb.m

bb.m:                                             ; preds = %Vec_PtrFree.exit.i
  call void @free(ptr noundef nonnull %i.ho) #32
  br label %Dss_NtkFree.exit

Dss_NtkFree.exit:                                 ; preds = %Vec_PtrFree.exit.i, %bb.m
  call void @free(ptr noundef nonnull %i.gn) #32
  %i.hp = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.hq = load i32, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.hr = and i32 %i.hq, 67108863                 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hp, i64 8
  %.val = load ptr, ptr %i.hs, align 8, !tbaa !22
  %i.ht = lshr i32 %i.hr, 1
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !23
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = shl i32 %i.hy, 23                       ; 2 uses
  %i.ia = and i32 %i.hz, -67108864
  %i.ib = or disjoint i32 %i.ia, %i.hr
  store i32 %i.ib, ptr @Dss_ManBooleanAnd.Buffer, align 16
  %i.ic = lshr i32 %i.hz, 26                      ; 4 uses
  %.not92 = icmp eq i32 %i.ic, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %Dss_NtkFree.exit
  %wide.trip.count112 = zext nneg i32 %i.ic to i64 ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count112, 1
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter178 = and i64 %wide.trip.count112, 62
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next110.1, %.lr.ph87 ] ; 4 uses
  %niter179 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter179.next.1, %.lr.ph87 ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv109
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !28 ; 2 uses
  %i.ig = ashr i32 %i.if, 1
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !28
  %i.ik = and i32 %i.if, 1
  %i.il = shl nsw i32 %i.ij, 1
  %i.im = or disjoint i32 %i.il, %i.ik
  %i.in = trunc i32 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109
  store i8 %i.in, ptr %i.io, align 2, !tbaa !40
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next110
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !28 ; 2 uses
  %i.ir = ashr i32 %i.iq, 1
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !28
  %i.iv = and i32 %i.iq, 1
  %i.iw = shl nsw i32 %i.iu, 1
  %i.ix = or disjoint i32 %i.iw, %i.iv
  %i.iy = trunc i32 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv.next110
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !40
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %niter179.next.1 = add i64 %niter179, 2         ; 2 uses
  %niter179.ncmp.1 = icmp eq i64 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph87, !llvm.loop !186

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph87
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %.loopexit, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv109.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next110.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod177 = trunc i32 %i.ic to i1
  call void @llvm.assume(i1 %lcmp.mod177)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv109.epil.init
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !28 ; 2 uses
  %i.jc = ashr i32 %i.jb, 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !28
  %i.jg = and i32 %i.jb, 1
  %i.jh = shl nsw i32 %i.jf, 1
  %i.ji = or disjoint i32 %i.jh, %i.jg
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManBooleanAnd.Buffer, i64 4), i64 %indvars.iv109.epil.init
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph87.epil.preheader, %.loopexit.loopexit.unr-lcssa, %Dss_NtkFree.exit, %Abc_TtAnd.exit
  %.066 = phi ptr [ null, %Abc_TtAnd.exit ], [ @Dss_ManBooleanAnd.Buffer, %Dss_NtkFree.exit ], [ @Dss_ManBooleanAnd.Buffer, %.loopexit.loopexit.unr-lcssa ], [ @Dss_ManBooleanAnd.Buffer, %.lr.ph87.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret ptr %.066
}

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @Dss_ManSharedMap(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !28
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.d = and i32 %i.b, 134217727
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i64 %i.c, -134217728
  %i.g = or disjoint i64 %i.f, %i.e               ; 2 uses
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = and i32 %i.i, 134217727
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 32
  %i.m = and i64 %i.g, 4294967295
  %i.n = or disjoint i64 %i.l, %i.m               ; 4 uses
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.a, align 16
  %i.o = load i32, ptr %2, align 4, !tbaa !28     ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %3, align 8, !tbaa !187    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %i.o, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod46 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %i.u = and i32 %i.t, 1
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil.init to i32
  %i.v = shl i32 %indvars.iv.tr.epil, 1
  %i.w = or disjoint i32 %i.u, %i.v
  %i.x = ashr i32 %i.t, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph37, label %._crit_edge

.lr.ph37:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = and i32 %i.af, 1
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ah = shl i32 %indvars.iv.tr, 1
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = ashr i32 %i.af, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ak
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !28
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28 ; 2 uses
  %i.ao = and i32 %i.an, 1
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.ap = shl i32 %indvars.iv.tr.1, 1
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = ashr i32 %i.an, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !188

bb.d:                                             ; preds = %.lr.ph37, %bb.f
  %i.au = phi i32 [ %i.ab, %.lr.ph37 ], [ %i.bu, %bb.f ]
  %i.av = phi i64 [ %i.n, %.lr.ph37 ], [ %i.bv, %bb.f ] ; 4 uses
  %indvars.iv39 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next40, %bb.f ] ; 4 uses
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !187
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv39
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = ashr i32 %i.ay, 1                       ; 2 uses
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = and i32 %i.ba, %4
  %.not33 = icmp eq i32 %i.bb, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = trunc i64 %indvars.iv39 to i8
  %sh.diff = lshr i64 %i.av, 58                   ; 2 uses
  %i.bd = and i64 %sh.diff, 62
  %i.be = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !40
  %i.bf = sext i32 %i.az to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !187
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv39
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !28
  %i.bl = and i32 %i.bk, 1
  %i.bm = xor i32 %i.bl, %i.bh
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = or i64 %sh.diff, 1
  %i.bp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 24), i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !40
  %i.bq = and i64 %i.av, -576460752303423488
  %i.br = add i64 %i.bq, 576460752303423488
  %i.bs = and i64 %i.av, 576460752303423487
  %i.bt = or disjoint i64 %i.br, %i.bs            ; 2 uses
  store i64 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bu = phi i32 [ %i.au, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.bv = phi i64 [ %i.av, %bb.d ], [ %i.bt, %bb.e ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bw = sext i32 %i.bu to i64
  %i.bx = icmp slt i64 %indvars.iv.next40, %i.bw
  br i1 %i.bx, label %bb.d, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %Dss_ManSharedMap.Buffer.val42 = phi i64 [ %i.n, %.preheader ], [ %i.bv, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  %Dss_ManSharedMap.Buffer.val = phi i64 [ %Dss_ManSharedMap.Buffer.val42, %._crit_edge ], [ %i.n, %bb.a ] ; 3 uses
  %i.by = lshr i64 %Dss_ManSharedMap.Buffer.val, 61
  %i.bz = add nuw nsw i64 %i.by, 3
  %i.ca = and i64 %Dss_ManSharedMap.Buffer.val, 1729382256910270464
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bz, %i.cc
  %i.ce = shl nuw nsw i64 %i.cd, 27
  %i.cf = and i64 %Dss_ManSharedMap.Buffer.val, -4160749569
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @Dss_ManSharedMap.Buffer, i64 16), align 16
  ret ptr @Dss_ManSharedMap.Buffer
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define i32 @Dss_ManMerge(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #8 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [12 x i32], align 16              ; 5 uses
  %i.b = load i32, ptr @Dss_ManMerge.Counter, align 4, !tbaa !28
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @Dss_ManMerge.Counter, align 4, !tbaa !28
  %i.d = icmp sgt i32 %5, 12
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef 12, i32 noundef %5) ; 0 uses
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !28     ; 3 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %bb.ah
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 2 uses
  switch i32 %i.j, label %bb.g [
    i32 0, label %bb.ah
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.k = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #32
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Abc_Clock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %16, align 8, !tbaa !121
  %.neg145 = mul i64 %i.m, -1000000
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !123
  %.neg = sdiv i64 %i.o, -1000
  %.neg146 = add i64 %.neg, %.neg145
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i.neg = phi i64 [ %.neg146, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.p = call ptr @Dss_ManSharedMap(ptr poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.q = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #32
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %Abc_Clock.exit125, label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit
  %i.s = load i64, ptr %15, align 8, !tbaa !121
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !123
  %i.w = sdiv i64 %i.v, 1000
  %i.x = add nsw i64 %i.w, %i.t
  br label %Abc_Clock.exit125

Abc_Clock.exit125:                                ; preds = %Abc_Clock.exit, %bb.i
  %.0.i124 = phi i64 [ %i.x, %bb.i ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.y = add i64 %.0.i124, %.0.i.neg
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !108
  %i.ab = add nsw i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %Abc_Clock.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %14) #32
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %Abc_Clock.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %14, align 8, !tbaa !121
  %.neg154 = mul i64 %i.ah, -1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !123
  %.neg153 = sdiv i64 %i.aj, -1000
  %.neg155 = add i64 %.neg153, %.neg154
  br label %Abc_Clock.exit127

Abc_Clock.exit127:                                ; preds = %bb.j, %bb.k
  %.0.i126.neg = phi i64 [ %.neg155, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.ak = icmp eq i32 %4, 0
  br i1 %i.ak, label %.thread, label %bb.l

.thread:                                          ; preds = %Abc_Clock.exit127
  %i.al = load i32, ptr %2, align 4, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = add nsw i32 %i.an, %i.al
  %i.ap = call i32 @Dss_ManOperation(ptr noundef nonnull readonly %0, i32 noundef 3, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Dss_ManOperationFun.Buffer, i64 4), ptr noundef null)
  %i.aq = and i32 %i.ap, 67108863
end_hunk_2
