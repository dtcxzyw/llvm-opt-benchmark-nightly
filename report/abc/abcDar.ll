Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDar?download=true
inline.NumInlined: 929
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_NtkToDarBmc:bb.a
  %.promoted224 = phi i32 [ 100, %.lr.ph238 ], [ %.promoted224297, %.critedge4 ] ; 5 uses
  %.promoted227 = phi ptr [ %i.u, %.lr.ph238 ], [ %i.ew, %.critedge4 ] ; 5 uses
  %i.ad = phi ptr [ %i.u, %.lr.ph238 ], [ %i.ex, %.critedge4 ] ; 5 uses
  %i.ae = phi i32 [ 100, %.lr.ph238 ], [ %i.ey, %.critedge4 ] ; 8 uses
  %.promoted = phi i32 [ 0, %.lr.ph238 ], [ %i.ez, %.critedge4 ] ; 5 uses
  %indvars.iv274 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next275, %.critedge4 ] ; 5 uses
  %.val152237 = phi ptr [ %.val152232, %.lr.ph238 ], [ %.val152, %.critedge4 ]
  %i.af = getelementptr i8, ptr %.val152237, i64 8
  %.val153.val = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val153.val, i64 %indvars.iv274
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 3 uses
  %i.ai = load i32, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %.not130 = icmp eq i32 %i.ai, 0
  %i.aj = sext i32 %i.ai to i64
  %.not131 = icmp slt i64 %indvars.iv274, %i.aj
  %or.cond = or i1 %.not130, %.not131
  %.val.i171 = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.ak = getelementptr i8, ptr %i.ah, i64 32
  %.val2.i172 = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.al = getelementptr i8, ptr %.val.i171, i64 32
  %.val.val.i173 = load ptr, ptr %i.al, align 8, !tbaa !24
  %.val2.val.i174 = load i32, ptr %.val2.i172, align 4, !tbaa !38
  %i.am = getelementptr i8, ptr %.val.val.i173, i64 8
  %.val.val.val.i175 = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.an = sext i32 %.val2.val.i174 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val.val.val.i175, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = getelementptr i8, ptr %i.ah, i64 20
  %.val3.i176 = load i32, ptr %i.aq, align 4
  %i.ar = lshr i32 %.val3.i176, 10
  %i.as = and i32 %i.ar, 1
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = zext nneg i32 %i.as to i64
  %i.av = xor i64 %i.au, %i.at                    ; 2 uses
  br i1 %or.cond, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = xor i64 %i.av, 1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = icmp eq i32 %.promoted, %i.ae
  br i1 %i.ay, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %i.az = icmp slt i32 %i.ae, 16
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 128) #21
  br label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit

bb.n:                                             ; preds = %bb.j
  %i.bc = icmp samesign ult i32 %i.ae, 1073741823
  %i.bd = shl nuw nsw i32 %i.ae, 1
  %spec.select.i = select i1 %i.bc, i32 %i.bd, i32 2147483647 ; 6 uses
  %.not.i10.i = icmp samesign ult i32 %i.ae, %spec.select.i
  br i1 %.not.i10.i, label %bb.o, label %Vec_PtrPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i11.i = icmp eq ptr %i.ad, null
  %i.be = zext nneg i32 %spec.select.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.bf) #21
  br label %Vec_PtrPush.exit

bb.q:                                             ; preds = %bb.o
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bf) #22
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.m, %bb.l, %bb.q, %bb.p, %bb.i, %bb.n
  %.promoted224295 = phi i32 [ %.promoted224, %bb.i ], [ %.promoted224, %bb.n ], [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ] ; 2 uses
  %i.bi = phi ptr [ %.promoted227, %bb.i ], [ %.promoted227, %bb.n ], [ %i.bb, %bb.m ], [ %i.ba, %bb.l ], [ %i.bg, %bb.p ], [ %i.bh, %bb.q ] ; 5 uses
  %i.bj = phi i32 [ %i.ae, %bb.i ], [ %i.ae, %bb.n ], [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ] ; 2 uses
  %i.bk = add nsw i32 %.promoted, 1               ; 2 uses
  %i.bl = sext i32 %.promoted to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bl
  store ptr %i.ax, ptr %i.bm, align 8, !tbaa !21
  br i1 %.not124, label %.critedge4, label %bb.r

bb.r:                                             ; preds = %Vec_PtrPush.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !47    ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !44 ; 7 uses
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !45
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp slt i32 %i.bp, 16
  br i1 %i.bs, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i170 = icmp eq ptr %i.bu, null
  br i1 %.not9.i.i170, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.v, %bb.u
  %i.bx = phi ptr [ %i.bv, %bb.u ], [ %i.bw, %bb.v ]
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !46
  br label %Vec_IntGrow.exit11.sink.split.i

