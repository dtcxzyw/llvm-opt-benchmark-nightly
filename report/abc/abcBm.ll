Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcBm?download=true
inline.NumInlined: 686
inline.NumDeleted: 62
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@matchNonSingletonOutputs:bb.a
  store i1 true, ptr @matchNonSingletonOutputs.MATCH_FOUND, align 4
  br label %bb.bw

bb.f:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %23, i64 8
  %.val273 = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = sext i32 %24 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %.val273, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !34
  store i32 16, ptr %i.h, align 8, !tbaa !35
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = sext i32 %i.g to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %6, i64 %i.l ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val261 = load i32, ptr %i.o, align 4, !tbaa !34 ; 3 uses
  %i.p = sext i32 %.val261 to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #16 ; 7 uses
  %i.s = icmp sgt i32 %.val261, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.t = zext nneg i32 %.val261 to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.u, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.v = getelementptr i8, ptr %i.n, i64 8
  %.val272 = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.w = sext i32 %25 to i64                      ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.val272, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = getelementptr i8, ptr %20, i64 48
  %.val283 = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr i8, ptr %.val283, i64 8
  %.val283.val = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val283.val, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 10 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 7 uses
  %i.ag = load i32, ptr %22, align 8, !tbaa !78
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ai = icmp slt i32 %i.af, 16
  br i1 %i.ai, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef 128) #15
  br label %Vec_PtrGrow.exit.i

