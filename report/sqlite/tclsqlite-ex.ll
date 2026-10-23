Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@DbEvalNextCmd:bb.a
bb.ai:                                            ; preds = %bb.ag
  %i.ga = load i32, ptr %i.fv, align 8, !tbaa !143
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 248
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !145
  %i.gf = call ptr %i.ge(ptr noundef nonnull %i.fv) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %.080 = phi ptr [ %i.gf, %bb.aj ], [ %i.fv, %bb.ai ], [ %i.fz, %bb.ah ] ; 4 uses
  %i.gg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 3968
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !204
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !105
  %i.gl = load ptr, ptr %i.m, align 8, !tbaa !194
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !190 ; 6 uses
  %i.go = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  %i.gp = call i32 @sqlite3_column_type(ptr noundef %i.gn, i32 noundef %i.go) #20
  switch i32 %i.gp, label %bb.ar [
    i32 4, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.ap
    i32 5, label %bb.aq
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gq = call i32 @sqlite3_column_bytes(ptr noundef %i.gn, i32 noundef %i.go) #20
  %i.gr = call ptr @sqlite3_column_blob(ptr noundef %i.gn, i32 noundef %i.go) #20 ; 2 uses
  %.not.i102 = icmp eq ptr %i.gr, null
  %spec.select.i103 = select i1 %.not.i102, i32 0, i32 %i.gq
  %i.gs = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 416
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !171
  %i.gv = call ptr %i.gu(ptr noundef %i.gr, i32 noundef %spec.select.i103) #20, !inline_history !381
  br label %dbEvalColumnValue.exit104

bb.am:                                            ; preds = %bb.ak
  %i.gw = call i64 @sqlite3_column_int64(ptr noundef %i.gn, i32 noundef %i.go) #20 ; 3 uses
  %i.gx = add i64 %i.gw, 2147483647
  %or.cond.i101 = icmp ult i64 %i.gx, 4294967295
  %i.gy = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %or.cond.i101, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 432
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !150
  %i.hb = trunc nsw i64 %i.gw to i32
  %i.hc = call ptr %i.ha(i32 noundef %i.hb) #20, !inline_history !381
  br label %dbEvalColumnValue.exit104

bb.ao:                                            ; preds = %bb.am
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 3920
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !199
  %i.hf = call ptr %i.he(i64 noundef %i.gw) #20, !inline_history !381
  br label %dbEvalColumnValue.exit104

bb.ap:                                            ; preds = %bb.ak
  %i.hg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 424
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !200
  %i.hj = call double @sqlite3_column_double(ptr noundef %i.gn, i32 noundef %i.go) #20
  %i.hk = call ptr %i.hi(double noundef %i.hj) #20, !inline_history !381
  br label %dbEvalColumnValue.exit104

bb.aq:                                            ; preds = %bb.ak
  %i.hl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 464
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !149
  %i.ho = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !168
  %i.hr = call ptr %i.hn(ptr noundef %i.hq, i32 noundef -1) #20, !inline_history !381
  br label %dbEvalColumnValue.exit104

bb.ar:                                            ; preds = %bb.ak
  %i.hs = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 464
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !149
  %i.hv = call ptr @sqlite3_column_text(ptr noundef %i.gn, i32 noundef %i.go) #20
  %i.hw = call ptr %i.hu(ptr noundef %i.hv, i32 noundef -1) #20, !inline_history !381
  br label %dbEvalColumnValue.exit104

dbEvalColumnValue.exit104:                        ; preds = %bb.al, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.1.i100 = phi ptr [ %i.hw, %bb.ar ], [ %i.gv, %bb.al ], [ %i.hr, %bb.aq ], [ %i.hk, %bb.ap ], [ %i.hc, %bb.an ], [ %i.hf, %bb.ao ]
  %i.hx = call i32 %i.gi(ptr noundef %1, ptr noundef %.080, ptr noundef %i.gk, ptr noundef %.1.i100) #20
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %dbEvalColumnValue.exit104
  %i.hz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1584
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !201
  %i.ic = call ptr %i.ib(ptr noundef %1, ptr noundef nonnull %.fr120, ptr noundef null, ptr noundef %.080, i32 noundef 0) #20 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %dbEvalColumnValue.exit104
  %i.id = load i32, ptr %.080, align 8, !tbaa !143
  %i.ie = icmp slt i32 %i.id, 1
  br i1 %i.ie, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.if = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 256
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !144
  call void %i.ih(ptr noundef nonnull %.080) #20
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.q, %bb.w, %bb.v, %dbEvalColumnValue.exit99, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.m, !llvm.loop !379

._crit_edge.split:                                ; preds = %bb.av, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ii = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2248
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !123
  call void %i.ik(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #20, !inline_history !124
  %i.il = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  %i.im = icmp ne i32 %i.il, 8
  %i.in = load i32, ptr %i.b, align 4
  %i.io = icmp slt i32 %i.in, 6
  %or.cond.i105.not111 = select i1 %i.im, i1 true, i1 %i.io
  %i.ip = icmp slt i32 %i.il, 9
  %.not109 = and i1 %i.ip, %or.cond.i105.not111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not109, label %bb.aw, label %.thread

.thread:                                          ; preds = %._crit_edge.split, %._crit_edge.split.us.us
  %i.iq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4712
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !178
  call void %i.is(ptr noundef %1, ptr noundef nonnull @DbEvalNextCmd, ptr noundef %i.e, ptr noundef %i.g, ptr noundef null, ptr noundef null) #20
  %i.it = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4688
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !179
  %i.iw = call i32 %i.iv(ptr noundef %1, ptr noundef %i.g, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ba

bb.aw:                                            ; preds = %._crit_edge.split
  %i.ix = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2360
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !180
  %i.ja = call i32 %i.iz(ptr noundef %1, ptr noundef %i.g, i32 noundef 0) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.jb = and i32 %i.ja, -5
  %or.cond = icmp eq i32 %i.jb, 0
  br i1 %or.cond, label %.lr.ph116.split, label %.critedge, !llvm.loop !380

.critedge:                                        ; preds = %bb.aw, %.lr.ph116.split, %bb.k, %.lr.ph116.split.us, %bb.a
  %.2 = phi i32 [ %2, %bb.a ], [ %i.n, %.lr.ph116.split.us ], [ %i.bv, %bb.k ], [ %i.bx, %.lr.ph116.split ], [ %i.ja, %bb.aw ] ; 2 uses
  %i.jc = load i32, ptr %i.g, align 8, !tbaa !143 ; 2 uses
  %i.jd = add nsw i32 %i.jc, -1
  store i32 %i.jd, ptr %i.g, align 8, !tbaa !143
  %i.je = icmp slt i32 %i.jc, 2
  br i1 %i.je, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.critedge
  %i.jf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 256
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !144
  call void %i.jh(ptr noundef nonnull %i.g) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.critedge
  call fastcc void @dbEvalFinalize(ptr noundef %i.e)
  %i.ji = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !119
  call void %i.jk(ptr noundef %i.e) #20
  %i.jl = icmp eq i32 %.2, 3
  br i1 %i.jl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1752
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !163
  call void %i.jo(ptr noundef %1) #20
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.az, %bb.ay
  %.286 = phi i32 [ %i.iw, %.thread ], [ 0, %bb.az ], [ %.2, %bb.ay ]
  ret i32 %.286
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dbQrf(ptr nofree noundef captures(none) %0, i32 noundef range(i32 2, -2147483648) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.sqlite3_qrf_spec, align 8   ; 33 uses
  %i.c = alloca [6 x ptr], align 16               ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 9 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %i.q = alloca i32, align 4                      ; 9 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 120, i1 false)
  store i8 1, ptr %3, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.a, ptr %i.v, align 8, !tbaa !388
  %i.w = icmp samesign ugt i32 %1, 2
  br i1 %i.w, label %.lr.ph367, label %.critedge

.lr.ph367:                                        ; preds = %bb.a
  %i.x = add nsw i32 %1, -1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 1
  br label %bb.b

.preheader:                                       ; preds = %bb.cl
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not368 = icmp eq ptr %.pre, null
  br i1 %.not368, label %.critedge, label %.lr.ph369

bb.b:                                             ; preds = %.lr.ph367, %bb.cl
  %.0196412 = phi i32 [ 2, %.lr.ph367 ], [ %i.ok, %bb.cl ] ; 20 uses
  %i.az = phi ptr [ null, %.lr.ph367 ], [ %i.oj, %bb.cl ] ; 33 uses
  %4 = phi ptr [ null, %.lr.ph367 ], [ %i.oi, %bb.cl ] ; 33 uses
  %i.ba = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2736
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !107
  %i.bd = sext i32 %.0196412 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !105
  %i.bg = call ptr %i.bc(ptr noundef %i.bf) #20   ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 16 dereferenceable(48) @__const.dbQrf.azBool, i64 48, i1 false)
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29
  %.not236 = icmp eq i8 %i.bh, 45
  br i1 %.not236, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = load ptr, ptr %i.b, align 8, !tbaa !66
  %.not253 = icmp eq ptr %5, null
  br i1 %.not253, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 576
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !106
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !122
  call void (ptr, ...) %i.bk(ptr noundef %i.bl, ptr noundef nonnull @.str.300, ptr noundef nonnull %i.bg, ptr noundef null) #20
  br label %bb.ck

bb.e:                                             ; preds = %bb.c
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !66
  br label %bb.cl

bb.f:                                             ; preds = %bb.b
  %i.bm = icmp eq i32 %.0196412, %i.x
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 576
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !106
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !122
  call void (ptr, ...) %i.bp(ptr noundef %i.bq, ptr noundef nonnull @.str.365, ptr noundef nonnull %i.bg, ptr noundef null) #20
  br label %bb.ck

bb.h:                                             ; preds = %bb.f
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(7) @.str.366) #21
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.bt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2448
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !129
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.bx = add nsw i32 %.0196412, 1                ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !105
  %i.cb = call i32 %i.bv(ptr noundef %i.bw, ptr noundef %i.ca, ptr noundef nonnull @dbQrf.azStyles, i32 noundef 8, ptr noundef nonnull @.str.385, i32 noundef 0, ptr noundef nonnull %i.d) #20 ; 2 uses
  %.not252 = icmp eq i32 %i.cb, 0
  br i1 %.not252, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.cc = load i32, ptr %i.d, align 4, !tbaa !30
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr @dbQrf.aStyleMap, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  store i8 %i.cf, ptr %i.ay, align 1, !tbaa !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.cl

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ck

bb.k:                                             ; preds = %bb.h
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(5) @.str.386) #21
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ci = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2448
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !129
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.cm = add nsw i32 %.0196412, 1                ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !105
  %i.cq = call i32 %i.ck(ptr noundef %i.cl, ptr noundef %i.cp, ptr noundef nonnull @dbQrf.azEsc, i32 noundef 8, ptr noundef nonnull @.str.389, i32 noundef 0, ptr noundef nonnull %i.e) #20 ; 2 uses
  %.not251 = icmp eq i32 %i.cq, 0
  br i1 %.not251, label %.thread257, label %bb.m

.thread257:                                       ; preds = %bb.l
  %i.cr = load i32, ptr %i.e, align 4, !tbaa !30
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr @dbQrf.aEscMap, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  store i8 %i.cu, ptr %i.ax, align 2, !tbaa !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.cl

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ck

bb.n:                                             ; preds = %bb.k
  %i.cv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(6) @.str.390) #21
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(7) @.str.391) #21
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !29
  %i.db = icmp eq i8 %i.da, 101                   ; 2 uses
  %i.dc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2448
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !129
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.dg = add nsw i32 %.0196412, 1                ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !105
  %i.dk = select i1 %i.db, i64 2, i64 0
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @dbQrf.azText, i64 %i.dk
  %i.dm = call i32 %i.de(ptr noundef %i.df, ptr noundef %i.dj, ptr noundef nonnull %i.dl, i32 noundef 8, ptr noundef nonnull %i.bg, i32 noundef 0, ptr noundef nonnull %i.f) #20 ; 2 uses
  %.not249 = icmp eq i32 %i.dm, 0
  br i1 %.not249, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.dn = load i32, ptr %i.f, align 4, !tbaa !30  ; 4 uses
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr @dbQrf.aTextMap, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !29
  store i8 %i.dq, ptr %i.aw, align 1, !tbaa !391
  br label %.thread260

