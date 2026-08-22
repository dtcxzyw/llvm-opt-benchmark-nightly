Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFalse?download=true
inline.NumInlined: 355
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Gia_ManCheckFalseOne:bb.a
  %i.lh = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gs) #20 ; 0 uses
  %i.li = trunc nsw i64 %i.ky to i32              ; 2 uses
  store i32 %i.li, ptr %i.d, align 4, !tbaa !12
  %i.lj = xor i32 %i.lc, 1
  store i32 %i.lj, ptr %i.gr, align 4, !tbaa !12
  %i.lk = xor i32 %i.lg, 1
  store i32 %i.lk, ptr %i.gs, align 4, !tbaa !12
  %i.ll = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gt) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.lm = add nuw nsw i64 %indvars.iv301, %i.hl
  %i.ln = load i64, ptr %i.ht, align 4            ; 3 uses
  %i.lo = and i64 %i.ln, 536870911
  %i.lp = sub nsw i64 0, %i.lo
  %i.lq = getelementptr inbounds [12 x i8], ptr %i.ht, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !33
  %i.lt = add i32 %i.ls, %i.dl
  %i.lu = trunc i64 %i.ln to i32
  %i.lv = lshr i32 %i.lu, 29
  %i.lw = and i32 %i.lv, 1
  %i.lx = lshr i64 %i.ln, 61
  %i.ly = trunc nuw nsw i64 %i.lx to i32
  %i.lz = and i32 %i.ly, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ma = shl nuw nsw i64 %i.lm, 1                ; 2 uses
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.mb, 1                ; 2 uses
  store i32 %i.mc, ptr %i.c, align 4, !tbaa !12
  %i.md = shl nsw i32 %i.lt, 1
  %i.me = or disjoint i32 %i.lw, %i.md            ; 2 uses
  store i32 %i.me, ptr %i.gv, align 4, !tbaa !12
  %i.mf = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gw) #20 ; 0 uses
  store i32 %i.mc, ptr %i.c, align 4, !tbaa !12
  %i.mg = trunc i64 %i.hx to i32
  %.tr353 = add i32 %i.gu, %i.mg
  %i.mh = shl i32 %.tr353, 1
  %i.mi = or disjoint i32 %i.lz, %i.mh            ; 2 uses
  store i32 %i.mi, ptr %i.gv, align 4, !tbaa !12
  %i.mj = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gw) #20 ; 0 uses
  %i.mk = trunc nsw i64 %i.ma to i32
  store i32 %i.mk, ptr %i.c, align 4, !tbaa !12
  %i.ml = xor i32 %i.me, 1
  store i32 %i.ml, ptr %i.gv, align 4, !tbaa !12
  %i.mm = xor i32 %i.mi, 1
  store i32 %i.mm, ptr %i.gw, align 4, !tbaa !12
  %i.mn = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gx) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge327, %bb.r, %bb.p
  %.pre-phi340.a = phi i32 [ %.pre339, %._crit_edge327 ], [ %i.li, %bb.r ], [ %i.jc, %bb.p ] ; 2 uses
  %.pre-phi338 = phi i32 [ %.pre337, %._crit_edge327 ], [ %i.la, %bb.r ], [ %i.iu, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.mo = shl nuw nsw i64 %indvars.iv301, 1       ; 3 uses
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = or disjoint i32 %i.mp, 1                ; 2 uses
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi338, ptr %i.he, align 4, !tbaa !12
  %i.mr = trunc i64 %i.mo to i32                  ; 3 uses
  %i.ms = add i32 %i.hf, %i.mr                    ; 3 uses
  %i.mt = or disjoint i32 %i.ms, 1                ; 2 uses
  store i32 %i.mt, ptr %i.hg, align 4, !tbaa !12
  %i.mu = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  store i32 %i.mq, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi340.a, ptr %i.he, align 4, !tbaa !12
  store i32 %i.ms, ptr %i.hg, align 4, !tbaa !12
  %i.mv = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  store i32 %i.mr, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi338, ptr %i.he, align 4, !tbaa !12
  store i32 %i.ms, ptr %i.hg, align 4, !tbaa !12
  %i.mw = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  store i32 %i.mr, ptr %i.b, align 4, !tbaa !12
  store i32 %.pre-phi340.a, ptr %i.he, align 4, !tbaa !12
  store i32 %i.mt, ptr %i.hg, align 4, !tbaa !12
  %i.mx = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.t:                                             ; preds = %bb.n
  %i.my = and i64 %.val230, 2684354559
  %narrow.i247.not = icmp eq i64 %i.my, 2684354559
  br i1 %narrow.i247.not, label %bb.u, label %._crit_edge328

._crit_edge328:                                   ; preds = %bb.t
  %.pre329.a = shl nuw nsw i64 %indvars.iv301, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33 ; 2 uses
  %i.nb = add i32 %i.na, %i.di
  %i.nc = add i32 %i.na, %i.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.nd = shl nuw nsw i64 %indvars.iv301, 1       ; 3 uses
  %i.ne = trunc i64 %i.nd to i32
  %i.nf = or disjoint i32 %i.ne, 1                ; 2 uses
  store i32 %i.nf, ptr %i.a, align 4, !tbaa !12
  %i.ng = shl nsw i32 %i.nb, 1                    ; 3 uses
  %i.nh = or disjoint i32 %i.ng, 1                ; 2 uses
  store i32 %i.nh, ptr %i.hi, align 4, !tbaa !12
  %i.ni = shl nsw i32 %i.nc, 1                    ; 3 uses
  %i.nj = or disjoint i32 %i.ni, 1                ; 2 uses
  store i32 %i.nj, ptr %i.hj, align 4, !tbaa !12
  %i.nk = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  store i32 %i.nf, ptr %i.a, align 4, !tbaa !12
  store i32 %i.ng, ptr %i.hi, align 4, !tbaa !12
  store i32 %i.ni, ptr %i.hj, align 4, !tbaa !12
  %i.nl = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  %i.nm = trunc nsw i64 %i.nd to i32              ; 2 uses
  store i32 %i.nm, ptr %i.a, align 4, !tbaa !12
  store i32 %i.nh, ptr %i.hi, align 4, !tbaa !12
  store i32 %i.ni, ptr %i.hj, align 4, !tbaa !12
  %i.nn = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  store i32 %i.nm, ptr %i.a, align 4, !tbaa !12
  store i32 %i.ng, ptr %i.hi, align 4, !tbaa !12
  store i32 %i.nj, ptr %i.hj, align 4, !tbaa !12
  %i.no = call i32 @sat_solver_addclause(ptr noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hk) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge328, %bb.u, %bb.s
  %.pre-phi330 = phi i64 [ %.pre329.a, %._crit_edge328 ], [ %i.nd, %bb.u ], [ %i.mo, %bb.s ]
  %i.np = icmp eq i32 %i.hp, %i.ho
  br i1 %i.np, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %bb.v
  %i.nq = icmp slt i32 %i.ho, 16
  br i1 %i.nq, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not9.i.i = icmp eq ptr %i.hn, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.x
  %i.ns = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntPush.exit

bb.aa:                                            ; preds = %bb.w
  %i.nt = icmp samesign ult i32 %i.ho, 1073741823
  %i.nu = shl nuw nsw i32 %i.ho, 1
  %spec.select.i = select i1 %i.nt, i32 %i.nu, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ho, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %.not9.i10.i = icmp eq ptr %i.hn, null
  %i.nv = zext nneg i32 %spec.select.i to i64
  %i.nw = shl nuw nsw i64 %i.nv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nx = call ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef %i.nw) #21
  br label %Vec_IntPush.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ny = call noalias ptr @malloc(i64 noundef %i.nw) #22
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.z, %bb.y, %bb.ad, %bb.ac, %bb.v, %bb.aa
  %i.nz = phi ptr [ %i.hn, %bb.v ], [ %i.hn, %bb.aa ], [ %i.ns, %bb.z ], [ %i.nr, %bb.y ], [ %i.nx, %bb.ac ], [ %i.ny, %bb.ad ] ; 3 uses
  %i.oa = phi i32 [ %i.ho, %bb.v ], [ %i.ho, %bb.aa ], [ 16, %bb.z ], [ 16, %bb.y ], [ %spec.select.i, %bb.ac ], [ %spec.select.i, %bb.ad ]
  %i.ob = add nuw nsw i32 %i.hp, 1                ; 2 uses
  %i.oc = zext nneg i32 %i.hp to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.oc
  %i.oe = trunc nsw i64 %.pre-phi330 to i32
  store i32 %i.oe, ptr %i.od, align 4, !tbaa !12
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %.critedge4.loopexit, label %bb.m, !llvm.loop !73

