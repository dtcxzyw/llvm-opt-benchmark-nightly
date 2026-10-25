Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@b2World_Step:bb.a
bb.v:                                             ; preds = %b2RemoveHelper.exit.i.i
  %i.me = load ptr, ptr %i.ls, align 8, !tbaa !95
  %i.mf = getelementptr inbounds [208 x i8], ptr %i.me, i64 %i.jt
  %i.mg = load ptr, ptr %i.ij, align 8, !tbaa !102
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !232
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [64 x i8], ptr %i.mg, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  store i32 %i.jp, ptr %i.mk, align 4, !tbaa !390
  br label %b2RemoveNonTouchingContact.exit.i

bb.w:                                             ; preds = %bb.p
  %i.ml = and i32 %i.kr, 524288
  %.not225.i = icmp eq i32 %i.ml, 0
  br i1 %.not225.i, label %b2RemoveNonTouchingContact.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mm = and i32 %i.kr, -917505
  store i32 %i.mm, ptr %i.kq, align 4, !tbaa !231
  %i.mn = and i32 %i.kp, -2
  store i32 %i.mn, ptr %i.ko, align 4, !tbaa !393
  %i.mo = and i32 %i.kp, 4
  %.not226.i = icmp eq i32 %i.mo, 0
  br i1 %.not226.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mp = load i32, ptr %i.ir, align 8, !tbaa !131 ; 2 uses
  %i.mq = load i32, ptr %i.is, align 4, !tbaa !132 ; 4 uses
  %.not227.i = icmp slt i32 %i.mp, %i.mq
  %.pre294.i = load ptr, ptr %i.iq, align 8, !tbaa !130 ; 2 uses
  br i1 %.not227.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mr = mul nsw i32 %i.mq, 28
  %i.ms = icmp eq i32 %i.mq, 0
  %i.mt = shl nsw i32 %i.mq, 1
  %spec.select230.i = select i1 %i.ms, i32 8, i32 %i.mt ; 2 uses
  %i.mu = mul nsw i32 %spec.select230.i, 28
  %i.mv = sext i32 %i.mr to i64
  %i.mw = sext i32 %i.mu to i64
  %i.mx = call ptr @b2GrowAlloc(ptr noundef %.pre294.i, i64 noundef %i.mv, i64 noundef %i.mw) #23 ; 2 uses
  store ptr %i.mx, ptr %i.iq, align 8, !tbaa !130
  store i32 %spec.select230.i, ptr %i.is, align 4, !tbaa !132
  %.pre295.i = load i32, ptr %i.ir, align 8, !tbaa !131
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.my = phi i32 [ %.pre295.i, %bb.z ], [ %i.mp, %bb.y ]
  %i.mz = phi ptr [ %i.mx, %bb.z ], [ %.pre294.i, %bb.y ]
  %i.na = sext i32 %i.my to i64
  %i.nb = getelementptr inbounds [28 x i8], ptr %i.mz, i64 %i.na ; 9 uses
  store i32 %i.ke, ptr %i.nb, align 4, !tbaa !72
  %.sroa.025.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  store i16 %i.id, ptr %.sroa.025.sroa.0.sroa.4.0..sroa_idx.i, align 4, !tbaa !185
  %.sroa.025.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 6
  store i16 %i.kg, ptr %.sroa.025.sroa.0.sroa.5.0..sroa_idx.i, align 2, !tbaa !185
  %.sroa.025.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i32 %i.ki, ptr %.sroa.025.sroa.4.0..sroa_idx.i, align 4, !tbaa !72
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  store i16 %i.id, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 4, !tbaa !185
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 14
  store i16 %i.kk, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 2, !tbaa !185
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store i32 %i.kl, ptr %.sroa.526.0..sroa_idx.i, align 4, !tbaa !72
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 20
  store <2 x i16> %i.it, ptr %.sroa.627.0..sroa_idx.i, align 4, !tbaa !185
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  store i32 %i.kn, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !72
  %i.nc = load i32, ptr %i.ir, align 8, !tbaa !131
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.ir, align 8, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  call void @b2UnlinkContact(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.jl) #23
  %i.ne = load i32, ptr %i.jl, align 4, !tbaa !234
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !234
  %.val231.i = load ptr, ptr %i.gb, align 8, !tbaa !76 ; 3 uses
  store i32 -1, ptr %i.jm, align 4, !tbaa !218
  %i.nh = getelementptr inbounds nuw i8, ptr %.val231.i, i64 224 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.val231.i, i64 232 ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !208 ; 3 uses
  store i32 %i.nj, ptr %i.jo, align 4, !tbaa !390
  %i.nk = getelementptr inbounds nuw i8, ptr %.val231.i, i64 236 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !72 ; 4 uses
  %.not.i.i232.i = icmp slt i32 %i.nj, %i.nl
  %.pre.i.i.i = load ptr, ptr %i.nh, align 8, !tbaa !144 ; 2 uses
  br i1 %.not.i.i232.i, label %b2AddNonTouchingContact.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nm = mul nsw i32 %i.nl, 208
  %i.nn = icmp eq i32 %i.nl, 0
  %i.no = shl nsw i32 %i.nl, 1
  %i.np = select i1 %i.nn, i32 8, i32 %i.no       ; 2 uses
  %i.nq = mul nsw i32 %i.np, 208
  %i.nr = sext i32 %i.nm to i64
  %i.ns = sext i32 %i.nq to i64
  %i.nt = call ptr @b2GrowAlloc(ptr noundef %.pre.i.i.i, i64 noundef %i.nr, i64 noundef %i.ns) #23 ; 2 uses
  store ptr %i.nt, ptr %i.nh, align 8, !tbaa !144
  store i32 %i.np, ptr %i.nk, align 4, !tbaa !72
  %.pre17.i.i.i = load i32, ptr %i.ni, align 8, !tbaa !72
  br label %b2AddNonTouchingContact.exit.i