bb.w:                                             ; preds = %bb.s
  %i.by = icmp samesign ult i32 %i.bp, 1073741823
  %i.bz = shl nuw nsw i32 %i.bp, 1
  %spec.select.i168 = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bp, %spec.select.i168
  br i1 %.not.i9.i, label %bb.x, label %Vec_IntPush.exit

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.cb, null
  %i.cc = zext nneg i32 %spec.select.i168 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = tail call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.cd) #21
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.cd) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = phi ptr [ %i.ce, %bb.y ], [ %i.cf, %bb.z ]
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !46
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aa, %Vec_IntGrow.exit.i
  %spec.select.sink.i169 = phi i32 [ %spec.select.i168, %bb.aa ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i169, ptr %i.bn, align 8, !tbaa !45
  %.pre294 = load i32, ptr %i.bo, align 4, !tbaa !44
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.r, %bb.w, %Vec_IntGrow.exit11.sink.split.i
  %i.ch = phi i32 [ %i.bp, %bb.r ], [ %i.bp, %bb.w ], [ %.pre294, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !46
  %i.ck = add nsw i32 %i.ch, 1
  store i32 %i.ck, ptr %i.bo, align 4, !tbaa !44
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = trunc nuw nsw i64 %indvars.iv274 to i32
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !38
  br label %.critedge4

bb.ab:                                            ; preds = %bb.h
  %i.co = inttoptr i64 %i.av to ptr
  tail call void @Abc_CollectTopOr(ptr noundef %i.co, ptr noundef nonnull %i.q)
  %.val140 = load i32, ptr %i.r, align 4, !tbaa !16 ; 2 uses
  %i.cp = icmp sgt i32 %.val140, 0
  br i1 %i.cp, label %.lr.ph223, label %.critedge4

.lr.ph223:                                        ; preds = %bb.ab
  %.val143 = load ptr, ptr %i.t, align 8, !tbaa !20 ; 2 uses
  %i.cq = sext i32 %.promoted to i64              ; 2 uses
  %wide.trip.count272 = zext nneg i32 %.val140 to i64 ; 2 uses
  br i1 %.not124, label %.lr.ph223.split.us, label %.lr.ph223.split.preheader

.lr.ph223.split.preheader:                        ; preds = %.lr.ph223
  %i.cr = trunc nuw nsw i64 %indvars.iv274 to i32
  br label %.lr.ph223.split

.lr.ph223.split.us:                               ; preds = %.lr.ph223, %Vec_PtrPush.exit184.us
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %Vec_PtrPush.exit184.us ], [ 0, %.lr.ph223 ] ; 2 uses
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %Vec_PtrPush.exit184.us ], [ %i.cq, %.lr.ph223 ] ; 7 uses
  %storemerge216228.us = phi ptr [ %storemerge216229.us, %Vec_PtrPush.exit184.us ], [ %.promoted227, %.lr.ph223 ] ; 6 uses
  %spec.select.sink.i181226.us = phi i32 [ %spec.select.sink.i181225.us, %Vec_PtrPush.exit184.us ], [ %.promoted224, %.lr.ph223 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val143, i64 %indvars.iv267
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !21
  %i.cu = trunc nsw i64 %indvars.iv265 to i32
  %i.cv = icmp eq i32 %spec.select.sink.i181226.us, %i.cu
  br i1 %i.cv, label %bb.ac, label %Vec_PtrPush.exit184.us

bb.ac:                                            ; preds = %.lr.ph223.split.us
  %i.cw = icmp slt i64 %indvars.iv265, 16
  br i1 %i.cw, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = icmp samesign ult i64 %indvars.iv265, 1073741823
  %indvars.iv265.tr = trunc nsw i64 %indvars.iv265 to i32
  %i.cy = shl nsw i32 %indvars.iv265.tr, 1
  %spec.select.i177.us = select i1 %i.cx, i32 %i.cy, i32 2147483647 ; 4 uses
  %i.cz = sext i32 %spec.select.i177.us to i64
  %.not.i10.i178.us = icmp samesign ult i64 %indvars.iv265, %i.cz
  br i1 %.not.i10.i178.us, label %bb.ae, label %Vec_PtrPush.exit184.us

bb.ae:                                            ; preds = %bb.ad
  %.not9.i11.i179.us = icmp eq ptr %storemerge216228.us, null
  %i.da = zext nneg i32 %spec.select.i177.us to i64
  %i.db = shl nuw nsw i64 %i.da, 3                ; 2 uses
  br i1 %.not9.i11.i179.us, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %storemerge216228.us, i64 noundef %i.db) #21
  br label %Vec_PtrPush.exit184.us