bb.s:                                             ; preds = %bb.q
  %i.dr = icmp slt i32 %i.dn, 2
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not250 = icmp eq i32 %i.dn, 0
  %i.ds = select i1 %.not250, i8 1, i8 2
  store i8 %i.ds, ptr %i.au, align 2, !tbaa !392
  store i8 0, ptr %i.av, align 4, !tbaa !393
  br label %.thread260

bb.u:                                             ; preds = %bb.s
  store i8 2, ptr %i.au, align 2, !tbaa !392
  %i.dt = zext nneg i32 %i.dn to i64
  %i.du = getelementptr i8, ptr @dbQrf.aTextMap, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !29
  store i8 %i.dw, ptr %i.av, align 4, !tbaa !393
  br label %.thread260

.thread260:                                       ; preds = %bb.r, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.cl

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.ck

bb.w:                                             ; preds = %bb.o
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(6) @.str.396) #21
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.dz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2448
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !129
  %i.ec = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.ed = add nsw i32 %.0196412, 1                ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !105
  %i.eh = call i32 %i.eb(ptr noundef %i.ec, ptr noundef %i.eg, ptr noundef nonnull @dbQrf.azBlob, i32 noundef 8, ptr noundef nonnull @.str.398, i32 noundef 0, ptr noundef nonnull %i.g) #20 ; 2 uses
  %.not248 = icmp eq i32 %i.eh, 0
  br i1 %.not248, label %.thread263, label %bb.y

