Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub6?download=true
inline.NumInlined: 131
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Res6_ManReadPla:bb.a

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.i, align 1, !tbaa !9
  switch i8 %i.p, label %.backedge.i.i [
    i8 105, label %.backedge.sink.split.i.i
    i8 111, label %bb.e
    i8 112, label %bb.f
    i8 101, label %._crit_edge.i.i
  ]

bb.e:                                             ; preds = %bb.d
  br label %.backedge.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  br label %.backedge.sink.split.i.i

.backedge.sink.split.i.i:                         ; preds = %bb.f, %bb.e, %bb.d
  %.sink46.i.i = phi ptr [ %i.b, %bb.e ], [ %i.c, %bb.f ], [ %i.a, %bb.d ]
  %i.q = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.j, ptr noundef null, i32 noundef 10) #22
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %.sink46.i.i, align 4, !tbaa !8
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.sink.split.i.i, %bb.d, %bb.c
  %i.s = tail call ptr @fgets(ptr noundef nonnull %i.g, i32 noundef 1000000, ptr noundef nonnull %i.d)
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.d
  %.0..0..0..0..0.11.pr.i = load i32, ptr %i.c, align 4, !tbaa !8 ; 4 uses
  %i.t = icmp eq i32 %.0..0..0..0..0.11.pr.i, 0
  %.not40.i.i = icmp eq i32 %.0..0..0..0..0.11.pr.i, %i.o
  %or.cond.i = select i1 %i.t, i1 true, i1 %.not40.i.i
  br i1 %or.cond.i, label %._crit_edge.i.thread.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.o, i32 noundef %.0..0..0..0..0.11.pr.i) ; 0 uses
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %bb.g, %._crit_edge.i.i, %bb.b
  %.0..0..i = phi i32 [ %.0..0..0..0..0.11.pr.i, %bb.g ], [ 0, %bb.b ], [ %i.o, %._crit_edge.i.i ] ; 5 uses
  %i.v = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  tail call void @free(ptr noundef %i.g) #22
  %.0..0..0..0..0.13.i = load i32, ptr %i.a, align 4, !tbaa !8 ; 5 uses
  %.0..0..0..0..0.12.i = load i32, ptr %i.b, align 4, !tbaa !8 ; 5 uses
  %i.w = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #23 ; 12 uses
  store i32 %.0..0..0..0..0.13.i, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i32 %.0..0..0..0..0.12.i, ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i32 %.0..0..i, ptr %i.y, align 8, !tbaa !18
  %i.z = ashr i32 %.0..0..i, 6
  %i.aa = and i32 %.0..0..i, 63
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 6 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !19
  %i.af = mul nsw i32 %i.ad, %.0..0..0..0..0.13.i ; 4 uses
  %i.ag = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.ah = add i32 %i.af, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.ah, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.af ; 3 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.ag, align 8, !tbaa !20
  %.not.i.i.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %Vec_WrdStart.exit.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.thread.i
  %i.ai = sext i32 %spec.store.select.i.i.i.i to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #21
  br label %Vec_WrdStart.exit.i.i