bb.ag:                                            ; preds = %bb.ae
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #22
  br label %Vec_PtrPush.exit184.us

bb.ah:                                            ; preds = %bb.ac
  %.not9.i.i182.us = icmp eq ptr %storemerge216228.us, null
  br i1 %.not9.i.i182.us, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge216228.us, i64 noundef 128) #21
  br label %Vec_PtrPush.exit184.us

bb.aj:                                            ; preds = %bb.ah
  %i.df = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit184.us

Vec_PtrPush.exit184.us:                           ; preds = %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ad, %.lr.ph223.split.us
  %storemerge216229.us = phi ptr [ %storemerge216228.us, %.lr.ph223.split.us ], [ %storemerge216228.us, %bb.ad ], [ %i.df, %bb.aj ], [ %i.de, %bb.ai ], [ %i.dc, %bb.af ], [ %i.dd, %bb.ag ] ; 3 uses
  %spec.select.sink.i181225.us = phi i32 [ %spec.select.sink.i181226.us, %.lr.ph223.split.us ], [ %spec.select.sink.i181226.us, %bb.ad ], [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i177.us, %bb.af ], [ %spec.select.i177.us, %bb.ag ] ; 2 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %storemerge216229.us, i64 %indvars.iv265
  store ptr %i.ct, ptr %i.dg, align 8, !tbaa !21
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count272
  br i1 %exitcond273.not, label %..critedge4.loopexit_crit_edge, label %.lr.ph223.split.us, !llvm.loop !50

.lr.ph223.split:                                  ; preds = %.lr.ph223.split.preheader, %Vec_IntPush.exit192
  %indvars.iv260 = phi i64 [ 0, %.lr.ph223.split.preheader ], [ %indvars.iv.next261, %Vec_IntPush.exit192 ] ; 2 uses
  %indvars.iv258 = phi i64 [ %i.cq, %.lr.ph223.split.preheader ], [ %indvars.iv.next259, %Vec_IntPush.exit192 ] ; 7 uses
  %storemerge216228 = phi ptr [ %.promoted227, %.lr.ph223.split.preheader ], [ %storemerge216229, %Vec_IntPush.exit192 ] ; 6 uses
  %spec.select.sink.i181226 = phi i32 [ %.promoted224, %.lr.ph223.split.preheader ], [ %spec.select.sink.i181225, %Vec_IntPush.exit192 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val143, i64 %indvars.iv260
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !21
  %i.dj = trunc nsw i64 %indvars.iv258 to i32
  %i.dk = icmp eq i32 %spec.select.sink.i181226, %i.dj
  br i1 %i.dk, label %bb.ak, label %Vec_PtrPush.exit184

bb.ak:                                            ; preds = %.lr.ph223.split
  %i.dl = icmp slt i64 %indvars.iv258, 16
  br i1 %i.dl, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i182 = icmp eq ptr %storemerge216228, null
  br i1 %.not9.i.i182, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge216228, i64 noundef 128) #21
  br label %Vec_PtrPush.exit184

bb.an:                                            ; preds = %bb.al
  %i.dn = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit184

bb.ao:                                            ; preds = %bb.ak
  %i.do = icmp samesign ult i64 %indvars.iv258, 1073741823
  %indvars.iv258.tr = trunc nsw i64 %indvars.iv258 to i32
  %i.dp = shl nsw i32 %indvars.iv258.tr, 1
  %spec.select.i177 = select i1 %i.do, i32 %i.dp, i32 2147483647 ; 4 uses
  %i.dq = sext i32 %spec.select.i177 to i64
  %.not.i10.i178 = icmp samesign ult i64 %indvars.iv258, %i.dq
  br i1 %.not.i10.i178, label %bb.ap, label %Vec_PtrPush.exit184

bb.ap:                                            ; preds = %bb.ao
  %.not9.i11.i179 = icmp eq ptr %storemerge216228, null
  %i.dr = zext nneg i32 %spec.select.i177 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3                ; 2 uses
  br i1 %.not9.i11.i179, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dt = tail call ptr @realloc(ptr noundef nonnull %storemerge216228, i64 noundef %i.ds) #21
  br label %Vec_PtrPush.exit184

bb.ar:                                            ; preds = %bb.ap
  %i.du = tail call noalias ptr @malloc(i64 noundef %i.ds) #22
  br label %Vec_PtrPush.exit184