.thread263:                                       ; preds = %bb.x
  %i.ei = load i32, ptr %i.g, align 4, !tbaa !30
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr @dbQrf.aBlobMap, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !29
  store i8 %i.el, ptr %i.at, align 1, !tbaa !394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.cl

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ck

bb.z:                                             ; preds = %bb.w
  %i.em = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(10) @.str.399) #21
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i32 0, ptr %i.h, align 4, !tbaa !30
  %i.eo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2448
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !129
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.es = add nsw i32 %.0196412, 1                ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !105
  %i.ew = call i32 %i.eq(ptr noundef %i.er, ptr noundef %i.ev, ptr noundef nonnull %i.c, i32 noundef 8, ptr noundef nonnull @.str.399, i32 noundef 0, ptr noundef nonnull %i.h) #20 ; 2 uses
  %.not247 = icmp eq i32 %i.ew, 0
  br i1 %.not247, label %.thread266, label %bb.ab

.thread266:                                       ; preds = %bb.aa
  %i.ex = load i32, ptr %i.h, align 4, !tbaa !30
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr @__const.dbQrf.aBoolMap, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !29
  store i8 %i.fa, ptr %i.as, align 1, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.cl

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.ck

bb.ac:                                            ; preds = %bb.z
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(11) @.str.400) #21
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(13) @.str.401) #21
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ff = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(8) @.str.402) #21
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 0, ptr %i.i, align 4, !tbaa !30
  %i.fh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2448
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !129
  %i.fk = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.fl = add nsw i32 %.0196412, 1                ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !105
  %i.fp = call i32 %i.fj(ptr noundef %i.fk, ptr noundef %i.fo, ptr noundef nonnull %i.c, i32 noundef 8, ptr noundef nonnull %i.bg, i32 noundef 0, ptr noundef nonnull %i.i) #20 ; 2 uses
  %.not246 = icmp eq i32 %i.fp, 0
  br i1 %.not246, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !29
  %i.fs = load i32, ptr %i.i, align 4, !tbaa !30
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr @__const.dbQrf.aBoolMap, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !29  ; 3 uses
  switch i8 %i.fr, label %bb.aj [
    i8 116, label %bb.ah
    i8 98, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i8 %i.fv, ptr %i.aq, align 8, !tbaa !396
  br label %.thread270

bb.ai:                                            ; preds = %bb.ag
  store i8 %i.fv, ptr %i.ap, align 4, !tbaa !397
  br label %.thread270

bb.aj:                                            ; preds = %bb.ag
  store i8 %i.fv, ptr %i.ar, align 1, !tbaa !398
  br label %.thread270

.thread270:                                       ; preds = %bb.ah, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.cl

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.ck

bb.al:                                            ; preds = %bb.ae
  %i.fw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(14) @.str.403) #21
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(12) @.str.404) #21
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  store i32 0, ptr %i.j, align 4, !tbaa !30
  %i.ga = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2448
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !129
  %i.gd = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.ge = add nsw i32 %.0196412, 1                ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !105
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !29
  %i.gk = icmp eq i8 %i.gj, 100
  %i.gl = select i1 %i.gk, ptr @.str.405, ptr @.str.406
  %i.gm = call i32 %i.gc(ptr noundef %i.gd, ptr noundef %i.gh, ptr noundef nonnull @dbQrf.azAlign, i32 noundef 8, ptr noundef nonnull %i.gl, i32 noundef 0, ptr noundef nonnull %i.j) #20 ; 2 uses
  %.not245 = icmp eq i32 %i.gm, 0
  br i1 %.not245, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.gn = load i8, ptr %i.gi, align 1, !tbaa !29
  %i.go = icmp eq i8 %i.gn, 100
  %i.gp = load i32, ptr %i.j, align 4, !tbaa !30
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr @dbQrf.aAlignMap, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !29  ; 2 uses
  br i1 %i.go, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i8 %i.gs, ptr %i.ao, align 1, !tbaa !399
  br label %.thread274