.critedge4.loopexit:                              ; preds = %Vec_IntPush.exit, %bb.m
  %.val196322 = phi i32 [ %i.ob, %Vec_IntPush.exit ], [ %i.hp, %bb.m ]
  %.val239320 = phi ptr [ %i.nz, %Vec_IntPush.exit ], [ %i.hn, %bb.m ]
  %i.of = sext i32 %.val196322 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.val196 = phi i64 [ %i.of, %.critedge4.loopexit ], [ 0, %.critedge2 ]
  %.val239 = phi ptr [ %.val239320, %.critedge4.loopexit ], [ %i.ag, %.critedge2 ] ; 4 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %.val239, i64 %.val196
  %i.oh = sext i32 %2 to i64
  %i.oi = call i32 @sat_solver_solve(ptr noundef %i.cu, ptr noundef %.val239, ptr noundef %i.og, i64 noundef %i.oh, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  %i.oj = icmp eq i32 %i.oi, -1
  br i1 %i.oj, label %bb.ae, label %.loopexit275

bb.ae:                                            ; preds = %.critedge4
  %i.ok = getelementptr i8, ptr %i.cu, i64 340
  %.val240 = load i32, ptr %i.ok, align 4, !tbaa !74 ; 5 uses
  %i.ol = getelementptr i8, ptr %i.cu, i64 344
  %.val241 = load ptr, ptr %i.ol, align 8, !tbaa !75 ; 6 uses
  %i.om = sext i32 %.val240 to i64
  %i.on = getelementptr [4 x i8], ptr %.val241, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.on, i64 -4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !12
  %i.oq = ashr i32 %i.op, 1                       ; 2 uses
  %i.or = load i32, ptr %.val241, align 4, !tbaa !12
  %i.os = ashr i32 %i.or, 1                       ; 5 uses
  %i.ot = sub nsw i32 %i.os, %i.oq
  %i.ou = icmp slt i32 %i.ot, 20
  br i1 %i.ou, label %bb.af, label %.loopexit275

bb.af:                                            ; preds = %bb.ae
  %i.ov = call i32 @llvm.smax.i32(i32 %i.oq, i32 1) ; 3 uses
  %i.ow = add nsw i32 %i.ov, -1
  %.not177287 = icmp sgt i32 %i.ow, %i.os
  %.val185.pre = load ptr, ptr %i.ai, align 8, !tbaa !8 ; 3 uses
  br i1 %.not177287, label %.loopexit275, label %.lr.ph289

.lr.ph289:                                        ; preds = %bb.af
  %i.ox = getelementptr i8, ptr %3, i64 8
  %.val232 = load ptr, ptr %i.ox, align 8, !tbaa !45 ; 2 uses
  %i.oy = zext nneg i32 %i.ov to i64
  %i.oz = add nsw i64 %i.oy, -1
  %9 = add nuw nsw i32 %i.os, 1
  %i.pa = zext nneg i32 %9 to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond310.not = icmp eq i64 %indvars.iv.next307, %i.pa
  br i1 %exitcond310.not, label %._crit_edge, label %bb.ah, !llvm.loop !76

bb.ah:                                            ; preds = %.lr.ph289, %bb.ag
  %indvars.iv306 = phi i64 [ %i.oz, %.lr.ph289 ], [ %indvars.iv.next307, %bb.ag ] ; 2 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %.val185.pre, i64 %indvars.iv306
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !12
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [16 x i8], ptr %.val232, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 4
  %.val.i248 = load i32, ptr %i.pf, align 4, !tbaa !32
  %i.pg = icmp sgt i32 %.val.i248, 0
  br i1 %i.pg, label %.loopexit275, label %bb.ag

._crit_edge:                                      ; preds = %bb.ag
  %10 = sext i32 %i.os to i64
  %i.ph = getelementptr inbounds [4 x i8], ptr %.val185.pre, i64 %10
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !12
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [16 x i8], ptr %.val232, i64 %i.pj ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 4 uses
  %i.pn = zext nneg i32 %i.ov to i64
  %i.po = add nsw i64 %i.pn, -1
  %11 = add nuw nsw i32 %i.os, 1
  %wide.trip.count314 = zext nneg i32 %11 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge, %Vec_IntPush.exit256
  %indvars.iv309 = phi i64 [ %i.po, %._crit_edge ], [ %indvars.iv.next310, %Vec_IntPush.exit256 ] ; 2 uses
  %i.pp = getelementptr inbounds [4 x i8], ptr %.val185.pre, i64 %indvars.iv309
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !12
  %i.pr = load i32, ptr %i.pl, align 4, !tbaa !32 ; 7 uses
  %i.ps = load i32, ptr %i.pk, align 8, !tbaa !41
  %i.pt = icmp eq i32 %i.pr, %i.ps
  br i1 %i.pt, label %bb.aj, label %.Vec_IntPush.exit256_crit_edge

.Vec_IntPush.exit256_crit_edge:                   ; preds = %bb.ai
  %.pre = load ptr, ptr %i.pm, align 8, !tbaa !8
  br label %Vec_IntPush.exit256

bb.aj:                                            ; preds = %bb.ai
  %i.pu = icmp slt i32 %i.pr, 16
  br i1 %i.pu, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.pv = load ptr, ptr %i.pm, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i254 = icmp eq ptr %i.pv, null
  br i1 %.not9.i.i254, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pw = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pv, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i252

bb.am:                                            ; preds = %bb.ak
  %i.px = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i252

bb.an:                                            ; preds = %bb.aj
  %i.py = icmp samesign ult i32 %i.pr, 1073741823
  %i.pz = shl nuw nsw i32 %i.pr, 1
  %spec.select.i249 = select i1 %i.py, i32 %i.pz, i32 2147483647 ; 4 uses
  %.not.i9.i250 = icmp samesign ult i32 %i.pr, %spec.select.i249
  %.pre324 = load ptr, ptr %i.pm, align 8, !tbaa !8 ; 3 uses
  br i1 %.not.i9.i250, label %bb.ao, label %Vec_IntPush.exit256

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i251 = icmp eq ptr %.pre324, null
  %i.qa = zext nneg i32 %spec.select.i249 to i64
  %i.qb = shl nuw nsw i64 %i.qa, 2                ; 2 uses
  br i1 %.not9.i10.i251, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qc = call ptr @realloc(ptr noundef nonnull %.pre324, i64 noundef %i.qb) #21
  br label %Vec_IntGrow.exit11.sink.split.i252

bb.aq:                                            ; preds = %bb.ao
  %i.qd = call noalias ptr @malloc(i64 noundef %i.qb) #22
  br label %Vec_IntGrow.exit11.sink.split.i252

Vec_IntGrow.exit11.sink.split.i252:               ; preds = %bb.ap, %bb.aq, %bb.al, %bb.am
  %i.qe = phi ptr [ %i.px, %bb.am ], [ %i.pw, %bb.al ], [ %i.qc, %bb.ap ], [ %i.qd, %bb.aq ] ; 2 uses
  %spec.select.sink.i253 = phi i32 [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i249, %bb.ap ], [ %spec.select.i249, %bb.aq ]
  store ptr %i.qe, ptr %i.pm, align 8, !tbaa !8
  store i32 %spec.select.sink.i253, ptr %i.pk, align 8, !tbaa !41
  %.pre325 = load i32, ptr %i.pl, align 4, !tbaa !32
  br label %Vec_IntPush.exit256

Vec_IntPush.exit256:                              ; preds = %.Vec_IntPush.exit256_crit_edge, %bb.an, %Vec_IntGrow.exit11.sink.split.i252
  %i.qf = phi i32 [ %i.pr, %.Vec_IntPush.exit256_crit_edge ], [ %i.pr, %bb.an ], [ %.pre325, %Vec_IntGrow.exit11.sink.split.i252 ] ; 2 uses
  %i.qg = phi ptr [ %.pre, %.Vec_IntPush.exit256_crit_edge ], [ %.pre324, %bb.an ], [ %i.qe, %Vec_IntGrow.exit11.sink.split.i252 ]
  %i.qh = add nsw i32 %i.qf, 1
  store i32 %i.qh, ptr %i.pl, align 4, !tbaa !32
  %i.qi = sext i32 %i.qf to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qi
  store i32 %i.pq, ptr %i.qj, align 4, !tbaa !12
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count314
  br i1 %exitcond315.not, label %.loopexit275, label %bb.ai, !llvm.loop !77

.loopexit275:                                     ; preds = %bb.ah, %Vec_IntPush.exit256, %bb.af, %bb.ae, %.critedge4
  %.0267 = phi ptr [ %.val241, %Vec_IntPush.exit256 ], [ null, %.critedge4 ], [ %.val241, %bb.ae ], [ %.val241, %bb.af ], [ %.val241, %bb.ah ] ; 2 uses
  %.0166 = phi i32 [ %.val240, %Vec_IntPush.exit256 ], [ 0, %.critedge4 ], [ %.val240, %bb.ae ], [ %.val240, %bb.af ], [ %.val240, %bb.ah ] ; 3 uses
  %.not179 = icmp eq i32 %4, 0
  br i1 %.not179, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %.loopexit275
  %.val228 = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.qk = getelementptr i8, ptr %0, i64 160
  %.val229 = load ptr, ptr %i.qk, align 8, !tbaa !39
  %i.ql = call fastcc i32 @Gia_ObjLevel(ptr %.val228, ptr %.val229, ptr noundef nonnull %i.q)
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1, i32 noundef %i.ql) ; 0 uses
  switch i32 %i.oi, label %bb.au [
    i32 0, label %bb.as
    i32 1, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.qn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %2) ; 0 uses
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.qo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.qp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.0166, i32 noundef %.val213) ; 0 uses
  %i.qq = load i32, ptr %.0267, align 4, !tbaa !12
  %i.qr = ashr i32 %i.qq, 1
  %.val = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !12
  %i.qv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.qu) ; 0 uses
  %.not180 = icmp ne i32 %5, 0
  %i.qw = icmp sgt i32 %.0166, 0
  %or.cond = and i1 %.not180, %i.qw
  br i1 %or.cond, label %.lr.ph295.preheader, label %.loopexit

