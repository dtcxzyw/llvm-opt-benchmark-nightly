Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@b2World_Step:bb.a
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
  %i.pt = trunc nuw i8 %.1.i to i1
  br i1 %i.pt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pu = fcmp olt <2 x float> %.sroa.07.2.i, %i.pr
  %i.pv = select <2 x i1> %i.pu, <2 x float> %.sroa.07.2.i, <2 x float> %i.pr
  %i.pw = fcmp ogt <2 x float> %.sroa.7.2.i, %i.ps
  %i.px = select <2 x i1> %i.pw, <2 x float> %.sroa.7.2.i, <2 x float> %i.ps
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1.1.i = phi i8 [ %.1.i, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ] ; 2 uses
  %.sroa.07.2.1.i = phi <2 x float> [ %.sroa.07.2.i, %bb.aj ], [ %i.pr, %bb.ak ], [ %i.pv, %bb.al ] ; 3 uses
  %.sroa.7.2.1.i = phi <2 x float> [ %.sroa.7.2.i, %bb.aj ], [ %i.ps, %bb.ak ], [ %i.px, %bb.al ] ; 3 uses
  %i.py = getelementptr i8, ptr %i.c, i64 -2560   ; 2 uses
  %i.pz = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.py) #23
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %b2ComputeWorldBounds.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qb = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.py) #23 ; 2 uses
  %i.qc = extractvalue { <2 x float>, <2 x float> } %i.qb, 0 ; 3 uses
  %i.qd = extractvalue { <2 x float>, <2 x float> } %i.qb, 1 ; 3 uses
  %i.qe = trunc nuw i8 %.1.1.i to i1
  br i1 %i.qe, label %bb.ao, label %b2ComputeWorldBounds.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.qf = fcmp olt <2 x float> %.sroa.07.2.1.i, %i.qc
  %i.qg = select <2 x i1> %i.qf, <2 x float> %.sroa.07.2.1.i, <2 x float> %i.qc
  %i.qh = fcmp ogt <2 x float> %.sroa.7.2.1.i, %i.qd
  %i.qi = select <2 x i1> %i.qh, <2 x float> %.sroa.7.2.1.i, <2 x float> %i.qd
  br label %b2ComputeWorldBounds.exit.thread

b2ComputeWorldBounds.exit:                        ; preds = %bb.am
  %i.qj = trunc nuw i8 %.1.1.i to i1
  br i1 %i.qj, label %b2ComputeWorldBounds.exit.thread, label %bb.ap

b2ComputeWorldBounds.exit.thread:                 ; preds = %bb.ao, %bb.an, %b2ComputeWorldBounds.exit
  %.sroa.7.2.2.i114 = phi <2 x float> [ %.sroa.7.2.1.i, %b2ComputeWorldBounds.exit ], [ %i.qi, %bb.ao ], [ %i.qd, %bb.an ]
  %.sroa.07.2.2.i113 = phi <2 x float> [ %.sroa.07.2.1.i, %b2ComputeWorldBounds.exit ], [ %i.qg, %bb.ao ], [ %i.qc, %bb.an ]
  %i.qk = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecAccumulateBounds(ptr noundef %i.qk, <2 x float> %.sroa.07.2.2.i113, <2 x float> %.sroa.7.2.2.i114) #23
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
  %i.m = trunc nuw i8 %.1 to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp olt <2 x float> %.sroa.07.2, %i.k
  %i.o = select <2 x i1> %i.n, <2 x float> %.sroa.07.2, <2 x float> %i.k
  %i.p = fcmp ogt <2 x float> %.sroa.7.2, %i.l
  %i.q = select <2 x i1> %i.p, <2 x float> %.sroa.7.2, <2 x float> %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1.1 = phi i8 [ %.1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %.sroa.07.2.1 = phi <2 x float> [ %.sroa.07.2, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %.sroa.7.2.1 = phi <2 x float> [ %.sroa.7.2, %bb.c ], [ %i.l, %bb.d ], [ %i.q, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.s = tail call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.r) #23
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.r) #23 ; 2 uses
  %i.v = extractvalue { <2 x float>, <2 x float> } %i.u, 0 ; 3 uses
  %i.w = extractvalue { <2 x float>, <2 x float> } %i.u, 1 ; 3 uses
  %i.x = trunc nuw i8 %.1.1 to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp olt <2 x float> %.sroa.07.2.1, %i.v
  %i.z = select <2 x i1> %i.y, <2 x float> %.sroa.07.2.1, <2 x float> %i.v
  %i.aa = fcmp ogt <2 x float> %.sroa.7.2.1, %i.w
  %i.ab = select <2 x i1> %i.aa, <2 x float> %.sroa.7.2.1, <2 x float> %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1.2 = phi i8 [ %.1.1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ]
  %.sroa.07.2.2 = phi <2 x float> [ %.sroa.07.2.1, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ]
  %.sroa.7.2.2 = phi <2 x float> [ %.sroa.7.2.1, %bb.f ], [ %i.w, %bb.g ], [ %i.ab, %bb.h ]
  store <2 x float> %.sroa.07.2.2, ptr %1, align 4, !tbaa !142
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.7.2.2, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !142
  %i.ac = trunc nuw i8 %.1.2 to i1
  ret i1 %i.ac
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
end_hunk_0