bb.j:                                             ; preds = %bb.h
  %i.am = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %i.al, %bb.i ], [ %i.am, %bb.j ]
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.ao = icmp samesign ult i32 %i.af, 1073741823
  %i.ap = shl nuw nsw i32 %i.af, 1
  %spec.select.i = select i1 %i.ao, i32 %i.ap, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.af, %spec.select.i
  br i1 %.not.i10.i, label %bb.l, label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ar, null
  %i.as = zext nneg i32 %spec.select.i to i64
  %i.at = shl nuw nsw i64 %i.as, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = tail call ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef %i.at) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = phi ptr [ %i.au, %bb.m ], [ %i.av, %bb.n ]
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !30
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.o, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.o ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %22, align 8, !tbaa !78
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !26
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %._crit_edge, %bb.k, %Vec_PtrGrow.exit12.sink.split.i
  %i.ax = phi i32 [ %i.af, %._crit_edge ], [ %i.af, %bb.k ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.ba = add nsw i32 %i.ax, 1
  store i32 %i.ba, ptr %i.ae, align 4, !tbaa !26
  %i.bb = sext i32 %i.ax to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  store ptr %i.ad, ptr %i.bc, align 8, !tbaa !31
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val271 = load ptr, ptr %i.be, align 8, !tbaa !36
  %i.bf = getelementptr inbounds [4 x i8], ptr %.val271, i64 %i.w
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34 ; 7 uses
  %i.bj = load i32, ptr %16, align 8, !tbaa !35
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %Vec_PtrPush.exit
  %i.bl = icmp slt i32 %i.bi, 16
  br i1 %i.bl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i286 = icmp eq ptr %i.bn, null
  br i1 %.not9.i.i286, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.s, %bb.r
  %i.bq = phi ptr [ %i.bo, %bb.r ], [ %i.bp, %bb.s ]
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.br = icmp samesign ult i32 %i.bi, 1073741823
  %i.bs = shl nuw nsw i32 %i.bi, 1
  %spec.select.i284 = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bi, %spec.select.i284
  br i1 %.not.i9.i, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bu, null
  %i.bv = zext nneg i32 %spec.select.i284 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = tail call ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef %i.bw) #15
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bw) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bz = phi ptr [ %i.bx, %bb.v ], [ %i.by, %bb.w ]
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.x, %Vec_IntGrow.exit.i
  %spec.select.sink.i285 = phi i32 [ %spec.select.i284, %bb.x ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i285, ptr %16, align 8, !tbaa !35
  %.pre351 = load i32, ptr %i.bh, align 4, !tbaa !34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_PtrPush.exit, %bb.t, %Vec_IntGrow.exit11.sink.split.i
  %i.ca = phi i32 [ %i.bi, %Vec_PtrPush.exit ], [ %i.bi, %bb.t ], [ %.pre351, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cd = add nsw i32 %i.ca, 1
  store i32 %i.cd, ptr %i.bh, align 4, !tbaa !34
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ce
  store i32 %i.bg, ptr %i.cf, align 4, !tbaa !37
  %i.cg = getelementptr inbounds [8 x i8], ptr %14, i64 %i.l ; 6 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %.val259326 = load i32, ptr %i.ci, align 4, !tbaa !34
  %i.cj = icmp slt i32 %.val259326, 1
  %.b234327 = load i1, ptr @matchNonSingletonOutputs.MATCH_FOUND, align 4 ; 2 uses
  %.not236328 = select i1 %i.cj, i1 true, i1 %.b234327
  br i1 %.not236328, label %._crit_edge331, label %.lr.ph330

.lr.ph330:                                        ; preds = %Vec_IntPush.exit
  %i.ck = getelementptr i8, ptr %21, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.cn = add nsw i32 %25, 1
  %i.co = add nsw i32 %24, 1
  %i.cp = getelementptr i8, ptr %20, i64 40
  %i.cq = getelementptr i8, ptr %20, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.ct = getelementptr i8, ptr %21, i64 40
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph330, %bb.bs
  %indvars.iv348 = phi i64 [ 0, %.lr.ph330 ], [ %indvars.iv.next349, %bb.bs ] ; 6 uses
  %i.cu = phi ptr [ %i.ch, %.lr.ph330 ], [ %i.ko, %bb.bs ]
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val270 = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val270, i64 %indvars.iv348
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !37 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.bs, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv348
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !37
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.bs, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val282 = load ptr, ptr %i.ck, align 8, !tbaa !8
  %i.dc = getelementptr i8, ptr %.val282, i64 8
  %.val282.val = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.dd = sext i32 %i.cx to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %.val282.val, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !31
  %i.dg = load i32, ptr %i.ae, align 4, !tbaa !26 ; 7 uses
  %i.dh = load i32, ptr %22, align 8, !tbaa !78
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.ab, label %.Vec_PtrPush.exit294_crit_edge

.Vec_PtrPush.exit294_crit_edge:                   ; preds = %bb.aa
  %.pre352 = load ptr, ptr %i.ay, align 8, !tbaa !30
  br label %Vec_PtrPush.exit294

bb.ab:                                            ; preds = %bb.aa
  %i.dj = icmp slt i32 %i.dg, 16
  br i1 %i.dj, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load ptr, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i292 = icmp eq ptr %i.dk, null
  br i1 %.not9.i.i292, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dk, i64 noundef 128) #15
  br label %Vec_PtrGrow.exit12.sink.split.i290

bb.ae:                                            ; preds = %bb.ac
  %i.dm = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  br label %Vec_PtrGrow.exit12.sink.split.i290

bb.af:                                            ; preds = %bb.ab
  %i.dn = icmp samesign ult i32 %i.dg, 1073741823
  %i.do = shl nuw nsw i32 %i.dg, 1
  %spec.select.i287 = select i1 %i.dn, i32 %i.do, i32 2147483647 ; 4 uses
  %.not.i10.i288 = icmp samesign ult i32 %i.dg, %spec.select.i287
  %.pre353 = load ptr, ptr %i.ay, align 8, !tbaa !30 ; 3 uses
  br i1 %.not.i10.i288, label %bb.ag, label %Vec_PtrPush.exit294

bb.ag:                                            ; preds = %bb.af
  %.not9.i11.i289 = icmp eq ptr %.pre353, null
  %i.dp = zext nneg i32 %spec.select.i287 to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3                ; 2 uses
  br i1 %.not9.i11.i289, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = tail call ptr @realloc(ptr noundef nonnull %.pre353, i64 noundef %i.dq) #15
  br label %Vec_PtrGrow.exit12.sink.split.i290

bb.ai:                                            ; preds = %bb.ag
  %i.ds = tail call noalias ptr @malloc(i64 noundef %i.dq) #16
  br label %Vec_PtrGrow.exit12.sink.split.i290

Vec_PtrGrow.exit12.sink.split.i290:               ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %storemerge = phi ptr [ %i.dm, %bb.ae ], [ %i.dl, %bb.ad ], [ %i.dr, %bb.ah ], [ %i.ds, %bb.ai ] ; 2 uses
  %spec.select.sink.i291 = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i287, %bb.ah ], [ %spec.select.i287, %bb.ai ]
  store ptr %storemerge, ptr %i.ay, align 8, !tbaa !30
  store i32 %spec.select.sink.i291, ptr %22, align 8, !tbaa !78
  %.pre354 = load i32, ptr %i.ae, align 4, !tbaa !26
  br label %Vec_PtrPush.exit294