.lr.ph295.preheader:                              ; preds = %bb.au
  %wide.trip.count315 = zext nneg i32 %.0166 to i64
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %.lr.ph295
  %indvars.iv312 = phi i64 [ 0, %.lr.ph295.preheader ], [ %indvars.iv.next313, %.lr.ph295 ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv312
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !12
  %i.qz = ashr i32 %i.qy, 1
  %i.ra = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.qz) ; 0 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.loopexit, label %.lr.ph295, !llvm.loop !78

.loopexit:                                        ; preds = %.lr.ph295, %bb.au
  %i.rb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %.loopexit, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.rc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #20
  %i.rd = icmp slt i32 %i.rc, 0
  br i1 %i.rd, label %Abc_Clock.exit258, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.re = load i64, ptr %6, align 8, !tbaa !53
  %i.rf = mul nsw i64 %i.re, 1000000
  %i.rg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !55
  %i.ri = sdiv i64 %i.rh, 1000
  %i.rj = add nsw i64 %i.ri, %i.rf
  br label %Abc_Clock.exit258

Abc_Clock.exit258:                                ; preds = %bb.av, %bb.aw
  %.0.i257 = phi i64 [ %i.rj, %bb.aw ], [ -1, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.rk = add i64 %.0.i257, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10)
  %i.rl = sitofp i64 %i.rk to double
  %i.rm = fdiv double %i.rl, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.rm)
  br label %bb.ax