Vec_WrdStart.exit.i.i:                            ; preds = %bb.h, %._crit_edge.i.thread.i
  %i.al = phi ptr [ %i.ak, %bb.h ], [ null, %._crit_edge.i.thread.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !23
  store i32 %i.af, ptr %i.am, align 4, !tbaa !24
  %i.ao = sext i32 %i.af to i64
  %i.ap = shl nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !25
  %i.ar = shl nsw i32 %.0..0..0..0..0.12.i, 1
  %i.as = mul nsw i32 %i.ar, %i.ad                ; 4 uses
  %i.at = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.au = add i32 %i.as, -1
  %or.cond.i.i16.i.i = icmp ult i32 %i.au, 15
  %spec.store.select.i.i17.i.i = select i1 %or.cond.i.i16.i.i, i32 16, i32 %i.as ; 3 uses
  store i32 %spec.store.select.i.i17.i.i, ptr %i.at, align 8, !tbaa !20
  %.not.i.i18.i.i = icmp eq i32 %spec.store.select.i.i17.i.i, 0
  br i1 %.not.i.i18.i.i, label %Abc_RDataStart.exit.i, label %bb.i

bb.i:                                             ; preds = %Vec_WrdStart.exit.i.i
  %i.av = sext i32 %spec.store.select.i.i17.i.i to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #21
  br label %Abc_RDataStart.exit.i

Abc_RDataStart.exit.i:                            ; preds = %bb.i, %Vec_WrdStart.exit.i.i
  %i.ay = phi ptr [ %i.ax, %bb.i ], [ null, %Vec_WrdStart.exit.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ba = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !23
  store i32 %i.as, ptr %i.az, align 4, !tbaa !24
  %i.bb = sext i32 %i.as to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bc, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  store ptr %i.at, ptr %i.bd, align 8, !tbaa !26
  %i.be = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4      ; 3 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !27
  store i32 16, ptr %i.be, align 8, !tbaa !30
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  %i.bh = getelementptr i8, ptr %i.be, i64 8      ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !32
  %i.bj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !27
  store i32 16, ptr %i.bj, align 8, !tbaa !30
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.bj, ptr %i.bn, align 8, !tbaa !33
  %i.bo = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %Abc_ReadPla.exit.thread92, label %bb.j

Abc_ReadPla.exit.thread92:                        ; preds = %Abc_RDataStart.exit.i
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.j:                                             ; preds = %Abc_RDataStart.exit.i
  %i.br = add i32 %.0..0..0..0..0.13.i, 10000
  %i.bs = add i32 %i.br, %.0..0..0..0..0.12.i     ; 3 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #21 ; 9 uses
  %i.bv = tail call ptr @fgets(ptr noundef %i.bu, i32 noundef %i.bs, ptr noundef nonnull %i.bo)
  %.not85.i.i = icmp eq ptr %i.bv, null
  br i1 %.not85.i.i, label %bb.ag, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.backedge.i9.i, %.lr.ph89.i.i
  %.05987.i.i = phi i32 [ 0, %.lr.ph89.i.i ], [ %.3.i.i, %.backedge.i9.i ] ; 2 uses
  %.06086.i.i = phi i32 [ 0, %.lr.ph89.i.i ], [ %.161.i.i, %.backedge.i9.i ] ; 4 uses
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !9   ; 3 uses
  switch i8 %i.by, label %bb.s [
    i8 48, label %.lr.ph.i5.i
    i8 49, label %.lr.ph.i5.i
    i8 45, label %.lr.ph.i5.i
  ]

.lr.ph.i5.i:                                      ; preds = %bb.k, %bb.k, %bb.k
  %i.bz = and i32 %.06086.i.i, 31
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = ashr i32 %.06086.i.i, 5
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load i32, ptr %i.w, align 8, !tbaa !12  ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %.lr.ph.i5.i
  %i.ce = phi i8 [ %i.by, %.lr.ph.i5.i ], [ %i.dh, %bb.r ] ; 5 uses
  %.05884.i.i = phi ptr [ %i.bu, %.lr.ph.i5.i ], [ %i.dg, %bb.r ] ; 2 uses
  %.183.i.i = phi i32 [ %.05987.i.i, %.lr.ph.i5.i ], [ %.2.i.i, %bb.r ] ; 4 uses
  %.06282.i.i = phi i32 [ 0, %.lr.ph.i5.i ], [ %i.df, %bb.r ] ; 5 uses
  %i.cf = icmp slt i32 %.06282.i.i, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cg = icmp eq i8 %i.ce, 45
  %i.ch = zext i1 %i.cg to i32
  %i.ci = add nsw i32 %.183.i.i, %i.ch            ; 2 uses
  %i.cj = icmp eq i8 %i.ce, 49
  br i1 %i.cj, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.cl = mul nsw i32 %i.ck, %.06282.i.i
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.l
  switch i8 %i.ce, label %bb.r [
    i8 48, label %bb.p
    i8 49, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cm = sub nsw i32 %.06282.i.i, %i.cd
  %i.cn = shl nsw i32 %i.cm, 1
  %i.co = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.cp = mul nsw i32 %i.cn, %i.co
  br label %.sink.split.i.i

bb.q:                                             ; preds = %bb.o
  %i.cq = sub nsw i32 %.06282.i.i, %i.cd
  %i.cr = shl nsw i32 %i.cq, 1
  %i.cs = or disjoint i32 %i.cr, 1
  %i.ct = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.cu = mul nsw i32 %i.ct, %i.cs
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p, %bb.n
  %.sink110.in.i.i = phi ptr [ %i.bd, %bb.p ], [ %i.bd, %bb.q ], [ %i.aq, %bb.n ]
  %.sink109.i.i = phi i32 [ %i.cp, %bb.p ], [ %i.cu, %bb.q ], [ %i.cl, %bb.n ]
  %.2.ph.i.i = phi i32 [ %.183.i.i, %bb.p ], [ %.183.i.i, %bb.q ], [ %i.ci, %bb.n ]
  %.sink110.i.i = load ptr, ptr %.sink110.in.i.i, align 8, !tbaa !34
  %i.cv = getelementptr i8, ptr %.sink110.i.i, i64 8
  %.val77.i.i = load ptr, ptr %i.cv, align 8, !tbaa !23
  %i.cw = sext i32 %.sink109.i.i to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %.val77.i.i, i64 %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cc ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = or i32 %i.cz, %i.ca
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !8
  %.pre.i = load i8, ptr %.05884.i.i, align 1, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %bb.o, %bb.m
  %i.db = phi i8 [ %i.ce, %bb.o ], [ %i.ce, %bb.m ], [ %.pre.i, %.sink.split.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %.183.i.i, %bb.o ], [ %i.ci, %bb.m ], [ %.2.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %i.dc = and i8 %i.db, -2
  %switch.i6.i = icmp eq i8 %i.dc, 48
  %i.dd = icmp eq i8 %i.db, 45
  %narrow.i7.i = or i1 %i.dd, %switch.i6.i
  %i.de = zext i1 %narrow.i7.i to i32
  %i.df = add nuw nsw i32 %.06282.i.i, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.05884.i.i, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9   ; 2 uses
  %.not75.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not75.i.i, label %._crit_edge.i8.i, label %bb.l, !llvm.loop !35

._crit_edge.i8.i:                                 ; preds = %bb.r
  %.pr.pre.i.i = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.di = add nsw i32 %.06086.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i8.i, %bb.k
  %i.dj = phi i8 [ %i.by, %bb.k ], [ %.pr.pre.i.i, %._crit_edge.i8.i ]
  %.161.i.i = phi i32 [ %.06086.i.i, %bb.k ], [ %i.di, %._crit_edge.i8.i ]
  %.3.i.i = phi i32 [ %.05987.i.i, %bb.k ], [ %.2.i.i, %._crit_edge.i8.i ] ; 3 uses
  %i.dk = icmp eq i8 %i.dj, 46
  br i1 %i.dk, label %bb.t, label %.backedge.i9.i

bb.t:                                             ; preds = %bb.s
  %i.dl = load i8, ptr %i.bw, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.dl, label %.backedge.i9.i [
    i8 115, label %bb.u
    i8 97, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.dm = icmp eq i8 %i.dl, 97
  %.in.v.i.i = select i1 %i.dm, i64 40, i64 32
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %.in.v.i.i
  %i.dn = load ptr, ptr %.in.i.i, align 8, !tbaa !36 ; 4 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 4      ; 4 uses
  %.val79.i.i = load i32, ptr %i.do, align 4, !tbaa !27
  %i.dp = icmp sgt i32 %.val79.i.i, 0
  br i1 %i.dp, label %.backedge.i9.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = tail call ptr @strtok(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.27) #22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit.i.i, %bb.v
  %.0.i.i = phi ptr [ %i.dq, %bb.v ], [ %i.en, %Vec_IntPush.exit.i.i ]
  %i.ds = tail call i64 @strtol(ptr noundef nonnull captures(none) %.0.i.i, ptr noundef null, i32 noundef 10) #22, !inline_history !37
  %i.dt = trunc i64 %i.ds to i32
  %i.du = load i32, ptr %i.do, align 4, !tbaa !27 ; 7 uses
  %i.dv = load i32, ptr %i.dn, align 8, !tbaa !30
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.x, label %.Vec_IntPush.exit_crit_edge.i.i

.Vec_IntPush.exit_crit_edge.i.i:                  ; preds = %bb.w
  %.pre.i.i = load ptr, ptr %i.dr, align 8, !tbaa !31
  br label %Vec_IntPush.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.dx = icmp slt i32 %i.du, 16
  br i1 %i.dx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not9.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dy, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ea = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ab:                                            ; preds = %bb.x
  %i.eb = icmp samesign ult i32 %i.du, 1073741823
  %i.ec = shl nuw nsw i32 %i.du, 1
  %spec.select.i.i.i = select i1 %i.eb, i32 %i.ec, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.du, %spec.select.i.i.i
  %.pre93.i.i = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.ac, label %Vec_IntPush.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i.i.i = icmp eq ptr %.pre93.i.i, null
  %i.ed = zext nneg i32 %spec.select.i.i.i to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = tail call ptr @realloc(ptr noundef nonnull %.pre93.i.i, i64 noundef %i.ee) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.eg = tail call noalias ptr @malloc(i64 noundef %i.ee) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.eh = phi ptr [ %i.ea, %bb.aa ], [ %i.dz, %bb.z ], [ %i.ef, %bb.ad ], [ %i.eg, %bb.ae ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i.i.i, %bb.ad ], [ %spec.select.i.i.i, %bb.ae ]
  store ptr %i.eh, ptr %i.dr, align 8, !tbaa !31
  store i32 %spec.select.sink.i.i.i, ptr %i.dn, align 8, !tbaa !30
  %.pre94.i.i = load i32, ptr %i.do, align 4, !tbaa !27
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.ab, %.Vec_IntPush.exit_crit_edge.i.i
  %i.ei = phi i32 [ %i.du, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.du, %bb.ab ], [ %.pre94.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.ej = phi ptr [ %.pre.i.i, %.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre93.i.i, %bb.ab ], [ %i.eh, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.ek = add nsw i32 %i.ei, 1
  store i32 %i.ek, ptr %i.do, align 4, !tbaa !27
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.el
  store i32 %i.dt, ptr %i.em, align 4, !tbaa !8
  %i.en = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.27) #22 ; 2 uses
  %.not76.i.i = icmp eq ptr %i.en, null
  br i1 %.not76.i.i, label %.backedge.i9.i, label %bb.w, !llvm.loop !38

.backedge.i9.i:                                   ; preds = %Vec_IntPush.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.eo = tail call ptr @fgets(ptr noundef nonnull %i.bu, i32 noundef %i.bs, ptr noundef nonnull %i.bo)
  %.not.i10.i = icmp eq ptr %i.eo, null
  br i1 %.not.i10.i, label %._crit_edge90.i.i, label %bb.k, !llvm.loop !39

._crit_edge90.i.i:                                ; preds = %.backedge.i9.i
  %.not73.i.i = icmp eq i32 %.3.i.i, 0
  br i1 %.not73.i.i, label %Abc_ReadPla.exit._crit_edge, label %bb.af

bb.af:                                            ; preds = %._crit_edge90.i.i
  %i.ep = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.3.i.i, ptr noundef %0) ; 0 uses
  br label %Abc_ReadPla.exit._crit_edge

bb.ag:                                            ; preds = %bb.j
  %.not74.i.i = icmp eq ptr %i.bu, null
  br i1 %.not74.i.i, label %Abc_ReadPla.exit.thread96, label %Abc_ReadPla.exit._crit_edge

Abc_ReadPla.exit.thread96:                        ; preds = %bb.ag
  %i.eq = tail call i32 @fclose(ptr noundef nonnull %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

Abc_ReadPla.exit._crit_edge:                      ; preds = %bb.ag, %bb.af, %._crit_edge90.i.i
  tail call void @free(ptr noundef nonnull %i.bu) #22
  %i.er = tail call i32 @fclose(ptr noundef nonnull %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.w, align 8, !tbaa !12
  %.pre155 = load i32, ptr %i.x, align 4, !tbaa !17
  %.pre156 = load i32, ptr %i.y, align 8, !tbaa !18
  br label %bb.ah

bb.ah:                                            ; preds = %Abc_ReadPla.exit._crit_edge, %Abc_ReadPla.exit.thread92, %Abc_ReadPla.exit.thread96
  %i.es = phi i32 [ %.pre156, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..i, %Abc_ReadPla.exit.thread92 ], [ %.0..0..i, %Abc_ReadPla.exit.thread96 ]
  %i.et = phi i32 [ %.pre155, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..0..0..0.12.i, %Abc_ReadPla.exit.thread92 ], [ %.0..0..0..0..0.12.i, %Abc_ReadPla.exit.thread96 ]
  %i.eu = phi i32 [ %.pre, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..0..0..0.13.i, %Abc_ReadPla.exit.thread92 ], [ %.0..0..0..0..0.13.i, %Abc_ReadPla.exit.thread96 ]
  %i.ev = tail call fastcc ptr @Res6_ManStart(i32 noundef 0, i32 noundef %i.eu, i32 noundef %i.et, i32 noundef %i.es) ; 18 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.thread, label %.preheader103

.preheader103:                                    ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !40 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %.preheader102.lr.ph, label %.preheader100

.preheader102.lr.ph:                              ; preds = %.preheader103
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !44 ; 2 uses
  %i.fc = load i32, ptr %i.ae, align 4, !tbaa !19
  %.fr126 = freeze i32 %i.fc                      ; 5 uses
  %.val56 = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.fd = icmp sgt i32 %.fr126, 0
  %wide.trip.count.i = zext i32 %.fr126 to i64    ; 11 uses
  br i1 %i.fd, label %.preheader102.us.preheader, label %.preheader100

end_hunk_0
begin_hunk_1_@Res6_FindBestEval:bb.a
  %i.hk = getelementptr i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.hk, align 8, !tbaa !31
  %i.hl = sext i32 %.val to i64
  %i.hm = getelementptr [4 x i8], ptr %.val50, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 -4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !44 ; 2 uses
  %i.hr = sext i32 %i.ho to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !45 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !59 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !45 ; 2 uses
  %i.hx = xor i32 %i.ho, 1
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !45 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !45 ; 2 uses
  %wide.trip.count.i65 = zext nneg i32 %i.hi to i64 ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.hi, 4
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i64
  %n.vec146 = and i64 %wide.trip.count.i65, 2147483644 ; 3 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next158, %vector.body147 ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.iv, %vector.body147 ]
  %vec.phi149 = phi <2 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.iw, %vector.body147 ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index148 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load150 = load <2 x i64>, ptr %i.id, align 8, !tbaa !46
  %wide.load151 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !46
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %index148 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load152 = load <2 x i64>, ptr %i.if, align 8, !tbaa !46
  %wide.load153 = load <2 x i64>, ptr %i.ig, align 8, !tbaa !46
  %i.ih = and <2 x i64> %wide.load152, %wide.load150
  %i.ii = and <2 x i64> %wide.load153, %wide.load151
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %index148 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load154 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !46
  %wide.load155 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !46
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index148 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load156 = load <2 x i64>, ptr %i.il, align 8, !tbaa !46
  %wide.load157 = load <2 x i64>, ptr %i.im, align 8, !tbaa !46
  %i.in = and <2 x i64> %wide.load156, %wide.load154
  %i.io = and <2 x i64> %wide.load157, %wide.load155
  %i.ip = or <2 x i64> %i.in, %i.ih
  %i.iq = or <2 x i64> %i.io, %i.ii
  %i.ir = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ip)
  %i.is = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.iq)
  %i.it = trunc nuw nsw <2 x i64> %i.ir to <2 x i32>
  %i.iu = trunc nuw nsw <2 x i64> %i.is to <2 x i32>
  %i.iv = add <2 x i32> %vec.phi, %i.it           ; 2 uses
  %i.iw = add <2 x i32> %vec.phi149, %i.iu        ; 2 uses
  %index.next158 = add nuw i64 %index148, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next158, %n.vec146
  br i1 %i.ix, label %middle.block159, label %vector.body147, !llvm.loop !108

middle.block159:                                  ; preds = %vector.body147
  %bin.rdx = add <2 x i32> %i.iw, %i.iv
  %i.iy = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n160 = icmp eq i64 %n.vec146, %wide.trip.count.i65
  br i1 %cmp.n160, label %Res6_FindGetCost.exit, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph.i64, %middle.block159
  %indvars.iv.i66.ph = phi i64 [ 0, %.lr.ph.i64 ], [ %n.vec146, %middle.block159 ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i64 ], [ %i.iy, %middle.block159 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i67, %scalar.ph143 ], [ %indvars.iv.i66.ph, %scalar.ph143.preheader ] ; 5 uses
  %.016.i = phi i32 [ %i.jm, %scalar.ph143 ], [ %.016.i.ph, %scalar.ph143.preheader ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.i66
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !46
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.i66
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !46
  %i.jd = and i64 %i.jc, %i.ja
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i66
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !46
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i66
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !46
  %i.ji = and i64 %i.jh, %i.jf
  %i.jj = or i64 %i.ji, %i.jd
  %i.jk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.jj)
  %i.jl = trunc nuw nsw i64 %i.jk to i32
  %i.jm = add nuw nsw i32 %.016.i, %i.jl          ; 2 uses
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i65
  br i1 %exitcond.not.i68, label %Res6_FindGetCost.exit, label %scalar.ph143, !llvm.loop !109

Res6_FindGetCost.exit:                            ; preds = %scalar.ph143, %middle.block159, %._crit_edge
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.iy, %middle.block159 ], [ %i.jm, %scalar.ph143 ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree nounwind uwtable
define void @Res6_ManResubVerify(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @Res6_FindBestEval(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.a, i32 noundef %i.d) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Res6_ManResubCheck(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [1000 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #22 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %0) #22 ; 0 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull align 1 dereferenceable(5) @.str.24, i64 5, i1 false) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call ptr @Res6_ManRead(ptr noundef %0)   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str) ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Res6_ManReadSol.exit.thread, label %.preheader.i

Res6_ManReadSol.exit.thread:                      ; preds = %bb.d
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.s

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.l = call i32 @fgetc(ptr noundef nonnull %i.i)
  %.not.i = icmp eq i32 %i.l, 10
  br i1 %.not.i, label %bb.e, label %.preheader.i, !llvm.loop !110

bb.e:                                             ; preds = %.preheader.i
  %i.m = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !27
  store i32 16, ptr %i.m, align 8, !tbaa !30
  %i.o = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !31
  %i.q = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a) #22
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.lr.ph.i, label %Res6_ManReadSol.exit

.lr.ph.i:                                         ; preds = %bb.e, %Vec_IntPush.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Vec_IntPush.exit.i ], [ 0, %bb.e ] ; 6 uses
  %storemerge12.i = phi ptr [ %storemerge13.i, %Vec_IntPush.exit.i ], [ %i.o, %bb.e ] ; 6 uses
  %spec.select.sink.i10.i = phi i32 [ %spec.select.sink.i9.i, %Vec_IntPush.exit.i ], [ 16, %bb.e ] ; 4 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !8
  %i.t = trunc nsw i64 %indvars.iv.i to i32
  %i.u = icmp eq i32 %spec.select.sink.i10.i, %i.t
  br i1 %i.u, label %bb.f, label %Vec_IntPush.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = icmp samesign ult i64 %indvars.iv.i, 16
  br i1 %i.v, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i = icmp eq ptr %storemerge12.i, null
  br i1 %.not9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge12.i, i64 noundef 64) #24
  br label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit.i

bb.j:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i64 %indvars.iv.i, 1073741823
  %i.z = shl nuw nsw i32 %spec.select.sink.i10.i, 1
  %spec.select.i.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %i.aa = zext nneg i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv.i, %i.aa
  br i1 %.not.i9.i.i, label %bb.k, label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i.i = icmp eq ptr %storemerge12.i, null
  %3 = zext nneg i32 %spec.select.i.i to i64
  %i.ab = shl nuw nsw i64 %3, 2                   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call ptr @realloc(ptr noundef nonnull %storemerge12.i, i64 noundef %i.ab) #24
  br label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ad = call noalias ptr @malloc(i64 noundef %i.ab) #21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %.lr.ph.i
  %storemerge13.i = phi ptr [ %storemerge12.i, %.lr.ph.i ], [ %storemerge12.i, %bb.j ], [ %i.x, %bb.i ], [ %i.w, %bb.h ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ] ; 4 uses
  %spec.select.sink.i9.i = phi i32 [ %spec.select.sink.i10.i, %.lr.ph.i ], [ %spec.select.sink.i10.i, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i.i, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %storemerge13.i, i64 %indvars.iv.i
  store i32 %i.s, ptr %i.ae, align 4, !tbaa !8
  %i.af = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a) #22
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit.i
  %i.ah = trunc nsw i64 %indvars.iv.next.i to i32
  store i32 %i.ah, ptr %i.n, align 4, !tbaa !27
  store i32 %spec.select.sink.i9.i, ptr %i.m, align 8
  store ptr %storemerge13.i, ptr %i.p, align 8
  br label %Res6_ManReadSol.exit

Res6_ManReadSol.exit:                             ; preds = %bb.e, %._crit_edge.i
  %i.ai = phi ptr [ %i.o, %bb.e ], [ %storemerge13.i, %._crit_edge.i ] ; 2 uses
  %i.aj = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ak = icmp eq ptr %i.h, null
  br i1 %i.ak, label %bb.s, label %bb.n

bb.n:                                             ; preds = %Res6_ManReadSol.exit
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.h, align 8, !tbaa !66  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40 ; 2 uses
  %i.ao = xor i32 %i.al, -1
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !68
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.al, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at) ; 0 uses
  call void @Res6_PrintSolution(ptr noundef nonnull %i.m, i32 noundef %i.an)
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.av = call i32 @Res6_FindBestEval(ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.m, i32 noundef 0) ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.critedge
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %Res6_ManResubVerify.exit

bb.q:                                             ; preds = %.critedge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.av, i32 noundef %i.ay) ; 0 uses
  br label %Res6_ManResubVerify.exit

Res6_ManResubVerify.exit:                         ; preds = %bb.p, %bb.q
  %.not.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i20, label %Vec_IntFree.exit, label %bb.r

bb.r:                                             ; preds = %Res6_ManResubVerify.exit
  call void @free(ptr noundef nonnull %i.ai) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Res6_ManResubVerify.exit, %bb.r
  call void @free(ptr noundef nonnull %i.m) #22
  call fastcc void @Res6_ManStop(ptr noundef nonnull %i.h)
  br label %bb.s

bb.s:                                             ; preds = %Res6_ManReadSol.exit.thread, %Res6_ManReadSol.exit, %Vec_IntFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Res6_FindBestEvalPla(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 124
  %.val66 = load i32, ptr %i.a, align 4, !tbaa !27 ; 3 uses
  %i.b = shl i32 %.val66, 1
  %i.c = add i32 %i.b, 2
  %i.d = icmp sgt i32 %.val66, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 128
  %.val69 = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  %wide.trip.count24.i = zext i32 %i.i to i64     ; 10 uses
  br i1 %i.j, label %.split.preheader, label %.critedge.preheader

.split.preheader:                                 ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val66 to i64
  %min.iters.check116 = icmp ult i32 %i.i, 4
  %n.vec118 = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  %cmp.n125 = icmp eq i64 %n.vec118, %wide.trip.count24.i
  %xtraiter = and i64 %wide.trip.count24.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count24.i
  %xtraiter230 = and i64 %wide.trip.count24.i, 3  ; 2 uses
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br label %.split

.critedge.preheader:                              ; preds = %Abc_TtCopy.exit.loopexit.1, %.lr.ph, %bb.a
  %i.k = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !27  ; 3 uses
  %i.l = icmp sgt i32 %.val, 1
  br i1 %i.l, label %.critedge2.lr.ph, label %.critedge.preheader..critedge._crit_edge_crit_edge

.critedge.preheader..critedge._crit_edge_crit_edge: ; preds = %.critedge.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !69
  br label %.critedge._crit_edge

.critedge2.lr.ph:                                 ; preds = %.critedge.preheader
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val68 = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = sext i32 %i.c to i64
  %i.q = zext nneg i32 %.val to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !44   ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.p
  %i.s = load i32, ptr %i.o, align 4, !tbaa !69   ; 8 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  %wide.trip.count.i74 = zext nneg i32 %i.s to i64 ; 10 uses
  %min.iters.check185 = icmp ult i32 %i.s, 6
  %n.vec187 = and i64 %wide.trip.count.i74, 2147483644 ; 3 uses
  %cmp.n196 = icmp eq i64 %n.vec187, %wide.trip.count.i74
  %xtraiter233 = and i64 %wide.trip.count.i74, 3  ; 2 uses
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  %min.iters.check167 = icmp ult i32 %i.s, 6
  %n.vec169 = and i64 %wide.trip.count.i74, 2147483644 ; 3 uses
  %cmp.n178 = icmp eq i64 %n.vec169, %wide.trip.count.i74
  %xtraiter236 = and i64 %wide.trip.count.i74, 3  ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  %wide.trip.count28.i = zext nneg i32 %i.s to i64 ; 10 uses
  %min.iters.check149 = icmp ult i32 %i.s, 6
  %n.vec151 = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec151, %wide.trip.count28.i
  %xtraiter239 = and i64 %wide.trip.count28.i, 3  ; 2 uses
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  %min.iters.check131 = icmp ult i32 %i.s, 6
  %n.vec133 = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec133, %wide.trip.count28.i
  %xtraiter242 = and i64 %wide.trip.count28.i, 1
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  %i.u = add nsw i64 %wide.trip.count28.i, -1
  br label %.critedge2

.split:                                           ; preds = %.split.preheader, %Abc_TtCopy.exit.loopexit.1
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next, %Abc_TtCopy.exit.loopexit.1 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val69, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8
  %i.x = shl nsw i32 %i.w, 1
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.z = shl i32 %indvars.iv.tr, 1
  %i.aa = add i32 %i.z, 2
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 7 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.y
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 7 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %diff.check114 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check116, i1 true, i1 %diff.check114
  br i1 %or.cond, label %.lr.ph18.i.preheader, label %vector.body119

vector.body119:                                   ; preds = %.split, %vector.body119
  %index120 = phi i64 [ %index.next123, %vector.body119 ], [ 0, %.split ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load121 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !46
  %wide.load122 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !46
end_hunk_1