Vec_PtrPush.exit294:                              ; preds = %.Vec_PtrPush.exit294_crit_edge, %bb.af, %Vec_PtrGrow.exit12.sink.split.i290
  %i.dt = phi i32 [ %i.dg, %.Vec_PtrPush.exit294_crit_edge ], [ %i.dg, %bb.af ], [ %.pre354, %Vec_PtrGrow.exit12.sink.split.i290 ] ; 2 uses
  %i.du = phi ptr [ %.pre352, %.Vec_PtrPush.exit294_crit_edge ], [ %.pre353, %bb.af ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i290 ]
  %i.dv = add nsw i32 %i.dt, 1
  store i32 %i.dv, ptr %i.ae, align 4, !tbaa !26
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dw
  store ptr %i.df, ptr %i.dx, align 8, !tbaa !31
  %i.dy = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %.val268 = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val268, i64 %indvars.iv348
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !37
  %i.ec = load i32, ptr %i.cl, align 4, !tbaa !34 ; 7 uses
  %i.ed = load i32, ptr %17, align 8, !tbaa !35
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.aj, label %Vec_PtrPush.exit294.Vec_IntPush.exit302_crit_edge

Vec_PtrPush.exit294.Vec_IntPush.exit302_crit_edge: ; preds = %Vec_PtrPush.exit294
  %.pre355 = load ptr, ptr %i.cm, align 8, !tbaa !36
  br label %Vec_IntPush.exit302

bb.aj:                                            ; preds = %Vec_PtrPush.exit294
  %i.ef = icmp slt i32 %i.ec, 16
  br i1 %i.ef, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.eg = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i300 = icmp eq ptr %i.eg, null
  br i1 %.not9.i.i300, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eg, i64 noundef 64) #15
  br label %Vec_IntGrow.exit11.sink.split.i298

bb.am:                                            ; preds = %bb.ak
  %i.ei = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i298

bb.an:                                            ; preds = %bb.aj
  %i.ej = icmp samesign ult i32 %i.ec, 1073741823
  %i.ek = shl nuw nsw i32 %i.ec, 1
  %spec.select.i295 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 4 uses
  %.not.i9.i296 = icmp samesign ult i32 %i.ec, %spec.select.i295
  %.pre356 = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i296, label %bb.ao, label %Vec_IntPush.exit302

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i297 = icmp eq ptr %.pre356, null
  %i.el = zext nneg i32 %spec.select.i295 to i64
  %i.em = shl nuw nsw i64 %i.el, 2                ; 2 uses
  br i1 %.not9.i10.i297, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.en = tail call ptr @realloc(ptr noundef nonnull %.pre356, i64 noundef %i.em) #15
  br label %Vec_IntGrow.exit11.sink.split.i298

bb.aq:                                            ; preds = %bb.ao
  %i.eo = tail call noalias ptr @malloc(i64 noundef %i.em) #16
  br label %Vec_IntGrow.exit11.sink.split.i298

Vec_IntGrow.exit11.sink.split.i298:               ; preds = %bb.ap, %bb.aq, %bb.al, %bb.am
  %i.ep = phi ptr [ %i.ei, %bb.am ], [ %i.eh, %bb.al ], [ %i.en, %bb.ap ], [ %i.eo, %bb.aq ] ; 2 uses
  %spec.select.sink.i299 = phi i32 [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i295, %bb.ap ], [ %spec.select.i295, %bb.aq ]
  store ptr %i.ep, ptr %i.cm, align 8, !tbaa !36
  store i32 %spec.select.sink.i299, ptr %17, align 8, !tbaa !35
  %.pre357 = load i32, ptr %i.cl, align 4, !tbaa !34
  br label %Vec_IntPush.exit302

