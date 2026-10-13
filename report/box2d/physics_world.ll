Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@b2DestroyWorld:bb.a
  tail call void @b2DestroyBroadPhase(ptr noundef nonnull %i.gf) #23
  %i.gg = getelementptr i8, ptr %i.c, i64 -848
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gg) #23
  %i.gh = getelementptr i8, ptr %i.c, i64 -648
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gh) #23
  %i.gi = getelementptr i8, ptr %i.c, i64 -624
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gi) #23
  %i.gj = getelementptr i8, ptr %i.c, i64 -728
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gj) #23
  %i.gk = getelementptr i8, ptr %i.c, i64 -768
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gk) #23
  %i.gl = getelementptr i8, ptr %i.c, i64 -688
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gl) #23
  %i.gm = getelementptr i8, ptr %i.c, i64 -808
  tail call void @b2DestroyIdPool(ptr noundef nonnull %i.gm) #23
  tail call void @b2DestroyStack(ptr noundef %i.d) #23
  %i.gn = getelementptr i8, ptr %i.c, i64 -240    ; 2 uses
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !70
  %i.gp = add i16 %i.go, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2744) %i.d, i8 0, i64 2744, i1 false)
  store i16 %i.gp, ptr %i.gn, align 8, !tbaa !70
  ret void

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %bb.g
  %indvars.iv221 = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next222, %bb.g ] ; 3 uses
  %i.gq = load ptr, ptr %i.ep, align 8, !tbaa !76
  %i.gr = getelementptr inbounds nuw [88 x i8], ptr %i.gq, i64 %indvars.iv221
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 80
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !184
  %.not196 = icmp eq i32 %i.gt, -1
  br i1 %.not196, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph210
  %i.gu = trunc nuw nsw i64 %indvars.iv221 to i32
  tail call void @b2DestroySolverSet(ptr noundef %i.d, i32 noundef %i.gu) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph210
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge211, label %.lr.ph210, !llvm.loop !359
}

declare void @b2StopRecordingInternal(ptr noundef) local_unnamed_addr #4

declare void @b2DestroyScheduler(ptr noundef) local_unnamed_addr #4