Vec_PtrPush.exit184:                              ; preds = %bb.an, %bb.am, %bb.ar, %bb.aq, %.lr.ph223.split, %bb.ao
  %storemerge216229 = phi ptr [ %storemerge216228, %.lr.ph223.split ], [ %storemerge216228, %bb.ao ], [ %i.dn, %bb.an ], [ %i.dm, %bb.am ], [ %i.dt, %bb.aq ], [ %i.du, %bb.ar ] ; 3 uses
  %spec.select.sink.i181225 = phi i32 [ %spec.select.sink.i181226, %.lr.ph223.split ], [ %spec.select.sink.i181226, %bb.ao ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i177, %bb.aq ], [ %spec.select.i177, %bb.ar ] ; 2 uses
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %storemerge216229, i64 %indvars.iv258
  store ptr %i.di, ptr %i.dv, align 8, !tbaa !21
  %i.dw = load ptr, ptr %1, align 8, !tbaa !47    ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44 ; 7 uses
  %i.dz = load i32, ptr %i.dw, align 8, !tbaa !45
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.as, label %Vec_IntPush.exit192

bb.as:                                            ; preds = %Vec_PtrPush.exit184
  %i.eb = icmp slt i32 %i.dy, 16
  br i1 %i.eb, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  %.not9.i.i190 = icmp eq ptr %i.ed, null
  br i1 %.not9.i.i190, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ee = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ed, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i191

bb.av:                                            ; preds = %bb.at
  %i.ef = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i191

Vec_IntGrow.exit.i191:                            ; preds = %bb.av, %bb.au
  %i.eg = phi ptr [ %i.ee, %bb.au ], [ %i.ef, %bb.av ]
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !46
  br label %Vec_IntGrow.exit11.sink.split.i188

bb.aw:                                            ; preds = %bb.as
  %i.eh = icmp samesign ult i32 %i.dy, 1073741823
  %i.ei = shl nuw nsw i32 %i.dy, 1
  %spec.select.i185 = select i1 %i.eh, i32 %i.ei, i32 2147483647 ; 3 uses
  %.not.i9.i186 = icmp samesign ult i32 %i.dy, %spec.select.i185
  br i1 %.not.i9.i186, label %bb.ax, label %Vec_IntPush.exit192

bb.ax:                                            ; preds = %bb.aw
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46 ; 2 uses
  %.not9.i10.i187 = icmp eq ptr %i.ek, null
  %i.el = zext nneg i32 %spec.select.i185 to i64
  %i.em = shl nuw nsw i64 %i.el, 2                ; 2 uses
  br i1 %.not9.i10.i187, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.en = tail call ptr @realloc(ptr noundef nonnull %i.ek, i64 noundef %i.em) #21
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.eo = tail call noalias ptr @malloc(i64 noundef %i.em) #22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ep = phi ptr [ %i.en, %bb.ay ], [ %i.eo, %bb.az ]
  store ptr %i.ep, ptr %i.ej, align 8, !tbaa !46
  br label %Vec_IntGrow.exit11.sink.split.i188

Vec_IntGrow.exit11.sink.split.i188:               ; preds = %bb.ba, %Vec_IntGrow.exit.i191
  %spec.select.sink.i189 = phi i32 [ %spec.select.i185, %bb.ba ], [ 16, %Vec_IntGrow.exit.i191 ]
  store i32 %spec.select.sink.i189, ptr %i.dw, align 8, !tbaa !45
  %.pre298 = load i32, ptr %i.dx, align 4, !tbaa !44
  br label %Vec_IntPush.exit192