Vec_IntPush.exit302:                              ; preds = %Vec_PtrPush.exit294.Vec_IntPush.exit302_crit_edge, %bb.an, %Vec_IntGrow.exit11.sink.split.i298
  %i.eq = phi i32 [ %i.ec, %Vec_PtrPush.exit294.Vec_IntPush.exit302_crit_edge ], [ %i.ec, %bb.an ], [ %.pre357, %Vec_IntGrow.exit11.sink.split.i298 ] ; 2 uses
  %i.er = phi ptr [ %.pre355, %Vec_PtrPush.exit294.Vec_IntPush.exit302_crit_edge ], [ %.pre356, %bb.an ], [ %i.ep, %Vec_IntGrow.exit11.sink.split.i298 ]
  %i.es = add nsw i32 %i.eq, 1
  store i32 %i.es, ptr %i.cl, align 4, !tbaa !34
  %i.et = sext i32 %i.eq to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.et
  store i32 %i.eb, ptr %i.eu, align 4, !tbaa !37
  %i.ev = load i32, ptr @matchNonSingletonOutputs.counter, align 4, !tbaa !37
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr @matchNonSingletonOutputs.counter, align 4, !tbaa !37
  %i.ex = tail call i32 @Abc_NtkBmSat(ptr noundef %20, ptr noundef nonnull %21, ptr noundef null, ptr noundef nonnull %22, ptr noundef nonnull %i.h, i32 noundef 0)
  %.not238 = icmp eq i32 %i.ex, 0
  br i1 %.not238, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %Vec_IntPush.exit302
  %i.ey = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %.val267 = load ptr, ptr %i.ez, align 8, !tbaa !36
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val267, i64 %indvars.iv348 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !37
  store i32 -1, ptr %i.fa, align 4, !tbaa !37
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %.val258 = load i32, ptr %i.fd, align 4, !tbaa !34
  %i.fe = add nsw i32 %.val258, -1
  %.not246 = icmp eq i32 %25, %i.fe
  br i1 %.not246, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = tail call i32 @matchNonSingletonOutputs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef %23, i32 noundef %24, i32 noundef %i.cn, i32 noundef %26, i32 noundef %27) ; 0 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fg = tail call i32 @matchNonSingletonOutputs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef %23, i32 noundef %i.co, i32 noundef 0, i32 noundef %26, i32 noundef %27) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
end_hunk_0
begin_hunk_1_@matchNonSingletonOutputs:bb.a
  %i.ih = add nsw i32 %.val251.val, %i.ig
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ii
  store i32 %i.if, ptr %i.ij, align 4, !tbaa !37
  %.val249.pre = load i32, ptr %i.hp, align 4, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.az, %bb.ay
  %.val249 = phi i32 [ %.val249.pre, %bb.az ], [ %.val249358, %bb.ay ] ; 2 uses
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.ik = sext i32 %.val249 to i64
  %i.il = icmp slt i64 %indvars.iv.next340, %i.ik
  br i1 %i.il, label %bb.ay, label %.critedge2, !llvm.loop !163

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  %i.im = tail call ptr @Abc_NtkVerifySimulatePattern(ptr noundef nonnull %20, ptr noundef %i.hn) #14 ; 3 uses
  %i.in = load ptr, ptr %i.cs, align 8, !tbaa !102 ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 4      ; 2 uses
  %.val320 = load i32, ptr %i.io, align 4, !tbaa !26 ; 2 uses
  %i.ip = icmp sgt i32 %.val320, 0
  br i1 %i.ip, label %.lr.ph322, label %.critedge4

.lr.ph322:                                        ; preds = %.critedge2
  %i.iq = getelementptr i8, ptr %i.in, i64 8
  %.val278.val = load ptr, ptr %i.iq, align 8, !tbaa !30
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph322, %bb.bc
  %.val360 = phi i32 [ %.val320, %.lr.ph322 ], [ %.val, %bb.bc ]
  %indvars.iv342 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next343, %bb.bc ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.val278.val, i64 %indvars.iv342
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !31 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 20
  %.val280 = load i32, ptr %i.it, align 4
  %i.iu = and i32 %.val280, 15
  %.not = icmp eq i32 %i.iu, 8
  br i1 %.not, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !32
  %i.ix = add nsw i32 %i.iw, -1
  %.val250 = load ptr, ptr %i.ct, align 8, !tbaa !29
  %i.iy = getelementptr i8, ptr %.val250, i64 4
  %.val250.val = load i32, ptr %i.iy, align 4, !tbaa !26
  %i.iz = trunc nuw nsw i64 %indvars.iv342 to i32
  %i.ja = add nsw i32 %.val250.val, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.jb
  store i32 %i.ix, ptr %i.jc, align 4, !tbaa !37
  %.val.pre = load i32, ptr %i.io, align 4, !tbaa !26
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.val = phi i32 [ %.val.pre, %bb.bb ], [ %.val360, %bb.ba ] ; 2 uses
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.jd = sext i32 %.val to i64
  %i.je = icmp slt i64 %indvars.iv.next343, %i.jd
  br i1 %i.je, label %bb.ba, label %.critedge4, !llvm.loop !164