bb.ax:                                            ; preds = %Abc_Clock.exit258, %.loopexit275
  call void @sat_solver_delete(ptr noundef %i.cu) #20
  %i.rn = load ptr, ptr %i.dm, align 8, !tbaa !8  ; 2 uses
  %.not.i259 = icmp eq ptr %i.rn, null
  br i1 %.not.i259, label %Vec_IntFree.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.rn) #20
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.ax, %bb.ay
  call void @free(ptr noundef nonnull %i.bb) #20
  %i.ro = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 2 uses
  %.not.i260 = icmp eq ptr %i.ro, null
  br i1 %.not.i260, label %Vec_IntFree.exit261, label %bb.az

bb.az:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ro) #20
  br label %Vec_IntFree.exit261

Vec_IntFree.exit261:                              ; preds = %Vec_IntFree.exit, %bb.az
  call void @free(ptr noundef nonnull %i.af) #20
  %.not.i262 = icmp eq ptr %.val239, null
  br i1 %.not.i262, label %Vec_IntFree.exit263, label %bb.ba

bb.ba:                                            ; preds = %Vec_IntFree.exit261
  call void @free(ptr noundef nonnull %.val239) #20
  br label %Vec_IntFree.exit263

Vec_IntFree.exit263:                              ; preds = %Vec_IntFree.exit261, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  ret void
}