Vec_IntPush.exit192:                              ; preds = %Vec_PtrPush.exit184, %bb.aw, %Vec_IntGrow.exit11.sink.split.i188
  %i.eq = phi i32 [ %i.dy, %Vec_PtrPush.exit184 ], [ %i.dy, %bb.aw ], [ %.pre298, %Vec_IntGrow.exit11.sink.split.i188 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !46
  %i.et = add nsw i32 %i.eq, 1
  store i32 %i.et, ptr %i.dx, align 4, !tbaa !44
  %i.eu = sext i32 %i.eq to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.eu
  store i32 %i.cr, ptr %i.ev, align 4, !tbaa !38
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next261, %wide.trip.count272
  br i1 %exitcond.not, label %..critedge4.loopexit_crit_edge, label %.lr.ph223.split, !llvm.loop !50

..critedge4.loopexit_crit_edge:                   ; preds = %Vec_IntPush.exit192, %Vec_PtrPush.exit184.us
  %.us-phi = phi ptr [ %storemerge216229.us, %Vec_PtrPush.exit184.us ], [ %storemerge216229, %Vec_IntPush.exit192 ] ; 2 uses
  %.us-phi230 = phi i32 [ %spec.select.sink.i181225.us, %Vec_PtrPush.exit184.us ], [ %spec.select.sink.i181225, %Vec_IntPush.exit192 ] ; 2 uses
  %.us-phi231.in = phi i64 [ %indvars.iv.next266, %Vec_PtrPush.exit184.us ], [ %indvars.iv.next259, %Vec_IntPush.exit192 ]
  %.us-phi231 = trunc i64 %.us-phi231.in to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ab, %..critedge4.loopexit_crit_edge, %Vec_PtrPush.exit, %Vec_IntPush.exit
  %.promoted224297 = phi i32 [ %.promoted224, %bb.ab ], [ %.us-phi230, %..critedge4.loopexit_crit_edge ], [ %.promoted224295, %Vec_PtrPush.exit ], [ %.promoted224295, %Vec_IntPush.exit ]
  %i.ew = phi ptr [ %.promoted227, %bb.ab ], [ %.us-phi, %..critedge4.loopexit_crit_edge ], [ %i.bi, %Vec_PtrPush.exit ], [ %i.bi, %Vec_IntPush.exit ] ; 2 uses
  %i.ex = phi ptr [ %i.ad, %bb.ab ], [ %.us-phi, %..critedge4.loopexit_crit_edge ], [ %i.bi, %Vec_PtrPush.exit ], [ %i.bi, %Vec_IntPush.exit ]
  %i.ey = phi i32 [ %i.ae, %bb.ab ], [ %.us-phi230, %..critedge4.loopexit_crit_edge ], [ %i.bj, %Vec_PtrPush.exit ], [ %i.bj, %Vec_IntPush.exit ]
  %i.ez = phi i32 [ %.promoted, %bb.ab ], [ %.us-phi231, %..critedge4.loopexit_crit_edge ], [ %i.bk, %Vec_PtrPush.exit ], [ %i.bk, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %.val152 = load ptr, ptr %i.z, align 8, !tbaa !48 ; 2 uses
  %i.fa = getelementptr i8, ptr %.val152, i64 4
  %.val152.val = load i32, ptr %i.fa, align 4, !tbaa !16
  %i.fb = sext i32 %.val152.val to i64
  %i.fc = icmp slt i64 %indvars.iv.next275, %i.fb
  br i1 %i.fc, label %bb.h, label %.critedge2.loopexit, !llvm.loop !51

.critedge2.loopexit:                              ; preds = %.critedge4
  %.pre299 = load ptr, ptr %i.t, align 8, !tbaa !20
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.g
  %i.fd = phi ptr [ %i.ew, %.critedge2.loopexit ], [ %i.u, %bb.g ] ; 3 uses
  %.val137 = phi i32 [ %i.ez, %.critedge2.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.fe = phi ptr [ %.pre299, %.critedge2.loopexit ], [ %i.s, %bb.g ] ; 2 uses
  %.not.i = icmp eq ptr %i.fe, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.bb

bb.bb:                                            ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.fe) #23
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %bb.bb
  tail call void @free(ptr noundef nonnull %i.q) #23
  %i.ff = getelementptr i8, ptr %0, i64 124
  %.val154 = load i32, ptr %i.ff, align 4, !tbaa !38
  %i.fg = add nsw i32 %.val154, 100
  %i.fh = tail call ptr @Aig_ManStart(i32 noundef %i.fg) #23 ; 13 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 120
  %i.fk = load <2 x i32>, ptr %i.fi, align 8, !tbaa !38
  store <2 x i32> %i.fk, ptr %i.fj, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52
  %i.fn = tail call ptr @Extra_UtilStrsav(ptr noundef %i.fm) #23
  store ptr %i.fn, ptr %i.fh, align 8, !tbaa !53
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !62
  %i.fq = tail call ptr @Extra_UtilStrsav(ptr noundef %i.fp) #23
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !63
  %i.fs = getelementptr i8, ptr %i.fh, i64 48
  %.val155 = load ptr, ptr %i.fs, align 8, !tbaa !64
  %i.ft = tail call ptr @Abc_AigConst1(ptr noundef nonnull %0) #23
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  store ptr %.val155, ptr %i.fu, align 8, !tbaa !42
  %i.fv = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.val156239 = load ptr, ptr %i.fv, align 8, !tbaa !65 ; 2 uses
  %i.fw = getelementptr i8, ptr %.val156239, i64 4
  %.val156.val240 = load i32, ptr %i.fw, align 4, !tbaa !16
  %i.fx = icmp sgt i32 %.val156.val240, 0
  br i1 %i.fx, label %.lr.ph243, label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.lr.ph243, %Vec_PtrFree.exit
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %.val139244 = load i32, ptr %i.fz, align 4, !tbaa !16
  %i.ga = icmp sgt i32 %.val139244, 0
  br i1 %i.ga, label %.lr.ph246, label %.critedge8.preheader

.lr.ph243:                                        ; preds = %Vec_PtrFree.exit, %.lr.ph243
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph243 ], [ 0, %Vec_PtrFree.exit ] ; 2 uses
  %.val156242 = phi ptr [ %.val156, %.lr.ph243 ], [ %.val156239, %Vec_PtrFree.exit ]
  %i.gb = getelementptr i8, ptr %.val156242, i64 8
  %.val157.val = load ptr, ptr %i.gb, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val157.val, i64 %indvars.iv277
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.ge = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.fh) #23
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !42
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %.val156 = load ptr, ptr %i.fv, align 8, !tbaa !65 ; 2 uses
  %i.gg = getelementptr i8, ptr %.val156, i64 4
  %.val156.val = load i32, ptr %i.gg, align 4, !tbaa !16
  %i.gh = sext i32 %.val156.val to i64
  %i.gi = icmp slt i64 %indvars.iv.next278, %i.gh
  br i1 %i.gi, label %.lr.ph243, label %.critedge6.preheader, !llvm.loop !66

