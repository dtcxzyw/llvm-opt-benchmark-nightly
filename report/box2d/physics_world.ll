Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@b2World_Step:bb.a

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
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !241
  %i.cv = load <2 x float>, ptr %i.ct, align 4
  call void %i.cs(<2 x float> %i.cv, <2 x float> %.sroa.0102.0.copyload, i32 noundef 16119285, ptr noundef %i.cu) #23
  %i.cw = load ptr, ptr %i.ap, align 8, !tbaa !413
  %i.cx = load ptr, ptr %i.am, align 8, !tbaa !241
  call void %i.cw(<2 x float> %.sroa.0102.0.copyload, <2 x float> %.sroa.5.8.copyload, ptr noundef %i.cx) #23
  %i.cy = fmul <2 x float> %.sroa.5.8.copyload, splat (float 1.000000e-01) ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.db = fsub <2 x float> %i.cz, %i.da
  %i.dc = fadd <2 x float> %i.cz, %i.da
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.de = fadd <2 x float> %.sroa.0102.0.copyload, %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 52
  %i.dg = load float, ptr %i.df, align 4, !tbaa !245
  %i.dh = fpext float %i.dg to double
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.2, double noundef %i.dh) #23 ; 0 uses
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !411
  %i.dk = load ptr, ptr %i.am, align 8, !tbaa !241
  call void %i.dj(<2 x float> %i.de, ptr noundef nonnull %i.a, i32 noundef 16777215, ptr noundef %i.dk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.dl = load i8, ptr %i.aq, align 4, !tbaa !414, !range !67, !noundef !68
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.k, label %.loopexit330

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %.0248332 = load i32, ptr %i.dn, align 4, !tbaa !72 ; 2 uses
  %.not252333 = icmp eq i32 %.0248332, -1
  br i1 %.not252333, label %.loopexit330, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0248334 = phi i32 [ %.0248, %bb.l ], [ %.0248332, %bb.k ] ; 2 uses
end_hunk_0
begin_hunk_1_@TreeQueryCallback:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.z, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare void @b2RecPatchU32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @b2RecW_TREESTATS(ptr noundef, i64) local_unnamed_addr #4

declare void @b2RecQueryCommit(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @b2World_OverlapShape(i32 %0, <2 x float> %1, ptr noundef %2, i64 %3, i64 %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.b2RecQueryWriter, align 8   ; 12 uses
  %8 = alloca %struct.b2ShapeProxy, align 8       ; 4 uses
  %9 = alloca %struct.WorldOverlapContext, align 8 ; 12 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744
  %i.e = getelementptr i8, ptr %i.c, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %i.c, i64 -32      ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @b2RecQueryBegin(ptr noundef nonnull %7, ptr noundef %6) #23
  store ptr %5, ptr %7, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @b2RecW_WORLDID(ptr noundef nonnull %i.j, i32 %0) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %i.j, <2 x float> %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !278
  call void @b2RecW_SHAPEPROXY(ptr noundef nonnull %i.j, ptr noundef nonnull byval(%struct.b2ShapeProxy) align 8 %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %i.j, i64 %3, i64 %4) #23
  %i.k = call i32 @b2RecReserveU32(ptr noundef nonnull %i.j) #23
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.042 = phi ptr [ %7, %bb.c ], [ %6, %bb.b ]
  %.041 = phi ptr [ @b2RecOverlapTrampoline, %bb.c ], [ %5, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load i32, ptr %i.m, align 4, !tbaa !280  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.p = load float, ptr %i.o, align 4, !tbaa !281
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %2, align 4, !tbaa !142 ; 6 uses
  %i.q = icmp sgt i32 %i.n, 1
  br i1 %i.q, label %.lr.ph.preheader.i, label %b2MakeAABB.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  %i.r = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i32 %i.n, 2
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.sroa.6.037.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i.new ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %.sroa.016.036.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i.new ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = load <2 x float>, ptr %i.t, align 4      ; 4 uses
  %i.v = fcmp olt <2 x float> %.sroa.016.036.i, %i.u
  %i.w = select <2 x i1> %i.v, <2 x float> %.sroa.016.036.i, <2 x float> %i.u ; 2 uses
  %i.x = fcmp ogt <2 x float> %.sroa.6.037.i, %i.u
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.6.037.i, <2 x float> %i.u ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load <2 x float>, ptr %i.aa, align 4    ; 4 uses
  %i.ac = fcmp olt <2 x float> %i.w, %i.ab
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.w, <2 x float> %i.ab ; 3 uses
  %i.ae = fcmp ogt <2 x float> %i.y, %i.ab
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.y, <2 x float> %i.ab ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %b2MakeAABB.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

b2MakeAABB.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %b2MakeAABB.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %b2MakeAABB.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %b2MakeAABB.exit.loopexit.unr-lcssa ]
  %.sroa.6.037.i.epil.init = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i ], [ %i.af, %b2MakeAABB.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.016.036.i.epil.init = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i ], [ %i.ad, %b2MakeAABB.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i64 %i.r to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %i.ai = fcmp olt <2 x float> %.sroa.016.036.i.epil.init, %i.ah
  %i.aj = select <2 x i1> %i.ai, <2 x float> %.sroa.016.036.i.epil.init, <2 x float> %i.ah
  %i.ak = fcmp ogt <2 x float> %.sroa.6.037.i.epil.init, %i.ah
  %i.al = select <2 x i1> %i.ak, <2 x float> %.sroa.6.037.i.epil.init, <2 x float> %i.ah
  br label %b2MakeAABB.exit

b2MakeAABB.exit:                                  ; preds = %.lr.ph.i.epil.preheader, %b2MakeAABB.exit.loopexit.unr-lcssa, %bb.d
  %.sroa.016.0.lcssa.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %bb.d ], [ %i.ad, %b2MakeAABB.exit.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil.preheader ]
  %.sroa.6.0.lcssa.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %bb.d ], [ %i.af, %b2MakeAABB.exit.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.i.epil.preheader ]
  %i.am = insertelement <2 x float> poison, float %i.p, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = fsub <2 x float> %.sroa.016.0.lcssa.i, %i.an
  %i.ap = fadd <2 x float> %1, %i.ao              ; 3 uses
  %i.aq = fadd <2 x float> %i.an, %.sroa.6.0.lcssa.i
  %i.ar = fadd <2 x float> %1, %i.aq              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.d, ptr %9, align 8, !tbaa !284
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.041, ptr %i.as, align 8, !tbaa !285
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %3, ptr %i.at, align 8, !tbaa !216
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !216
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %2, ptr %i.au, align 8, !tbaa !286
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 40
  store <2 x float> %1, ptr %i.av, align 8, !tbaa !142
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %.042, ptr %i.aw, align 8, !tbaa !287
  %i.ax = getelementptr i8, ptr %i.c, i64 -2704
  %i.ay = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.ax, <2 x float> %i.ap, <2 x float> %i.ar, i64 noundef %4, ptr noundef nonnull @TreeOverlapCallback, ptr noundef nonnull %9) #23 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ay to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.ay, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.az = getelementptr i8, ptr %i.c, i64 -2632
  %i.ba = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.az, <2 x float> %i.ap, <2 x float> %i.ar, i64 noundef %4, ptr noundef nonnull @TreeOverlapCallback, ptr noundef nonnull %9) #23 ; 2 uses
  %.sroa.0.0.extract.trunc.1 = trunc i64 %i.ba to i32
  %.sroa.4.0.extract.shift.1 = lshr i64 %i.ba, 32
  %.sroa.4.0.extract.trunc.1 = trunc nuw i64 %.sroa.4.0.extract.shift.1 to i32
  %i.bb = add nsw i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc.1
  %i.bc = add nsw i32 %.sroa.4.0.extract.trunc, %.sroa.4.0.extract.trunc.1
  %i.bd = getelementptr i8, ptr %i.c, i64 -2560
  %i.be = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.bd, <2 x float> %i.ap, <2 x float> %i.ar, i64 noundef %4, ptr noundef nonnull @TreeOverlapCallback, ptr noundef nonnull %9) #23 ; 2 uses
  %.sroa.0.0.extract.trunc.2 = trunc i64 %i.be to i32
  %.sroa.4.0.extract.shift.2 = lshr i64 %i.be, 32
  %.sroa.4.0.extract.trunc.2 = trunc nuw i64 %.sroa.4.0.extract.shift.2 to i32
  %i.bf = add nsw i32 %i.bb, %.sroa.0.0.extract.trunc.2 ; 2 uses
  %i.bg = add nsw i32 %i.bc, %.sroa.4.0.extract.trunc.2 ; 2 uses
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not43 = icmp eq ptr %i.bh, null
  br i1 %.not43, label %b2MakeAABB.exit._crit_edge, label %bb.e