declare ptr @Gia_ManCollectNodesCis(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sat_solver_new() local_unnamed_addr #2

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Gia_ManCheckFalse2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #20 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val56 = load ptr, ptr %i.b, align 8, !tbaa !50 ; 4 uses
  %i.c = getelementptr i8, ptr %.val56, i64 4
  %.val56.val = load i32, ptr %i.c, align 4, !tbaa !32 ; 5 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.e = add i32 %.val56.val, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val56.val ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !79
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !82
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_FltAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #22
  br label %Vec_FltAlloc.exit

Vec_FltAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 9 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.m = icmp sgt i32 %.val56.val, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_FltAlloc.exit
  %i.n = getelementptr i8, ptr %0, i64 160
  %.val53132 = load ptr, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %.not133 = icmp eq ptr %.val53132, null
  br i1 %.not133, label %.critedge, label %.lr.ph136

bb.c:                                             ; preds = %Vec_FltPush.exit
  %.val53 = load ptr, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %.val53, null
  br i1 %.not, label %.critedge, label %.lr.ph136, !llvm.loop !84

.lr.ph136:                                        ; preds = %.lr.ph, %bb.c
  %.val53135 = phi ptr [ %.val53, %bb.c ], [ %.val53132, %.lr.ph ] ; 2 uses
  %i.o = phi ptr [ %i.ao, %bb.c ], [ %.val56, %.lr.ph ]
  %indvars.iv134 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val54.val = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val54.val, i64 %indvars.iv134
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %.val53135, i64 %i.s
  %.val49 = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.u = tail call fastcc i32 @Gia_ObjLevel(ptr nonnull %.val53135, ptr %.val49, ptr noundef nonnull %i.t)
  %i.v = sitofp i32 %i.u to float
  %i.w = load i32, ptr %i.f, align 4, !tbaa !79   ; 7 uses
  %i.x = load i32, ptr %i.d, align 8, !tbaa !82
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %.Vec_FltPush.exit_crit_edge

.Vec_FltPush.exit_crit_edge:                      ; preds = %.lr.ph136
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !83
  br label %Vec_FltPush.exit

bb.d:                                             ; preds = %.lr.ph136
  %i.z = icmp slt i32 %i.w, 16
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !83  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f
end_hunk_0
begin_hunk_1_@Gia_ManCheckOne:bb.a
  %i.ka = and i32 %i.jz, 1
  %i.kb = lshr i64 %.val209, 61
  %i.kc = trunc nuw nsw i64 %i.kb to i32
  %i.kd = and i32 %i.kc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ke = shl nsw i32 %i.js, 1                    ; 3 uses
  %i.kf = or disjoint i32 %i.ke, 1                ; 3 uses
  store i32 %i.kf, ptr %i.c, align 4, !tbaa !12
  %i.kg = shl nsw i32 %i.jv, 1
  %i.kh = or disjoint i32 %i.kg, %i.ka            ; 2 uses
  store i32 %i.kh, ptr %i.gc, align 4, !tbaa !12
  %i.ki = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gd) #20 ; 0 uses
  store i32 %i.kf, ptr %i.c, align 4, !tbaa !12
  %i.kj = shl nsw i32 %i.jx, 1
  %i.kk = or disjoint i32 %i.kd, %i.kj            ; 2 uses
  store i32 %i.kk, ptr %i.gc, align 4, !tbaa !12
  %i.kl = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gd) #20 ; 0 uses
  store i32 %i.ke, ptr %i.c, align 4, !tbaa !12
  %i.km = xor i32 %i.kh, 1
  store i32 %i.km, ptr %i.gc, align 4, !tbaa !12
  %i.kn = xor i32 %i.kk, 1
  store i32 %i.kn, ptr %i.gd, align 4, !tbaa !12
  %i.ko = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ge) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.kp = shl nsw i32 %.val187289, 1              ; 2 uses
  %i.kq = add nsw i32 %i.kp, %i.jr
  %i.kr = load i64, ptr %i.gy, align 4            ; 3 uses
  %i.ks = and i64 %i.kr, 536870911
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds [12 x i8], ptr %i.gy, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !33
  %i.kx = add i32 %i.kw, %i.cw
  %i.ky = add nsw i32 %i.kp, %i.jw
  %i.kz = trunc i64 %i.kr to i32
  %i.la = lshr i32 %i.kz, 29
  %i.lb = and i32 %i.la, 1
  %i.lc = lshr i64 %i.kr, 61
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = and i32 %i.ld, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.lf = shl nsw i32 %i.kq, 1                    ; 2 uses
  %i.lg = or disjoint i32 %i.lf, 1                ; 2 uses
  store i32 %i.lg, ptr %i.b, align 4, !tbaa !12
  %i.lh = shl nsw i32 %i.kx, 1
  %i.li = or disjoint i32 %i.lb, %i.lh            ; 2 uses
  store i32 %i.li, ptr %i.gf, align 4, !tbaa !12
  %i.lj = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gg) #20 ; 0 uses
  store i32 %i.lg, ptr %i.b, align 4, !tbaa !12
  %i.lk = shl nsw i32 %i.ky, 1
  %i.ll = or disjoint i32 %i.le, %i.lk            ; 2 uses
  store i32 %i.ll, ptr %i.gf, align 4, !tbaa !12
  %i.lm = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gg) #20 ; 0 uses
  store i32 %i.lf, ptr %i.b, align 4, !tbaa !12
  %i.ln = xor i32 %i.li, 1
  store i32 %i.ln, ptr %i.gf, align 4, !tbaa !12
  %i.lo = xor i32 %i.ll, 1
  store i32 %i.lo, ptr %i.gg, align 4, !tbaa !12
  %i.lp = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gh) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge297, %bb.s, %bb.q
  %.pre-phi303.a = phi i32 [ %.pre302, %._crit_edge297 ], [ %i.kf, %bb.s ], [ %i.ib, %bb.q ] ; 2 uses
  %.pre-phi301 = phi i32 [ %.pre300, %._crit_edge297 ], [ %i.ke, %bb.s ], [ %i.ia, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.lq = shl nuw nsw i64 %indvars.iv274, 1       ; 2 uses
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = or disjoint i32 %i.lr, 1                ; 2 uses
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi303.a, ptr %i.go, align 4, !tbaa !12
  %i.lt = shl i32 %.val187289, 2
  %i.lu = trunc i64 %i.lq to i32                  ; 4 uses
  %i.lv = add i32 %i.lt, %i.lu                    ; 3 uses
  %i.lw = or disjoint i32 %i.lv, 1                ; 2 uses
  store i32 %i.lw, ptr %i.gp, align 4, !tbaa !12
  %i.lx = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi301, ptr %i.go, align 4, !tbaa !12
  store i32 %i.lv, ptr %i.gp, align 4, !tbaa !12
  %i.ly = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  store i32 %i.lu, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi303.a, ptr %i.go, align 4, !tbaa !12
  store i32 %i.lv, ptr %i.gp, align 4, !tbaa !12
  %i.lz = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  store i32 %i.lu, ptr %i.a, align 4, !tbaa !12
  store i32 %.pre-phi301, ptr %i.go, align 4, !tbaa !12
  store i32 %i.lw, ptr %i.gp, align 4, !tbaa !12
  %i.ma = call i32 @sat_solver_addclause(ptr noundef %i.cf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.mb = icmp eq i32 %i.gu, %i.gt
  br i1 %i.mb, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.t
  %i.mc = icmp slt i32 %i.gt, 16
  br i1 %i.mc, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not9.i.i = icmp eq ptr %i.gs, null
  br i1 %.not9.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.md = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gs, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.v
  %i.me = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.y:                                             ; preds = %bb.u
  %i.mf = icmp samesign ult i32 %i.gt, 1073741823
  %i.mg = shl nuw nsw i32 %i.gt, 1
  %spec.select.i = select i1 %i.mf, i32 %i.mg, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.gt, %spec.select.i
  br i1 %.not.i9.i, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i = icmp eq ptr %i.gs, null
  %i.mh = zext nneg i32 %spec.select.i to i64
  %i.mi = shl nuw nsw i64 %i.mh, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mj = call ptr @realloc(ptr noundef nonnull %i.gs, i64 noundef %i.mi) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %i.mk = call noalias ptr @malloc(i64 noundef %i.mi) #22
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %storemerge = phi ptr [ %i.me, %bb.x ], [ %i.md, %bb.w ], [ %i.mj, %bb.aa ], [ %i.mk, %bb.ab ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i, %bb.aa ], [ %spec.select.i, %bb.ab ] ; 2 uses
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !8
  store i32 %spec.select.sink.i, ptr %i.k, align 8, !tbaa !41
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.t, %bb.y, %Vec_IntGrow.exit11.sink.split.i
  %i.ml = phi ptr [ %i.gr, %bb.t ], [ %i.gr, %bb.y ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.mm = phi i32 [ %i.gt, %bb.t ], [ %i.gt, %bb.y ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.mn = add nsw i32 %i.gu, 1                    ; 2 uses
  store i32 %i.mn, ptr %i.m, align 4, !tbaa !32
  %i.mo = sext i32 %i.gu to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.mo
  store i32 %i.lu, ptr %i.mp, align 4, !tbaa !12
  %.val187.pre = load i32, ptr %i.w, align 4, !tbaa !32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.o, %Vec_IntPush.exit
  %.val187 = phi i32 [ %.val187289, %bb.o ], [ %.val187.pre, %Vec_IntPush.exit ] ; 3 uses
  %i.mq = phi ptr [ %i.gr, %bb.o ], [ %i.ml, %Vec_IntPush.exit ] ; 2 uses
  %i.mr = phi ptr [ %i.gs, %bb.o ], [ %i.ml, %Vec_IntPush.exit ]
  %i.ms = phi i32 [ %i.gt, %bb.o ], [ %i.mm, %Vec_IntPush.exit ]
  %i.mt = phi i32 [ %i.gu, %bb.o ], [ %i.mn, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.mu = sext i32 %.val187 to i64
  %i.mv = icmp slt i64 %indvars.iv.next275, %i.mu
  br i1 %i.mv, label %bb.n, label %.critedge4.loopexit, !llvm.loop !109

.critedge4.loopexit:                              ; preds = %bb.ac, %bb.n
  %.val176294 = phi i32 [ %i.gu, %bb.n ], [ %i.mt, %bb.ac ]
  %.val212292 = phi ptr [ %i.gr, %bb.n ], [ %i.mq, %bb.ac ]
  %.val187.lcssa.ph = phi i32 [ %.val187289, %bb.n ], [ %.val187, %bb.ac ]
  %i.mw = sext i32 %.val176294 to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.critedge2
  %.val176 = phi i64 [ 0, %.critedge2 ], [ %i.mw, %.critedge4.loopexit ]
  %.val212 = phi ptr [ %i.q, %.critedge2 ], [ %.val212292, %.critedge4.loopexit ] ; 2 uses
  %.val187.lcssa = phi i32 [ %.val193, %.critedge2 ], [ %.val187.lcssa.ph, %.critedge4.loopexit ]
  %i.mx = getelementptr inbounds [4 x i8], ptr %.val212, i64 %.val176
  %i.my = sext i32 %3 to i64
  %i.mz = call i32 @sat_solver_solve(ptr noundef %i.cf, ptr noundef %.val212, ptr noundef %i.mx, i64 noundef %i.my, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20 ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !32
  %i.na = icmp eq i32 %i.mz, -1
  br i1 %i.na, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %.critedge4
  %i.nb = getelementptr i8, ptr %i.cf, i64 340
  %.val213 = load i32, ptr %i.nb, align 4, !tbaa !74 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.cf, i64 344
  %.val214 = load ptr, ptr %i.nc, align 8, !tbaa !75 ; 3 uses
  %i.nd = sext i32 %.val213 to i64
  %i.ne = getelementptr [4 x i8], ptr %.val214, i64 %i.nd
  %i.nf = getelementptr i8, ptr %i.ne, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !12
  %i.nh = ashr i32 %i.ng, 1
  %i.ni = load i32, ptr %.val214, align 4, !tbaa !12
  %i.nj = ashr i32 %i.ni, 1                       ; 2 uses
  %i.nk = call i32 @llvm.smax.i32(i32 %i.nh, i32 1) ; 2 uses
  %i.nl = add nsw i32 %i.nk, -1
  %.not157259 = icmp sgt i32 %i.nl, %i.nj
  br i1 %.not157259, label %bb.an, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.ad
  %.val163 = load ptr, ptr %i.ab, align 8, !tbaa !8
  %.promoted262 = load i32, ptr %i.k, align 8, !tbaa !41
  %.promoted265 = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.nm = zext nneg i32 %i.nk to i64
  %i.nn = add nsw i64 %i.nm, -1
  %9 = add nuw nsw i32 %i.nj, 1
  %i.no = zext nneg i32 %9 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph261, %Vec_IntPush.exit227
  %indvars.iv279 = phi i64 [ %i.nn, %.lr.ph261 ], [ %indvars.iv.next280, %Vec_IntPush.exit227 ] ; 2 uses
  %indvars.iv277 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next278, %Vec_IntPush.exit227 ] ; 7 uses
  %storemerge244266 = phi ptr [ %.promoted265, %.lr.ph261 ], [ %storemerge244267, %Vec_IntPush.exit227 ] ; 6 uses
  %spec.select.sink.i224264 = phi i32 [ %.promoted262, %.lr.ph261 ], [ %spec.select.sink.i224263, %Vec_IntPush.exit227 ] ; 3 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %.val163, i64 %indvars.iv279
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !12
  %i.nr = trunc nsw i64 %indvars.iv277 to i32
  %i.ns = icmp eq i32 %spec.select.sink.i224264, %i.nr
  br i1 %i.ns, label %bb.af, label %Vec_IntPush.exit227

bb.af:                                            ; preds = %bb.ae
  %i.nt = icmp samesign ult i64 %indvars.iv277, 16
  br i1 %i.nt, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not9.i.i225 = icmp eq ptr %storemerge244266, null
  br i1 %.not9.i.i225, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge244266, i64 noundef 64) #21
  br label %Vec_IntPush.exit227

bb.ai:                                            ; preds = %bb.ag
  %i.nv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntPush.exit227

bb.aj:                                            ; preds = %bb.af
  %i.nw = icmp samesign ult i64 %indvars.iv277, 1073741823
  %indvars.iv277.tr = trunc i64 %indvars.iv277 to i32
  %i.nx = shl i32 %indvars.iv277.tr, 1
  %spec.select.i220 = select i1 %i.nw, i32 %i.nx, i32 2147483647 ; 4 uses
  %i.ny = sext i32 %spec.select.i220 to i64
  %.not.i9.i221 = icmp samesign ult i64 %indvars.iv277, %i.ny
  br i1 %.not.i9.i221, label %bb.ak, label %Vec_IntPush.exit227

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i222 = icmp eq ptr %storemerge244266, null
  %i.nz = zext nneg i32 %spec.select.i220 to i64
  %i.oa = shl nuw nsw i64 %i.nz, 2                ; 2 uses
  br i1 %.not9.i10.i222, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ob = call ptr @realloc(ptr noundef nonnull %storemerge244266, i64 noundef %i.oa) #21
  br label %Vec_IntPush.exit227

bb.am:                                            ; preds = %bb.ak
  %i.oc = call noalias ptr @malloc(i64 noundef %i.oa) #22
  br label %Vec_IntPush.exit227

Vec_IntPush.exit227:                              ; preds = %bb.ai, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.aj
  %storemerge244267 = phi ptr [ %storemerge244266, %bb.ae ], [ %storemerge244266, %bb.aj ], [ %i.nv, %bb.ai ], [ %i.nu, %bb.ah ], [ %i.ob, %bb.al ], [ %i.oc, %bb.am ] ; 3 uses
  %spec.select.sink.i224263 = phi i32 [ %spec.select.sink.i224264, %bb.ae ], [ %spec.select.sink.i224264, %bb.aj ], [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i220, %bb.al ], [ %spec.select.i220, %bb.am ] ; 2 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %storemerge244267, i64 %indvars.iv277
  store i32 %i.nq, ptr %i.od, align 4, !tbaa !12
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next280, %i.no
  br i1 %exitcond285.not, label %._crit_edge, label %bb.ae, !llvm.loop !110

._crit_edge:                                      ; preds = %Vec_IntPush.exit227
  %i.oe = trunc nsw i64 %indvars.iv.next278 to i32 ; 2 uses
  store i32 %i.oe, ptr %i.m, align 4, !tbaa !32
  store i32 %spec.select.sink.i224263, ptr %i.k, align 8
  store ptr %storemerge244267, ptr %i.r, align 8
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge, %bb.ad
  %.val175296 = phi i32 [ %i.oe, %._crit_edge ], [ 0, %bb.ad ]
  %i.of = add nsw i32 %.val213, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge4
  %.val173 = phi i32 [ %.val175296, %bb.an ], [ 0, %.critedge4 ] ; 2 uses
  %.0238 = phi ptr [ %.val214, %bb.an ], [ null, %.critedge4 ]
  %.0147 = phi i32 [ %i.of, %bb.an ], [ -1, %.critedge4 ] ; 2 uses
  %.not158 = icmp eq i32 %4, 0
  br i1 %.not158, label %bb.bi, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.og = load i32, ptr %i.h, align 4, !tbaa !12  ; 7 uses
  %i.oh = getelementptr i8, ptr %0, i64 160
  %.val208 = load ptr, ptr %i.oh, align 8, !tbaa !39 ; 7 uses
  %i.oi = add nsw i32 %i.og, 1                    ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.val208, i64 4 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !32 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.og, %i.ok
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ol = load i32, ptr %.val208, align 8, !tbaa !41 ; 4 uses
  %i.om = shl nsw i32 %i.ol, 1                    ; 2 uses
  %.not.i.i228 = icmp slt i32 %i.og, %i.om
  %.not.i.i.not.i.i = icmp sgt i32 %i.ol, %i.og   ; 2 uses
  br i1 %.not.i.i228, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.on = getelementptr inbounds nuw i8, ptr %.val208, i64 8 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !8  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.oo, null
  %i.op = sext i32 %i.oi to i64
  %i.oq = shl nsw i64 %i.op, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.or = call ptr @realloc(ptr noundef nonnull %i.oo, i64 noundef %i.oq) #21
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.os = call noalias ptr @malloc(i64 noundef %i.oq) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ot = phi ptr [ %i.or, %bb.at ], [ %i.os, %bb.au ]
  store ptr %i.ot, ptr %i.on, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.aq
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ou = icmp slt i32 %i.ol, 1073741823
  %spec.select.i.i.i = select i1 %i.ou, i32 %i.om, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ol, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ay, label %Vec_IntGrow.exit.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ov = getelementptr inbounds nuw i8, ptr %.val208, i64 8 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !8  ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.ow, null
  %i.ox = sext i32 %spec.select.i.i.i to i64
  %i.oy = shl nsw i64 %i.ox, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.oz = call ptr @realloc(ptr noundef nonnull %i.ow, i64 noundef %i.oy) #21
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.pa = call noalias ptr @malloc(i64 noundef %i.oy) #22
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.pb = phi ptr [ %i.oz, %bb.az ], [ %i.pa, %bb.ba ]
  store ptr %i.pb, ptr %i.ov, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.bb, %bb.av
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.bb ], [ %i.oi, %bb.av ]
  store i32 %spec.select.sink.i.i.i, ptr %.val208, align 8, !tbaa !41
  %.pre.i.i = load i32, ptr %i.oj, align 4, !tbaa !32
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.ax, %bb.aw, %bb.ar
  %i.pc = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.ok, %bb.ax ], [ %i.ok, %bb.aw ], [ %i.ok, %bb.ar ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.pc, %i.og
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.val208, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !8
  %i.pf = sext i32 %i.pc to i64
  %i.pg = shl nsw i64 %i.pf, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.pe, i64 %i.pg
  %i.ph = sub i32 %i.og, %i.pc
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 2
  %i.pk = add nuw nsw i64 %i.pj, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.pk, i1 false), !tbaa !12
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !32
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.ap, %._crit_edge.i.i.i
  %i.pl = getelementptr i8, ptr %.val208, i64 8
  %.val.i.i = load ptr, ptr %i.pl, align 8, !tbaa !8
  %i.pm = sext i32 %i.og to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !12
  %i.pp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1, i32 noundef %i.po) ; 0 uses
  switch i32 %i.mz, label %bb.be [
    i32 0, label %bb.bc
    i32 1, label %bb.bd
  ]

bb.bc:                                            ; preds = %Gia_ObjLevelId.exit
  %i.pq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %3) ; 0 uses
  br label %bb.bg