.critedge8.preheader:                             ; preds = %.critedge6, %.critedge6.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !24 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 4
  %.val138247 = load i32, ptr %i.gl, align 4, !tbaa !16
  %i.gm = icmp sgt i32 %.val138247, 0
end_hunk_0
begin_hunk_1_@Abc_NtkToDar:bb.a
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21
  %i.gl = getelementptr i8, ptr %i.gk, i64 64
  %.val162 = load ptr, ptr %i.gl, align 8, !tbaa !42
  %.not202 = icmp eq ptr %.val162, inttoptr (i64 2 to ptr)
  br i1 %.not202, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.val142 = load ptr, ptr %i.gb, align 8, !tbaa !20
  %i.gm = getelementptr inbounds [8 x i8], ptr %.val142, i64 %indvars.iv254
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !21
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !92
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = xor i64 %i.gq, 1
  %i.gs = inttoptr i64 %i.gr to ptr
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next255 = add nsw i64 %indvars.iv254, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next255 to i32
  %exitcond.not = icmp eq i32 %.val, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge14, label %bb.r, !llvm.loop !93

.critedge14:                                      ; preds = %bb.t, %bb.q, %.critedge12
  %i.gt = tail call i32 @Abc_NtkGetChoiceNum(ptr noundef nonnull %0) #23
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.u, label %.thread

bb.u:                                             ; preds = %.critedge14
  %i.gv = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.aw) #23 ; 2 uses
  %i.gw = icmp eq i32 %1, 0
  %i.gx = icmp ne i32 %i.gv, 0
  %or.cond = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %i.gv)
  br label %.thread