b2AddNonTouchingContact.exit.i:                   ; preds = %bb.ac, %bb.ab
  %i.nu = phi i32 [ %.pre17.i.i.i, %bb.ac ], [ %i.nj, %bb.ab ] ; 2 uses
  %i.nv = phi ptr [ %i.nt, %bb.ac ], [ %.pre.i.i.i, %bb.ab ]
  %i.nw = add nsw i32 %i.nu, 1
  store i32 %i.nw, ptr %i.ni, align 8, !tbaa !72
  %i.nx = mul nsw i32 %i.nu, 208
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds i8, ptr %i.nv, i64 %i.ny
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.nz, ptr noundef nonnull readonly align 4 dereferenceable(208) %i.ju, i64 208, i1 false)
  call void @b2RemoveContactFromGraph(ptr noundef nonnull %i.dg, i32 noundef %i.ne, i32 noundef %i.ng, i32 noundef %i.jn, i32 noundef %i.jp) #23
  br label %b2RemoveNonTouchingContact.exit.i

b2RemoveNonTouchingContact.exit.i:                ; preds = %b2AddNonTouchingContact.exit.i, %bb.w, %bb.v, %b2RemoveHelper.exit.i.i, %bb.u, %bb.o
  %i.oa = add i64 %.0210253.i, -1
  %i.ob = and i64 %i.oa, %.0210253.i              ; 2 uses
  %.not.i = icmp eq i64 %i.ob, 0
  br i1 %.not.i, label %._crit_edge256.loopexit.i, label %bb.n, !llvm.loop !373

._crit_edge256.loopexit.i:                        ; preds = %b2RemoveNonTouchingContact.exit.i
  %.pre296.i = load i32, ptr %i.ie, align 4, !tbaa !214
  br label %._crit_edge256.i

._crit_edge256.i:                                 ; preds = %._crit_edge256.loopexit.i, %bb.m
  %i.oc = phi i32 [ %.pre296.i, %._crit_edge256.loopexit.i ], [ %i.ja, %bb.m ] ; 2 uses
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %i.od = zext i32 %i.oc to i64
  %i.oe = icmp samesign ult i64 %indvars.iv.next289.i, %i.od
  br i1 %i.oe, label %bb.m, label %b2Collide.exit, !llvm.loop !374