bb.aq:                                            ; preds = %bb.ao
  store i8 %i.gs, ptr %i.an, align 2, !tbaa !400
  br label %.thread274

.thread274:                                       ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.cl

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.ck

bb.as:                                            ; preds = %bb.am
  %i.gt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(6) @.str.407) #21
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(13) @.str.408) #21
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(11) @.str.409) #21
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(12) @.str.410) #21
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.aw, label %bb.bf

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store i32 0, ptr %i.k, align 4, !tbaa !30
  %i.hb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !133
  %i.he = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.hf = add nsw i32 %.0196412, 1                ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !105
  %i.hj = call i32 %i.hd(ptr noundef %i.he, ptr noundef %i.hi, ptr noundef nonnull %i.k) #20 ; 2 uses
  %.not244 = icmp eq i32 %i.hj, 0
  br i1 %.not244, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.hk = load i32, ptr %i.k, align 4, !tbaa !30  ; 3 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hm = icmp samesign ugt i32 %i.hk, 10000
  br i1 %i.hm, label %.sink.split, label %bb.az

.sink.split:                                      ; preds = %bb.ay, %bb.ax
  %.sink = phi i32 [ 0, %bb.ax ], [ 10000, %bb.ay ] ; 2 uses
  store i32 %.sink, ptr %i.k, align 4, !tbaa !30
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.ay
  %i.hn = phi i32 [ %i.hk, %bb.ay ], [ %.sink, %.sink.split ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !29
  %i.hq = trunc nuw nsw i32 %i.hn to i16          ; 4 uses
  switch i8 %i.hp, label %bb.bd [
    i8 119, label %bb.ba
    i8 115, label %bb.bb
    i8 116, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  store i16 %i.hq, ptr %i.al, align 2, !tbaa !401
  br label %.thread278

bb.bb:                                            ; preds = %bb.az
  store i16 %i.hq, ptr %i.ak, align 8, !tbaa !402
  br label %.thread278

bb.bc:                                            ; preds = %bb.az
  store i16 %i.hq, ptr %i.aj, align 4, !tbaa !403
  br label %.thread278

bb.bd:                                            ; preds = %bb.az
  store i16 %i.hq, ptr %i.am, align 2, !tbaa !404
  br label %.thread278

.thread278:                                       ; preds = %bb.ba, %bb.bc, %bb.bd, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br label %bb.cl

bb.be:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br label %bb.ck

bb.bf:                                            ; preds = %bb.av
  %i.hr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(11) @.str.411) #21
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i32 0, ptr %i.l, align 4, !tbaa !30
  %i.ht = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 320
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !133
  %i.hw = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.hx = add nsw i32 %.0196412, 1                ; 2 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !105
  %i.ib = call i32 %i.hv(ptr noundef %i.hw, ptr noundef %i.ia, ptr noundef nonnull %i.l) #20 ; 2 uses
  %.not243 = icmp eq i32 %i.ib, 0
  br i1 %.not243, label %.thread281, label %bb.bh

.thread281:                                       ; preds = %bb.bg
  %i.ic = load i32, ptr %i.l, align 4, !tbaa !30
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ic, i32 0)
  store i32 %spec.select, ptr %i.ai, align 4, !tbaa !405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %bb.cl

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %bb.ck

bb.bi:                                            ; preds = %bb.bf
  %i.id = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(13) @.str.412) #21
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  store i32 0, ptr %i.m, align 4, !tbaa !30
  %i.if = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 320
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !133
  %i.ii = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.ij = add nsw i32 %.0196412, 1                ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !105
  %i.in = call i32 %i.ih(ptr noundef %i.ii, ptr noundef %i.im, ptr noundef nonnull %i.m) #20 ; 2 uses
  %.not242 = icmp eq i32 %i.in, 0
  br i1 %.not242, label %.thread284, label %bb.bk

.thread284:                                       ; preds = %bb.bj
  %i.io = load i32, ptr %i.m, align 4, !tbaa !30
  %spec.select477 = call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  store i32 %spec.select477, ptr %i.ah, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  br label %bb.cl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  br label %bb.ck