.critedge4:                                       ; preds = %bb.bc, %.critedge2
  %i.jf = tail call ptr @Abc_NtkVerifySimulatePattern(ptr noundef nonnull %21, ptr noundef %i.hn) #14 ; 5 uses
  %i.jg = load ptr, ptr %i.m, align 8, !tbaa !33  ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 4
  %.val256 = load i32, ptr %i.jh, align 4, !tbaa !34 ; 4 uses
  %i.ji = icmp sgt i32 %.val256, 0
  br i1 %i.ji, label %.lr.ph324, label %._crit_edge325

.lr.ph324:                                        ; preds = %.critedge4
  %i.jj = getelementptr i8, ptr %i.jg, i64 8
  %.val264 = load ptr, ptr %i.jj, align 8, !tbaa !36
  %i.jk = getelementptr inbounds [4 x i8], ptr %.val264, i64 %i.w
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !37
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !37 ; 3 uses
  %i.jp = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  %.val263 = load ptr, ptr %i.jq, align 8, !tbaa !36 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val256 to i64 ; 2 uses
  %xtraiter408 = and i64 %wide.trip.count, 1
  %i.jr = icmp eq i32 %.val256, 1
  br i1 %i.jr, label %.epil.preheader407, label %.lr.ph324.new

.lr.ph324.new:                                    ; preds = %.lr.ph324
  %unroll_iter412 = and i64 %wide.trip.count, 2147483646
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bh, %.lr.ph324.new
  %indvars.iv345 = phi i64 [ 0, %.lr.ph324.new ], [ %indvars.iv.next346.1, %bb.bh ] ; 4 uses
  %niter413 = phi i64 [ 0, %.lr.ph324.new ], [ %niter413.next.1, %bb.bh ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val263, i64 %indvars.iv345
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !37
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !37
  %.not243 = icmp eq i32 %i.jo, %i.jw
  br i1 %.not243, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv345
  store i32 1, ptr %i.jx, align 4, !tbaa !37
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %indvars.iv.next346 = or disjoint i64 %indvars.iv345, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val263, i64 %indvars.iv.next346
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !37
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !37
  %.not243.1 = icmp eq i32 %i.jo, %i.kc
  br i1 %.not243.1, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next346
  store i32 1, ptr %i.kd, align 4, !tbaa !37
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv.next346.1 = add nuw nsw i64 %indvars.iv345, 2 ; 2 uses
  %niter413.next.1 = add i64 %niter413, 2         ; 2 uses
  %niter413.ncmp.1 = icmp eq i64 %niter413.next.1, %unroll_iter412
  br i1 %niter413.ncmp.1, label %._crit_edge325.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !165

._crit_edge325.loopexit.unr-lcssa:                ; preds = %bb.bh
  %lcmp.mod410.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod410.not, label %._crit_edge325, label %.epil.preheader407

.epil.preheader407:                               ; preds = %._crit_edge325.loopexit.unr-lcssa, %.lr.ph324
  %indvars.iv345.epil.init = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next346.1, %._crit_edge325.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod411 = trunc i32 %.val256 to i1
  tail call void @llvm.assume(i1 %lcmp.mod411)
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.val263, i64 %indvars.iv345.epil.init
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !37
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !37
  %.not243.epil = icmp eq i32 %i.jo, %i.ki
  br i1 %.not243.epil, label %._crit_edge325, label %bb.bi

bb.bi:                                            ; preds = %.epil.preheader407
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv345.epil.init
  store i32 1, ptr %i.kj, align 4, !tbaa !37
  br label %._crit_edge325

._crit_edge325:                                   ; preds = %._crit_edge325.loopexit.unr-lcssa, %bb.bi, %.epil.preheader407, %.critedge4
  %.not239 = icmp eq ptr %i.fn, null
  br i1 %.not239, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge325
  tail call void @free(ptr noundef nonnull %i.fn) #14
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge325, %bb.bj
  %.not240 = icmp eq ptr %i.hn, null
  br i1 %.not240, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @free(ptr noundef nonnull %i.hn) #14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.not241 = icmp eq ptr %i.im, null
  br i1 %.not241, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @free(ptr noundef nonnull %i.im) #14
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.not242 = icmp eq ptr %i.jf, null
  br i1 %.not242, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @free(ptr noundef nonnull %i.jf) #14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.au
  %.b233 = load i1, ptr @matchNonSingletonOutputs.MATCH_FOUND, align 4
  br i1 %.b233, label %._crit_edge331.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kk = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.kl = add nsw i32 %i.kk, -1
  store i32 %i.kl, ptr %i.ae, align 4, !tbaa !26
  %i.km = load i32, ptr %i.cl, align 4, !tbaa !34
  %i.kn = add nsw i32 %i.km, -1
  store i32 %i.kn, ptr %i.cl, align 4, !tbaa !34
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.y, %bb.z
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %i.ko = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 4
  %.val259 = load i32, ptr %i.kp, align 4, !tbaa !34
  %i.kq = sext i32 %.val259 to i64
  %.not405 = icmp slt i64 %indvars.iv.next349, %i.kq
  br i1 %.not405, label %bb.y, label %.thread, !llvm.loop !166

._crit_edge331:                                   ; preds = %Vec_IntPush.exit
  br i1 %.b234327, label %._crit_edge331.thread, label %.thread

.thread:                                          ; preds = %bb.bs, %._crit_edge331
  %i.kr = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.ks = add nsw i32 %i.kr, -1
  store i32 %i.ks, ptr %i.ae, align 4, !tbaa !26
  %i.kt = load i32, ptr %i.bh, align 4, !tbaa !34
  %i.ku = add nsw i32 %i.kt, -1
  store i32 %i.ku, ptr %i.bh, align 4, !tbaa !34
  br label %bb.bu

._crit_edge331.thread:                            ; preds = %bb.bq, %._crit_edge331
  %i.kv = load i32, ptr @matchNonSingletonOutputs.counter, align 4
  %.not305 = icmp eq i32 %i.kv, 0
  br i1 %.not305, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge331.thread
  store i32 0, ptr @matchNonSingletonOutputs.counter, align 4, !tbaa !37
  br label %bb.bu

bb.bu:                                            ; preds = %.thread, %bb.bt, %._crit_edge331.thread
  %.0222.in368399 = phi i1 [ false, %.thread ], [ true, %bb.bt ], [ true, %._crit_edge331.thread ] ; 2 uses
  tail call void @free(ptr noundef %i.h) #14
  %.not237 = icmp eq ptr %i.r, null
  br i1 %.not237, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @free(ptr noundef nonnull %i.r) #14
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge364, %bb.d, %bb.bv, %bb.bu, %bb.e
  %.0222.in = phi i1 [ %.0222.in.pre, %._crit_edge364 ], [ true, %bb.d ], [ %.0222.in368399, %bb.bv ], [ %.0222.in368399, %bb.bu ], [ true, %bb.e ]
  %.0222 = zext i1 %.0222.in to i32
  ret i32 %.0222
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @match1by1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readnone captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef readnone captures(none) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readnone captures(none) %15, ptr nofree noundef captures(none) %16, ptr nofree noundef captures(none) %17, ptr nofree noundef captures(none) %18, ptr nofree noundef readonly captures(address_is_null) %19, i32 noundef %20, i32 noundef %21) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store i1 false, ptr @match1by1.MATCH_FOUND, align 4
  %i.b = getelementptr i8, ptr %19, i64 4
  %.val352 = load i32, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.c = icmp eq i32 %20, %.val352
  br i1 %i.c, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %19, i64 8
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !36 ; 2 uses
  %i.e = sext i32 %20 to i64                      ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %.val372, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val351.peel = load i32, ptr %i.k, align 4, !tbaa !34
  %i.l = icmp eq i32 %21, %.val351.peel
  br i1 %i.l, label %tailrecurse.peel, label %bb.b