b2Collide.exit:                                   ; preds = %._crit_edge256.i, %b2MakeSoft.exit109, %._crit_edge251.i
  %i.of = call float @b2GetMilliseconds(i64 noundef %i.df) #23
  %i.og = getelementptr i8, ptr %i.c, i64 -228
  store float %i.of, ptr %i.og, align 4, !tbaa !394
  br i1 %i.bd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %b2Collide.exit
  %i.oh = call i64 @b2GetTicks() #23
  call void @b2Solve(ptr noundef %i.d, ptr noundef nonnull %4) #23
  %i.oi = call float @b2GetMilliseconds(i64 noundef %i.oh) #23
  %i.oj = getelementptr i8, ptr %i.c, i64 -224
  store float %i.oi, ptr %i.oj, align 8, !tbaa !395
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %b2Collide.exit
  %i.ok = getelementptr i8, ptr %i.c, i64 -56     ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !148 ; 2 uses
  %.not98 = icmp eq ptr %i.ol, null
  br i1 %.not98, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.om = getelementptr i8, ptr %i.c, i64 -72
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !151
  %i.oo = getelementptr i8, ptr %i.c, i64 -64
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !396
  call void %i.on(ptr noundef nonnull %i.ol, ptr noundef %i.op) #23
  store ptr null, ptr %i.ok, align 8, !tbaa !148
  %i.oq = load i32, ptr %i.r, align 8, !tbaa !140
  %i.or = add nsw i32 %i.oq, -1
  store i32 %i.or, ptr %i.r, align 8, !tbaa !140
  call void @b2ValidateNoEnlarged(ptr noundef nonnull %i.x) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.os = call i64 @b2GetTicks() #23
  call void @b2OverlapSensors(ptr noundef %i.d) #23
  %i.ot = call float @b2GetMilliseconds(i64 noundef %i.os) #23
  %i.ou = getelementptr i8, ptr %i.c, i64 -152
  store float %i.ot, ptr %i.ou, align 8, !tbaa !397
  %i.ov = call float @b2GetMilliseconds(i64 noundef %i.v) #23
  store float %i.ov, ptr %i.q, align 4, !tbaa !398
  call void @b2GrowStack(ptr noundef %i.d) #23
  %i.ow = getelementptr i8, ptr %i.c, i64 -408    ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !139
  %i.oy = sub nsw i32 1, %i.ox                    ; 2 uses
  store i32 %i.oy, ptr %i.ow, align 8, !tbaa !139
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr [16 x i8], ptr %i.d, i64 %i.oz ; 2 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 2280
  store i32 0, ptr %i.pb, align 8, !tbaa !123
  %i.pc = getelementptr i8, ptr %i.pa, i64 2312
  store i32 0, ptr %i.pc, align 8, !tbaa !131
  %i.pd = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not99 = icmp eq ptr %i.pd, null
  br i1 %.not99, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pe = call i64 @b2HashWorldState(ptr noundef %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %0, ptr %5, align 8, !tbaa !185
  %i.pf = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.pf, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.pe, ptr %i.pg, align 8, !tbaa !400
  %i.ph = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecWrite_StateHash(ptr noundef %i.ph, ptr noundef nonnull %5) #23
  %i.pi = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.x) #23
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pk = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.x) #23 ; 2 uses
  %i.pl = extractvalue { <2 x float>, <2 x float> } %i.pk, 0
  %i.pm = extractvalue { <2 x float>, <2 x float> } %i.pk, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i8 [ 0, %bb.ah ], [ 1, %bb.ai ]     ; 2 uses
  %.sroa.07.2.i = phi <2 x float> [ zeroinitializer, %bb.ah ], [ %i.pl, %bb.ai ] ; 3 uses
  %.sroa.7.2.i = phi <2 x float> [ zeroinitializer, %bb.ah ], [ %i.pm, %bb.ai ] ; 3 uses
  %i.pn = getelementptr i8, ptr %i.c, i64 -2632   ; 2 uses
  %i.po = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.pn) #23
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pq = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.pn) #23 ; 2 uses
  %i.pr = extractvalue { <2 x float>, <2 x float> } %i.pq, 0 ; 3 uses
  %i.ps = extractvalue { <2 x float>, <2 x float> } %i.pq, 1 ; 3 uses
  %6 = trunc nuw i8 %.1.i to i1
  br i1 %6, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pt = fcmp olt <2 x float> %.sroa.07.2.i, %i.pr
  %i.pu = select <2 x i1> %i.pt, <2 x float> %.sroa.07.2.i, <2 x float> %i.pr
  %i.pv = fcmp ogt <2 x float> %.sroa.7.2.i, %i.ps
  %i.pw = select <2 x i1> %i.pv, <2 x float> %.sroa.7.2.i, <2 x float> %i.ps
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1.1.i = phi i8 [ %.1.i, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ] ; 2 uses
  %.sroa.07.2.1.i = phi <2 x float> [ %.sroa.07.2.i, %bb.aj ], [ %i.pr, %bb.ak ], [ %i.pu, %bb.al ] ; 3 uses
  %.sroa.7.2.1.i = phi <2 x float> [ %.sroa.7.2.i, %bb.aj ], [ %i.ps, %bb.ak ], [ %i.pw, %bb.al ] ; 3 uses
  %i.px = getelementptr i8, ptr %i.c, i64 -2560   ; 2 uses
  %i.py = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.px) #23
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %b2ComputeWorldBounds.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qa = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.px) #23 ; 2 uses
  %i.qb = extractvalue { <2 x float>, <2 x float> } %i.qa, 0 ; 3 uses
  %i.qc = extractvalue { <2 x float>, <2 x float> } %i.qa, 1 ; 3 uses
  %i.qd = trunc nuw i8 %.1.1.i to i1
  br i1 %i.qd, label %bb.ao, label %b2ComputeWorldBounds.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.qe = fcmp olt <2 x float> %.sroa.07.2.1.i, %i.qb
  %i.qf = select <2 x i1> %i.qe, <2 x float> %.sroa.07.2.1.i, <2 x float> %i.qb
  %i.qg = fcmp ogt <2 x float> %.sroa.7.2.1.i, %i.qc
  %i.qh = select <2 x i1> %i.qg, <2 x float> %.sroa.7.2.1.i, <2 x float> %i.qc
  br label %b2ComputeWorldBounds.exit.thread