bb.bl:                                            ; preds = %bb.bi
  %i.ip = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(7) @.str.413) #21
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  store i32 0, ptr %i.n, align 4, !tbaa !30
  %i.ir = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 392
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !174
  %i.iu = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.iv = add nsw i32 %.0196412, 1                ; 2 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iw ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !105
  %i.iz = call i32 %i.it(ptr noundef %i.iu, ptr noundef %i.iy, ptr noundef nonnull %i.n) #20 ; 2 uses
  %.not239 = icmp eq i32 %i.iz, 0
  br i1 %.not239, label %bb.bn, label %.thread293

bb.bn:                                            ; preds = %bb.bm
  call void @sqlite3_free(ptr noundef %4) #20
  %i.ja = load i32, ptr %i.n, align 4, !tbaa !30
  %i.jb = add nsw i32 %i.ja, 1
  %i.jc = sext i32 %i.jb to i64
  %i.jd = call ptr @sqlite3_malloc64(i64 noundef %i.jc) #20 ; 6 uses
  store ptr %i.jd, ptr %i.af, align 8, !tbaa !407
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 576
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !106
  %i.ji = load ptr, ptr %i.ac, align 8, !tbaa !122
  call void (ptr, ...) %i.jh(ptr noundef %i.ji, ptr noundef nonnull @.str.15, ptr noundef null) #20
  br label %.thread293

bb.bp:                                            ; preds = %bb.bn
  %i.jj = load i32, ptr %i.n, align 4, !tbaa !30
  %i.jk = add nsw i32 %i.jj, 1
  %i.jl = sext i32 %i.jk to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jd, i8 0, i64 %i.jl, i1 false)
  %i.jm = load i32, ptr %i.n, align 4, !tbaa !30  ; 2 uses
  store i32 %i.jm, ptr %i.ag, align 4, !tbaa !408
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %bb.bp, %bb.br
  %indvars.iv409 = phi i64 [ %indvars.iv.next410, %bb.br ], [ 0, %bb.bp ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #20
  %i.jo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 384
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !175
  %i.jr = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.js = load ptr, ptr %i.ix, align 8, !tbaa !105
  %i.jt = trunc nuw nsw i64 %indvars.iv409 to i32
  %i.ju = call i32 %i.jq(ptr noundef %i.jr, ptr noundef %i.js, i32 noundef %i.jt, ptr noundef nonnull %i.p) #20 ; 2 uses
  %.not240 = icmp eq i32 %i.ju, 0
  br i1 %.not240, label %bb.bq, label %.thread288

bb.bq:                                            ; preds = %.lr.ph363
  %i.jv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2448
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !129
  %i.jy = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.jz = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.ka = call i32 %i.jx(ptr noundef %i.jy, ptr noundef %i.jz, ptr noundef nonnull @dbQrf.azAlign, i32 noundef 8, ptr noundef nonnull @.str.414, i32 noundef 0, ptr noundef nonnull %i.o) #20 ; 2 uses
  %.not241 = icmp eq i32 %i.ka, 0
  br i1 %.not241, label %bb.br, label %.thread288

.thread288:                                       ; preds = %.lr.ph363, %bb.bq
  %.2187.ph = phi i32 [ %i.ka, %bb.bq ], [ %i.ju, %.lr.ph363 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  br label %.thread293

bb.br:                                            ; preds = %bb.bq
  %i.kb = load i32, ptr %i.o, align 4, !tbaa !30
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr @dbQrf.aAlignMap, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %indvars.iv409
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.kg = load i32, ptr %i.n, align 4, !tbaa !30
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp slt i64 %indvars.iv.next410, %i.kh
  br i1 %i.ki, label %.lr.ph363, label %._crit_edge364, !llvm.loop !384

.thread293:                                       ; preds = %bb.bm, %bb.bo, %.thread288
  %.ph = phi ptr [ %i.jd, %.thread288 ], [ null, %bb.bo ], [ %4, %bb.bm ]
  %.3188.ph = phi i32 [ %.2187.ph, %.thread288 ], [ 1, %bb.bo ], [ %i.iz, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %bb.ck

._crit_edge364:                                   ; preds = %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %bb.cl

bb.bs:                                            ; preds = %bb.bl
  %i.kj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(8) @.str.415) #21
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #20
  store i32 0, ptr %i.q, align 4, !tbaa !30
  %i.kl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 392
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !174
  %i.ko = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.kp = add nsw i32 %.0196412, 1                ; 2 uses
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.kq ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !105
  %i.kt = call i32 %i.kn(ptr noundef %i.ko, ptr noundef %i.ks, ptr noundef nonnull %i.q) #20 ; 2 uses
  %.not237 = icmp eq i32 %i.kt, 0
  br i1 %.not237, label %bb.bu, label %.thread303

bb.bu:                                            ; preds = %bb.bt
  call void @sqlite3_free(ptr noundef %i.az) #20
  %i.ku = load i32, ptr %i.q, align 4, !tbaa !30
  %i.kv = add nsw i32 %i.ku, 1
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 1
  %i.ky = call ptr @sqlite3_malloc64(i64 noundef %i.kx) #20 ; 6 uses
  store ptr %i.ky, ptr %i.ad, align 8, !tbaa !409
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.la = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 576
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !106
  %i.ld = load ptr, ptr %i.ac, align 8, !tbaa !122
  call void (ptr, ...) %i.lc(ptr noundef %i.ld, ptr noundef nonnull @.str.15, ptr noundef null) #20
  br label %.thread303

bb.bw:                                            ; preds = %bb.bu
  %i.le = load i32, ptr %i.q, align 4, !tbaa !30
  %i.lf = add nsw i32 %i.le, 1
  %i.lg = sext i32 %i.lf to i64
  %i.lh = shl nsw i64 %i.lg, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ky, i8 0, i64 %i.lh, i1 false)
  %i.li = load i32, ptr %i.q, align 4, !tbaa !30  ; 2 uses
  store i32 %i.li, ptr %i.ae, align 8, !tbaa !410
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bw, %bb.bx
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bx ], [ 0, %bb.bw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #20
  %i.lk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 384
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !175
  %i.ln = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.lo = load ptr, ptr %i.kr, align 8, !tbaa !105
  %i.lp = trunc nuw nsw i64 %indvars.iv to i32
  %i.lq = call i32 %i.lm(ptr noundef %i.ln, ptr noundef %i.lo, i32 noundef %i.lp, ptr noundef nonnull %i.r) #20 ; 2 uses
  %.not238 = icmp eq i32 %i.lq, 0
  br i1 %.not238, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph
  %i.lr = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 320
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !133
  %i.lu = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.lv = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.lw = call i32 %i.lt(ptr noundef %i.lu, ptr noundef %i.lv, ptr noundef nonnull %i.s) #20 ; 0 uses
  %i.lx = load i32, ptr %i.s, align 4, !tbaa !30
  %i.ly = call i32 @llvm.smax.i32(i32 %i.lx, i32 -10000)
  %i.lz = call i32 @llvm.smin.i32(i32 %i.ly, i32 10000)
  %i.ma = trunc nsw i32 %i.lz to i16
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %indvars.iv
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mc = load i32, ptr %i.q, align 4, !tbaa !30
  %i.md = sext i32 %i.mc to i64
  %i.me = icmp slt i64 %indvars.iv.next, %i.md
  br i1 %i.me, label %.lr.ph, label %._crit_edge, !llvm.loop !385

bb.by:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  br label %.thread303

.thread303:                                       ; preds = %bb.bt, %bb.bv, %bb.by
  %.ph303 = phi ptr [ %i.ky, %bb.by ], [ null, %bb.bv ], [ %i.az, %bb.bt ]
  %.6191.ph = phi i32 [ %i.lq, %bb.by ], [ 1, %bb.bv ], [ %i.kt, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20
  br label %bb.ck

._crit_edge:                                      ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20
  br label %bb.cl

bb.bz:                                            ; preds = %bb.bs
  %i.mf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(11) @.str.416) #21
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2736
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !107
  %i.mk = add nsw i32 %.0196412, 1                ; 2 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !105
  %i.mo = call ptr %i.mj(ptr noundef %i.mn) #20
  store ptr %i.mo, ptr %i.ab, align 8, !tbaa !411
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bz
  %i.mp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(8) @.str.417) #21
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.mr = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 2736
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !107
  %i.mu = add nsw i32 %.0196412, 1                ; 2 uses
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !105
  %i.my = call ptr %i.mt(ptr noundef %i.mx) #20
  store ptr %i.my, ptr %i.aa, align 8, !tbaa !412
  br label %bb.cl