b2MakeAABB.exit._crit_edge:                       ; preds = %b2MakeAABB.exit
  %.pre = zext i32 %i.bg to i64
  %.pre51 = shl nuw i64 %.pre, 32
  %.pre53 = zext i32 %i.bf to i64
  %.pre55 = or disjoint i64 %.pre51, %.pre53
  br label %bb.f

bb.e:                                             ; preds = %b2MakeAABB.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !270
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !276
  call void @b2RecPatchU32(ptr noundef nonnull %i.bi, i32 noundef %i.bk, i32 noundef %i.bm) #23
  %.sroa.5.0.insert.ext = zext i32 %i.bg to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.026.0.insert.ext = zext i32 %i.bf to i64
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.026.0.insert.ext ; 2 uses
  call void @b2RecW_TREESTATS(ptr noundef nonnull %i.bi, i64 %.sroa.026.0.insert.insert) #23
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecQueryCommit(ptr noundef %i.bn, i8 noundef zeroext -31, ptr noundef nonnull %7) #23
  br label %bb.f

bb.f:                                             ; preds = %b2MakeAABB.exit._crit_edge, %bb.e
  %.pre-phi56 = phi i64 [ %.pre55, %b2MakeAABB.exit._crit_edge ], [ %.sroa.026.0.insert.insert, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.sroa.026.0.insert.insert31 = phi i64 [ %.pre-phi56, %bb.f ], [ 0, %bb.a ]
  ret i64 %.sroa.026.0.insert.insert31
}