.thread:                                          ; preds = %.critedge14, %bb.v, %bb.u
  br i1 %.not, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %.thread
  %.val164 = load i32, ptr %i.fs, align 8, !tbaa !38
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.aw, i32 noundef %.val164) #23
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !90 ; 6 uses
  %i.ha = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.hb = add i32 %i.gz, -1
  %or.cond.i.i = icmp ult i32 %i.hb, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.gz ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %spec.store.select.i.i, ptr %i.ha, align 8, !tbaa !45
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hd = sext i32 %spec.store.select.i.i to i64
  %i.he = shl nsw i64 %i.hd, 2
  %i.hf = tail call noalias ptr @malloc(i64 noundef %i.he) #22
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.x, %bb.w
  %i.hg = phi ptr [ %i.hf, %bb.x ], [ null, %bb.w ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !46
  store i32 %i.gz, ptr %i.hc, align 4, !tbaa !44
  %i.hi = icmp sgt i32 %i.gz, 0
  br i1 %i.hi, label %.lr.ph.preheader.i, label %Vec_IntStartNatural.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntAlloc.exit.i
  %wide.trip.count.i = zext nneg i32 %i.gz to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gz, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %index ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <4 x i32> %vec.ind, ptr %i.hj, align 4, !tbaa !38
  store <4 x i32> %step.add, ptr %i.hk, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntStartNatural.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i
  %i.hn = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntStartNatural.exit, label %.lr.ph.i, !llvm.loop !97

Vec_IntStartNatural.exit:                         ; preds = %.lr.ph.i, %middle.block, %Vec_IntAlloc.exit.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.aw, i64 392
  store ptr %i.ha, ptr %i.ho, align 8, !tbaa !98
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !99 ; 3 uses
  %.not130 = icmp eq ptr %i.hq, null
  br i1 %.not130, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %Vec_IntStartNatural.exit
  %i.hr = getelementptr i8, ptr %i.hq, i64 4      ; 2 uses
  %.val8.i = load i32, ptr %i.hr, align 4, !tbaa !100 ; 3 uses
  %i.hs = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 5 uses
  %i.ht = add i32 %.val8.i, -1
  %or.cond.i.i188 = icmp ult i32 %i.ht, 7
  %spec.store.select.i.i189 = select i1 %or.cond.i.i188, i32 8, i32 %.val8.i ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  store i32 0, ptr %i.hu, align 4, !tbaa !16
  store i32 %spec.store.select.i.i189, ptr %i.hs, align 8, !tbaa !19
  %.not.i.i190 = icmp eq i32 %spec.store.select.i.i189, 0
  br i1 %.not.i.i190, label %Vec_PtrAlloc.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hv = sext i32 %spec.store.select.i.i189 to i64
  %i.hw = shl nsw i64 %i.hv, 3
  %i.hx = tail call noalias ptr @malloc(i64 noundef %i.hw) #22
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.z, %bb.y
  %.promoted16.i = phi ptr [ %i.hx, %bb.z ], [ null, %bb.y ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.hy, align 8, !tbaa !20
  %i.hz = icmp sgt i32 %.val8.i, 0
  br i1 %i.hz, label %.lr.ph.i191, label %Vec_VecDupInt.exit

.lr.ph.i191:                                      ; preds = %Vec_PtrAlloc.exit.i
  %i.ia = getelementptr i8, ptr %i.hq, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %Vec_PtrPush.exit.i, %.lr.ph.i191
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph.i191 ], [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %.promoted16.i, %.lr.ph.i191 ], [ %storemerge18.i, %Vec_PtrPush.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.store.select.i.i189, %.lr.ph.i191 ], [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ] ; 4 uses
  %.val9.i = load ptr, ptr %i.ia, align 8, !tbaa !102
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val9.i, i64 %indvars.iv19.i
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !21 ; 2 uses
  %i.id = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !44 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !44
  store i32 %i.if, ptr %i.id, align 8, !tbaa !45
  %.not.i10.i = icmp eq i32 %i.if, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ih = sext i32 %i.if to i64
  %i.ii = shl nsw i64 %i.ih, 2                    ; 2 uses
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ii) #22
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.ab, %bb.aa
  %.pre-phi12.i.i = phi i64 [ %i.ii, %bb.ab ], [ 0, %bb.aa ]
  %i.ik = phi ptr [ %i.ij, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !46
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ik, ptr align 4 %i.in, i64 %.pre-phi12.i.i, i1 false)
  %i.io = trunc nsw i64 %indvars.iv19.i to i32
  %i.ip = icmp eq i32 %spec.select.sink.i15.i, %i.io
  br i1 %i.ip, label %bb.ac, label %Vec_PtrPush.exit.i

bb.ac:                                            ; preds = %Vec_IntDup.exit.i
  %i.iq = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.iq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i.i = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ir = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #21
  br label %Vec_PtrPush.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.is = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit.i

bb.ag:                                            ; preds = %bb.ac
  %i.it = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.iu = shl nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i = select i1 %i.it, i32 %i.iu, i32 2147483647 ; 4 uses
  %i.iv = sext i32 %spec.select.i.i to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %i.iv
  br i1 %.not.i10.i.i, label %bb.ah, label %Vec_PtrPush.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.iw = zext nneg i32 %spec.select.i.i to i64
  %i.ix = shl nuw nsw i64 %i.iw, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iy = tail call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.ix) #21
  br label %Vec_PtrPush.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.iz = tail call noalias ptr @malloc(i64 noundef %i.ix) #22
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.ag ], [ %i.is, %bb.af ], [ %i.ir, %bb.ae ], [ %i.iy, %bb.ai ], [ %i.iz, %bb.aj ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.ag ], [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i, %bb.ai ], [ %spec.select.i.i, %bb.aj ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.id, ptr %i.ja, align 8, !tbaa !21
  %.val.i194 = load i32, ptr %i.hr, align 4, !tbaa !100
  %i.jb = sext i32 %.val.i194 to i64
  %i.jc = icmp slt i64 %indvars.iv.next20.i, %i.jb
  br i1 %i.jc, label %bb.aa, label %..critedge_crit_edge.i, !llvm.loop !103

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.jd = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.jd, ptr %i.hu, align 4, !tbaa !16
  store i32 %spec.select.sink.i14.i, ptr %i.hs, align 8
  store ptr %storemerge18.i, ptr %i.hy, align 8
  br label %Vec_VecDupInt.exit

Vec_VecDupInt.exit:                               ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.aw, i64 432
  store ptr %i.hs, ptr %i.je, align 8, !tbaa !104
  br label %bb.ak

bb.ak:                                            ; preds = %Vec_IntStartNatural.exit, %Vec_VecDupInt.exit, %.thread
  %i.jf = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.aw) #23
  %.not131 = icmp eq i32 %i.jf, 0
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.8)
  tail call void @Aig_ManStop(ptr noundef nonnull %i.aw) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.0126 = phi ptr [ null, %bb.al ], [ %i.aw, %bb.ak ]
  ret ptr %.0126
}