bb.cd:                                            ; preds = %bb.cb
  %i.mz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(11) @.str.418) #21
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 2736
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !107
  %i.ne = add nsw i32 %.0196412, 1                ; 2 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nf
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !105
  %i.ni = call ptr %i.nd(ptr noundef %i.nh) #20
  store ptr %i.ni, ptr %i.z, align 8, !tbaa !413
  br label %bb.cl

bb.cf:                                            ; preds = %bb.cd
  %i.nj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(6) @.str.419) #21
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.nl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 2736
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !107
  %i.no = add nsw i32 %.0196412, 1                ; 2 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.np
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !105
  %i.ns = call ptr %i.nn(ptr noundef %i.nr) #20
  store ptr %i.ns, ptr %i.y, align 8, !tbaa !414
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cf
  %i.nt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(9) @.str.127) #21
  %i.nu = icmp eq i32 %i.nt, 0
  %i.nv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %i.nu, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2736
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !107
  %i.ny = add nsw i32 %.0196412, 1                ; 2 uses
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !105
  %i.oc = call ptr %i.nx(ptr noundef %i.ob) #20
  %i.od = call i64 @strtol(ptr noundef nonnull captures(none) %i.oc, ptr noundef null, i32 noundef 10) #20, !inline_history !8
  %i.oe = trunc i64 %i.od to i8
  store i8 %i.oe, ptr %3, align 8, !tbaa !45
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 576
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !106
  %i.oh = load ptr, ptr %i.ac, align 8, !tbaa !122
  call void (ptr, ...) %i.og(ptr noundef %i.oh, ptr noundef nonnull @.str.140, ptr noundef nonnull %i.bg, ptr noundef null) #20
  br label %bb.ck