declare void @b2RecW_SHAPEPROXY(ptr noundef, ptr noundef byval(%struct.b2ShapeProxy) align 8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @TreeOverlapCallback(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %3 = alloca %struct.b2DistanceInput, align 4    ; 8 uses
  %4 = alloca %struct.b2SimplexCache, align 8     ; 4 uses
  %5 = alloca %struct.b2DistanceOutput, align 4   ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !284    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = shl i64 %1, 32
  %i.e = ashr exact i64 %i.d, 32
  %i.f = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %.val = load i64, ptr %i.g, align 8, !tbaa !277
  %i.l = getelementptr i8, ptr %i.f, i64 120
  %.val24 = load i64, ptr %i.l, align 8
  %i.m = and i64 %.val, %i.k
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %.val24, %i.i
  %i.p = icmp ne i64 %i.o, 0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !253
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [104 x i8], ptr %i.s, i64 %i.v
  %i.x = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.w) #23 ; 2 uses
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %i.z = extractvalue { <2 x float>, <2 x float> } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = load <2 x float>, ptr %i.aa, align 8
  %i.ac = fsub <2 x float> %i.y, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 4 dereferenceable(72) %i.ae, i64 72, i1 false), !tbaa.struct !278
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %i.af, ptr noundef nonnull %i.f) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <2 x float> %i.ac, ptr %i.ag, align 4, !tbaa !142
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  store <2 x float> %i.z, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !142
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i8 1, ptr %i.ah, align 4, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #23
  %i.ai = call float @b2GetLengthUnitsPerMeter() #23
  %i.aj = fmul float %i.ai, 5.000000e-03
  %i.ak = fmul float %i.aj, 1.000000e-01
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !291
  %i.an = fcmp ogt float %i.am, %i.ak
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !223
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.at = load i16, ptr %i.as, align 8, !tbaa !224
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !285
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !287
  %.sroa.5.0.insert.ext = zext i16 %i.at to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.ar to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.ap to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.ay = call zeroext i1 %i.av(i64 %.sroa.0.0.insert.insert, ptr noundef %i.ax) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.ay, %bb.c ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.0, %bb.d ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define i64 @b2World_CastRay(i32 %0, <2 x float> %1, <2 x float> %2, i64 %3, i64 %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.b2RecQueryWriter, align 8   ; 12 uses
  %8 = alloca %struct.b2RayCastInput, align 8     ; 8 uses
  %9 = alloca %struct.WorldRayCastContext, align 8 ; 13 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744
  %i.e = getelementptr i8, ptr %i.c, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %i.c, i64 -32      ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @b2RecQueryBegin(ptr noundef nonnull %7, ptr noundef %6) #23
  store ptr %5, ptr %7, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @b2RecW_WORLDID(ptr noundef nonnull %i.j, i32 %0) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %i.j, <2 x float> %1) #23
  call void @b2RecW_VEC2(ptr noundef nonnull %i.j, <2 x float> %2) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %i.j, i64 %3, i64 %4) #23
  %i.k = call i32 @b2RecReserveU32(ptr noundef nonnull %i.j) #23
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037 = phi ptr [ @b2RecCastTrampoline, %bb.c ], [ %5, %bb.b ]
  %.036 = phi ptr [ %7, %bb.c ], [ %6, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store <2 x float> %1, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %2, ptr %10, align 8, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.d, ptr %9, align 8, !tbaa !295
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.037, ptr %i.n, align 8, !tbaa !296
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %3, ptr %i.o, align 8, !tbaa !216
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !216
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !297
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 36
  store <2 x float> %1, ptr %i.q, align 4, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %.036, ptr %i.s, align 8, !tbaa !298
  %i.t = getelementptr i8, ptr %i.c, i64 -2704
  %i.u = call i64 @b2DynamicTree_RayCast(ptr noundef nonnull %i.t, ptr noundef nonnull %8, i64 noundef %4, ptr noundef nonnull @RayCastCallback, ptr noundef nonnull %9) #23 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.u to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.u, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.v = load float, ptr %i.p, align 8, !tbaa !297 ; 2 uses
  %i.w = fcmp une float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store float %i.v, ptr %i.m, align 8, !tbaa !293
  %i.x = getelementptr i8, ptr %i.c, i64 -2632
  %i.y = call i64 @b2DynamicTree_RayCast(ptr noundef nonnull %i.x, ptr noundef nonnull %8, i64 noundef %4, ptr noundef nonnull @RayCastCallback, ptr noundef nonnull %9) #23 ; 2 uses
  %.sroa.0.0.extract.trunc.1 = trunc i64 %i.y to i32
  %.sroa.4.0.extract.shift.1 = lshr i64 %i.y, 32
  %.sroa.4.0.extract.trunc.1 = trunc nuw i64 %.sroa.4.0.extract.shift.1 to i32
  %i.z = add nsw i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc.1 ; 2 uses
  %i.aa = add nsw i32 %.sroa.4.0.extract.trunc, %.sroa.4.0.extract.trunc.1 ; 2 uses
  %i.ab = load float, ptr %i.p, align 8, !tbaa !297 ; 2 uses
  %i.ac = fcmp une float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store float %i.ab, ptr %i.m, align 8, !tbaa !293
  %i.ad = getelementptr i8, ptr %i.c, i64 -2560
  %i.ae = call i64 @b2DynamicTree_RayCast(ptr noundef nonnull %i.ad, ptr noundef nonnull %8, i64 noundef %4, ptr noundef nonnull @RayCastCallback, ptr noundef nonnull %9) #23 ; 2 uses
  %.sroa.0.0.extract.trunc.2 = trunc i64 %i.ae to i32
  %.sroa.4.0.extract.shift.2 = lshr i64 %i.ae, 32
  %.sroa.4.0.extract.trunc.2 = trunc nuw i64 %.sroa.4.0.extract.shift.2 to i32
  %i.af = add nsw i32 %i.z, %.sroa.0.0.extract.trunc.2 ; 2 uses
  %i.ag = add nsw i32 %i.aa, %.sroa.4.0.extract.trunc.2 ; 2 uses
  %i.ah = load float, ptr %i.p, align 8, !tbaa !297 ; 2 uses
  %i.ai = fcmp une float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store float %i.ah, ptr %i.m, align 8, !tbaa !293
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.lcssa43 = phi i32 [ %.sroa.0.0.extract.trunc, %bb.d ], [ %i.af, %bb.g ], [ %i.z, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.lcssa = phi i32 [ %.sroa.4.0.extract.trunc, %bb.d ], [ %i.ag, %bb.g ], [ %i.aa, %bb.e ], [ %i.ag, %bb.f ] ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not39 = icmp eq ptr %i.aj, null
  br i1 %.not39, label %.critedge._crit_edge, label %bb.h

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = zext i32 %.lcssa to i64
  %.pre45 = shl nuw i64 %.pre, 32
  %.pre47 = zext i32 %.lcssa43 to i64
  %.pre49 = or disjoint i64 %.pre45, %.pre47
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !270
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !276
  call void @b2RecPatchU32(ptr noundef nonnull %i.ak, i32 noundef %i.am, i32 noundef %i.ao) #23
  %.sroa.5.0.insert.ext = zext i32 %.lcssa to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.020.0.insert.ext = zext i32 %.lcssa43 to i64
  %.sroa.020.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.020.0.insert.ext ; 2 uses
  call void @b2RecW_TREESTATS(ptr noundef nonnull %i.ak, i64 %.sroa.020.0.insert.insert) #23
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecQueryCommit(ptr noundef %i.ap, i8 noundef zeroext -30, ptr noundef nonnull %7) #23
  br label %bb.i

bb.i:                                             ; preds = %.critedge._crit_edge, %bb.h
  %.pre-phi50 = phi i64 [ %.pre49, %.critedge._crit_edge ], [ %.sroa.020.0.insert.insert, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.020.0.insert.insert25 = phi i64 [ %.pre-phi50, %bb.i ], [ 0, %bb.a ]
  ret i64 %.sroa.020.0.insert.insert25
}

declare void @b2RecW_VEC2(ptr noundef, <2 x float>) local_unnamed_addr #4

declare float @b2RecCastTrampoline(i64, <2 x float>, <2 x float>, float noundef, ptr noundef) #4

declare i64 @b2DynamicTree_RayCast(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal float @RayCastCallback(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #7 {
bb.a:
  %4 = alloca %struct.b2RayCastInput, align 8     ; 5 uses
  %5 = alloca %struct.b2CastOutput, align 8       ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !295    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %sext = shl i64 %2, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %.val = load i64, ptr %i.f, align 8, !tbaa !277
  %i.k = getelementptr i8, ptr %i.e, i64 120
  %.val34 = load i64, ptr %i.k, align 8
  %i.l = and i64 %.val, %i.j
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.val34, %i.h
  %i.o = icmp ne i64 %i.n, 0
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !293
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !253
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [104 x i8], ptr %i.t, i64 %i.w
  %i.y = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.x) #23 ; 2 uses
  %i.z = extractvalue { <2 x float>, <2 x float> } %i.y, 0
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.ab, align 4
  %i.ad = fsub <2 x float> %i.z, %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !299
  store i64 0, ptr %4, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2RayCastShape(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %5, ptr noundef nonnull %4, ptr noundef nonnull %i.e, <2 x float> %i.ad, <2 x float> %i.aa) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !301, !range !67, !noundef !68
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ah = add i64 %2, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !224
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load <2 x float>, ptr %i.ab, align 4
  %i.ao = load <2 x float>, ptr %i.am, align 8
  %i.ap = fadd <2 x float> %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !296
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.at = load float, ptr %i.as, align 8, !tbaa !302
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !298
  %.sroa.5.0.insert.ext = zext i16 %i.al to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.aj to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.05.0.insert.ext = and i64 %i.ah, 4294967295
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.05.0.insert.ext
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.aw = load <2 x float>, ptr %5, align 8
  %i.ax = call float %i.ar(i64 %.sroa.05.0.insert.insert, <2 x float> %i.ap, <2 x float> %i.aw, float noundef %i.at, ptr noundef %i.av) #23 ; 5 uses
  %i.ay = fcmp oge float %i.ax, 0.000000e+00
  %i.az = fcmp ole float %i.ax, 1.000000e+00
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.ax, ptr %i.ba, align 8, !tbaa !297
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !293
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi float [ %i.bc, %bb.f ], [ %i.ax, %bb.e ], [ %i.ax, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.1 = phi float [ %i.r, %bb.b ], [ %.0, %bb.g ]
  ret float %.1
}

; Function Attrs: nounwind uwtable
define void @b2World_CastRayClosest(ptr dead_on_unwind noalias writable sret(%struct.b2RayResult) align 4 initializes((0, 40)) %0, i32 %1, <2 x float> %2, <2 x float> %3, i64 %4, i64 %5) local_unnamed_addr #7 {
bb.a:
  %6 = alloca %struct.b2RayCastInput, align 8     ; 8 uses
  %7 = alloca %struct.WorldRayCastContext, align 8 ; 13 uses
  %8 = alloca %struct.b2RecBuffer, align 8        ; 11 uses
  %9 = alloca %struct.b2RayResult, align 8        ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -2744
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store <2 x float> %2, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %3, ptr %10, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !293
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.g, ptr %7, align 8, !tbaa !295
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @b2RayCastClosestFcn, ptr %i.i, align 8, !tbaa !296
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %4, ptr %i.j, align 8, !tbaa !216
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !216
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !297
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 36
  store <2 x float> %2, ptr %i.l, align 4, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %0, ptr %i.n, align 8, !tbaa !298
  %i.o = getelementptr i8, ptr %i.c, i64 -2704
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.q = call i64 @b2DynamicTree_RayCast(ptr noundef nonnull %i.o, ptr noundef nonnull %6, i64 noundef %5, ptr noundef nonnull @RayCastCallback, ptr noundef nonnull %7) #23
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !72
  %i.s = bitcast i64 %i.q to <2 x i32>
  %i.t = add nsw <2 x i32> %i.r, %i.s
  store <2 x i32> %i.t, ptr %i.p, align 4, !tbaa !72
  %i.u = load float, ptr %i.k, align 8, !tbaa !297 ; 2 uses
  %i.v = fcmp une float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store float %i.u, ptr %i.h, align 8, !tbaa !293
  %i.w = getelementptr i8, ptr %i.c, i64 -2632
  %i.x = call i64 @b2DynamicTree_RayCast(ptr noundef nonnull %i.w, ptr noundef nonnull %6, i64 noundef %5, ptr noundef nonnull @RayCastCallback, ptr noundef nonnull %7) #23
  %i.y = load <2 x i32>, ptr %i.p, align 4, !tbaa !72
  %i.z = bitcast i64 %i.x to <2 x i32>
  %i.aa = add nsw <2 x i32> %i.y, %i.z
  store <2 x i32> %i.aa, ptr %i.p, align 4, !tbaa !72
  %i.ab = load float, ptr %i.k, align 8, !tbaa !297 ; 2 uses
  %i.ac = fcmp une float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store float %i.ab, ptr %i.h, align 8, !tbaa !293
  %i.ad = getelementptr i8, ptr %i.c, i64 -2560
  %i.ae = call i64 @b2DynamicTree_RayCast(ptr noundef nonnull %i.ad, ptr noundef nonnull %6, i64 noundef %5, ptr noundef nonnull @RayCastCallback, ptr noundef nonnull %7) #23
  %i.af = load <2 x i32>, ptr %i.p, align 4, !tbaa !72
  %i.ag = bitcast i64 %i.ae to <2 x i32>
  %i.ah = add nsw <2 x i32> %i.af, %i.ag
  store <2 x i32> %i.ah, ptr %i.p, align 4, !tbaa !72
  %i.ai = load float, ptr %i.k, align 8, !tbaa !297 ; 2 uses
  %i.aj = fcmp une float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store float %i.ai, ptr %i.h, align 8, !tbaa !293
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ak = getelementptr i8, ptr %i.c, i64 -32     ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !154
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @b2RecW_WORLDID(ptr noundef nonnull %8, i32 %1) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %8, <2 x float> %2) #23
  call void @b2RecW_VEC2(ptr noundef nonnull %8, <2 x float> %3) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %8, i64 %4, i64 %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !507
  call void @b2RecW_RAYRESULT(ptr noundef nonnull %8, ptr noundef nonnull byval(%struct.b2RayResult) align 8 %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !154
  %i.an = load ptr, ptr %8, align 8, !tbaa !304
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !305
  call void @b2RecCommitRecord(ptr noundef %i.am, i8 noundef zeroext -27, ptr noundef %i.an, i32 noundef %i.ap) #23
  call void @b2RecBufFree(ptr noundef nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef float @b2RayCastClosestFcn(i64 %0, <2 x float> %1, <2 x float> %2, float noundef %3, ptr nofree noundef writeonly captures(none) %4) #14 {
bb.a:
  %i.a = fcmp oeq float %3, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %4, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %1, ptr %i.b, align 4, !tbaa !142
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %2, ptr %5, align 4, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %3, ptr %i.c, align 4, !tbaa !510
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 1, ptr %i.d, align 4, !tbaa !511
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %3, %bb.b ], [ -1.000000e+00, %bb.a ]
  ret float %.0
}

declare void @b2RecW_RAYRESULT(ptr noundef, ptr noundef byval(%struct.b2RayResult) align 8) local_unnamed_addr #4

declare void @b2RecCommitRecord(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @b2RecBufFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @b2World_CastShape(i32 %0, <2 x float> %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, i64 %4, i64 %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #7 {
bb.a:
  %8 = alloca %struct.b2RecQueryWriter, align 8   ; 12 uses
  %9 = alloca %struct.b2ShapeProxy, align 8       ; 4 uses
  %10 = alloca %struct.WorldShapeCastContext, align 8 ; 16 uses
  %11 = alloca %struct.b2BoxCastInput, align 8    ; 9 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744
  %i.e = getelementptr i8, ptr %i.c, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %i.c, i64 -32      ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @b2RecQueryBegin(ptr noundef nonnull %8, ptr noundef %7) #23
  store ptr %6, ptr %8, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  call void @b2RecW_WORLDID(ptr noundef nonnull %i.j, i32 %0) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %i.j, <2 x float> %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !278
  call void @b2RecW_SHAPEPROXY(ptr noundef nonnull %i.j, ptr noundef nonnull byval(%struct.b2ShapeProxy) align 8 %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @b2RecW_VEC2(ptr noundef nonnull %i.j, <2 x float> %3) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %i.j, i64 %4, i64 %5) #23
  %i.k = call i32 @b2RecReserveU32(ptr noundef nonnull %i.j) #23
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.047 = phi ptr [ @b2RecCastTrampoline, %bb.c ], [ %6, %bb.b ]
  %.046 = phi ptr [ %8, %bb.c ], [ %7, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 128
  store i64 0, ptr %i.m, align 8
  store ptr %i.d, ptr %10, align 8, !tbaa !308
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.047, ptr %i.n, align 8, !tbaa !309
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %4, ptr %i.o, align 8, !tbaa !216
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !216
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !310
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 36
  store <2 x float> %1, ptr %i.q, align 4, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.r, ptr noundef nonnull align 4 dereferenceable(72) %2, i64 72, i1 false), !tbaa.struct !278
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 116
  store <2 x float> %3, ptr %i.s, align 4, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 124
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !512
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %.046, ptr %i.u, align 8, !tbaa !311
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load i32, ptr %i.v, align 4, !tbaa !280  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.y = load float, ptr %i.x, align 4, !tbaa !281
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %2, align 4, !tbaa !142 ; 6 uses
  %i.z = icmp sgt i32 %i.w, 1
  br i1 %i.z, label %.lr.ph.preheader.i, label %b2MakeAABB.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  %i.aa = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ab = icmp eq i32 %i.w, 2
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.sroa.6.037.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i.new ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %.sroa.016.036.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i.new ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ad = load <2 x float>, ptr %i.ac, align 4    ; 4 uses
  %i.ae = fcmp olt <2 x float> %.sroa.016.036.i, %i.ad
  %i.af = select <2 x i1> %i.ae, <2 x float> %.sroa.016.036.i, <2 x float> %i.ad ; 2 uses
  %i.ag = fcmp ogt <2 x float> %.sroa.6.037.i, %i.ad
  %i.ah = select <2 x i1> %i.ag, <2 x float> %.sroa.6.037.i, <2 x float> %i.ad ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 4 uses
  %i.al = fcmp olt <2 x float> %i.af, %i.ak
  %i.am = select <2 x i1> %i.al, <2 x float> %i.af, <2 x float> %i.ak ; 3 uses
  %i.an = fcmp ogt <2 x float> %i.ah, %i.ak
  %i.ao = select <2 x i1> %i.an, <2 x float> %i.ah, <2 x float> %i.ak ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %b2MakeAABB.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

b2MakeAABB.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %b2MakeAABB.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %b2MakeAABB.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %b2MakeAABB.exit.loopexit.unr-lcssa ]
  %.sroa.6.037.i.epil.init = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i ], [ %i.ao, %b2MakeAABB.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.016.036.i.epil.init = phi <2 x float> [ %.sroa.016.0.copyload.i, %.lr.ph.preheader.i ], [ %i.am, %b2MakeAABB.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 4 uses
  %i.ar = fcmp olt <2 x float> %.sroa.016.036.i.epil.init, %i.aq
  %i.as = select <2 x i1> %i.ar, <2 x float> %.sroa.016.036.i.epil.init, <2 x float> %i.aq
  %i.at = fcmp ogt <2 x float> %.sroa.6.037.i.epil.init, %i.aq
  %i.au = select <2 x i1> %i.at, <2 x float> %.sroa.6.037.i.epil.init, <2 x float> %i.aq
  br label %b2MakeAABB.exit

b2MakeAABB.exit:                                  ; preds = %.lr.ph.i.epil.preheader, %b2MakeAABB.exit.loopexit.unr-lcssa, %bb.d
  %.sroa.016.0.lcssa.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %bb.d ], [ %i.am, %b2MakeAABB.exit.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.i.epil.preheader ]
  %.sroa.6.0.lcssa.i = phi <2 x float> [ %.sroa.016.0.copyload.i, %bb.d ], [ %i.ao, %b2MakeAABB.exit.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.i.epil.preheader ]
  %i.av = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fsub <2 x float> %.sroa.016.0.lcssa.i, %i.aw
  %12 = fadd <2 x float> %1, %i.ax
  %i.ay = fadd <2 x float> %i.aw, %.sroa.6.0.lcssa.i
  %13 = fadd <2 x float> %1, %i.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store <2 x float> %12, ptr %11, align 8, !tbaa !142
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %13, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !142
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x float> %3, ptr %i.az, align 8, !tbaa !142
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  store float 1.000000e+00, ptr %i.ba, align 8, !tbaa !313
  %i.bb = getelementptr i8, ptr %i.c, i64 -2704
  %i.bc = call i64 @b2DynamicTree_BoxCast(ptr noundef nonnull %i.bb, ptr noundef nonnull %11, i64 noundef %5, ptr noundef nonnull @ShapeCastCallback, ptr noundef nonnull %10) #23 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.bc to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.bc, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.bd = load float, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.be = fcmp une float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.e, label %.critedge

bb.e:                                             ; preds = %b2MakeAABB.exit
  store float %i.bd, ptr %i.ba, align 8, !tbaa !313
  %i.bf = getelementptr i8, ptr %i.c, i64 -2632
  %i.bg = call i64 @b2DynamicTree_BoxCast(ptr noundef nonnull %i.bf, ptr noundef nonnull %11, i64 noundef %5, ptr noundef nonnull @ShapeCastCallback, ptr noundef nonnull %10) #23 ; 2 uses
  %.sroa.0.0.extract.trunc.1 = trunc i64 %i.bg to i32
  %.sroa.4.0.extract.shift.1 = lshr i64 %i.bg, 32
  %.sroa.4.0.extract.trunc.1 = trunc nuw i64 %.sroa.4.0.extract.shift.1 to i32
  %i.bh = add nsw i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc.1 ; 2 uses
  %i.bi = add nsw i32 %.sroa.4.0.extract.trunc, %.sroa.4.0.extract.trunc.1 ; 2 uses
  %i.bj = load float, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.bk = fcmp une float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store float %i.bj, ptr %i.ba, align 8, !tbaa !313
  %i.bl = getelementptr i8, ptr %i.c, i64 -2560
  %i.bm = call i64 @b2DynamicTree_BoxCast(ptr noundef nonnull %i.bl, ptr noundef nonnull %11, i64 noundef %5, ptr noundef nonnull @ShapeCastCallback, ptr noundef nonnull %10) #23 ; 2 uses
  %.sroa.0.0.extract.trunc.2 = trunc i64 %i.bm to i32
  %.sroa.4.0.extract.shift.2 = lshr i64 %i.bm, 32
  %.sroa.4.0.extract.trunc.2 = trunc nuw i64 %.sroa.4.0.extract.shift.2 to i32
  %i.bn = add nsw i32 %i.bh, %.sroa.0.0.extract.trunc.2 ; 2 uses
  %i.bo = add nsw i32 %i.bi, %.sroa.4.0.extract.trunc.2 ; 2 uses
  %i.bp = load float, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.bq = fcmp une float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  store float %i.bp, ptr %i.ba, align 8, !tbaa !313
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %b2MakeAABB.exit
  %.lcssa55 = phi i32 [ %.sroa.0.0.extract.trunc, %b2MakeAABB.exit ], [ %i.bn, %bb.g ], [ %i.bh, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  %.lcssa = phi i32 [ %.sroa.4.0.extract.trunc, %b2MakeAABB.exit ], [ %i.bo, %bb.g ], [ %i.bi, %bb.e ], [ %i.bo, %bb.f ] ; 2 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not49 = icmp eq ptr %i.br, null
  br i1 %.not49, label %.critedge._crit_edge, label %bb.h

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = zext i32 %.lcssa to i64
  %.pre57 = shl nuw i64 %.pre, 32
  %.pre59 = zext i32 %.lcssa55 to i64
  %.pre61 = or disjoint i64 %.pre57, %.pre59
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !270
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !276
  call void @b2RecPatchU32(ptr noundef nonnull %i.bs, i32 noundef %i.bu, i32 noundef %i.bw) #23
  %.sroa.5.0.insert.ext = zext i32 %.lcssa to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.030.0.insert.ext = zext i32 %.lcssa55 to i64
  %.sroa.030.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.030.0.insert.ext ; 2 uses
  call void @b2RecW_TREESTATS(ptr noundef nonnull %i.bs, i64 %.sroa.030.0.insert.insert) #23
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecQueryCommit(ptr noundef %i.bx, i8 noundef zeroext -29, ptr noundef nonnull %8) #23
  br label %bb.i

bb.i:                                             ; preds = %.critedge._crit_edge, %bb.h
  %.pre-phi62 = phi i64 [ %.pre61, %.critedge._crit_edge ], [ %.sroa.030.0.insert.insert, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.030.0.insert.insert35 = phi i64 [ %.pre-phi62, %bb.i ], [ 0, %bb.a ]
  ret i64 %.sroa.030.0.insert.insert35
}

declare i64 @b2DynamicTree_BoxCast(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal float @ShapeCastCallback(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #7 {
bb.a:
  %4 = alloca %struct.b2ShapeCastInput, align 4   ; 5 uses
  %5 = alloca %struct.b2CastOutput, align 8       ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !308    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %sext = shl i64 %2, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %.val = load i64, ptr %i.f, align 8, !tbaa !277
  %i.k = getelementptr i8, ptr %i.e, i64 120
  %.val35 = load i64, ptr %i.k, align 8
  %i.l = and i64 %.val, %i.j
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i64 %.val35, %i.h
  %i.o = icmp ne i64 %i.n, 0
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !313
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(88) %i.s, i64 88, i1 false), !tbaa.struct !314
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !313
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %i.u, ptr %i.v, align 4, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !253
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [104 x i8], ptr %i.x, i64 %i.aa
  %i.ac = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.ab) #23 ; 2 uses
  %i.ad = extractvalue { <2 x float>, <2 x float> } %i.ac, 0
  %i.ae = extractvalue { <2 x float>, <2 x float> } %i.ac, 1
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4
  %i.ah = fsub <2 x float> %i.ad, %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2ShapeCastShape(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %5, ptr noundef nonnull %4, ptr noundef nonnull %i.e, <2 x float> %i.ah, <2 x float> %i.ae) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !301, !range !67, !noundef !68
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = add i64 %2, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.an = load i16, ptr %i.am, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !224
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load <2 x float>, ptr %i.af, align 4
  %i.as = load <2 x float>, ptr %i.aq, align 8
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !309
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !302
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !311
  %.sroa.5.0.insert.ext = zext i16 %i.ap to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.an to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.05.0.insert.ext = and i64 %i.al, 4294967295
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.05.0.insert.ext
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.ba = load <2 x float>, ptr %5, align 8
  %i.bb = call float %i.av(i64 %.sroa.05.0.insert.insert, <2 x float> %i.at, <2 x float> %i.ba, float noundef %i.ax, ptr noundef %i.az) #23 ; 5 uses
  %i.bc = fcmp oge float %i.bb, 0.000000e+00
  %i.bd = fcmp ole float %i.bb, 1.000000e+00
  %or.cond = and i1 %i.bc, %i.bd
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.bb, ptr %i.be, align 8, !tbaa !310
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.bf = load float, ptr %i.t, align 4, !tbaa !313
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi float [ %i.bf, %bb.f ], [ %i.bb, %bb.e ], [ %i.bb, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.1 = phi float [ %i.r, %bb.b ], [ %.0, %bb.g ]
  ret float %.1
}

; Function Attrs: nounwind uwtable
define float @b2World_CastMover(i32 %0, <2 x float> %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, i64 %4, i64 %5) local_unnamed_addr #7 {
bb.a:
  %6 = alloca %struct.WorldMoverCastContext, align 8 ; 18 uses
  %7 = alloca %struct.b2BoxCastInput, align 8     ; 9 uses
  %8 = alloca %struct.b2RecBuffer, align 8        ; 12 uses
  %9 = alloca %struct.b2Capsule, align 8          ; 4 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -2744
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false)
  store ptr %i.g, ptr %6, align 8, !tbaa !317
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.i, align 8, !tbaa !216
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !216
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !318
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 28
  store <2 x float> %1, ptr %i.k, align 4, !tbaa !142
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.m = load i64, ptr %2, align 4, !tbaa !142    ; 2 uses
  store i64 %i.m, ptr %i.l, align 4, !tbaa !142
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 4, !tbaa !142  ; 2 uses
  store i64 %i.p, ptr %i.n, align 4, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 100
  store i32 2, ptr %i.q, align 4, !tbaa !513
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !258 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 104
  store float %i.s, ptr %i.t, align 8, !tbaa !514
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 108
  store <2 x float> %3, ptr %i.u, align 4, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 116
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !515
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i8 1, ptr %i.w, align 8, !tbaa !516
  %.sroa.016.0.copyload.i.cast = bitcast i64 %i.m to <2 x float> ; 4 uses
  %.cast = bitcast i64 %i.p to <2 x float>        ; 4 uses
  %i.x = fcmp olt <2 x float> %.sroa.016.0.copyload.i.cast, %.cast
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.016.0.copyload.i.cast, <2 x float> %.cast
  %i.z = insertelement <2 x float> poison, float %i.s, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fsub <2 x float> %i.y, %i.aa
  %10 = fadd <2 x float> %1, %i.ab
  %i.ac = fcmp ogt <2 x float> %.sroa.016.0.copyload.i.cast, %.cast
  %i.ad = select <2 x i1> %i.ac, <2 x float> %.sroa.016.0.copyload.i.cast, <2 x float> %.cast
  %i.ae = fadd <2 x float> %i.aa, %i.ad
  %11 = fadd <2 x float> %1, %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store <2 x float> %10, ptr %7, align 8, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %11, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !142
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %3, ptr %i.af, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store float 1.000000e+00, ptr %i.ag, align 8, !tbaa !313
  %i.ah = getelementptr i8, ptr %i.c, i64 -2704
  %i.ai = call i64 @b2DynamicTree_BoxCast(ptr noundef nonnull %i.ah, ptr noundef nonnull %7, i64 noundef %5, ptr noundef nonnull @MoverCastCallback, ptr noundef nonnull %6) #23 ; 0 uses
  %i.aj = load float, ptr %i.j, align 8, !tbaa !318 ; 3 uses
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store float %i.aj, ptr %i.ag, align 8, !tbaa !313
  %i.al = getelementptr i8, ptr %i.c, i64 -2632
  %i.am = call i64 @b2DynamicTree_BoxCast(ptr noundef nonnull %i.al, ptr noundef nonnull %7, i64 noundef %5, ptr noundef nonnull @MoverCastCallback, ptr noundef nonnull %6) #23 ; 0 uses
  %i.an = load float, ptr %i.j, align 8, !tbaa !318 ; 3 uses
  %i.ao = fcmp oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.an, ptr %i.ag, align 8, !tbaa !313
  %i.ap = getelementptr i8, ptr %i.c, i64 -2560
  %i.aq = call i64 @b2DynamicTree_BoxCast(ptr noundef nonnull %i.ap, ptr noundef nonnull %7, i64 noundef %5, ptr noundef nonnull @MoverCastCallback, ptr noundef nonnull %6) #23 ; 0 uses
  %i.ar = load float, ptr %i.j, align 8, !tbaa !318 ; 4 uses
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %i.ar, ptr %i.ag, align 8, !tbaa !313
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %i.at = phi float [ %i.ar, %bb.d ], [ %i.ar, %bb.c ], [ %i.an, %bb.b ], [ %i.aj, %.lr.ph.i ]
  %i.au = getelementptr i8, ptr %i.c, i64 -32     ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @b2RecW_WORLDID(ptr noundef nonnull %8, i32 %0) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %8, <2 x float> %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !299
  call void @b2RecW_CAPSULE(ptr noundef nonnull %8, ptr noundef nonnull byval(%struct.b2Capsule) align 8 %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @b2RecW_VEC2(ptr noundef nonnull %8, <2 x float> %3) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %8, i64 %4, i64 %5) #23
  %i.aw = load float, ptr %i.j, align 8, !tbaa !318
  call void @b2RecW_F32(ptr noundef nonnull %8, float noundef %i.aw) #23
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.ay = load ptr, ptr %8, align 8, !tbaa !304
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !305
  call void @b2RecCommitRecord(ptr noundef %i.ax, i8 noundef zeroext -26, ptr noundef %i.ay, i32 noundef %i.ba) #23
  call void @b2RecBufFree(ptr noundef nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pre = load float, ptr %i.j, align 8, !tbaa !318
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = phi float [ %.pre, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi float [ %i.bb, %bb.g ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define internal float @MoverCastCallback(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #7 {
bb.a:
  %4 = alloca %struct.b2ShapeCastInput, align 4   ; 5 uses
  %5 = alloca %struct.b2CastOutput, align 4       ; 4 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !317    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = shl i64 %2, 32
  %i.e = ashr exact i64 %i.d, 32
  %i.f = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %.val = load i64, ptr %i.g, align 8, !tbaa !277
  %i.l = getelementptr i8, ptr %i.f, i64 120
  %.val21 = load i64, ptr %i.l, align 8
  %i.m = and i64 %.val, %i.k
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %.val21, %i.i
  %i.p = icmp ne i64 %i.o, 0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !318
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(88) %i.t, i64 88, i1 false), !tbaa.struct !314
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !313
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %i.v, ptr %i.w, align 4, !tbaa !315
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !253
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [104 x i8], ptr %i.y, i64 %i.ab
  %i.ad = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.ac) #23 ; 2 uses
  %i.ae = extractvalue { <2 x float>, <2 x float> } %i.ad, 0
  %i.af = extractvalue { <2 x float>, <2 x float> } %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ah = load <2 x float>, ptr %i.ag, align 4
  %i.ai = fsub <2 x float> %i.ae, %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2ShapeCastShape(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %5, ptr noundef nonnull %4, ptr noundef nonnull %i.f, <2 x float> %i.ai, <2 x float> %i.af) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !302 ; 3 uses
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = load float, ptr %i.am, align 8, !tbaa !318
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store float %i.ak, ptr %i.am, align 8, !tbaa !318
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi float [ %i.an, %bb.d ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi float [ %i.s, %bb.b ], [ %.0, %bb.f ]
  ret float %.1
}

declare void @b2RecW_CAPSULE(ptr noundef, ptr noundef byval(%struct.b2Capsule) align 8) local_unnamed_addr #4

declare void @b2RecW_F32(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b2World_CollideMover(i32 %0, <2 x float> %1, ptr nofree noundef readonly captures(none) %2, i64 %3, i64 %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.b2RecQueryWriter, align 8   ; 12 uses
  %8 = alloca %struct.b2Capsule, align 8          ; 4 uses
  %9 = alloca %struct.WorldMoverContext, align 8  ; 13 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744
  %i.e = getelementptr i8, ptr %i.c, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.h = getelementptr i8, ptr %i.c, i64 -32      ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @b2RecQueryBegin(ptr noundef nonnull %7, ptr noundef %6) #23
  store ptr %5, ptr %7, align 8, !tbaa !240
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @b2RecW_WORLDID(ptr noundef nonnull %i.j, i32 %0) #23
  call void @b2RecW_POSITION(ptr noundef nonnull %i.j, <2 x float> %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !299
  call void @b2RecW_CAPSULE(ptr noundef nonnull %i.j, ptr noundef nonnull byval(%struct.b2Capsule) align 8 %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @b2RecW_QUERYFILTER(ptr noundef nonnull %i.j, i64 %3, i64 %4) #23
  %i.k = call i32 @b2RecReserveU32(ptr noundef nonnull %i.j) #23
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037 = phi ptr [ %7, %bb.c ], [ %6, %bb.b ]
  %.0 = phi ptr [ @b2RecPlaneTrampoline, %bb.c ], [ %5, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !258
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x float>, ptr %2, align 4        ; 4 uses
  %i.q = load <2 x float>, ptr %i.o, align 4      ; 4 uses
  %i.r = fcmp olt <2 x float> %i.p, %i.q
  %i.s = select <2 x i1> %i.r, <2 x float> %i.p, <2 x float> %i.q
end_hunk_1
begin_hunk_2_@b2World_CollideMover:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare zeroext i1 @b2RecPlaneTrampoline(i64, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @TreeCollideCallback(i32 %0, i64 noundef %1, ptr noundef %2) #7 {
bb.a:
  %3 = alloca %struct.b2PlaneResult, align 8      ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !320    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = shl i64 %1, 32
  %i.e = ashr exact i64 %i.d, 32
  %i.f = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %.val = load i64, ptr %i.g, align 8, !tbaa !277
  %i.l = getelementptr i8, ptr %i.f, i64 120
  %.val22 = load i64, ptr %i.l, align 8
  %i.m = and i64 %.val, %i.k
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %.val22, %i.i
  %i.p = icmp ne i64 %i.o, 0
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !253
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [104 x i8], ptr %i.s, i64 %i.v
  %i.x = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.a, ptr noundef %i.w) #23 ; 2 uses
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %i.z = extractvalue { <2 x float>, <2 x float> } %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ab = load <2 x float>, ptr %i.aa, align 4
  %i.ac = fsub <2 x float> %i.y, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @b2CollideMover(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %3, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.f, <2 x float> %i.ac, <2 x float> %i.z) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !519, !range !67, !noundef !68
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ah = load <2 x float>, ptr %3, align 8       ; 2 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ah
  %i.aj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ai)
  %i.ak = fsub float 1.000000e+00, %i.aj
  %i.al = call float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp olt float %i.al, f0x37480000
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.f, align 8, !tbaa !223
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !224
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !321
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !322
  %.sroa.5.0.insert.ext = zext i16 %i.as to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.aq to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.ao to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.ax = call zeroext i1 %i.au(i64 %.sroa.0.0.insert.insert, ptr noundef nonnull %3, ptr noundef %i.aw) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ %i.ax, %bb.d ], [ true, %bb.c ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i1 [ %.0, %bb.e ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind uwtable
define void @b2World_SetCustomFilterCallback(i32 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 -104
  store ptr %1, ptr %i.f, align 8, !tbaa !520
  %i.g = getelementptr i8, ptr %i.c, i64 -96
  store ptr %2, ptr %i.g, align 8, !tbaa !521
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @b2World_SetPreSolveCallback(i32 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 4 uses
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 -32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 -128
  store ptr %1, ptr %i.h, align 8, !tbaa !266
  %i.i = getelementptr i8, ptr %i.c, i64 -120
  store ptr %2, ptr %i.i, align 8, !tbaa !267
  %i.j = getelementptr i8, ptr %i.c, i64 -112
  store ptr %3, ptr %i.j, align 8, !tbaa !522
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2World_SetGravity(i32 %0, <2 x float> %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldSetGravity, align 4 ; 5 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> %1, ptr %i.f, align 4, !tbaa !142
  call void @b2RecWrite_WorldSetGravity(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -292
  store <2 x float> %1, ptr %i.g, align 4, !tbaa !142
  ret void
}

declare void @b2RecWrite_WorldSetGravity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @b2World_GetGravity(i32 %0) local_unnamed_addr #16 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -292
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !142
  ret <2 x float> %.sroa.01.0.copyload
}

; Function Attrs: nounwind uwtable
define void @b2World_Explode(i32 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldExplode, align 8 ; 6 uses
  %3 = alloca %struct.ExplosionContext, align 8   ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !524
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.b, align 8, !tbaa !142 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !142 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !525
  %i.g = and i32 %0, 65535
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -2744
  %i.k = getelementptr i8, ptr %i.i, i64 -5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66, !range !67, !noundef !68
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 8, !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !526
  call void @b2RecWrite_WorldExplode(ptr noundef nonnull %i.o, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.j, ptr %3, align 8, !tbaa !324
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.018.0.copyload, ptr %i.r, align 8, !tbaa !142
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %i.d, ptr %4, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.f, ptr %i.s, align 8, !tbaa !325
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.t, align 4
  %i.u = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fadd <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = fsub <2 x float> %.sroa.018.0.copyload, %i.w
  %i.y = fadd <2 x float> %.sroa.018.0.copyload, %i.w
  %i.z = getelementptr i8, ptr %i.i, i64 -2560
  %i.aa = call i64 @b2DynamicTree_Query(ptr noundef nonnull %i.z, <2 x float> %i.x, <2 x float> %i.y, i64 noundef %i.a, ptr noundef nonnull @ExplosionCallback, ptr noundef nonnull %3) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldExplode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ExplosionCallback(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %3 = alloca %struct.b2Vec2, align 8             ; 5 uses
  %4 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %5 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %6 = alloca %struct.b2SimplexCache, align 8     ; 4 uses
  %7 = alloca %struct.b2DistanceOutput, align 8   ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !324    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = shl i64 %1, 32
  %i.e = ashr exact i64 %i.d, 32
  %i.f = getelementptr inbounds [296 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !253
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 4 uses
  %i.m = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef %i.a, ptr noundef %i.l) #23 ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.m, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8
  %i.r = fsub <2 x float> %i.q, %i.n              ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.o, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = fadd <2 x float> %i.t, %i.w
  %i.y = fsub <2 x float> %i.t, %i.w
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.z, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef %i.f) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %5, ptr noundef nonnull %3, i32 noundef 1, float noundef 0.000000e+00) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.aa, ptr noundef nonnull align 4 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !278
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !527
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i8 1, ptr %i.ac, align 4, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %7, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !528 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ag = load float, ptr %i.af, align 4, !tbaa !529 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !291
  %i.aj = fadd float %i.ae, %i.ag                 ; 2 uses
  %i.ak = fcmp ogt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = call zeroext i1 @b2WakeBody(ptr noundef nonnull %i.a, ptr noundef %i.l) #23 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !254
  %.not = icmp eq i32 %i.an, 2
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.sroa.027.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !142
  %i.ao = load float, ptr %i.ah, align 8, !tbaa !291
  %i.ap = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = call <2 x float> @b2GetShapeCentroid(ptr noundef nonnull %i.f) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.027.0 = phi <2 x float> [ %i.aq, %bb.d ], [ %.sroa.027.0.copyload, %bb.c ] ; 2 uses
  %i.ar = load <2 x float>, ptr %3, align 8
  %i.as = fsub <2 x float> %.sroa.027.0, %i.ar    ; 3 uses
  %i.at = fmul <2 x float> %i.as, %i.as
  %i.au = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.au, f0x2BC80000
  br i1 %i.av, label %b2Normalize.exit, label %bb.f

b2Normalize.exit:                                 ; preds = %bb.e
  %i.aw = call float @sqrtf(float noundef %i.au) #23
  %i.ax = fdiv float 1.000000e+00, %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.as, %i.az
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %b2Normalize.exit
  %.sroa.021.0 = phi <2 x float> [ %i.ba, %b2Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ] ; 4 uses
  %.sroa.0.4.vec.extract.i70 = extractelement <2 x float> %.sroa.021.0, i64 1
  %i.bb = fneg float %.sroa.0.4.vec.extract.i70
  %.sroa.01.0.vec.insert.i = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.01.4.vec.insert.i = shufflevector <2 x float> %.sroa.01.0.vec.insert.i, <2 x float> %.sroa.021.0, <2 x i32> <i32 0, i32 2>
  %i.bc = call float @b2GetShapeProjectedPerimeter(ptr noundef nonnull %i.f, <2 x float> %.sroa.01.4.vec.insert.i) #23
  %i.bd = load float, ptr %i.ah, align 8, !tbaa !291 ; 2 uses
  %i.be = fcmp ogt float %i.bd, %i.ae
  %i.bf = fcmp ogt float %i.ag, 0.000000e+00
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = fsub float %i.aj, %i.bd
  %i.bh = fdiv float %i.bg, %i.ag                 ; 3 uses
  %i.bi = fcmp olt float %i.bh, 0.000000e+00
  %i.bj = fcmp ogt float %i.bh, 1.000000e+00
  %i.bk = select i1 %i.bj, float 1.000000e+00, float %i.bh
  %i.bl = select i1 %i.bi, float 0.000000e+00, float %i.bk
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.061 = phi float [ %i.bl, %bb.g ], [ 1.000000e+00, %bb.f ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !325
  %i.bo = fmul float %i.bc, %i.bn
  %i.bp = fmul float %.061, %i.bo
  %i.bq = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.br = shufflevector <2 x float> %.sroa.021.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fmul <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !326
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1960
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !93
  %i.ca = sext i32 %i.bu to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [32 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.cd = getelementptr inbounds [96 x i8], ptr %i.cc, i64 %i.ca ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 60
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !530
  %i.cg = load <2 x float>, ptr %i.cb, align 4
  %i.ch = shufflevector <2 x float> %.sroa.021.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.o, %i.ch            ; 2 uses
  %i.cj = fsub <2 x float> %i.ci, %i.bs
  %i.ck = fadd <2 x float> %i.ci, %i.bs
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.cm = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cl, %i.cn           ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.co, %i.cq
  %i.cs = fadd <2 x float> %i.cr, %i.cg
  store <2 x float> %i.cs, ptr %i.cb, align 4, !tbaa !142
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cu = load <2 x float>, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !531
  %i.cx = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fsub <2 x float> %.sroa.027.0, %i.cu    ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.o, %i.cz            ; 2 uses
  %i.db = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul <2 x float> %i.db, %i.dc           ; 2 uses
  %i.de = fsub <2 x float> %i.da, %i.dd
  %i.df = fadd <2 x float> %i.da, %i.dd
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 0, i32 3>
  %i.dh = fmul <2 x float> %i.cx, %i.dg           ; 2 uses
  %shift = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.dh, %shift
  %i.di = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dj = fmul float %i.cw, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !328
  %i.dm = fadd float %i.dl, %i.dj
  store float %i.dm, ptr %i.dk, align 4, !tbaa !328
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
end_hunk_2