bb.bd:                                            ; preds = %Gia_ObjLevelId.exit
  %i.pr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  br label %bb.bg

bb.be:                                            ; preds = %Gia_ObjLevelId.exit
  %i.ps = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.val173, i32 noundef %.val187.lcssa) ; 0 uses
  %.not159 = icmp ne i32 %5, 0
  %i.pt = icmp sgt i32 %.0147, -1
  %or.cond = select i1 %.not159, i1 %i.pt, i1 false
  br i1 %or.cond, label %.lr.ph269, label %.loopexit

.lr.ph269:                                        ; preds = %bb.be
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.pu = zext nneg i32 %.0147 to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph269, %bb.bf
  %indvars.iv284 = phi i64 [ %i.pu, %.lr.ph269 ], [ %indvars.iv.next285, %bb.bf ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.0238, i64 %indvars.iv284
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !12
  %i.px = ashr i32 %i.pw, 1
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !12
  %i.qb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.qa) ; 0 uses
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, -1
  %.not320 = icmp eq i64 %indvars.iv284, 0
  br i1 %.not320, label %.loopexit, label %bb.bf, !llvm.loop !111

.loopexit:                                        ; preds = %bb.bf, %bb.be
  %i.qc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %.loopexit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.qd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #20
  %i.qe = icmp slt i32 %i.qd, 0
  br i1 %i.qe, label %Abc_Clock.exit230, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qf = load i64, ptr %6, align 8, !tbaa !53
  %i.qg = mul nsw i64 %i.qf, 1000000
  %i.qh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !55
  %i.qj = sdiv i64 %i.qi, 1000
  %i.qk = add nsw i64 %i.qj, %i.qg
  br label %Abc_Clock.exit230

Abc_Clock.exit230:                                ; preds = %bb.bg, %bb.bh
  %.0.i229 = phi i64 [ %i.qk, %bb.bh ], [ -1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ql = add i64 %.0.i229, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10)
  %i.qm = sitofp i64 %i.ql to double
  %i.qn = fdiv double %i.qm, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, double noundef %i.qn)
  br label %bb.bi

bb.bi:                                            ; preds = %Abc_Clock.exit230, %bb.ao
  call void @sat_solver_delete(ptr noundef %i.cf) #20
  %i.qo = load ptr, ptr %i.cx, align 8, !tbaa !8  ; 2 uses
  %.not.i231 = icmp eq ptr %i.qo, null
  br i1 %.not.i231, label %Vec_IntFree.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
end_hunk_1