tailrecurse.peel:                                 ; preds = %.lr.ph
  %indvars.iv.next.peel = add nsw i64 %i.e, 1     ; 2 uses
  %i.m = trunc nsw i64 %indvars.iv.next.peel to i32
  %i.n = icmp eq i32 %.val352, %i.m
  br i1 %i.n, label %tailrecurse._crit_edge, label %.peel.next

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %tailrecurse.peel, %bb.a
  store i1 true, ptr @match1by1.MATCH_FOUND, align 4
  br label %bb.ej

.peel.next:                                       ; preds = %tailrecurse.peel, %tailrecurse
  %indvars.iv = phi i64 [ %indvars.iv.next, %tailrecurse ], [ %indvars.iv.next.peel, %tailrecurse.peel ] ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %.val372, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val351 = load i32, ptr %i.t, align 4, !tbaa !34
  %i.u = icmp eq i32 %.val351, 0
  br i1 %i.u, label %tailrecurse, label %.loopexit680

tailrecurse:                                      ; preds = %.peel.next
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.v = trunc nsw i64 %indvars.iv.next to i32
  %i.w = icmp eq i32 %.val352, %i.v
  br i1 %i.w, label %tailrecurse._crit_edge, label %.peel.next, !llvm.loop !167

.loopexit680:                                     ; preds = %.peel.next
  %i.x = trunc nsw i64 %indvars.iv to i32
  br label %bb.b