declare ptr @Abc_NtkDfs(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_NtkGetChoiceNum(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkToDarChoices(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Abc_AigDfs(ptr noundef %0, i32 noundef 0, i32 noundef 0) #23 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 124
  %.val65 = load i32, ptr %i.b, align 4, !tbaa !38
  %i.c = add nsw i32 %.val65, 100
  %i.d = tail call ptr @Aig_ManStart(i32 noundef %i.c) #23 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !38
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = tail call ptr @Extra_UtilStrsav(ptr noundef %i.i) #23
  store ptr %i.j, ptr %i.d, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = tail call ptr @Extra_UtilStrsav(ptr noundef %i.l) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !63
  %i.o = tail call i32 @Abc_NtkGetChoiceNum(ptr noundef %0) #23
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 140
  %.val72 = load i32, ptr %i.p, align 4, !tbaa !105
  %i.q = sext i32 %.val72 to i64
  %i.r = shl nsw i64 %i.q, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  store ptr %calloc, ptr %i.s, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr i8, ptr %i.d, i64 48
  %.val66 = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.u = tail call ptr @Abc_AigConst1(ptr noundef nonnull %0) #23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %.val66, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val6790 = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %i.x = getelementptr i8, ptr %.val6790, i64 4
  %.val67.val91 = load i32, ptr %i.x, align 4, !tbaa !16
  %i.y = icmp sgt i32 %.val67.val91, 0
  br i1 %i.y, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.c
  %i.z = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %.val100 = load i32, ptr %i.z, align 4, !tbaa !16
  %i.aa = icmp sgt i32 %.val100, 0
  br i1 %i.aa, label %.lr.ph102, label %.critedge2

.lr.ph102:                                        ; preds = %.critedge.preheader
  %i.ab = getelementptr i8, ptr %i.a, i64 8
  %i.ac = getelementptr i8, ptr %i.d, i64 248
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.val6793 = phi ptr [ %.val67, %.lr.ph ], [ %.val6790, %bb.c ]
  %i.ad = getelementptr i8, ptr %.val6793, i64 8
  %.val68.val = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val68.val, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.d) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val67 = load ptr, ptr %i.w, align 8, !tbaa !65 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val67, i64 4
  %.val67.val = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.aj = sext i32 %.val67.val to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.critedge.preheader, !llvm.loop !107

bb.d:                                             ; preds = %.lr.ph102, %Abc_AigNodeIsChoice.exit.thread
  %indvars.iv109 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next110, %Abc_AigNodeIsChoice.exit.thread ] ; 2 uses
  %.val64 = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv109
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 6 uses
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %.val2.i = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load ptr, ptr %i.ao, align 8, !tbaa !24
  %.val2.val.i = load i32, ptr %.val2.i, align 4, !tbaa !38
  %i.ap = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %i.aq = sext i32 %.val2.val.i to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = getelementptr i8, ptr %i.am, i64 20
  %.val3.i = load i32, ptr %i.av, align 4         ; 2 uses
  %i.aw = lshr i32 %.val3.i, 10
  %i.ax = and i32 %i.aw, 1
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr i8, ptr %.val2.i, i64 4
  %.val2.val.i78 = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.bd = sext i32 %.val2.val.i78 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.val.val.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = lshr i32 %.val3.i, 11
  %i.bj = and i32 %i.bi, 1
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = tail call ptr @Aig_And(ptr noundef nonnull %i.d, ptr noundef %i.bb, ptr noundef %i.bn) #23 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %Abc_AigNodeIsChoice.exit.thread, label %Abc_AigNodeIsChoice.exit

Abc_AigNodeIsChoice.exit:                         ; preds = %bb.d
  %i.bs = getelementptr i8, ptr %i.am, i64 44
  %.val.i81 = load i32, ptr %i.bs, align 4, !tbaa !108
  %i.bt = icmp slt i32 %.val.i81, 1
  br i1 %i.bt, label %Abc_AigNodeIsChoice.exit.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %Abc_AigNodeIsChoice.exit
  %.val73 = load ptr, ptr %i.ac, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph99, %bb.e
  %i.bu = phi ptr [ %i.bo, %.lr.ph99 ], [ %i.bw, %bb.e ]
  %.05898 = phi ptr [ %i.br, %.lr.ph99 ], [ %.058, %bb.e ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05898, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42 ; 2 uses
end_hunk_1