b2ComputeWorldBounds.exit:                        ; preds = %bb.am
  %i.qi = trunc nuw i8 %.1.1.i to i1
  br i1 %i.qi, label %b2ComputeWorldBounds.exit.thread, label %bb.ap

b2ComputeWorldBounds.exit.thread:                 ; preds = %bb.ao, %bb.an, %b2ComputeWorldBounds.exit
  %.sroa.7.2.2.i114 = phi <2 x float> [ %.sroa.7.2.1.i, %b2ComputeWorldBounds.exit ], [ %i.qh, %bb.ao ], [ %i.qc, %bb.an ]
  %.sroa.07.2.2.i113 = phi <2 x float> [ %.sroa.07.2.1.i, %b2ComputeWorldBounds.exit ], [ %i.qf, %bb.ao ], [ %i.qb, %bb.an ]
  %i.qj = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecAccumulateBounds(ptr noundef %i.qj, <2 x float> %.sroa.07.2.2.i113, <2 x float> %.sroa.7.2.2.i114) #23
  br label %bb.ap

bb.ap:                                            ; preds = %b2ComputeWorldBounds.exit.thread, %b2ComputeWorldBounds.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ag
  store i8 0, ptr %i.e, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.a, %bb.aq
  ret void
}

declare void @b2RecWrite_Step(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2ResetScheduler(ptr noundef) local_unnamed_addr #4

declare i64 @b2GetTicks() local_unnamed_addr #4

declare void @b2UpdateBroadPhasePairs(ptr noundef) local_unnamed_addr #4

declare float @b2GetMilliseconds(i64 noundef) local_unnamed_addr #4

declare void @b2Solve(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2ValidateNoEnlarged(ptr noundef) local_unnamed_addr #4

declare void @b2OverlapSensors(ptr noundef) local_unnamed_addr #4

declare void @b2GrowStack(ptr noundef) local_unnamed_addr #4

declare i64 @b2HashWorldState(ptr noundef) local_unnamed_addr #4

declare void @b2RecWrite_StateHash(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @b2ComputeWorldBounds(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.a) #23
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ]         ; 2 uses
  %.sroa.07.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.e, %bb.b ] ; 3 uses
  %.sroa.7.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.g) #23
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.g) #23 ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0 ; 3 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1 ; 3 uses
  %2 = trunc nuw i8 %.1 to i1
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fcmp olt <2 x float> %.sroa.07.2, %i.k
  %i.n = select <2 x i1> %i.m, <2 x float> %.sroa.07.2, <2 x float> %i.k
  %i.o = fcmp ogt <2 x float> %.sroa.7.2, %i.l
  %i.p = select <2 x i1> %i.o, <2 x float> %.sroa.7.2, <2 x float> %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1.1 = phi i8 [ %.1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %.sroa.07.2.1 = phi <2 x float> [ %.sroa.07.2, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  %.sroa.7.2.1 = phi <2 x float> [ %.sroa.7.2, %bb.c ], [ %i.l, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.q) #23
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.q) #23 ; 2 uses
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.t, 0 ; 3 uses
  %i.v = extractvalue { <2 x float>, <2 x float> } %i.t, 1 ; 3 uses
  %i.w = trunc nuw i8 %.1.1 to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = fcmp olt <2 x float> %.sroa.07.2.1, %i.u
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.07.2.1, <2 x float> %i.u
  %i.z = fcmp ogt <2 x float> %.sroa.7.2.1, %i.v
  %i.aa = select <2 x i1> %i.z, <2 x float> %.sroa.7.2.1, <2 x float> %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.2 = phi i8 [ %.1.1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ]
  %.sroa.07.2.2 = phi <2 x float> [ %.sroa.07.2.1, %bb.f ], [ %i.u, %bb.g ], [ %i.y, %bb.h ]
  %.sroa.7.2.2 = phi <2 x float> [ %.sroa.7.2.1, %bb.f ], [ %i.v, %bb.g ], [ %i.aa, %bb.h ]
  store <2 x float> %.sroa.07.2.2, ptr %1, align 4, !tbaa !142
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.7.2.2, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !142
  %i.ab = trunc nuw i8 %.1.2 to i1
  ret i1 %i.ab
}