declare void @b2DestroyBitSet(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @b2DestroyWorkerContexts(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !150
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2208
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2204
  %i.i = load i32, ptr %i.h, align 4, !tbaa !156
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 120
  tail call void @b2Free(ptr noundef %i.g, i64 noundef %i.k) #23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2220
  %i.o = load i32, ptr %i.n, align 4, !tbaa !159
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 4
  tail call void @b2Free(ptr noundef %i.m, i64 noundef %i.q) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 8 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !164
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !165
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @b2Free(ptr noundef %i.t, i64 noundef %i.x) #23
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  tail call void @b2DestroyBitSet(ptr noundef nonnull %i.aa) #23
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.ac = getelementptr inbounds nuw [120 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @b2DestroyBitSet(ptr noundef nonnull %i.ad) #23
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw [120 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  tail call void @b2DestroyBitSet(ptr noundef nonnull %i.ag) #23
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.ai = getelementptr inbounds nuw [120 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  tail call void @b2DestroyBitSet(ptr noundef nonnull %i.aj) #23
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.al = getelementptr inbounds nuw [120 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  tail call void @b2DestroyBitSet(ptr noundef nonnull %i.am) #23
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !158
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv
  tail call void @b2DestroyBitSet(ptr noundef %i.ao) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !150
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !365
}

declare void @b2Free(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @b2FreeChainData(ptr noundef) local_unnamed_addr #4

declare void @b2DestroySolverSet(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @b2DestroyGraph(ptr noundef) local_unnamed_addr #4

declare void @b2DestroyBroadPhase(ptr noundef) local_unnamed_addr #4

declare void @b2DestroyIdPool(ptr noundef) local_unnamed_addr #4

declare void @b2DestroyStack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b2World_Step(i32 %0, float noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b2RecArgs_Step, align 4     ; 6 uses
  %4 = alloca %struct.b2StepContext, align 8      ; 17 uses
  %5 = alloca %struct.b2RecArgs_StateHash, align 8 ; 6 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 38 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744    ; 7 uses
  %i.e = getelementptr i8, ptr %i.c, i64 -5       ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 -32      ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %0, ptr %3, align 4, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %1, ptr %i.j, align 4, !tbaa !376
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %i.k, align 4, !tbaa !377
  call void @b2RecWrite_Step(ptr noundef nonnull %i.i, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 -512
  store i32 0, ptr %i.l, align 8, !tbaa !115
  %i.m = getelementptr i8, ptr %i.c, i64 -496
  store i32 0, ptr %i.m, align 8, !tbaa !118
  %i.n = getelementptr i8, ptr %i.c, i64 -480
  store i32 0, ptr %i.n, align 8, !tbaa !126
  %i.o = getelementptr i8, ptr %i.c, i64 -392
  store i32 0, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %i.c, i64 -376
  store i32 0, ptr %i.p, align 8, !tbaa !137
  %i.q = getelementptr i8, ptr %i.c, i64 -236     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.q, i8 0, i64 88, i1 false)
  store i8 1, ptr %i.e, align 1, !tbaa !66
  %i.r = getelementptr i8, ptr %i.c, i64 -16      ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !140
  %i.s = getelementptr i8, ptr %i.c, i64 -12
  store i32 0, ptr %i.s, align 4, !tbaa !141
  %i.t = getelementptr i8, ptr %i.c, i64 -48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !152  ; 2 uses
  %.not97 = icmp eq ptr %i.u, null
  br i1 %.not97, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @b2ResetScheduler(ptr noundef nonnull %i.u) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = call i64 @b2GetTicks() #23
  %i.w = getelementptr i8, ptr %i.c, i64 -148     ; 2 uses
  %i.x = getelementptr i8, ptr %i.c, i64 -2704    ; 3 uses
  %i.y = getelementptr i8, ptr %i.c, i64 -2680
  %6 = load i32, ptr %i.y, align 8, !tbaa !382
  %i.z = getelementptr i8, ptr %i.c, i64 -2536
  %7 = load i32, ptr %i.z, align 8, !tbaa !382
  %i.aa = getelementptr i8, ptr %i.c, i64 -784
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !187 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 -840
  %.val101 = load i32, ptr %i.ae, align 8, !tbaa !188
  %8 = getelementptr i8, ptr %i.c, i64 -832
  %.val102.a = load i32, ptr %8, align 8, !tbaa !189
  %i.af = load <4 x i32>, ptr %i.w, align 4, !tbaa !72
  %i.ag = add i32 %.val101, %i.ad
  %i.ah = sub i32 %.val102.a, %i.ag
  %i.ai = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %7, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ad, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.af, <4 x i32> %i.al)
  store <4 x i32> %i.am, ptr %i.w, align 4, !tbaa !72
  %i.an = getelementptr i8, ptr %i.c, i64 -720
  %.val = load i32, ptr %i.an, align 8, !tbaa !188
  %i.ao = getelementptr i8, ptr %i.c, i64 -712
  %.val100 = load i32, ptr %i.ao, align 8, !tbaa !189
  %i.ap = sub nsw i32 %.val100, %.val
  %i.aq = getelementptr i8, ptr %i.c, i64 -132    ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !383
  %i.as = call noundef i32 @llvm.smax.i32(i32 %i.ar, i32 %i.ap)
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !383
  %i.at = call i64 @b2GetTicks() #23
  call void @b2UpdateBroadPhasePairs(ptr noundef %i.d) #23
  %i.au = call float @b2GetMilliseconds(i64 noundef %i.at) #23
  %i.av = getelementptr i8, ptr %i.c, i64 -232
  store float %i.au, ptr %i.av, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.aw, i8 0, i64 344, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.ax, align 8, !tbaa !201
  store float %1, ptr %4, align 8, !tbaa !385
  %i.ay = call noundef i32 @llvm.smax.i32(i32 %2, i32 1) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !386
  %i.ba = fcmp ogt float %1, 0.000000e+00         ; 3 uses
  %i.bb = uitofp nneg i32 %i.ay to float          ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bd = insertelement <2 x float> <float 1.000000e+00, float poison>, float %1, i64 1
  %i.be = insertelement <2 x float> poison, float %1, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.bb, i64 1
  %i.bg = fdiv <2 x float> %i.bd, %i.bf           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = fmul float %i.bh, %i.bb
  %i.bj = insertelement <2 x i1> poison, i1 %i.ba, i64 0
  %i.bk = shufflevector <2 x i1> %i.bj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bg, <2 x float> zeroinitializer ; 4 uses
  %.sink = select i1 %i.ba, float %i.bi, float 0.000000e+00 ; 3 uses
  store <2 x float> %i.bl, ptr %i.bc, align 4, !tbaa !142
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %.sink, ptr %i.bm, align 4, !tbaa !387
  %i.bn = getelementptr i8, ptr %i.c, i64 -24
  store float %.sink, ptr %i.bn, align 8, !tbaa !202
  %i.bo = getelementptr i8, ptr %i.c, i64 -20
  %i.bp = extractelement <2 x float> %i.bl, i64 0
  store float %i.bp, ptr %i.bo, align 4, !tbaa !203
  %i.bq = getelementptr i8, ptr %i.c, i64 -268
  %i.br = load float, ptr %i.bq, align 4, !tbaa !204 ; 2 uses
  %i.bs = fmul float %.sink, 1.250000e-01         ; 2 uses
  %i.bt = fcmp olt float %i.br, %i.bs
  %i.bu = select i1 %i.bt, float %i.br, float %i.bs ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bw = getelementptr i8, ptr %i.c, i64 -264
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !205 ; 2 uses
  %i.by = fcmp oeq float %i.bu, 0.000000e+00
  br i1 %i.by, label %b2MakeSoft.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = fmul float %i.bu, f0x40C90FDB           ; 2 uses
  %i.ca = fmul float %i.bx, 2.000000e+00
  %i.cb = extractelement <2 x float> %i.bl, i64 1
  %i.cc = fmul float %i.cb, %i.bz                 ; 2 uses
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
  %i.ce = fmul float %i.cc, %i.cd                 ; 2 uses
  %i.cf = fadd float %i.ce, 1.000000e+00
  %i.cg = fdiv float 1.000000e+00, %i.cf          ; 2 uses
  %i.ch = fdiv float %i.bz, %i.cd
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ci = fmul float %i.ce, %i.cg
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.ci, i64 1
  br label %b2MakeSoft.exit

b2MakeSoft.exit:                                  ; preds = %bb.f, %bb.g
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.g ], [ zeroinitializer, %bb.f ]
  %.sroa.5.0.i = phi float [ %i.cg, %bb.g ], [ 0.000000e+00, %bb.f ]
  store <2 x float> %.sroa.014.0.i, ptr %i.bv, align 4, !tbaa !142
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %.sroa.5.0.i, ptr %.sroa.410.0..sroa_idx, align 4, !tbaa !142
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ck = fmul float %i.bu, 2.000000e+00          ; 2 uses
  %i.cl = fcmp oeq float %i.ck, 0.000000e+00
  br i1 %i.cl, label %b2MakeSoft.exit109, label %bb.h

bb.h:                                             ; preds = %b2MakeSoft.exit
  %i.cm = fmul float %i.ck, f0x40C90FDB           ; 2 uses
  %i.cn = fmul float %i.bx, 2.000000e+00
  %i.co = extractelement <2 x float> %i.bl, i64 1
  %i.cp = fmul float %i.co, %i.cm                 ; 2 uses
  %i.cq = fadd float %i.cn, %i.cp                 ; 2 uses
  %i.cr = fmul float %i.cp, %i.cq                 ; 2 uses
  %i.cs = fadd float %i.cr, 1.000000e+00
  %i.ct = fdiv float 1.000000e+00, %i.cs          ; 2 uses
  %i.cu = fdiv float %i.cm, %i.cq
  %.sroa.014.0.vec.insert17.i103 = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cv = fmul float %i.cr, %i.ct
  %.sroa.014.4.vec.insert19.i104 = insertelement <2 x float> %.sroa.014.0.vec.insert17.i103, float %i.cv, i64 1
  br label %b2MakeSoft.exit109

b2MakeSoft.exit109:                               ; preds = %b2MakeSoft.exit, %bb.h
  %.sroa.014.0.i105 = phi <2 x float> [ %.sroa.014.4.vec.insert19.i104, %bb.h ], [ zeroinitializer, %b2MakeSoft.exit ]
  %.sroa.5.0.i106 = phi float [ %i.ct, %bb.h ], [ 0.000000e+00, %b2MakeSoft.exit ]
  store <2 x float> %.sroa.014.0.i105, ptr %i.cj, align 8, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %.sroa.5.0.i106, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !142
  %i.cw = getelementptr i8, ptr %i.c, i64 -280
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cy = load <2 x float>, ptr %i.cw, align 8, !tbaa !142
  store <2 x float> %i.cy, ptr %i.cx, align 4, !tbaa !142
  %i.cz = getelementptr i8, ptr %i.c, i64 -4
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !146, !range !67, !noundef !68
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 188
  store i8 %i.da, ptr %i.db, align 4, !tbaa !388
  %i.dc = call i64 @b2GetTicks() #23
  %i.dd = load ptr, ptr %i.ax, align 8, !tbaa !201 ; 46 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 360 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 384
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !207
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 448
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !207
  %i.dj = add nsw i32 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 512
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !207
  %i.dm = add nsw i32 %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 576
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !207
  %i.dp = add nsw i32 %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 640
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !207
  %i.ds = add nsw i32 %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 704
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !207
  %i.dv = add nsw i32 %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 768
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !207
  %i.dy = add nsw i32 %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 832
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !207
  %i.eb = add nsw i32 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 896
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !207
  %i.ee = add nsw i32 %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dd, i64 960
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !207
  %i.eh = add nsw i32 %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dd, i64 1024
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !207
  %i.ek = add nsw i32 %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.dd, i64 1088
  %i.em = load i32, ptr %i.el, align 8, !tbaa !207
  %i.en = add nsw i32 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dd, i64 1152
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !207
  %i.eq = add nsw i32 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.dd, i64 1216
  %i.es = load i32, ptr %i.er, align 8, !tbaa !207
  %i.et = add nsw i32 %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dd, i64 1280
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !207
  %i.ew = add nsw i32 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dd, i64 1344
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !207
  %i.ez = add nsw i32 %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dd, i64 1408
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !207
  %i.fc = add nsw i32 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dd, i64 1472
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !207
  %i.ff = add nsw i32 %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 1536
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !207
  %i.fi = add nsw i32 %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dd, i64 1600
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !207
  %i.fl = add nsw i32 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dd, i64 1664
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !207
  %i.fo = add nsw i32 %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dd, i64 1728
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !207
  %i.fr = add nsw i32 %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dd, i64 1792
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !207
  %i.fu = add nsw i32 %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dd, i64 1856
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !207
  %i.fx = add nsw i32 %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dd, i64 1960 ; 5 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !76
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 232
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !208 ; 4 uses
  %i.gc = add nsw i32 %i.fx, %i.gb                ; 3 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %b2Collide.exit, label %bb.i

bb.i:                                             ; preds = %b2MakeSoft.exit109
  %i.ge = shl i32 %i.gc, 3
  %i.gf = call ptr @b2StackAlloc(ptr noundef nonnull %i.dd, i32 noundef %i.ge, ptr noundef nonnull @.str.55) #23 ; 6 uses
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i
  %i.gg = load ptr, ptr %i.fy, align 8, !tbaa !76
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 224
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !95 ; 3 uses
  %i.gj = icmp sgt i32 %i.gb, 0
  br i1 %i.gj, label %.lr.ph242.preheader.i, label %._crit_edge243.i

.lr.ph242.preheader.i:                            ; preds = %bb.j
  %i.gk = sext i32 %.1.lcssa.i to i64             ; 3 uses
  %wide.trip.count280.i = zext nneg i32 %i.gb to i64 ; 3 uses
  %min.iters.check140 = icmp ult i32 %i.gb, 4
  br i1 %min.iters.check140, label %.lr.ph242.i.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph242.preheader.i
  %n.vec142 = and i64 %wide.trip.count280.i, 2147483644 ; 4 uses
  %i.gl = add nsw i64 %n.vec142, %i.gk
  %invariant.gep157 = getelementptr [8 x i8], ptr %i.gf, i64 %i.gk
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %vec.ind145 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph141 ], [ %vec.ind.next150, %vector.body143 ] ; 3 uses
  %step.add146 = add nuw <2 x i64> %vec.ind145, splat (i64 2)
  %wide.gep147 = getelementptr inbounds nuw [208 x i8], ptr %i.gi, <2 x i64> %vec.ind145
  %wide.gep148 = getelementptr inbounds nuw [208 x i8], ptr %i.gi, <2 x i64> %step.add146
  %gep158 = getelementptr [8 x i8], ptr %invariant.gep157, i64 %index144 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %gep158, i64 16
  store <2 x ptr> %wide.gep147, ptr %gep158, align 8, !tbaa !209
  store <2 x ptr> %wide.gep148, ptr %i.gm, align 8, !tbaa !209
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %vec.ind.next150 = add nuw <2 x i64> %vec.ind145, splat (i64 4)
  %i.gn = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.gn, label %middle.block151, label %vector.body143, !llvm.loop !366

middle.block151:                                  ; preds = %vector.body143
  %cmp.n152 = icmp eq i64 %n.vec142, %wide.trip.count280.i
  br i1 %cmp.n152, label %._crit_edge243.i, label %.lr.ph242.i.preheader

.lr.ph242.i.preheader:                            ; preds = %.lr.ph242.preheader.i, %middle.block151
  %indvars.iv275.i.ph = phi i64 [ %i.gk, %.lr.ph242.preheader.i ], [ %i.gl, %middle.block151 ]
  %indvars.iv272.i.ph = phi i64 [ 0, %.lr.ph242.preheader.i ], [ %n.vec142, %middle.block151 ]
  br label %.lr.ph242.i

bb.k:                                             ; preds = %._crit_edge.i, %bb.i
  %indvars.iv268.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next269.i, %._crit_edge.i ] ; 2 uses
  %.0217237.i = phi i32 [ 0, %bb.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.go = getelementptr inbounds nuw [64 x i8], ptr %i.de, i64 %indvars.iv268.i ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !207 ; 3 uses
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !389 ; 3 uses
  %i.gt = icmp sgt i32 %i.gr, 0
  br i1 %i.gt, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.gu = sext i32 %.0217237.i to i64             ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.gr to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.gr, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.gv = add nsw i64 %n.vec, %i.gu               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.gf, i64 %i.gu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [208 x i8], ptr %i.gs, <2 x i64> %vec.ind
  %wide.gep137 = getelementptr inbounds nuw [208 x i8], ptr %i.gs, <2 x i64> %step.add
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.gep, ptr %gep, align 8, !tbaa !209
  store <2 x ptr> %wide.gep137, ptr %i.gw, align 8, !tbaa !209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv263.i.ph = phi i64 [ %i.gu, %.lr.ph.preheader.i ], [ %i.gv, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next264.i.lcssa = phi i64 [ %i.gv, %middle.block ], [ %indvars.iv.next264.i, %.lr.ph.i ]
  %i.gy = trunc nsw i64 %indvars.iv.next264.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.k
  %.1.lcssa.i = phi i32 [ %.0217237.i, %bb.k ], [ %i.gy, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %exitcond271.not.i = icmp eq i64 %indvars.iv.next269.i, 24
  br i1 %exitcond271.not.i, label %bb.j, label %bb.k, !llvm.loop !368

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv263.i = phi i64 [ %indvars.iv.next264.i, %.lr.ph.i ], [ %indvars.iv263.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [208 x i8], ptr %i.gs, i64 %indvars.iv.i
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %indvars.iv263.i
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !209
  %indvars.iv.next264.i = add nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !369

._crit_edge243.i:                                 ; preds = %.lr.ph242.i, %middle.block151, %bb.j
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  store ptr %i.gf, ptr %i.hb, align 8, !tbaa !212
  %i.hc = getelementptr i8, ptr %i.dd, i64 2032
  %.val.i = load i32, ptr %i.hc, align 8, !tbaa !189
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dd, i64 2656 ; 4 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !150
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph246.i, label %._crit_edge247.i

.lr.ph246.i:                                      ; preds = %._crit_edge243.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dd, i64 2192 ; 2 uses
  %.pre.i = load ptr, ptr %i.hg, align 8, !tbaa !155
  br label %bb.l

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %.lr.ph242.i ], [ %indvars.iv275.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.lr.ph242.i ], [ %indvars.iv272.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [208 x i8], ptr %i.gi, i64 %indvars.iv272.i
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %indvars.iv275.i
  store ptr %i.hh, ptr %i.hi, align 8, !tbaa !209
  %indvars.iv.next276.i = add nsw i64 %indvars.iv275.i, 1
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond281.not.i = icmp eq i64 %indvars.iv.next273.i, %wide.trip.count280.i
  br i1 %exitcond281.not.i, label %._crit_edge243.i, label %.lr.ph242.i, !llvm.loop !370

._crit_edge247.i:                                 ; preds = %bb.l, %._crit_edge243.i
  call void @b2ParallelFor(ptr noundef nonnull %i.dd, ptr noundef nonnull @b2CollideTask, i32 noundef %i.gc, i32 noundef 64, ptr noundef nonnull %4) #23
  call void @b2StackFree(ptr noundef nonnull %i.dd, ptr noundef %i.gf) #23
  store ptr null, ptr %i.hb, align 8, !tbaa !212
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dd, i64 2192 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !155 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hm = load i32, ptr %i.hd, align 8, !tbaa !150
  %i.hn = icmp sgt i32 %i.hm, 1
  br i1 %i.hn, label %.lr.ph250.i, label %._crit_edge251.i

bb.l:                                             ; preds = %bb.l, %.lr.ph246.i
  %i.ho = phi ptr [ %.pre.i, %.lr.ph246.i ], [ %i.hr, %bb.l ]
  %indvars.iv282.i = phi i64 [ 0, %.lr.ph246.i ], [ %indvars.iv.next283.i, %bb.l ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [120 x i8], ptr %i.ho, i64 %indvars.iv282.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  call void @b2SetBitCountAndClear(ptr noundef nonnull %i.hq, i32 noundef %.val.i) #23
  %i.hr = load ptr, ptr %i.hg, align 8, !tbaa !155 ; 2 uses
  %i.hs = getelementptr inbounds nuw [120 x i8], ptr %i.hr, i64 %indvars.iv282.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 112
  store i32 0, ptr %i.ht, align 8, !tbaa !213
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %i.hu = load i32, ptr %i.hd, align 8, !tbaa !150
  %i.hv = sext i32 %i.hu to i64
  %i.hw = icmp slt i64 %indvars.iv.next283.i, %i.hv
  br i1 %i.hw, label %bb.l, label %._crit_edge247.i, !llvm.loop !371

._crit_edge251.i:                                 ; preds = %.lr.ph250.i, %._crit_edge247.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dd, i64 2144
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !96 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dd, i64 2736
  %i.ia = load i16, ptr %i.hz, align 8, !tbaa !71 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hk, i64 28 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !214 ; 2 uses
  %.not260.i = icmp eq i32 %i.ic, 0
  br i1 %.not260.i, label %b2Collide.exit, label %.lr.ph259.i

.lr.ph259.i:                                      ; preds = %._crit_edge251.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.dd, i64 2336
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !139
  %i.if = load ptr, ptr %i.fy, align 8, !tbaa !76
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dd, i64 2040 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 224 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dd, i64 2256 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dd, i64 2264 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dd, i64 2268 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.dd, i64 2304
  %i.im = sext i32 %i.ie to i64
  %i.in = getelementptr inbounds [16 x i8], ptr %i.il, i64 %i.im ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 12 ; 2 uses
  %i.iq = insertelement <2 x i16> <i16 poison, i16 0>, i16 %i.ia, i64 0 ; 2 uses
  br label %bb.m

.lr.ph250.i:                                      ; preds = %._crit_edge247.i, %.lr.ph250.i
  %indvars.iv285.i = phi i64 [ %indvars.iv.next286.i, %.lr.ph250.i ], [ 1, %._crit_edge247.i ] ; 2 uses
  %i.ir = load ptr, ptr %i.hj, align 8, !tbaa !155
  %i.is = getelementptr inbounds nuw [120 x i8], ptr %i.ir, i64 %indvars.iv285.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  call void @b2InPlaceUnion(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.it) #23
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.iu = load i32, ptr %i.hd, align 8, !tbaa !150
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp slt i64 %indvars.iv.next286.i, %i.iv
  br i1 %i.iw, label %.lr.ph250.i, label %._crit_edge251.i, !llvm.loop !372

bb.m:                                             ; preds = %._crit_edge256.i, %.lr.ph259.i
  %i.ix = phi i32 [ %i.ic, %.lr.ph259.i ], [ %i.nz, %._crit_edge256.i ]
  %indvars.iv288.i = phi i64 [ 0, %.lr.ph259.i ], [ %indvars.iv.next289.i, %._crit_edge256.i ] ; 3 uses
  %i.iy = load ptr, ptr %i.hl, align 8, !tbaa !215
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv288.i
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !216 ; 2 uses
  %.not252.i = icmp eq i64 %i.ja, 0
  br i1 %.not252.i, label %._crit_edge256.i, label %.lr.ph255.i

.lr.ph255.i:                                      ; preds = %bb.m
  %i.jb = trunc nuw i64 %indvars.iv288.i to i32
  %i.jc = shl i32 %i.jb, 6
  br label %bb.n

bb.n:                                             ; preds = %b2RemoveNonTouchingContact.exit.i, %.lr.ph255.i
  %.0210253.i = phi i64 [ %i.ja, %.lr.ph255.i ], [ %i.ny, %b2RemoveNonTouchingContact.exit.i ] ; 3 uses
  %i.jd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0210253.i, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.jc, %i.je            ; 2 uses
  %i.jg = load ptr, ptr %i.ig, align 8, !tbaa !102
  %i.jh = sext i32 %i.jf to i64
  %i.ji = getelementptr inbounds [64 x i8], ptr %i.jg, i64 %i.jh ; 12 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 36 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !218 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 40 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !390 ; 5 uses
  %.not222.i = icmp eq i32 %i.jk, -1
  %i.jn = sext i32 %i.jk to i64
  %i.jo = getelementptr inbounds [64 x i8], ptr %i.de, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %.sink.in.i = select i1 %.not222.i, ptr %i.ih, ptr %i.jp
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !209
  %i.jq = sext i32 %i.jm to i64                   ; 3 uses
  %i.jr = getelementptr inbounds [208 x i8], ptr %.sink.i, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 44
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !391
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [296 x i8], ptr %i.hy, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !392
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [296 x i8], ptr %i.hy, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jv, align 8, !tbaa !223
  %i.kb = add nsw i32 %i.ka, 1                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 288
  %i.kd = load i16, ptr %i.kc, align 8, !tbaa !224 ; 2 uses
  %i.ke = load i32, ptr %i.jz, align 8, !tbaa !223
  %i.kf = add nsw i32 %i.ke, 1                    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 288
  %i.kh = load i16, ptr %i.kg, align 8, !tbaa !224 ; 2 uses
  %i.ki = add nsw i32 %i.jf, 1                    ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ji, i64 60
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !225 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ji, i64 56 ; 4 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !393 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jr, i64 196 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !231 ; 4 uses
  %i.kp = and i32 %i.ko, 131072
  %.not223.i = icmp eq i32 %i.kp, 0
  br i1 %.not223.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @b2DestroyContact(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.ji) #23
  br label %b2RemoveNonTouchingContact.exit.i

bb.p:                                             ; preds = %bb.n
  %i.kq = and i32 %i.ko, 262144
  %.not224.i = icmp eq i32 %i.kq, 0
  br i1 %.not224.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kr = and i32 %i.km, 4
  %.not228.i = icmp eq i32 %i.kr, 0
  br i1 %.not228.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ks = load i32, ptr %i.ij, align 8, !tbaa !126 ; 2 uses
  %i.kt = load i32, ptr %i.ik, align 4, !tbaa !127 ; 4 uses
  %.not229.i = icmp slt i32 %i.ks, %i.kt
  %.pre291.i = load ptr, ptr %i.ii, align 8, !tbaa !125 ; 2 uses
  br i1 %.not229.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ku = mul nsw i32 %i.kt, 28
  %i.kv = icmp eq i32 %i.kt, 0
  %i.kw = shl nsw i32 %i.kt, 1
  %spec.select.i = select i1 %i.kv, i32 8, i32 %i.kw ; 2 uses
  %i.kx = mul nsw i32 %spec.select.i, 28
  %i.ky = sext i32 %i.ku to i64
  %i.kz = sext i32 %i.kx to i64
  %i.la = call ptr @b2GrowAlloc(ptr noundef %.pre291.i, i64 noundef %i.ky, i64 noundef %i.kz) #23 ; 2 uses
  store ptr %i.la, ptr %i.ii, align 8, !tbaa !125
  store i32 %spec.select.i, ptr %i.ik, align 4, !tbaa !127
  %.pre292.i = load i32, ptr %i.ij, align 8, !tbaa !126
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.lb = phi i32 [ %.pre292.i, %bb.s ], [ %i.ks, %bb.r ]
  %i.lc = phi ptr [ %i.la, %bb.s ], [ %.pre291.i, %bb.r ]
  %i.ld = sext i32 %i.lb to i64
  %i.le = getelementptr inbounds [28 x i8], ptr %i.lc, i64 %i.ld ; 9 uses
  store i32 %i.kb, ptr %i.le, align 4, !tbaa !72
  %.sroa.029.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store i16 %i.ia, ptr %.sroa.029.sroa.0.sroa.4.0..sroa_idx.i, align 4, !tbaa !185
  %.sroa.029.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  store i16 %i.kd, ptr %.sroa.029.sroa.0.sroa.5.0..sroa_idx.i, align 2, !tbaa !185
  %.sroa.029.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i32 %i.kf, ptr %.sroa.029.sroa.4.0..sroa_idx.i, align 4, !tbaa !72
  %.sroa.029.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  store i16 %i.ia, ptr %.sroa.029.sroa.5.0..sroa_idx.i, align 4, !tbaa !185
  %.sroa.029.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 14
  store i16 %i.kh, ptr %.sroa.029.sroa.6.0..sroa_idx.i, align 2, !tbaa !185
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 16
end_hunk_0
begin_hunk_1_@b2World_Step:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %0, ptr %5, align 8, !tbaa !185
  %i.pc = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.pc, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.pb, ptr %i.pd, align 8, !tbaa !400
  %i.pe = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecWrite_StateHash(ptr noundef %i.pe, ptr noundef nonnull %5) #23
  %i.pf = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.x) #23
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ph = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.x) #23 ; 2 uses
  %i.pi = extractvalue { <2 x float>, <2 x float> } %i.ph, 0
  %i.pj = extractvalue { <2 x float>, <2 x float> } %i.ph, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i8 [ 0, %bb.ah ], [ 1, %bb.ai ]     ; 2 uses
  %.sroa.07.2.i = phi <2 x float> [ zeroinitializer, %bb.ah ], [ %i.pi, %bb.ai ] ; 3 uses
  %.sroa.7.2.i = phi <2 x float> [ zeroinitializer, %bb.ah ], [ %i.pj, %bb.ai ] ; 3 uses
  %i.pk = getelementptr i8, ptr %i.c, i64 -2632   ; 2 uses
  %i.pl = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.pk) #23
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pn = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.pk) #23 ; 2 uses
  %i.po = extractvalue { <2 x float>, <2 x float> } %i.pn, 0 ; 3 uses
  %i.pp = extractvalue { <2 x float>, <2 x float> } %i.pn, 1 ; 3 uses
  %i.pq = trunc nuw i8 %.1.i to i1
  br i1 %i.pq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pr = fcmp olt <2 x float> %.sroa.07.2.i, %i.po
  %i.ps = select <2 x i1> %i.pr, <2 x float> %.sroa.07.2.i, <2 x float> %i.po
  %i.pt = fcmp ogt <2 x float> %.sroa.7.2.i, %i.pp
  %i.pu = select <2 x i1> %i.pt, <2 x float> %.sroa.7.2.i, <2 x float> %i.pp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1.1.i = phi i8 [ %.1.i, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.al ] ; 2 uses
  %.sroa.07.2.1.i = phi <2 x float> [ %.sroa.07.2.i, %bb.aj ], [ %i.po, %bb.ak ], [ %i.ps, %bb.al ] ; 3 uses
  %.sroa.7.2.1.i = phi <2 x float> [ %.sroa.7.2.i, %bb.aj ], [ %i.pp, %bb.ak ], [ %i.pu, %bb.al ] ; 3 uses
  %i.pv = getelementptr i8, ptr %i.c, i64 -2560   ; 2 uses
  %i.pw = call i32 @b2DynamicTree_GetProxyCount(ptr noundef nonnull %i.pv) #23
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %b2ComputeWorldBounds.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.py = call { <2 x float>, <2 x float> } @b2DynamicTree_GetRootBounds(ptr noundef nonnull %i.pv) #23 ; 2 uses
  %i.pz = extractvalue { <2 x float>, <2 x float> } %i.py, 0 ; 3 uses
  %i.qa = extractvalue { <2 x float>, <2 x float> } %i.py, 1 ; 3 uses
  %i.qb = trunc nuw i8 %.1.1.i to i1
  br i1 %i.qb, label %bb.ao, label %b2ComputeWorldBounds.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.qc = fcmp olt <2 x float> %.sroa.07.2.1.i, %i.pz
  %i.qd = select <2 x i1> %i.qc, <2 x float> %.sroa.07.2.1.i, <2 x float> %i.pz
  %i.qe = fcmp ogt <2 x float> %.sroa.7.2.1.i, %i.qa
  %i.qf = select <2 x i1> %i.qe, <2 x float> %.sroa.7.2.1.i, <2 x float> %i.qa
  br label %b2ComputeWorldBounds.exit.thread

b2ComputeWorldBounds.exit:                        ; preds = %bb.am
  %i.qg = trunc nuw i8 %.1.1.i to i1
  br i1 %i.qg, label %b2ComputeWorldBounds.exit.thread, label %bb.ap

b2ComputeWorldBounds.exit.thread:                 ; preds = %bb.ao, %bb.an, %b2ComputeWorldBounds.exit
  %.sroa.7.2.2.i114 = phi <2 x float> [ %.sroa.7.2.1.i, %b2ComputeWorldBounds.exit ], [ %i.qf, %bb.ao ], [ %i.qa, %bb.an ]
  %.sroa.07.2.2.i113 = phi <2 x float> [ %.sroa.07.2.1.i, %b2ComputeWorldBounds.exit ], [ %i.qd, %bb.ao ], [ %i.pz, %bb.an ]
  %i.qh = load ptr, ptr %i.h, align 8, !tbaa !154
  call void @b2RecAccumulateBounds(ptr noundef %i.qh, <2 x float> %.sroa.07.2.2.i113, <2 x float> %.sroa.7.2.2.i114) #23
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
  %.val260 = load i32, ptr %i.j, align 8, !tbaa !189
  %i.k = getelementptr i8, ptr %i.e, i64 -368     ; 2 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.k, i32 noundef %.val260) #23
  %i.l = getelementptr i8, ptr %i.e, i64 -752
  %.val259 = load i32, ptr %i.l, align 8, !tbaa !189
  %i.m = getelementptr i8, ptr %i.e, i64 -352     ; 3 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.m, i32 noundef %.val259) #23
  %i.n = getelementptr i8, ptr %i.e, i64 -712
  %.val258 = load i32, ptr %i.n, align 8, !tbaa !189
  %i.o = getelementptr i8, ptr %i.e, i64 -336     ; 3 uses
  tail call void @b2SetBitCountAndClear(ptr noundef nonnull %i.o, i32 noundef %.val258) #23
  %i.p = getelementptr i8, ptr %i.e, i64 -672
  %.val = load i32, ptr %i.p, align 8, !tbaa !189
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
  %i.do = ashr i32 %.0248334, 1                   ; 4 uses
  %i.dp = and i32 %.0248334, 1
  %i.dq = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds [72 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  %i.dt = lshr i32 %i.do, 6                       ; 3 uses
  %i.du = load i32, ptr %i.as, align 4, !tbaa !214
  %.not.i = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i, label %b2GetBit.exit, label %.lr.ph.b2GetBit.exit.thread_crit_edge

.lr.ph.b2GetBit.exit.thread_crit_edge:            ; preds = %.lr.ph
  %.pre = and i32 %i.do, 63
  %.pre380 = zext nneg i32 %.pre to i64
  %.pre382 = shl nuw i64 1, %.pre380
  %.pre384 = zext nneg i32 %i.dt to i64
  br label %b2GetBit.exit.thread

b2GetBit.exit:                                    ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.m, align 8, !tbaa !215
  %i.dw = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !216
  %i.dz = and i32 %i.do, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea                    ; 2 uses
  %i.ec = and i64 %i.dy, %i.eb
  %.not327 = icmp eq i64 %i.ec, 0
  br i1 %.not327, label %b2GetBit.exit.thread, label %bb.l

b2GetBit.exit.thread:                             ; preds = %.lr.ph.b2GetBit.exit.thread_crit_edge, %b2GetBit.exit
  %.pre-phi385 = phi i64 [ %.pre384, %.lr.ph.b2GetBit.exit.thread_crit_edge ], [ %i.dw, %b2GetBit.exit ]
  %.pre-phi383 = phi i64 [ %.pre382, %.lr.ph.b2GetBit.exit.thread_crit_edge ], [ %i.eb, %b2GetBit.exit ]
  call void @b2DrawJoint(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.ds) #23
  %.val263 = load ptr, ptr %i.m, align 8, !tbaa !215
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val263, i64 %.pre-phi385 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !216
end_hunk_1
begin_hunk_2_@b2Chain_IsValid:bb.a
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %i.b = and i64 %.sroa.2.0.extract.shift, 127
  %i.c = getelementptr inbounds nuw [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2736
  %i.e = load i16, ptr %i.d, align 8, !tbaa !71
  %i.f = trunc i64 %.sroa.2.0.extract.shift to i16
  %.not = icmp eq i16 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 4294967295
  %i.h = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2168
  %i.j = load i32, ptr %i.i, align 8, !tbaa !100
  %.not13.not = icmp slt i32 %i.j, %.sroa.0.0.extract.trunc
  br i1 %.not13.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = and i64 %i.g, 4294967295
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !168
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = load i16, ptr %i.q, align 8, !tbaa !458
  %i.s = zext i16 %i.r to i64
  %i.t = icmp eq i64 %.sroa.5.0.extract.shift, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ %i.t, %bb.f ], [ false, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2Joint_IsValid(i64 %0) local_unnamed_addr #10 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %0, 48
  %i.a = and i64 %0, 280925220896768
  %.not12 = icmp eq i64 %i.a, 0
  br i1 %.not12, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %i.b = and i64 %.sroa.2.0.extract.shift, 127
  %i.c = getelementptr inbounds nuw [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2736
  %i.e = load i16, ptr %i.d, align 8, !tbaa !71
  %i.f = trunc i64 %.sroa.2.0.extract.shift to i16
  %.not = icmp eq i16 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 4294967295
  %i.h = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2008
  %i.j = load i32, ptr %i.i, align 8, !tbaa !106
  %.not13.not = icmp slt i32 %i.j, %.sroa.0.0.extract.trunc
  br i1 %.not13.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2000
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = and i64 %i.g, 4294967295
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !460
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load i16, ptr %i.r, align 8, !tbaa !461
  %i.t = zext i16 %i.s to i64
  %i.u = icmp eq i64 %.sroa.5.0.extract.shift, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ %i.u, %bb.f ], [ false, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2Contact_IsValid(i64 %0, i32 %1) local_unnamed_addr #10 {
bb.a:
  %.sroa.07.0.extract.trunc = trunc i64 %0 to i32 ; 2 uses
  %i.a = and i64 %0, 280925220896768
  %.not15 = icmp eq i64 %i.a, 0
  br i1 %.not15, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.28.0.extract.shift = lshr i64 %0, 32     ; 2 uses
  %i.b = and i64 %.sroa.28.0.extract.shift, 127
  %i.c = getelementptr inbounds nuw [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2736
  %i.e = load i16, ptr %i.d, align 8, !tbaa !71
  %i.f = trunc i64 %.sroa.28.0.extract.shift to i16
  %.not = icmp eq i16 %i.e, %i.f
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i64 %0, 4294967295
  %i.h = icmp slt i32 %.sroa.07.0.extract.trunc, 1
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2048
  %i.j = load i32, ptr %i.i, align 8, !tbaa !103
  %.not16.not = icmp slt i32 %i.j, %.sroa.07.0.extract.trunc
  br i1 %.not16.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2040
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = and i64 %i.g, 4294967295
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !462
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !225
  %i.t = icmp eq i32 %1, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e, %bb.c, %bb.d, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ %i.t, %bb.f ], [ false, %bb.e ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define void @b2World_EnableSleeping(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldEnableSleeping, align 4 ; 6 uses
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = and i32 %0, 65535
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.c ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -2744
  %i.f = getelementptr i8, ptr %i.d, i64 -5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66, !range !67, !noundef !68
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 -32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.a, ptr %i.k, align 4, !tbaa !260
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 0, ptr %i.l, align 1
  call void @b2RecWrite_WorldEnableSleeping(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %i.d, i64 -6       ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !145, !range !67, !noundef !68
  %i.o = icmp eq i8 %i.n, %i.a
  br i1 %i.o, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.a, ptr %i.m, align 2, !tbaa !145
  br i1 %1, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.d, i64 -784
  %i.q = getelementptr i8, ptr %i.d, i64 -776
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !187
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  call void @b2WakeSolverSet(ptr noundef %i.e, i32 noundef %i.y) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !463

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

declare void @b2RecWrite_WorldEnableSleeping(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2WakeSolverSet(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2World_IsSleepingEnabled(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -6
  %i.e = load i8, ptr %i.d, align 2, !tbaa !145, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define void @b2World_EnableWarmStarting(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldEnableWarmStarting, align 4 ; 6 uses
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = and i32 %0, 65535
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 -32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.a, ptr %i.j, align 4, !tbaa !260
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 0, ptr %i.k, align 1
  call void @b2RecWrite_WorldEnableWarmStarting(ptr noundef nonnull %i.i, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 -4
  store i8 %i.a, ptr %i.l, align 4, !tbaa !146
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldEnableWarmStarting(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2World_IsWarmStartingEnabled(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i8, ptr %i.d, align 4, !tbaa !146, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @b2World_GetAwakeBodyCount(i32 %0) local_unnamed_addr #10 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -784
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !187
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define void @b2World_EnableContinuous(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldEnableContinuous, align 4 ; 6 uses
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = and i32 %0, 65535
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66, !range !67, !noundef !68
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 -32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.a, ptr %i.j, align 4, !tbaa !260
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 0, ptr %i.k, align 1
  call void @b2RecWrite_WorldEnableContinuous(ptr noundef nonnull %i.i, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 -3
  store i8 %i.a, ptr %i.l, align 1, !tbaa !147
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldEnableContinuous(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @b2World_IsContinuousEnabled(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -3
  %i.e = load i8, ptr %i.d, align 1, !tbaa !147, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define void @b2World_SetRestitutionThreshold(i32 %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldSetRestitutionThreshold, align 4 ; 5 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %1, ptr %i.i, align 4, !tbaa !262
  call void @b2RecWrite_WorldSetRestitutionThreshold(ptr noundef nonnull %i.h, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = fcmp olt float %1, 0.000000e+00
  %i.k = fcmp ogt float %1, f0x7F7FFFFF
  %i.l = select i1 %i.k, float f0x7F7FFFFF, float %1
  %i.m = select i1 %i.j, float 0.000000e+00, float %i.l
  %i.n = getelementptr i8, ptr %i.c, i64 -280
  store float %i.m, ptr %i.n, align 8, !tbaa !263
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldSetRestitutionThreshold(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @b2World_GetRestitutionThreshold(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -280
  %i.e = load float, ptr %i.d, align 8, !tbaa !263
  ret float %i.e
}

; Function Attrs: nounwind uwtable
define void @b2World_SetHitEventThreshold(i32 %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldSetHitEventThreshold, align 4 ; 5 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %1, ptr %i.i, align 4, !tbaa !262
  call void @b2RecWrite_WorldSetHitEventThreshold(ptr noundef nonnull %i.h, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = fcmp olt float %1, 0.000000e+00
  %i.k = fcmp ogt float %1, f0x7F7FFFFF
  %i.l = select i1 %i.k, float f0x7F7FFFFF, float %1
  %i.m = select i1 %i.j, float 0.000000e+00, float %i.l
  %i.n = getelementptr i8, ptr %i.c, i64 -284
  store float %i.m, ptr %i.n, align 4, !tbaa !264
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldSetHitEventThreshold(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @b2World_GetHitEventThreshold(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -284
  %i.e = load float, ptr %i.d, align 4, !tbaa !264
  ret float %i.e
}

; Function Attrs: nounwind uwtable
define void @b2World_SetContactTuning(i32 %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.b2RecArgs_WorldSetContactTuning, align 4 ; 7 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 %0, ptr %4, align 4, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %1, ptr %i.i, align 4, !tbaa !465
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %2, ptr %i.j, align 4, !tbaa !466
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %3, ptr %i.k, align 4, !tbaa !467
  call void @b2RecWrite_WorldSetContactTuning(ptr noundef nonnull %i.h, ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = fcmp olt float %1, 0.000000e+00
  %i.m = fcmp ogt float %1, f0x7F7FFFFF
  %i.n = select i1 %i.m, float f0x7F7FFFFF, float %1
  %i.o = select i1 %i.l, float 0.000000e+00, float %i.n
  %i.p = getelementptr i8, ptr %i.c, i64 -268
  store float %i.o, ptr %i.p, align 4, !tbaa !204
  %i.q = fcmp olt float %2, 0.000000e+00
  %i.r = fcmp ogt float %2, f0x7F7FFFFF
  %i.s = select i1 %i.r, float f0x7F7FFFFF, float %2
  %i.t = select i1 %i.q, float 0.000000e+00, float %i.s
  %i.u = getelementptr i8, ptr %i.c, i64 -264
  store float %i.t, ptr %i.u, align 8, !tbaa !205
  %i.v = fcmp olt float %3, 0.000000e+00
  %i.w = fcmp ogt float %3, f0x7F7FFFFF
  %i.x = select i1 %i.w, float f0x7F7FFFFF, float %3
  %i.y = select i1 %i.v, float 0.000000e+00, float %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 -272
  store float %i.y, ptr %i.z, align 8, !tbaa !468
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldSetContactTuning(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b2World_SetContactRecycleDistance(i32 %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldSetContactRecycleDistance, align 4 ; 5 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %1, ptr %i.i, align 4, !tbaa !262
  call void @b2RecWrite_WorldSetContactRecycleDistance(ptr noundef nonnull %i.h, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = fcmp olt float %1, 0.000000e+00
  %i.k = fcmp ogt float %1, f0x7F7FFFFF
  %i.l = select i1 %i.k, float f0x7F7FFFFF, float %1
  %i.m = select i1 %i.j, float 0.000000e+00, float %i.l
  %i.n = getelementptr i8, ptr %i.c, i64 -260
  store float %i.m, ptr %i.n, align 4, !tbaa !143
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldSetContactRecycleDistance(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @b2World_GetContactRecycleDistance(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -260
  %i.e = load float, ptr %i.d, align 4, !tbaa !143
  ret float %i.e
}

; Function Attrs: nounwind uwtable
define void @b2World_SetMaximumLinearSpeed(i32 %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WorldSetMaximumLinearSpeed, align 4 ; 5 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66, !range !67, !noundef !68
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %0, ptr %2, align 4, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %1, ptr %i.i, align 4, !tbaa !262
  call void @b2RecWrite_WorldSetMaximumLinearSpeed(ptr noundef nonnull %i.h, ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %i.c, i64 -276
  store float %1, ptr %i.j, align 4, !tbaa !265
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldSetMaximumLinearSpeed(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @b2World_GetMaximumLinearSpeed(i32 %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -276
  %i.e = load float, ptr %i.d, align 4, !tbaa !265
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @b2World_GetProfile(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Profile) align 4 captures(none) initializes((0, 88)) %0, i32 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(88) %i.d, i64 88, i1 false), !tbaa.struct !469
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2World_GetCounters(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Counters) align 8 captures(none) initializes((0, 44), (72, 152)) %0, i32 %1) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [2744 x i8], ptr @b2_worlds, i64 %i.b ; 66 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -2744
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  %i.f = getelementptr i8, ptr %i.c, i64 -840
  %.val34 = load i32, ptr %i.f, align 8, !tbaa !188
  %i.g = getelementptr i8, ptr %i.c, i64 -832
  %.val35 = load i32, ptr %i.g, align 8, !tbaa !189
  %i.h = sub nsw i32 %.val35, %.val34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !473
  %i.j = getelementptr i8, ptr %i.c, i64 -640
  %.val32 = load i32, ptr %i.j, align 8, !tbaa !188
  %i.k = getelementptr i8, ptr %i.c, i64 -632
  %.val33 = load i32, ptr %i.k, align 8, !tbaa !189
  %i.l = sub nsw i32 %.val33, %.val32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !474
  %i.n = getelementptr i8, ptr %i.c, i64 -720
  %.val30 = load i32, ptr %i.n, align 8, !tbaa !188
  %i.o = getelementptr i8, ptr %i.c, i64 -712
  %.val31 = load i32, ptr %i.o, align 8, !tbaa !189
  %i.p = sub nsw i32 %.val31, %.val30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !475
  %i.r = getelementptr i8, ptr %i.c, i64 -760
  %.val28 = load i32, ptr %i.r, align 8, !tbaa !188
  %i.s = getelementptr i8, ptr %i.c, i64 -752
  %.val29 = load i32, ptr %i.s, align 8, !tbaa !189
  %i.t = sub nsw i32 %.val29, %.val28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.t, ptr %i.u, align 4, !tbaa !476
  %i.v = getelementptr i8, ptr %i.c, i64 -680
  %.val = load i32, ptr %i.v, align 8, !tbaa !188
  %i.w = getelementptr i8, ptr %i.c, i64 -672
  %.val27 = load i32, ptr %i.w, align 8, !tbaa !189
  %i.x = sub nsw i32 %.val27, %.val
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.x, ptr %i.y, align 8, !tbaa !477
  %i.z = getelementptr i8, ptr %i.c, i64 -2704
  %i.aa = tail call i32 @b2DynamicTree_GetHeight(ptr noundef nonnull %i.z) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !478
  %i.ac = getelementptr i8, ptr %i.c, i64 -2560
  %i.ad = getelementptr i8, ptr %i.c, i64 -2632
  %i.ae = tail call i32 @b2DynamicTree_GetHeight(ptr noundef nonnull %i.ac) #23
  %i.af = tail call i32 @b2DynamicTree_GetHeight(ptr noundef nonnull %i.ad) #23
  %i.ag = tail call noundef i32 @llvm.smax.i32(i32 %i.ae, i32 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !479
  %i.ai = tail call i32 @b2GetMaxStackAllocation(ptr noundef %i.d) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !480
  %i.ak = tail call i64 @b2GetByteCount() #23
  store i64 %i.ak, ptr %0, align 8, !tbaa !481
  %i.al = getelementptr i8, ptr %i.c, i64 -12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !141
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !482
  %i.ao = getelementptr i8, ptr %i.c, i64 -88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !150 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ar = getelementptr i8, ptr %i.c, i64 -552
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !155 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.ap to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ap, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %i.at = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.au = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.aw = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.ay = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.az = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.ba = getelementptr inbounds nuw [120 x i8], ptr %i.as, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 352
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 472
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 592
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 712
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 832
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 952
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !213
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !213
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !213
  %i.bm = load i32, ptr %i.be, align 8, !tbaa !213
  %i.bn = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bk, i64 1
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bl, i64 2
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bm, i64 3
  %i.br = load i32, ptr %i.bf, align 8, !tbaa !213
  %i.bs = load i32, ptr %i.bg, align 8, !tbaa !213
  %i.bt = load i32, ptr %i.bh, align 8, !tbaa !213
  %i.bu = load i32, ptr %i.bi, align 8, !tbaa !213
  %i.bv = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 1
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 2
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bu, i64 3
  %i.bz = add <4 x i32> %vec.phi, %i.bq           ; 2 uses
  %i.ca = add <4 x i32> %vec.phi46, %i.by         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ca, %i.bz
  %i.cc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ 0, %.lr.ph ], [ %i.cc, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.cc, %middle.block ], [ %i.iz, %scalar.ph ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cg = getelementptr i8, ptr %i.c, i64 -2360
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !207 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.c, i64 -2344
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !483
  %i.ck = add nsw i32 %i.cj, %i.ch
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !72
  %i.cl = getelementptr i8, ptr %i.c, i64 -2296
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !207 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.c, i64 -2280
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !483
  %i.cp = add nsw i32 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !72
  %i.cr = add nsw i32 %i.ch, %i.cm
  %i.cs = getelementptr i8, ptr %i.c, i64 -2232
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !207 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.c, i64 -2216
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !483
  %i.cw = add nsw i32 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !72
  %i.cy = add nsw i32 %i.cr, %i.ct
  %i.cz = getelementptr i8, ptr %i.c, i64 -2168
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !207 ; 2 uses
  %i.db = getelementptr i8, ptr %i.c, i64 -2152
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !483
  %i.dd = add nsw i32 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !72
  %i.df = add nsw i32 %i.cy, %i.da
  %i.dg = getelementptr i8, ptr %i.c, i64 -2104
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !207 ; 2 uses
  %i.di = getelementptr i8, ptr %i.c, i64 -2088
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !483
  %i.dk = add nsw i32 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !72
  %i.dm = add nsw i32 %i.df, %i.dh
  %i.dn = getelementptr i8, ptr %i.c, i64 -2040
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !207 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.c, i64 -2024
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !483
  %i.dr = add nsw i32 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !72
  %i.dt = add nsw i32 %i.dm, %i.do
  %i.du = getelementptr i8, ptr %i.c, i64 -1976
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !207 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.c, i64 -1960
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !483
  %i.dy = add nsw i32 %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !72
  %i.ea = add nsw i32 %i.dt, %i.dv
  %i.eb = getelementptr i8, ptr %i.c, i64 -1912
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !207 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.c, i64 -1896
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !483
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !72
  %i.eh = add nsw i32 %i.ea, %i.ec
  %i.ei = getelementptr i8, ptr %i.c, i64 -1848
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !207 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.c, i64 -1832
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !483
  %i.em = add nsw i32 %i.el, %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.em, ptr %i.en, align 4, !tbaa !72
  %i.eo = add nsw i32 %i.eh, %i.ej
  %i.ep = getelementptr i8, ptr %i.c, i64 -1784
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !207 ; 2 uses
  %i.er = getelementptr i8, ptr %i.c, i64 -1768
  %i.es = load i32, ptr %i.er, align 8, !tbaa !483
  %i.et = add nsw i32 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !72
  %i.ev = add nsw i32 %i.eo, %i.eq
  %i.ew = getelementptr i8, ptr %i.c, i64 -1720
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !207 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.c, i64 -1704
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !483
  %i.fa = add nsw i32 %i.ez, %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !72
  %i.fc = add nsw i32 %i.ev, %i.ex
  %i.fd = getelementptr i8, ptr %i.c, i64 -1656
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !207 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.c, i64 -1640
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !483
  %i.fh = add nsw i32 %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !72
  %i.fj = add nsw i32 %i.fc, %i.fe
  %i.fk = getelementptr i8, ptr %i.c, i64 -1592
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !207 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.c, i64 -1576
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !483
  %i.fo = add nsw i32 %i.fn, %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !72
  %i.fq = add nsw i32 %i.fj, %i.fl
end_hunk_2
begin_hunk_3_@llvm.assume
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !69}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 _ZTS12b2StackEntry", !9, i64 0}
!12 = !{!"b2DynamicArray_b2StackEntry", !11, i64 0, !6, i64 8, !6, i64 12}
!13 = !{!"b2Stack", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !12, i64 24}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"b2DynamicArray_int", !14, i64 0, !6, i64 8, !6, i64 12}
!16 = !{!"p1 _ZTS12b2MoveResult", !9, i64 0}
!17 = !{!"p1 _ZTS10b2MovePair", !9, i64 0}
!18 = !{!"b2AtomicInt", !6, i64 0}
!19 = !{!"p1 _ZTS9b2SetItem", !9, i64 0}
!20 = !{!"b2HashSet", !19, i64 0, !6, i64 8, !6, i64 12}
!21 = !{!"b2BroadPhase", !5, i64 0, !5, i64 216, !15, i64 264, !16, i64 280, !17, i64 288, !6, i64 296, !18, i64 300, !20, i64 304}
!22 = !{!"b2ConstraintGraph", !5, i64 0}
!23 = !{!"b2IdPool", !15, i64 0, !6, i64 16}
!24 = !{!"p1 _ZTS6b2Body", !9, i64 0}
!25 = !{!"b2DynamicArray_b2Body", !24, i64 0, !6, i64 8, !6, i64 12}
!26 = !{!"p1 _ZTS11b2SolverSet", !9, i64 0}
!27 = !{!"b2DynamicArray_b2SolverSet", !26, i64 0, !6, i64 8, !6, i64 12}
!28 = !{!"p1 _ZTS7b2Joint", !9, i64 0}
!29 = !{!"b2DynamicArray_b2Joint", !28, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"p1 _ZTS9b2Contact", !9, i64 0}
!31 = !{!"b2DynamicArray_b2Contact", !30, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"p1 _ZTS8b2Island", !9, i64 0}
!33 = !{!"b2DynamicArray_b2Island", !32, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!"p1 _ZTS7b2Shape", !9, i64 0}
!35 = !{!"b2DynamicArray_b2Shape", !34, i64 0, !6, i64 8, !6, i64 12}
!36 = !{!"p1 _ZTS12b2ChainShape", !9, i64 0}
!37 = !{!"b2DynamicArray_b2ChainShape", !36, i64 0, !6, i64 8, !6, i64 12}
!38 = !{!"p1 _ZTS8b2Sensor", !9, i64 0}
!39 = !{!"b2DynamicArray_b2Sensor", !38, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!"p1 _ZTS13b2TaskContext", !9, i64 0}
!41 = !{!"b2DynamicArray_b2TaskContext", !40, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!"p1 _ZTS19b2SensorTaskContext", !9, i64 0}
!43 = !{!"b2DynamicArray_b2SensorTaskContext", !42, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"p1 _ZTS15b2BodyMoveEvent", !9, i64 0}
!45 = !{!"b2DynamicArray_b2BodyMoveEvent", !44, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !9, i64 0}
!47 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !46, i64 0, !6, i64 8, !6, i64 12}
!48 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !9, i64 0}
!49 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !48, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!"p1 _ZTS17b2ContactHitEvent", !9, i64 0}
!51 = !{!"b2DynamicArray_b2ContactHitEvent", !50, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!"p1 _ZTS12b2JointEvent", !9, i64 0}
!53 = !{!"b2DynamicArray_b2JointEvent", !52, i64 0, !6, i64 8, !6, i64 12}
!54 = !{!"p1 long", !9, i64 0}
!55 = !{!"b2BitSet", !54, i64 0, !6, i64 8, !6, i64 12}
!56 = !{!"long", !5, i64 0}
!57 = !{!"float", !5, i64 0}
!58 = !{!"b2Vec2", !57, i64 0, !57, i64 4}
!59 = !{!"short", !5, i64 0}
!60 = !{!"b2Profile", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84}
!61 = !{!"b2Capacity", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!62 = !{!"p1 _ZTS11b2Scheduler", !9, i64 0}
!63 = !{!"p1 _ZTS11b2Recording", !9, i64 0}
!64 = !{!"_Bool", !5, i64 0}
!65 = !{!"b2World", !13, i64 0, !21, i64 40, !22, i64 360, !23, i64 1896, !25, i64 1920, !23, i64 1936, !27, i64 1960, !23, i64 1976, !29, i64 2000, !23, i64 2016, !31, i64 2040, !23, i64 2056, !33, i64 2080, !23, i64 2096, !23, i64 2120, !35, i64 2144, !37, i64 2160, !39, i64 2176, !41, i64 2192, !43, i64 2208, !45, i64 2224, !47, i64 2240, !49, i64 2256, !5, i64 2272, !5, i64 2304, !6, i64 2336, !51, i64 2344, !53, i64 2360, !55, i64 2376, !55, i64 2392, !55, i64 2408, !55, i64 2424, !56, i64 2440, !6, i64 2448, !58, i64 2452, !57, i64 2460, !57, i64 2464, !57, i64 2468, !57, i64 2472, !57, i64 2476, !57, i64 2480, !57, i64 2484, !9, i64 2488, !9, i64 2496, !59, i64 2504, !60, i64 2508, !61, i64 2596, !9, i64 2616, !9, i64 2624, !9, i64 2632, !9, i64 2640, !9, i64 2648, !6, i64 2656, !9, i64 2664, !9, i64 2672, !9, i64 2680, !9, i64 2688, !62, i64 2696, !9, i64 2704, !63, i64 2712, !57, i64 2720, !57, i64 2724, !6, i64 2728, !6, i64 2732, !59, i64 2736, !64, i64 2738, !64, i64 2739, !64, i64 2740, !64, i64 2741, !64, i64 2742}
!66 = !{!65, !64, i64 2739}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!65, !59, i64 2504}
!71 = !{!65, !59, i64 2736}
!72 = !{!6, !6, i64 0}
!73 = !{!65, !24, i64 1920}
!74 = !{!65, !6, i64 1928}
!75 = !{!65, !6, i64 1932}
!76 = !{!65, !26, i64 1960}
!77 = !{!65, !6, i64 1968}
!78 = !{!65, !6, i64 1972}
!79 = !{!"p1 _ZTS9b2BodySim", !9, i64 0}
!80 = !{!"b2DynamicArray_b2BodySim", !79, i64 0, !6, i64 8, !6, i64 12}
!81 = !{!"p1 _ZTS11b2BodyState", !9, i64 0}
!82 = !{!"b2DynamicArray_b2BodyState", !81, i64 0, !6, i64 8, !6, i64 12}
!83 = !{!"p1 _ZTS10b2JointSim", !9, i64 0}
!84 = !{!"b2DynamicArray_b2JointSim", !83, i64 0, !6, i64 8, !6, i64 12}
!85 = !{!"p1 _ZTS12b2ContactSim", !9, i64 0}
!86 = !{!"b2DynamicArray_b2ContactSim", !85, i64 0, !6, i64 8, !6, i64 12}
!87 = !{!"p1 _ZTS11b2IslandSim", !9, i64 0}
!88 = !{!"b2DynamicArray_b2IslandSim", !87, i64 0, !6, i64 8, !6, i64 12}
!89 = !{!"b2SolverSet", !80, i64 0, !82, i64 16, !84, i64 32, !86, i64 48, !88, i64 64, !6, i64 80}
!90 = !{!89, !6, i64 12}
!91 = !{!89, !79, i64 0}
!92 = !{!89, !6, i64 28}
!93 = !{!89, !81, i64 16}
!94 = !{!89, !6, i64 60}
!95 = !{!89, !85, i64 48}
!96 = !{!65, !34, i64 2144}
!97 = !{!65, !6, i64 2152}
!98 = !{!65, !6, i64 2156}
!99 = !{!65, !36, i64 2160}
!100 = !{!65, !6, i64 2168}
!101 = !{!65, !6, i64 2172}
!102 = !{!65, !30, i64 2040}
!103 = !{!65, !6, i64 2048}
!104 = !{!65, !6, i64 2052}
!105 = !{!65, !28, i64 2000}
!106 = !{!65, !6, i64 2008}
!107 = !{!65, !6, i64 2012}
!108 = !{!65, !32, i64 2080}
!109 = !{!65, !6, i64 2088}
!110 = !{!65, !6, i64 2092}
!111 = !{!65, !38, i64 2176}
!112 = !{!65, !6, i64 2184}
!113 = !{!65, !6, i64 2188}
!114 = !{!65, !44, i64 2224}
!115 = !{!65, !6, i64 2232}
!116 = !{!65, !6, i64 2236}
!117 = !{!65, !46, i64 2240}
!118 = !{!65, !6, i64 2248}
!119 = !{!65, !6, i64 2252}
!120 = !{!"p1 _ZTS21b2SensorEndTouchEvent", !9, i64 0}
!121 = !{!"b2DynamicArray_b2SensorEndTouchEvent", !120, i64 0, !6, i64 8, !6, i64 12}
!122 = !{!121, !120, i64 0}
!123 = !{!121, !6, i64 8}
!124 = !{!121, !6, i64 12}
!125 = !{!65, !48, i64 2256}
!126 = !{!65, !6, i64 2264}
!127 = !{!65, !6, i64 2268}
!128 = !{!"p1 _ZTS22b2ContactEndTouchEvent", !9, i64 0}
!129 = !{!"b2DynamicArray_b2ContactEndTouchEvent", !128, i64 0, !6, i64 8, !6, i64 12}
!130 = !{!129, !128, i64 0}
!131 = !{!129, !6, i64 8}
!132 = !{!129, !6, i64 12}
!133 = !{!65, !50, i64 2344}
!134 = !{!65, !6, i64 2352}
!135 = !{!65, !6, i64 2356}
!136 = !{!65, !52, i64 2360}
!137 = !{!65, !6, i64 2368}
!138 = !{!65, !6, i64 2372}
!139 = !{!65, !6, i64 2336}
!140 = !{!65, !6, i64 2728}
!141 = !{!65, !6, i64 2732}
!142 = !{!57, !57, i64 0}
!143 = !{!65, !57, i64 2484}
!144 = !{!9, !9, i64 0}
!145 = !{!65, !64, i64 2738}
!146 = !{!65, !64, i64 2740}
!147 = !{!65, !64, i64 2741}
!148 = !{!65, !9, i64 2688}
!149 = !{!65, !9, i64 2704}
!150 = !{!65, !6, i64 2656}
!151 = !{!65, !9, i64 2672}
!152 = !{!65, !62, i64 2696}
!153 = !{!54, !54, i64 0}
!154 = !{!65, !63, i64 2712}
!155 = !{!65, !40, i64 2192}
!156 = !{!65, !6, i64 2204}
!157 = !{!65, !6, i64 2200}
!158 = !{!65, !42, i64 2208}
!159 = !{!65, !6, i64 2220}
!160 = !{!65, !6, i64 2216}
!161 = !{!"p1 _ZTS11b2SensorHit", !9, i64 0}
!162 = !{!"b2DynamicArray_b2SensorHit", !161, i64 0, !6, i64 8, !6, i64 12}
!163 = !{!"b2TaskContext", !162, i64 0, !55, i64 16, !55, i64 32, !64, i64 48, !55, i64 56, !55, i64 72, !55, i64 88, !57, i64 104, !6, i64 108, !6, i64 112}
!164 = !{!163, !161, i64 0}
!165 = !{!163, !6, i64 12}
!166 = !{!"p1 _ZTS17b2SurfaceMaterial", !9, i64 0}
!167 = !{!"b2ChainShape", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !14, i64 24, !166, i64 32, !59, i64 40}
!168 = !{!167, !6, i64 0}
!169 = !{!"p1 _ZTS9b2Visitor", !9, i64 0}
!170 = !{!"b2DynamicArray_b2Visitor", !169, i64 0, !6, i64 8, !6, i64 12}
!171 = !{!"b2Sensor", !170, i64 0, !170, i64 16, !170, i64 32, !6, i64 48}
!172 = !{!171, !6, i64 12}
!173 = !{!171, !6, i64 28}
!174 = !{!171, !6, i64 44}
!175 = !{!"p1 _ZTS13b2ContactLink", !9, i64 0}
!176 = !{!"b2DynamicArray_b2ContactLink", !175, i64 0, !6, i64 8, !6, i64 12}
!177 = !{!"p1 _ZTS11b2JointLink", !9, i64 0}
!178 = !{!"b2DynamicArray_b2JointLink", !177, i64 0, !6, i64 8, !6, i64 12}
!179 = !{!"b2Island", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !15, i64 16, !176, i64 32, !178, i64 48}
!180 = !{!179, !14, i64 16}
!181 = !{!179, !6, i64 28}
!182 = !{!179, !6, i64 44}
!183 = !{!179, !6, i64 60}
!184 = !{!89, !6, i64 80}
!185 = !{!59, !59, i64 0}
!186 = !{!"b2WorldId", !59, i64 0, !59, i64 2}
!187 = !{!89, !6, i64 8}
!188 = !{!23, !6, i64 8}
!189 = !{!23, !6, i64 16}
!190 = !{!"b2Softness", !57, i64 0, !57, i64 4, !57, i64 8}
!191 = !{!"p1 _ZTS7b2World", !9, i64 0}
!192 = !{!"p1 _ZTS17b2ConstraintGraph", !9, i64 0}
!193 = !{!"any p2 pointer", !9, i64 0}
!194 = !{!"p2 _ZTS12b2ContactSim", !193, i64 0}
!195 = !{!"p1 _ZTS23b2ContactConstraintWide", !9, i64 0}
!196 = !{!"p1 _ZTS20b2ContactPrepareSpan", !9, i64 0}
!197 = !{!"p1 _ZTS18b2JointPrepareSpan", !9, i64 0}
!198 = !{!"p1 _ZTS13b2SolverStage", !9, i64 0}
!199 = !{!"b2AtomicU32", !6, i64 0}
!200 = !{!"b2StepContext", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !6, i64 16, !190, i64 20, !190, i64 32, !57, i64 44, !57, i64 48, !191, i64 56, !192, i64 64, !81, i64 72, !79, i64 80, !14, i64 88, !6, i64 96, !14, i64 104, !18, i64 112, !194, i64 120, !195, i64 128, !196, i64 136, !6, i64 144, !197, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !198, i64 176, !6, i64 184, !64, i64 188, !5, i64 189, !199, i64 256, !5, i64 260, !18, i64 324, !5, i64 328}
!201 = !{!200, !191, i64 56}
!202 = !{!65, !57, i64 2720}
!203 = !{!65, !57, i64 2724}
!204 = !{!65, !57, i64 2476}
!205 = !{!65, !57, i64 2480}
!206 = !{!"b2GraphColor", !55, i64 0, !86, i64 16, !84, i64 32, !5, i64 48, !6, i64 56}
!207 = !{!206, !6, i64 24}
!208 = !{!89, !6, i64 56}
!209 = !{!85, !85, i64 0}
!210 = !{!"llvm.loop.isvectorized", i32 1}
!211 = !{!"llvm.loop.unroll.runtime.disable"}
!212 = !{!200, !194, i64 120}
!213 = !{!163, !6, i64 112}
!214 = !{!55, !6, i64 12}
!215 = !{!55, !54, i64 0}
!216 = !{!56, !56, i64 0}
!217 = !{!"b2Contact", !5, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60}
!218 = !{!217, !6, i64 36}
!219 = !{!"b2SurfaceMaterial", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !56, i64 16, !6, i64 24}
!220 = !{!"b2AABB", !58, i64 0, !58, i64 8}
!221 = !{!"b2Filter", !56, i64 0, !56, i64 8, !6, i64 16}
!222 = !{!"b2Shape", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !219, i64 24, !57, i64 56, !57, i64 60, !220, i64 64, !220, i64 80, !58, i64 96, !6, i64 104, !221, i64 112, !9, i64 136, !5, i64 144, !59, i64 288, !64, i64 290, !64, i64 291, !64, i64 292, !64, i64 293, !64, i64 294, !64, i64 295}
!223 = !{!222, !6, i64 0}
!224 = !{!222, !59, i64 288}
!225 = !{!217, !6, i64 60}
!226 = !{!"b2Rot", !57, i64 0, !57, i64 4}
!227 = !{!"b2Transform", !58, i64 0, !226, i64 8}
!228 = !{!"b2Manifold", !58, i64 0, !57, i64 8, !5, i64 12, !6, i64 108}
!229 = !{!"b2SimplexCache", !59, i64 0, !5, i64 2, !5, i64 5}
!230 = !{!"b2ContactSim", !6, i64 0, !226, i64 4, !226, i64 12, !227, i64 20, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !228, i64 68, !57, i64 180, !57, i64 184, !57, i64 188, !57, i64 192, !6, i64 196, !229, i64 200}
!231 = !{!230, !6, i64 196}
!232 = !{!230, !6, i64 0}
!233 = !{!"b2ContactEdge", !6, i64 0, !6, i64 4, !6, i64 8}
!234 = !{!233, !6, i64 0}
!235 = !{!"p1 _ZTS11b2DebugDraw", !9, i64 0}
!236 = !{!"DrawContext", !191, i64 0, !235, i64 8}
!237 = !{!236, !191, i64 0}
!238 = !{!236, !235, i64 8}
!239 = !{!"b2DebugDraw", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !220, i64 80, !57, i64 96, !57, i64 100, !64, i64 104, !64, i64 105, !64, i64 106, !64, i64 107, !64, i64 108, !64, i64 109, !64, i64 110, !64, i64 111, !64, i64 112, !64, i64 113, !64, i64 114, !64, i64 115, !64, i64 116, !64, i64 117, !64, i64 118, !9, i64 120}
!240 = !{!5, !5, i64 0}
!241 = !{!239, !9, i64 120}
!242 = !{!"b2Body", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !59, i64 88, !5, i64 90}
!243 = !{!242, !6, i64 84}
!244 = !{!239, !9, i64 40}
!245 = !{!242, !57, i64 52}
!246 = !{!230, !6, i64 176}
!247 = !{!239, !9, i64 56}
!248 = !{!"b2ManifoldPoint", !58, i64 0, !58, i64 8, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !59, i64 44, !64, i64 46}
!249 = !{!248, !57, i64 16}
!250 = !{!248, !64, i64 46}
!251 = !{!248, !57, i64 32}
!252 = !{!239, !9, i64 72}
!253 = !{!222, !6, i64 4}
!254 = !{!242, !6, i64 8}
!255 = !{!242, !6, i64 80}
!256 = !{!"b2BodySim", !227, i64 0, !58, i64 16, !226, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84, !6, i64 88, !6, i64 92}
!257 = !{!"b2Capsule", !58, i64 0, !58, i64 8, !57, i64 16}
!258 = !{!257, !57, i64 16}
!259 = !{!"", !186, i64 0, !64, i64 4}
!260 = !{!259, !64, i64 4}
!261 = !{!"", !186, i64 0, !57, i64 4}
!262 = !{!261, !57, i64 4}
!263 = !{!65, !57, i64 2464}
!264 = !{!65, !57, i64 2460}
!265 = !{!65, !57, i64 2468}
!266 = !{!65, !9, i64 2616}
!267 = !{!65, !9, i64 2624}
!268 = !{!"b2RecBuffer", !10, i64 0, !6, i64 8, !6, i64 12, !64, i64 16}
!269 = !{!"b2RecQueryWriter", !5, i64 0, !9, i64 8, !268, i64 16, !6, i64 40, !6, i64 44}
!270 = !{!269, !6, i64 40}
!271 = !{!"b2QueryFilter", !56, i64 0, !56, i64 8}
!272 = !{!"WorldQueryContext", !191, i64 0, !9, i64 8, !271, i64 16, !9, i64 32}
!273 = !{!272, !191, i64 0}
!274 = !{!272, !9, i64 8}
!275 = !{!272, !9, i64 32}
!276 = !{!269, !6, i64 44}
!277 = !{!221, !56, i64 0}
!278 = !{i64 0, i64 64, !240, i64 64, i64 4, !72, i64 68, i64 4, !142}
!279 = !{!"b2ShapeProxy", !5, i64 0, !6, i64 64, !57, i64 68}
!280 = !{!279, !6, i64 64}
!281 = !{!279, !57, i64 68}
!282 = !{!"p1 _ZTS12b2ShapeProxy", !9, i64 0}
!283 = !{!"WorldOverlapContext", !191, i64 0, !9, i64 8, !271, i64 16, !282, i64 32, !58, i64 40, !9, i64 48}
!284 = !{!283, !191, i64 0}
!285 = !{!283, !9, i64 8}
!286 = !{!283, !282, i64 32}
!287 = !{!283, !9, i64 48}
!288 = !{!"b2DistanceInput", !279, i64 0, !279, i64 72, !227, i64 144, !64, i64 160}
!289 = !{!288, !64, i64 160}
!290 = !{!"b2DistanceOutput", !58, i64 0, !58, i64 8, !58, i64 16, !57, i64 24, !6, i64 28, !6, i64 32}
!291 = !{!290, !57, i64 24}
!292 = !{!"b2RayCastInput", !58, i64 0, !58, i64 8, !57, i64 16}
!293 = !{!292, !57, i64 16}
!294 = !{!"WorldRayCastContext", !191, i64 0, !9, i64 8, !271, i64 16, !57, i64 32, !58, i64 36, !9, i64 48}
!295 = !{!294, !191, i64 0}
!296 = !{!294, !9, i64 8}
!297 = !{!294, !57, i64 32}
!298 = !{!294, !9, i64 48}
!299 = !{i64 0, i64 4, !142, i64 4, i64 4, !142, i64 8, i64 4, !142, i64 12, i64 4, !142, i64 16, i64 4, !142}
!300 = !{!"b2CastOutput", !58, i64 0, !58, i64 8, !57, i64 16, !6, i64 20, !64, i64 24}
!301 = !{!300, !64, i64 24}
!302 = !{!300, !57, i64 16}
!303 = !{!64, !64, i64 0}
!304 = !{!268, !10, i64 0}
!305 = !{!268, !6, i64 12}
!306 = !{!"b2ShapeCastInput", !279, i64 0, !58, i64 72, !57, i64 80, !64, i64 84}
!307 = !{!"WorldShapeCastContext", !191, i64 0, !9, i64 8, !271, i64 16, !57, i64 32, !58, i64 36, !306, i64 44, !9, i64 136}
!308 = !{!307, !191, i64 0}
!309 = !{!307, !9, i64 8}
!310 = !{!307, !57, i64 32}
!311 = !{!307, !9, i64 136}
!312 = !{!"b2BoxCastInput", !220, i64 0, !58, i64 16, !57, i64 24}
!313 = !{!312, !57, i64 24}
!314 = !{i64 0, i64 64, !240, i64 64, i64 4, !72, i64 68, i64 4, !142, i64 72, i64 4, !142, i64 76, i64 4, !142, i64 80, i64 4, !142, i64 84, i64 1, !303}
!315 = !{!306, !57, i64 80}
!316 = !{!"WorldMoverCastContext", !191, i64 0, !271, i64 8, !57, i64 24, !58, i64 28, !306, i64 36}
!317 = !{!316, !191, i64 0}
!318 = !{!316, !57, i64 24}
!319 = !{!"WorldMoverContext", !191, i64 0, !9, i64 8, !271, i64 16, !257, i64 32, !58, i64 52, !9, i64 64}
!320 = !{!319, !191, i64 0}
!321 = !{!319, !9, i64 8}
!322 = !{!319, !9, i64 64}
!323 = !{!"ExplosionContext", !191, i64 0, !58, i64 8, !57, i64 16, !57, i64 20, !57, i64 24}
!324 = !{!323, !191, i64 0}
!325 = !{!323, !57, i64 24}
!326 = !{!242, !6, i64 12}
!327 = !{!"b2BodyState", !58, i64 0, !57, i64 8, !6, i64 12, !58, i64 16, !226, i64 24}
!328 = !{!327, !57, i64 8}
!329 = distinct !{!329, !69}
!330 = !{!65, !64, i64 2742}
!331 = !{!10, !10, i64 0}
!332 = !{!11, !11, i64 0}
!333 = !{i64 0, i64 8, !331, i64 8, i64 4, !72, i64 12, i64 4, !72, i64 16, i64 4, !72, i64 20, i64 4, !72, i64 24, i64 8, !332, i64 32, i64 4, !72, i64 36, i64 4, !72}
!334 = !{!14, !14, i64 0}
!335 = !{i64 0, i64 8, !334, i64 8, i64 4, !72, i64 12, i64 4, !72, i64 16, i64 4, !72}
!336 = !{!"b2WorldDef", !58, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !9, i64 32, !9, i64 40, !64, i64 48, !64, i64 49, !6, i64 52, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !61, i64 88, !6, i64 108}
!337 = !{!336, !6, i64 96}
!338 = !{!336, !6, i64 100}
!339 = !{!336, !6, i64 104}
!340 = !{!336, !6, i64 88}
!341 = !{!336, !6, i64 92}
!342 = !{!65, !56, i64 2440}
!343 = !{!65, !6, i64 2448}
!344 = !{!336, !64, i64 48}
!345 = !{!336, !64, i64 49}
!346 = !{!336, !9, i64 80}
!347 = !{!336, !6, i64 52}
!348 = !{!336, !9, i64 56}
!349 = !{!336, !9, i64 64}
!350 = !{!65, !9, i64 2664}
!351 = !{!336, !9, i64 72}
!352 = distinct !{!352, !69}
!353 = !{!163, !6, i64 8}
!354 = !{!163, !64, i64 48}
!355 = !{!163, !6, i64 108}
!356 = distinct !{!356, !69}
!357 = distinct !{!357, !69}
!358 = distinct !{!358, !69}
!359 = distinct !{!359, !69}
!360 = !{!171, !169, i64 0}
!361 = !{!171, !169, i64 16}
!362 = !{!171, !169, i64 32}
!363 = !{!179, !175, i64 32}
!364 = !{!179, !177, i64 48}
!365 = distinct !{!365, !69}
!366 = distinct !{!366, !69, !210, !211}
!367 = distinct !{!367, !69, !210, !211}
!368 = distinct !{!368, !69}
!369 = distinct !{!369, !69, !211, !210}
!370 = distinct !{!370, !69, !211, !210}
!371 = distinct !{!371, !69}
!372 = distinct !{!372, !69}
!373 = distinct !{!373, !69}
!374 = distinct !{!374, !69}
!375 = !{!"", !186, i64 0, !57, i64 4, !6, i64 8}
!376 = !{!375, !57, i64 4}
!377 = !{!375, !6, i64 8}
!378 = !{!"p1 _ZTS10b2TreeNode", !9, i64 0}
!379 = !{!"p1 _ZTS6b2AABB", !9, i64 0}
!380 = !{!"p1 _ZTS6b2Vec2", !9, i64 0}
!381 = !{!"b2DynamicTree", !378, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !14, i64 32, !379, i64 40, !380, i64 48, !14, i64 56, !6, i64 64}
!382 = !{!381, !6, i64 24}
!383 = !{!61, !6, i64 16}
!384 = !{!65, !57, i64 2512}
!385 = !{!200, !57, i64 0}
!386 = !{!200, !6, i64 16}
!387 = !{!200, !57, i64 12}
!388 = !{!200, !64, i64 188}
!389 = !{!206, !85, i64 16}
end_hunk_3