bb.b:                                             ; preds = %.loopexit680, %.lr.ph
  %.tr564585.lcssa = phi i32 [ %21, %.lr.ph ], [ 0, %.loopexit680 ] ; 22 uses
  %.tr563584.lcssa.wide = phi i32 [ %20, %.lr.ph ], [ %i.x, %.loopexit680 ] ; 2 uses
  %.lcssa674 = phi i64 [ %i.h, %.lr.ph ], [ %i.q, %.loopexit680 ] ; 2 uses
  %.lcssa672 = phi ptr [ %i.j, %.lr.ph ], [ %i.s, %.loopexit680 ] ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %.lcssa674 ; 5 uses
  %i.z = getelementptr i8, ptr %.lcssa672, i64 4
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 5 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !34
  store i32 16, ptr %i.aa, align 8, !tbaa !35
  %i.ac = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 7 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !36
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 7 uses
  store i32 0, ptr %i.af, align 4, !tbaa !26
  store i32 100, ptr %i.ae, align 8, !tbaa !78
  %i.ag = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 10 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !30
  %.val350 = load i32, ptr %i.z, align 4, !tbaa !34 ; 3 uses
  %i.ai = sext i32 %.val350 to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #16 ; 15 uses
  %i.al = icmp sgt i32 %.val350, 0
  br i1 %i.al, label %.lr.ph587.preheader, label %._crit_edge

.lr.ph587.preheader:                              ; preds = %bb.b
  %i.am = zext nneg i32 %.val350 to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.an, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph587.preheader, %bb.b
  %i.ao = getelementptr i8, ptr %.lcssa672, i64 8
  %.val371 = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.ap = sext i32 %.tr564585.lcssa to i64        ; 6 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val371, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34 ; 7 uses
  %i.au = load i32, ptr %4, align 8, !tbaa !35
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %._crit_edge
  %i.aw = icmp slt i32 %i.at, 16
  br i1 %i.aw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 64) #15
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ba = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #16
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.bb = phi ptr [ %i.az, %bb.e ], [ %i.ba, %bb.f ]
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.bc = icmp samesign ult i32 %i.at, 1073741823
  %i.bd = shl nuw nsw i32 %i.at, 1
  %spec.select.i = select i1 %i.bc, i32 %i.bd, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.at, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bf, null
  %i.bg = zext nneg i32 %spec.select.i to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef %i.bh) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bh) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = phi ptr [ %i.bi, %bb.i ], [ %i.bj, %bb.j ]
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !35
  %.pre = load i32, ptr %i.as, align 4, !tbaa !34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.bl = phi i32 [ %i.at, %._crit_edge ], [ %i.at, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bo = add nsw i32 %i.bl, 1
  store i32 %i.bo, ptr %i.as, align 4, !tbaa !34
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp
  store i32 %i.ar, ptr %i.bq, align 4, !tbaa !37
  %i.br = add nsw i32 %.tr564585.lcssa, 1         ; 3 uses
  %i.bs = icmp eq i32 %.tr564585.lcssa, 0         ; 2 uses
  br i1 %i.bs, label %.preheader572, label %.loopexit573

.preheader572:                                    ; preds = %Vec_IntPush.exit
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !33  ; 5 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %.val381588 = load i32, ptr %i.bu, align 4, !tbaa !34
end_hunk_1