declare void @b2RecAccumulateBounds(ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b2World_Draw(i32 %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.DrawContext, align 8        ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = and i32 %0, 65535
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.d ; 24 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -2744    ; 7 uses
  %i.g = getelementptr i8, ptr %i.e, i64 -5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !66, !range !67, !noundef !68
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 -832
  %.val260 = load i32, ptr %i.j, align 8, !tbaa !188
  %i.k = getelementptr i8, ptr %i.e, i64 -368     ; 2 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.k, i32 noundef %.val260) #23
  %i.l = getelementptr i8, ptr %i.e, i64 -752
  %.val259 = load i32, ptr %i.l, align 8, !tbaa !188
  %i.m = getelementptr i8, ptr %i.e, i64 -352     ; 3 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.m, i32 noundef %.val259) #23
  %i.n = getelementptr i8, ptr %i.e, i64 -712
  %.val258 = load i32, ptr %i.n, align 8, !tbaa !188
  %i.o = getelementptr i8, ptr %i.e, i64 -336     ; 3 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.o, i32 noundef %.val258) #23
  %i.p = getelementptr i8, ptr %i.e, i64 -672
  %.val = load i32, ptr %i.p, align 8, !tbaa !188
  %i.q = getelementptr i8, ptr %i.e, i64 -320     ; 3 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.q, i32 noundef %.val) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.f, ptr %2, align 8, !tbaa !237
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.r, align 8, !tbaa !238
  %i.s = getelementptr i8, ptr %i.e, i64 -2704
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.v = load <2 x float>, ptr %i.t, align 8
  %i.w = load <2 x float>, ptr %i.u, align 8
  %i.x = call i64 @b2DynamicTree_QueryAll(ptr noundef nonnull %i.s, <2 x float> %i.v, <2 x float> %i.w, ptr noundef nonnull @DrawQueryCallback, ptr noundef nonnull %2) #23 ; 0 uses
  %i.y = getelementptr i8, ptr %i.e, i64 -2632
  %i.z = load <2 x float>, ptr %i.t, align 8
  %i.aa = load <2 x float>, ptr %i.u, align 8
  %i.ab = call i64 @b2DynamicTree_QueryAll(ptr noundef nonnull %i.y, <2 x float> %i.z, <2 x float> %i.aa, ptr noundef nonnull @DrawQueryCallback, ptr noundef nonnull %2) #23 ; 0 uses
  %i.ac = getelementptr i8, ptr %i.e, i64 -2560
  %i.ad = load <2 x float>, ptr %i.t, align 8
  %i.ae = load <2 x float>, ptr %i.u, align 8
  %i.af = call i64 @b2DynamicTree_QueryAll(ptr noundef nonnull %i.ac, <2 x float> %i.ad, <2 x float> %i.ae, ptr noundef nonnull @DrawQueryCallback, ptr noundef nonnull %2) #23 ; 0 uses
  %i.ag = getelementptr i8, ptr %i.e, i64 -356
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !408 ; 2 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !409
  %.not371 = icmp eq i32 %i.ah, 0
  br i1 %.not371, label %._crit_edge370, label %.lr.ph369

.lr.ph369:                                        ; preds = %bb.b
  %i.aj = getelementptr i8, ptr %i.e, i64 -824    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 14 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ar = getelementptr i8, ptr %i.e, i64 -744
  %i.as = getelementptr i8, ptr %i.e, i64 -340
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = getelementptr i8, ptr %i.e, i64 -704
  %i.av = getelementptr i8, ptr %i.e, i64 -324
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bb = getelementptr i8, ptr %i.e, i64 -20
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 117
  %i.bf = getelementptr i8, ptr %i.e, i64 -24
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.bh = getelementptr i8, ptr %i.e, i64 -308
  %i.bi = getelementptr i8, ptr %i.e, i64 -664
  %i.bj = getelementptr i8, ptr %i.e, i64 -600
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.c

._crit_edge370:                                   ; preds = %._crit_edge366, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.am