bb.ck:                                            ; preds = %.thread303, %.thread293, %bb.bk, %bb.bh, %bb.be, %bb.ar, %bb.ak, %bb.ab, %bb.y, %bb.v, %bb.m, %bb.j, %bb.cj, %bb.g, %bb.d
  %6 = phi ptr [ %4, %bb.d ], [ %4, %bb.cj ], [ %4, %bb.g ], [ %4, %bb.j ], [ %4, %bb.m ], [ %4, %bb.v ], [ %4, %bb.y ], [ %4, %bb.ab ], [ %4, %bb.ak ], [ %4, %bb.ar ], [ %4, %bb.be ], [ %4, %bb.bh ], [ %4, %bb.bk ], [ %.ph, %.thread293 ], [ %4, %.thread303 ]
  %7 = phi ptr [ %i.az, %bb.d ], [ %i.az, %bb.cj ], [ %i.az, %bb.g ], [ %i.az, %bb.j ], [ %i.az, %bb.m ], [ %i.az, %bb.v ], [ %i.az, %bb.y ], [ %i.az, %bb.ab ], [ %i.az, %bb.ak ], [ %i.az, %bb.ar ], [ %i.az, %bb.be ], [ %i.az, %bb.bh ], [ %i.az, %bb.bk ], [ %i.az, %.thread293 ], [ %.ph303, %.thread303 ]
  %.8193 = phi i32 [ 1, %bb.d ], [ 1, %bb.cj ], [ 1, %bb.g ], [ %i.cb, %bb.j ], [ %i.cq, %bb.m ], [ %i.dm, %bb.v ], [ %i.eh, %bb.y ], [ %i.ew, %bb.ab ], [ %i.fp, %bb.ak ], [ %i.gm, %bb.ar ], [ %i.hj, %bb.be ], [ %i.ib, %bb.bh ], [ %i.in, %bb.bk ], [ %.3188.ph, %.thread293 ], [ %.6191.ph, %.thread303 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.cr

bb.cl:                                            ; preds = %._crit_edge, %._crit_edge364, %.thread284, %.thread281, %.thread278, %.thread274, %.thread270, %.thread266, %.thread263, %.thread260, %.thread257, %.thread, %bb.cc, %bb.cg, %bb.ci, %bb.ce, %bb.ca, %bb.e
  %i.oi = phi ptr [ %4, %bb.ci ], [ %4, %bb.cg ], [ %4, %bb.ce ], [ %4, %bb.cc ], [ %4, %bb.ca ], [ %4, %._crit_edge ], [ %i.jd, %._crit_edge364 ], [ %4, %.thread284 ], [ %4, %.thread281 ], [ %4, %.thread278 ], [ %4, %.thread274 ], [ %4, %.thread270 ], [ %4, %.thread266 ], [ %4, %.thread263 ], [ %4, %.thread260 ], [ %4, %.thread257 ], [ %4, %.thread ], [ %4, %bb.e ] ; 5 uses
  %i.oj = phi ptr [ %i.az, %bb.ci ], [ %i.az, %bb.cg ], [ %i.az, %bb.ce ], [ %i.az, %bb.cc ], [ %i.az, %bb.ca ], [ %i.ky, %._crit_edge ], [ %i.az, %._crit_edge364 ], [ %i.az, %.thread284 ], [ %i.az, %.thread281 ], [ %i.az, %.thread278 ], [ %i.az, %.thread274 ], [ %i.az, %.thread270 ], [ %i.az, %.thread266 ], [ %i.az, %.thread263 ], [ %i.az, %.thread260 ], [ %i.az, %.thread257 ], [ %i.az, %.thread ], [ %i.az, %bb.e ] ; 5 uses
  %.14210.ph = phi i32 [ %i.ny, %bb.ci ], [ %i.no, %bb.cg ], [ %i.ne, %bb.ce ], [ %i.mu, %bb.cc ], [ %i.mk, %bb.ca ], [ %i.kp, %._crit_edge ], [ %i.iv, %._crit_edge364 ], [ %i.ij, %.thread284 ], [ %i.hx, %.thread281 ], [ %i.hf, %.thread278 ], [ %i.ge, %.thread274 ], [ %i.fl, %.thread270 ], [ %i.es, %.thread266 ], [ %i.ed, %.thread263 ], [ %i.dg, %.thread260 ], [ %i.cm, %.thread257 ], [ %i.bx, %.thread ], [ %.0196412, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ok = add nsw i32 %.14210.ph, 1               ; 2 uses
  %i.ol = icmp slt i32 %i.ok, %1
  br i1 %i.ol, label %bb.b, label %.preheader, !llvm.loop !386

.lr.ph369:                                        ; preds = %.preheader, %bb.cq
  %i.om = phi ptr [ %i.pb, %bb.cq ], [ %.pre, %.preheader ] ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !29
  %.not233 = icmp eq i8 %i.on, 0
  br i1 %.not233, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #20
  store ptr null, ptr %i.u, align 8, !tbaa !66
  %i.oo = call fastcc i32 @dbPrepareAndBind(ptr noundef %0, ptr noundef nonnull %i.om, ptr noundef nonnull %i.b, ptr noundef nonnull %i.t)
  %.not234 = icmp eq i32 %i.oo, 0
  br i1 %.not234, label %bb.cn, label %.thread316

bb.cn:                                            ; preds = %bb.cm
  %i.op = load ptr, ptr %i.t, align 8, !tbaa !206 ; 3 uses
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %bb.cq, label %bb.co, !llvm.loop !387

bb.co:                                            ; preds = %bb.cn
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !190
  %i.ot = call i32 @sqlite3_format_query_result(ptr noundef %i.os, ptr noundef nonnull %3, ptr noundef nonnull %i.u)
  call fastcc void @dbReleaseStmt(ptr noundef %0, ptr noundef nonnull %i.op, i32 noundef 0)
  %.not235 = icmp eq i32 %i.ot, 0
  br i1 %.not235, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ou = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1872
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !118
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !122
  %i.oz = load ptr, ptr %i.u, align 8, !tbaa !66
  call void %i.ow(ptr noundef %i.oy, ptr noundef %i.oz, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  %i.pa = load ptr, ptr %i.u, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.pa) #20
  br label %.thread316

.thread316:                                       ; preds = %bb.cm, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  %i.pb = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %.not = icmp eq ptr %i.pb, null
  br i1 %.not, label %.critedge, label %.lr.ph369

.critedge:                                        ; preds = %.lr.ph369, %bb.cq, %bb.a, %.preheader
  %.lcssa347534 = phi ptr [ null, %bb.a ], [ %i.oj, %.preheader ], [ %i.oj, %bb.cq ], [ %i.oj, %.lr.ph369 ]
  %.lcssa367533 = phi ptr [ null, %bb.a ], [ %i.oi, %.preheader ], [ %i.oi, %bb.cq ], [ %i.oi, %.lr.ph369 ]
  %i.pc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 1872
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !118
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !122
  %i.ph = load ptr, ptr %i.a, align 8, !tbaa !66
  call void %i.pe(ptr noundef %i.pg, ptr noundef %i.ph, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %bb.cr

bb.cr:                                            ; preds = %.thread316, %bb.ck, %.critedge
  %8 = phi ptr [ %6, %bb.ck ], [ %i.oi, %.thread316 ], [ %.lcssa367533, %.critedge ]
  %9 = phi ptr [ %7, %bb.ck ], [ %i.oj, %.thread316 ], [ %.lcssa347534, %.critedge ]
  %.10195 = phi i32 [ %.8193, %bb.ck ], [ 1, %.thread316 ], [ 0, %.critedge ]
  call void @sqlite3_free(ptr noundef %9) #20
  call void @sqlite3_free(ptr noundef %8) #20
  %i.pi = load ptr, ptr %i.a, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.pi) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.10195
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @findSqlFunc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %1)
  %i.a = trunc i64 %strlen.i to i32
  %i.b = and i32 %i.a, 1073741823                 ; 2 uses
  %i.c = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  %narrow = add nuw nsw i32 %i.b, 49
  %i.f = tail call ptr %i.e(i32 noundef %narrow) #20 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !416
  %i.i = add nuw nsw i32 %i.b, 1
  %i.j = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %.026 = load ptr, ptr %i.k, align 8, !tbaa !417 ; 2 uses
  %.not27 = icmp eq ptr %.026, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.028 = phi ptr [ %.0, %bb.c ], [ %.026, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.028, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !416
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !416
  %i.o = tail call i32 @sqlite3_stricmp(ptr noundef %i.m, ptr noundef %i.n) #20
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  tail call void %i.s(ptr noundef nonnull %i.f) #20
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 40
  %.0 = load ptr, ptr %i.t, align 8, !tbaa !417   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !415

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !207
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !122
  store ptr %i.w, ptr %i.f, align 8, !tbaa !208
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %0, ptr %i.x, align 8, !tbaa !209
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !165
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.u, ptr %i.z, align 8, !tbaa !210
  store ptr %i.f, ptr %i.k, align 8, !tbaa !207
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.024 = phi ptr [ %.028, %bb.b ], [ %i.f, %._crit_edge ]
  ret ptr %.024
}

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @tclSqlFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = tail call ptr @sqlite3_user_data(ptr noundef %0) #20 ; 11 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165  ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !143
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !143
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2360
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !180
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.p = tail call i32 %i.n(ptr noundef %i.o, ptr noundef nonnull %i.i, i32 noundef 0) #20 ; 2 uses
  %i.q = load i32, ptr %i.i, align 8, !tbaa !143  ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.i, align 8, !tbaa !143
  %i.s = icmp slt i32 %i.q, 2
  br i1 %i.s, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !144
  tail call void %i.v(ptr noundef nonnull %i.i) #20
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.w = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !419
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !165
  %i.ac = call i32 %i.y(ptr noundef %i.z, ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #20
  %.not = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not, label %bb.e, label %.critedge109

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 440
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !147
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !30
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.ai = call ptr %i.af(i32 noundef %i.ag, ptr noundef %i.ah) #20 ; 11 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !143
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !143
  %i.al = icmp sgt i32 %1, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !418

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !421 ; 7 uses
  %i.ap = call i32 @sqlite3_value_type(ptr noundef %i.ao) #20
  switch i32 %i.ap, label %bb.n [
    i32 4, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 5, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = call i32 @sqlite3_value_bytes(ptr noundef %i.ao) #20
  %i.ar = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 416
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !171
  %i.au = call ptr @sqlite3_value_blob(ptr noundef %i.ao) #20
  %i.av = call ptr %i.at(ptr noundef %i.au, i32 noundef %i.aq) #20
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.aw = call i64 @sqlite3_value_int64(ptr noundef %i.ao) #20 ; 3 uses
  %i.ax = add i64 %i.aw, 2147483647
  %or.cond = icmp ult i64 %i.ax, 4294967295
  %i.ay = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.bb = trunc nsw i64 %i.aw to i32
  %i.bc = call ptr %i.ba(i32 noundef %i.bb) #20
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 3920
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !199
  %i.bf = call ptr %i.be(i64 noundef %i.aw) #20
  br label %.critedge

bb.l:                                             ; preds = %bb.g
  %i.bg = call double @sqlite3_value_double(ptr noundef %i.ao) #20
  %i.bh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !200
  %i.bk = call ptr %i.bj(double noundef %i.bg) #20
  br label %.critedge

bb.m:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
end_hunk_0