bb.c:                                             ; preds = %.lr.ph369, %._crit_edge366
  %.0243367 = phi i32 [ 0, %.lr.ph369 ], [ %i.ll, %._crit_edge366 ] ; 3 uses
  %i.bl = zext i32 %.0243367 to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !216 ; 2 uses
  %.not362 = icmp eq i64 %i.bn, 0
  br i1 %.not362, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.c
  %i.bo = shl i32 %.0243367, 6
  %i.bp = sext i32 %i.bo to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph365, %bb.al
  %.0244363 = phi i64 [ %i.bn, %.lr.ph365 ], [ %.1245, %bb.al ] ; 4 uses
  %i.bq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0244363, i1 true)
  %i.br = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.bs = getelementptr [104 x i8], ptr %i.br, i64 %i.bq
  %i.bt = getelementptr [104 x i8], ptr %i.bs, i64 %i.bp ; 9 uses
  %i.bu = load i8, ptr %i.ak, align 8, !tbaa !410, !range !67, !noundef !68
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 90 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !240
  %.not251 = icmp eq i8 %i.bx, 0
  br i1 %.not251, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = call ptr @b2GetBodySim(ptr noundef %i.f, ptr noundef nonnull %i.bt) #23 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.bz, align 4, !tbaa !142
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.4112.8.copyload = load <2 x float>, ptr %i.ca, align 4, !tbaa !142
  %i.cb = fmul <2 x float> %.sroa.4112.8.copyload, splat (float 1.000000e-01) ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ce = fsub <2 x float> %i.cc, %i.cd
  %i.cf = fadd <2 x float> %i.cc, %i.cd
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.ch = fadd <2 x float> %.sroa.0111.0.copyload, %i.cg
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !411
  %i.cj = load ptr, ptr %i.am, align 8, !tbaa !241
  call void %i.ci(<2 x float> %i.ch, ptr noundef nonnull %i.bw, i32 noundef 16119285, ptr noundef %i.cj) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ck = load i8, ptr %i.an, align 1, !tbaa !412, !range !67, !noundef !68
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 84
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !243
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = call ptr @b2GetBodySim(ptr noundef %i.f, ptr noundef nonnull %i.bt) #23 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.0102.0.copyload = load <2 x float>, ptr %i.cq, align 4, !tbaa !142 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.5.8.copyload = load <2 x float>, ptr %i.cr, align 4, !tbaa !142 ; 2 uses
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !244
end_hunk_0
begin_hunk_1_@DrawQueryCallback:bb.a
  %i.bn = fadd <2 x float> %i.ay, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.bp = load <2 x float>, ptr %i.bo, align 8    ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.ba, %i.bq           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = fsub <2 x float> %i.br, %i.bu
  %i.bw = fadd <2 x float> %i.br, %i.bu
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.by = fadd <2 x float> %i.ay, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !435
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !258
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !241
  tail call void %i.ca(<2 x float> %i.bn, <2 x float> %i.by, float noundef %i.cc, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ce) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.p:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !436
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !438
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !241
  %i.cm = load <2 x float>, ptr %i.cf, align 8
  tail call void %i.ch(<2 x float> %i.ay, <2 x float> %i.ba, <2 x float> %i.cm, float noundef %i.cj, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.cl) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.q:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !439
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 284
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !441
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !442
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !241
  tail call void %i.cp(<2 x float> %i.ay, <2 x float> %i.ba, ptr noundef nonnull %i.cn, i32 noundef %i.cr, float noundef %i.ct, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.cv) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.r:                                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cx = load <2 x float>, ptr %i.cw, align 8    ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.ba, %i.cy           ; 2 uses
  %i.da = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = fmul <2 x float> %i.da, %i.db           ; 2 uses
  %i.dd = fsub <2 x float> %i.cz, %i.dc
  %i.de = fadd <2 x float> %i.cz, %i.dc
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dg = fadd <2 x float> %i.ay, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.di = load <2 x float>, ptr %i.dh, align 8    ; 2 uses
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.ba, %i.dj           ; 2 uses
  %i.dl = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dm = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %i.dl, %i.dm           ; 2 uses
  %i.do = fsub <2 x float> %i.dk, %i.dn
  %i.dp = fadd <2 x float> %i.dk, %i.dn
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.dr = fadd <2 x float> %i.ay, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !244
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !241
  tail call void %i.dt(<2 x float> %i.dg, <2 x float> %i.dr, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.dv) #23, !inline_history !429
  br label %b2DrawShape.exit

bb.s:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 107
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !443, !range !67, !noundef !68
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.ea = load <2 x float>, ptr %i.dz, align 8    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ec = load <2 x float>, ptr %i.eb, align 8    ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ba, %i.ed           ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = fmul <2 x float> %i.ef, %i.eg           ; 2 uses
  %i.ei = fsub <2 x float> %i.ee, %i.eh
  %i.ej = fadd <2 x float> %i.ee, %i.eh
  %i.ek = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.el = fadd <2 x float> %i.ay, %i.ek           ; 3 uses
  %i.em = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ba, %i.em           ; 2 uses
  %i.eo = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x float> %i.ef, %i.eo           ; 2 uses
  %i.eq = fsub <2 x float> %i.en, %i.ep
  %i.er = fadd <2 x float> %i.en, %i.ep
  %i.es = shufflevector <2 x float> %i.eq, <2 x float> %i.er, <2 x i32> <i32 0, i32 3>
  %i.et = fadd <2 x float> %i.ay, %i.es           ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !244
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !241
  tail call void %i.ev(<2 x float> %i.el, <2 x float> %i.et, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.ex) #23, !inline_history !429
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !247
  %i.fa = load ptr, ptr %i.ew, align 8, !tbaa !241
  tail call void %i.ez(<2 x float> %i.et, float noundef 4.000000e+00, i32 noundef range(i32 1, 0) %.0, ptr noundef %i.fa) #23, !inline_history !429
  br i1 %i.dy, label %bb.t, label %b2DrawShape.exit

bb.t:                                             ; preds = %bb.s
  %i.fb = fmul <2 x float> %i.el, splat (float 5.000000e-01)
  %i.fc = fmul <2 x float> %i.et, splat (float 5.000000e-01)
  %i.fd = fadd <2 x float> %i.fb, %i.fc           ; 3 uses
  %i.fe = fsub <2 x float> %i.et, %i.el           ; 3 uses
  %i.ff = fmul <2 x float> %i.fe, %i.fe
  %i.fg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ff) ; 2 uses
  %i.fh = fcmp ogt float %i.fg, f0x057A0000
  br i1 %i.fh, label %bb.u, label %b2Normalize.exit.i

bb.u:                                             ; preds = %bb.t
  %i.fi = tail call float @sqrtf(float noundef %i.fg) #23
  %i.fj = fdiv float 1.000000e+00, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fe, %i.fl
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %b2Normalize.exit.i

b2Normalize.exit.i:                               ; preds = %bb.u, %bb.t
  %.sroa.012.0.i.i = phi <2 x float> [ %i.fn, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.fo = tail call float @b2GetLengthUnitsPerMeter() #23
  %i.fp = fmul float %i.fo, 2.000000e-01
  %i.fq = load ptr, ptr %i.eu, align 8, !tbaa !244
  %i.fr = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %.sroa.012.0.i.i, %i.fs ; 2 uses
  %i.fu = fadd <2 x float> %i.fd, %i.ft
  %i.fv = fsub <2 x float> %i.fd, %i.ft
  %i.fw = shufflevector <2 x float> %i.fu, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.fx = load ptr, ptr %i.ew, align 8, !tbaa !241
  tail call void %i.fq(<2 x float> %i.fd, <2 x float> %i.fw, i32 noundef 10025880, ptr noundef %i.fx) #23, !inline_history !429
  br label %b2DrawShape.exit

b2DrawShape.exit:                                 ; preds = %b2Normalize.exit.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 110
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !444, !range !67, !noundef !68
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.v, label %bb.w

bb.v:                                             ; preds = %b2DrawShape.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !252
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !241
  %i.gg = load <2 x float>, ptr %i.gd, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.gi = load <2 x float>, ptr %i.gh, align 8
  tail call void %i.gc(<2 x float> %i.gg, <2 x float> %i.gi, i32 noundef 16766720, ptr noundef %i.gf) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %b2DrawShape.exit
  ret i1 true
}

declare ptr @b2GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare void @b2DrawJoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @b2GetContactSim(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @b2GetGraphColor(i32 noundef) local_unnamed_addr #4

declare i32 @b2DynamicTree_GetProxyCount(ptr noundef) local_unnamed_addr #4

declare { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2World_GetBounds(i32 %0) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 -2744
  %i.h = icmp eq ptr %i.g, null
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %b2ComputeWorldBounds.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 -2704    ; 2 uses
  %i.k = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.j) #23
  %1 = icmp eq i32 %i.k, 0
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.j) #23 ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]       ; 2 uses
  %.sroa.07.2.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %.sroa.7.2.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = getelementptr i8, ptr %i.c, i64 -2632    ; 2 uses
  %i.p = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.o) #23
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.o) #23 ; 2 uses
  %i.s = extractvalue { <2 x float>, <2 x float> } %i.r, 0 ; 3 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.r, 1 ; 3 uses
  %2 = trunc nuw i8 %.1.i to i1
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = fcmp olt <2 x float> %.sroa.07.2.i, %i.s
  %i.v = select <2 x i1> %i.u, <2 x float> %.sroa.07.2.i, <2 x float> %i.s
  %i.w = fcmp ogt <2 x float> %.sroa.7.2.i, %i.t
  %i.x = select <2 x i1> %i.w, <2 x float> %.sroa.7.2.i, <2 x float> %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.1.i = phi i8 [ %.1.i, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ]
  %.sroa.07.2.1.i = phi <2 x float> [ %.sroa.07.2.i, %bb.d ], [ %i.s, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  %.sroa.7.2.1.i = phi <2 x float> [ %.sroa.7.2.i, %bb.d ], [ %i.t, %bb.e ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr i8, ptr %i.c, i64 -2560    ; 2 uses
  %i.z = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.y) #23
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %b2ComputeWorldBounds.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.y) #23 ; 2 uses
  %i.ac = extractvalue { <2 x float>, <2 x float> } %i.ab, 0 ; 3 uses
  %i.ad = extractvalue { <2 x float>, <2 x float> } %i.ab, 1 ; 3 uses
  %3 = trunc nuw i8 %.1.1.i to i1
  br i1 %3, label %bb.i, label %b2ComputeWorldBounds.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = fcmp olt <2 x float> %.sroa.07.2.1.i, %i.ac
  %i.af = select <2 x i1> %i.ae, <2 x float> %.sroa.07.2.1.i, <2 x float> %i.ac
  %i.ag = fcmp ogt <2 x float> %.sroa.7.2.1.i, %i.ad
  %i.ah = select <2 x i1> %i.ag, <2 x float> %.sroa.7.2.1.i, <2 x float> %i.ad
  br label %b2ComputeWorldBounds.exit

b2ComputeWorldBounds.exit:                        ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  %.sroa.4.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.7.2.1.i, %bb.g ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.07.2.1.i, %bb.g ], [ %i.ac, %bb.h ], [ %i.af, %bb.i ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i32 } @b2World_GetBodyEvents(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -520
  %i.h = getelementptr i8, ptr %i.c, i64 -512
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @b2World_GetSensorEvents(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2SensorEvents) align 8 captures(none) initializes((0, 24)) %0, i32 %1) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -408
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139
  %i.i = sub nsw i32 1, %i.h
  %i.j = getelementptr i8, ptr %i.c, i64 -504
  %i.k = getelementptr i8, ptr %i.c, i64 -496
  %i.l = load i32, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr i8, ptr %i.c, i64 -472
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !123
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !117
  store ptr %i.r, ptr %0, align 8, !tbaa !446
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !122
  store ptr %i.t, ptr %i.s, align 8, !tbaa !447
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.l, ptr %i.u, align 8, !tbaa !448
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.q, ptr %i.v, align 4, !tbaa !449
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @b2World_GetContactEvents(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2ContactEvents) align 8 captures(none) initializes((0, 40)) %0, i32 %1) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -408
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139
  %i.i = sub nsw i32 1, %i.h
  %i.j = getelementptr i8, ptr %i.c, i64 -488
  %i.k = getelementptr i8, ptr %i.c, i64 -480
  %i.l = load i32, ptr %i.k, align 8, !tbaa !126
  %i.m = getelementptr i8, ptr %i.c, i64 -440
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !131
  %i.r = getelementptr i8, ptr %i.c, i64 -400
  %i.s = getelementptr i8, ptr %i.c, i64 -392
  %i.t = load i32, ptr %i.s, align 8, !tbaa !134
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !125
  store ptr %i.u, ptr %0, align 8, !tbaa !451
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !130
  store ptr %i.w, ptr %i.v, align 8, !tbaa !452
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !133
  store ptr %i.y, ptr %i.x, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.l, ptr %i.z, align 8, !tbaa !454
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.q, ptr %i.aa, align 4, !tbaa !455
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.t, ptr %i.ab, align 8, !tbaa !456
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ac, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i32 } @b2World_GetJointEvents(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -384
  %i.h = getelementptr i8, ptr %i.c, i64 -376
  %i.i = load i32, ptr %i.h, align 8, !tbaa !137
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2World_IsValid(i32 %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.5.0.extract.shift = lshr i32 %0, 16
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = add nsw i32 %i.a, -129
  %or.cond = icmp ult i32 %i.b, -128
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1                     ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2744 x i8], ptr @b2_worlds, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2736
  %i.g = load i16, ptr %i.f, align 8, !tbaa !71
  %i.h = zext i16 %i.g to i32
  %.not = icmp eq i32 %i.c, %i.h
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2504
  %i.j = load i16, ptr %i.i, align 8, !tbaa !70
  %i.k = zext i16 %i.j to i32
  %i.l = icmp eq i32 %.sroa.5.0.extract.shift, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.l, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2Body_IsValid(i64 %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 2 uses
  %.sroa.7.0.extract.shift = lshr i64 %0, 48
  %i.a = and i64 %0, 280925220896768
  %.not11 = icmp eq i64 %i.a, 0
end_hunk_1
