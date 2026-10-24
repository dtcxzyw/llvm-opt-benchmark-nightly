Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ExplosionCallback:bb.a
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 true
}

; Function Attrs: nounwind uwtable
define void @b2World_RebuildStaticTree(i32 %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.b2RecArgs_WorldRebuildStaticTree, align 4 ; 4 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 %0, ptr %1, align 4, !tbaa !185
  call void @b2RecWrite_WorldRebuildStaticTree(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 -2704
  %i.j = call i32 @b2DynamicTree_Rebuild(ptr noundef nonnull %i.i, i1 noundef zeroext true) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b2RecWrite_WorldRebuildStaticTree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @b2DynamicTree_Rebuild(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateConnectivity(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateSolverSets(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b2ValidateContacts(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

declare ptr @b2StackAlloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @b2ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @b2CollideTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1920
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2484
  %i.p = load float, ptr %i.o, align 4, !tbaa !143 ; 3 uses
  %i.q = tail call float @b2GetLengthUnitsPerMeter() #23
  %i.r = fmul float %i.q, 5.000000e-03
  %i.s = fmul float %i.r, 4.000000e+00            ; 2 uses
  %i.t = fcmp uge float %i.p, %i.s
  %i.u = icmp slt i32 %0, %1
  br i1 %i.u, label %.lr.ph384, label %._crit_edge

.lr.ph384:                                        ; preds = %bb.a
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr inbounds [120 x i8], ptr %i.d, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.y = fcmp ogt float %i.p, 0.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2464
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.ab = sext i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph384, %.loopexit
  %indvars.iv391 = phi i64 [ %i.ab, %.lr.ph384 ], [ %indvars.iv.next392, %.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv391
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !209 ; 24 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !232 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !535
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !536
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ap = load <2 x float>, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ar = load <2 x float>, ptr %i.aq, align 8
  %i.as = load <2 x float>, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.au = load <2 x float>, ptr %i.at, align 8
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = shufflevector <2 x float> %i.ar, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ax = fcmp ule <4 x float> %i.av, %i.aw
  %i.ay = freeze <4 x i1> %i.ax
  %i.az = bitcast <4 x i1> %i.ay to i4
  %i.ba = icmp eq i4 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 196 ; 9 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !231 ; 2 uses
  br i1 %i.ba, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = and i32 %i.bc, -196609
  %i.be = or disjoint i32 %i.bd, 131072
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !231
  %.val233 = load ptr, ptr %i.x, align 8, !tbaa !215
  %i.bf = lshr i32 %i.ae, 6
  %i.bg = and i32 %i.ae, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val233, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !216
  %i.bm = or i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !216
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.bn = and i32 %i.bc, 65536
  %.not225 = icmp eq i32 %i.bn, 0                 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !253
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [104 x i8], ptr %i.j, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !253
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [104 x i8], ptr %i.j, i64 %i.bu ; 5 uses
  %i.bw = tail call ptr @b2GetBodySim(ptr noundef %i.b, ptr noundef %i.br) #23 ; 6 uses
  %i.bx = tail call ptr @b2GetBodySim(ptr noundef %i.b, ptr noundef %i.bv) #23 ; 6 uses
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bw, align 4, !tbaa !142 ; 3 uses
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.699.0.copyload = load <2 x float>, ptr %.sroa.699.0..sroa_idx, align 4, !tbaa !142 ; 15 uses
  %.sroa.088.0.copyload = load <2 x float>, ptr %i.bx, align 4, !tbaa !142 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !142 ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !254
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !326
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cd = phi i32 [ %i.cc, %bb.e ], [ -1, %bb.d ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !537
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.ch = load <2 x float>, ptr %i.cf, align 4, !tbaa !142
  store <2 x float> %i.ch, ptr %i.cg, align 4, !tbaa !142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !254
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !326
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ -1, %bb.f ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !538
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.cr = load <2 x float>, ptr %i.cp, align 4, !tbaa !142
  store <2 x float> %i.cr, ptr %i.cq, align 4, !tbaa !142
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !255
  %i.cu = and i32 %i.ct, 8
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.i, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !231
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !255
  %i.cx = and i32 %i.cw, 8
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond = select i1 %i.cy, i1 %i.y, i1 false
  %.pre395 = load i32, ptr %i.bb, align 4, !tbaa !231 ; 4 uses
  %i.cz = and i32 %.pre395, 4194312
  %or.cond230.not = icmp eq i32 %i.cz, 4194312
  %or.cond401 = select i1 %or.cond, i1 %or.cond230.not, i1 false
  br i1 %or.cond401, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.da, align 4, !tbaa !142 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.db, align 4, !tbaa !142 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.dc, align 4, !tbaa !142
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.482.0.copyload = load <2 x float>, ptr %.sroa.482.0..sroa_idx, align 4, !tbaa !142
  %i.dd = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.df = fmul <2 x float> %i.dd, %i.de           ; 2 uses
  %i.dg = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = fmul <2 x float> %i.dg, %.sroa.6.0.copyload ; 2 uses
  %i.di = fadd <2 x float> %i.df, %i.dh
  %i.dj = fsub <2 x float> %i.df, %i.dh
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dl = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %.sroa.699.0.copyload, %i.dm ; 2 uses
  %i.do = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.do, %i.dp           ; 2 uses
  %i.dr = fadd <2 x float> %i.dn, %i.dq
  %i.ds = fsub <2 x float> %i.dn, %i.dq
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.du = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.085.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.du, %shift ; 2 uses
  %i.dv = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dw = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.083.0.copyload ; 2 uses
  %shift416 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop417 = fadd <2 x float> %i.dw, %shift416 ; 2 uses
  %i.dx = extractelement <2 x float> %foldExtExtBinop417, i64 0 ; 2 uses
  %i.dy = fcmp olt float %i.dv, %i.dx
  %i.dz = select i1 %i.dy, float %i.dv, float %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !243
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !539
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ef = phi float [ %i.ee, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !243
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !539
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.el = phi float [ %i.ek, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.em = shufflevector <2 x float> %.sroa.081.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.en = fsub <2 x float> %i.em, %i.dt           ; 2 uses
  %i.eo = fmul <2 x float> %i.en, %i.en
  %i.ep = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eo)
  %i.eq = tail call float @sqrtf(float noundef %i.ep) #23
  %i.er = fcmp ogt float %i.dz, 9.800000e-01
  br i1 %i.er, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.es = fmul <2 x float> %i.dk, %.sroa.482.0.copyload ; 2 uses
  %shift419 = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fsub <2 x float> %shift419, %i.es
  %i.et = extractelement <2 x float> %foldExtExtBinop420, i64 0 ; 3 uses
  %i.eu = fcmp ogt float %i.ef, %i.el
  %i.ev = select i1 %i.eu, float %i.ef, float %i.el
  %i.ew = select i1 %.not225, i1 %i.t, i1 false
  %i.ex = select i1 %i.ew, float %i.s, float %i.p
  %i.ey = fcmp olt float %i.et, 0.000000e+00
  %i.ez = fneg float %i.et
  %i.fa = select i1 %i.ey, float %i.ez, float %i.et
  %i.fb = fmul float %i.fa, %i.ev
  %i.fc = fadd float %i.eq, %i.fb
  %i.fd = fcmp olt float %i.fc, %i.ex
  br i1 %i.fd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.fe = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ff = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fg = fmul <2 x float> %i.fe, %i.ff
  %i.fh = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fj = fmul <2 x float> %i.fh, %i.fi
  %i.fk = fsub <2 x float> %i.fg, %i.fj           ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fn = load <2 x float>, ptr %i.fl, align 4
  %i.fo = load <2 x float>, ptr %i.fm, align 4
  %i.fp = fsub <2 x float> %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !246 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %bb.p
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.ft, align 4, !tbaa !142 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %.not228 = icmp eq i32 %i.cd, -1
  %i.fw = sext i32 %i.cd to i64
  %i.fx = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.not229 = icmp eq i32 %i.cn, -1
  %i.fz = sext i32 %i.cn to i64
  %i.ga = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %wide.trip.count389 = zext nneg i32 %i.fr to i64
  %i.gc = shufflevector <2 x float> %foldExtExtBinop417, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.q

.critedge:                                        ; preds = %bb.x, %bb.p
  %i.gg = load i32, ptr %i.aa, align 8, !tbaa !213
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.aa, align 8, !tbaa !213
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph382, %bb.x
  %indvars.iv386 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next387, %bb.x ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %i.fu, i64 %indvars.iv386 ; 9 uses
  %i.gj = load <2 x float>, ptr %i.gi, align 4    ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gl = load <2 x float>, ptr %i.gk, align 4    ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !540
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = fmul <2 x float> %i.ge, %i.go           ; 2 uses
  %i.gq = fmul <2 x float> %i.gd, %i.gj           ; 2 uses
  %i.gr = fsub <2 x float> %i.gq, %i.gp
  %i.gs = fadd <2 x float> %i.gq, %i.gp
  %i.gt = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <2 x i32> <i32 0, i32 3>
  %i.gu = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gv = fmul <2 x float> %i.gf, %i.gu           ; 2 uses
  %i.gw = fmul <2 x float> %i.gc, %i.gl           ; 2 uses
  %i.gx = fsub <2 x float> %i.gw, %i.gv
  %i.gy = fadd <2 x float> %i.gw, %i.gv
  %i.gz = shufflevector <2 x float> %i.gx, <2 x float> %i.gy, <2 x i32> <i32 0, i32 3>
  %i.ha = fsub <2 x float> %i.gz, %i.gt
  %i.hb = fadd <2 x float> %i.fp, %i.ha
  %i.hc = fmul <2 x float> %.sroa.065.0.copyload, %i.hb ; 2 uses
  %shift422 = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fadd <2 x float> %i.hc, %shift422
  %i.hd = extractelement <2 x float> %foldExtExtBinop423, i64 0
  %i.he = fadd float %i.gn, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store float %i.he, ptr %i.hf, align 4, !tbaa !249
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !251
  %i.hi = fcmp ogt float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !541 ; 2 uses
  %i.hl = load float, ptr %i.z, align 8, !tbaa !263
  %i.hm = fneg float %i.hl
  %i.hn = fcmp olt float %i.hk, %i.hm
  br i1 %i.hn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ho = load float, ptr %i.fv, align 4, !tbaa !542
  %i.hp = fneg float %i.ho
  %i.hq = fmul float %i.hk, %i.hp
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sink = phi float [ %i.hq, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  store float %.sink, ptr %i.hr, align 4, !tbaa !543
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hs = load float, ptr %i.fy, align 4, !tbaa !328
  %i.ht = load <2 x float>, ptr %i.fx, align 4    ; 2 uses
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %i.gj           ; 2 uses
  %shift425 = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop426 = fsub <2 x float> %i.ht, %shift425
  %shift428 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop429 = fadd <2 x float> %shift428, %i.hw
  %.sroa.02.4.vec.insert.i303 = shufflevector <2 x float> %foldExtExtBinop426, <2 x float> %foldExtExtBinop429, <2 x i32> <i32 0, i32 2>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.041.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i303, %bb.u ], [ zeroinitializer, %bb.t ]
  br i1 %.not229, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = load float, ptr %i.gb, align 4, !tbaa !328
  %i.hy = load <2 x float>, ptr %i.ga, align 4    ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %i.ia, %i.gl           ; 2 uses
  %shift431 = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432 = fsub <2 x float> %i.hy, %shift431
  %shift434 = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop435 = fadd <2 x float> %shift434, %i.ib
  %.sroa.02.4.vec.insert.i313 = shufflevector <2 x float> %foldExtExtBinop432, <2 x float> %foldExtExtBinop435, <2 x i32> <i32 0, i32 2>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.034.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i313, %bb.w ], [ zeroinitializer, %bb.v ]
  %i.ic = fsub <2 x float> %.sroa.034.0, %.sroa.041.0
  %i.id = fmul <2 x float> %.sroa.065.0.copyload, %i.ic
  %i.ie = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.id)
  %i.if = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store float %i.ie, ptr %i.if, align 4, !tbaa !541
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gi, i64 46
  store i8 1, ptr %i.ig, align 2, !tbaa !250
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.critedge, label %bb.q, !llvm.loop !532

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.n, %bb.i
  %i.ih = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre395, %bb.o ], [ %.pre395, %bb.n ], [ %.pre395, %bb.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store <2 x float> %.sroa.699.0.copyload, ptr %i.ii, align 4, !tbaa !142
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store <2 x float> %.sroa.6.0.copyload, ptr %i.ij, align 4, !tbaa !142
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.il = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.im = fmul <2 x float> %.sroa.699.0.copyload, %i.il ; 2 uses
  %shift437 = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop438 = fsub <2 x float> %i.im, %shift437
  %i.in = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %shift440 = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop441 = fadd <2 x float> %i.in, %shift440
  %.sroa.010.0.vec.insert.i.i328 = shufflevector <2 x float> %foldExtExtBinop441, <2 x float> %foldExtExtBinop438, <2 x i32> <i32 0, i32 2>
  %i.io = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = fmul <2 x float> %.sroa.699.0.copyload, %i.ip ; 2 uses
  %i.ir = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.is = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.ir, %i.is           ; 2 uses
  %i.iu = fadd <2 x float> %i.iq, %i.it
  %i.iv = fsub <2 x float> %i.iq, %i.it
  %i.iw = shufflevector <2 x float> %i.iu, <2 x float> %i.iv, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.iw, ptr %i.ik, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store <2 x float> %.sroa.010.0.vec.insert.i.i328, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %i.ix = or i32 %i.ih, 4194304
  store i32 %i.ix, ptr %i.bb, align 4, !tbaa !231
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.iz = load <2 x float>, ptr %i.iy, align 4    ; 2 uses
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %.sroa.699.0.copyload, %i.ja ; 2 uses
  %i.jc = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jd = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.je = fmul <2 x float> %i.jc, %i.jd           ; 2 uses
  %i.jf = fsub <2 x float> %i.jb, %i.je
  %i.jg = fadd <2 x float> %i.jb, %i.je
  %i.jh = shufflevector <2 x float> %i.jf, <2 x float> %i.jg, <2 x i32> <i32 0, i32 3>
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.jj = load <2 x float>, ptr %i.ji, align 4    ; 2 uses
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %.sroa.6.0.copyload, %i.jk ; 2 uses
  %i.jm = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jn = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jo = fmul <2 x float> %i.jm, %i.jn           ; 2 uses
  %i.jp = fsub <2 x float> %i.jl, %i.jo
  %i.jq = fadd <2 x float> %i.jl, %i.jo
  %i.jr = shufflevector <2 x float> %i.jp, <2 x float> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.js = tail call zeroext i1 @b2UpdateContact(ptr noundef %i.b, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, <2 x float> %.sroa.096.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x float> %i.jh, ptr noundef nonnull %i.am, <2 x float> %.sroa.088.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x float> %i.jr) #23 ; 3 uses
  %or.cond231 = select i1 %i.js, i1 %.not225, i1 false
  br i1 %or.cond231, label %.thread402, label %bb.y

.thread402:                                       ; preds = %.thread
  %4 = load i32, ptr %i.bb, align 4, !tbaa !231
  %5 = or i32 %4, 262144
  store i32 %5, ptr %i.bb, align 4, !tbaa !231
  %.val232 = load ptr, ptr %i.x, align 8, !tbaa !215
  %6 = lshr i32 %i.ae, 6
  %7 = and i32 %i.ae, 63
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %.val232, i64 %10 ; 2 uses
  %12 = load i64, ptr %11, align 8, !tbaa !216
  %13 = or i64 %12, %9
  store i64 %13, ptr %11, align 8, !tbaa !216
  br label %.preheader

bb.y:                                             ; preds = %.thread
  %brmerge = select i1 %i.js, i1 true, i1 %.not225
  br i1 %brmerge, label %bb.z, label %.sink.split

.sink.split:                                      ; preds = %bb.y
  %i.jt = load i32, ptr %i.bb, align 4, !tbaa !231
  %i.ju = or i32 %i.jt, 524288
  store i32 %i.ju, ptr %i.bb, align 4, !tbaa !231
  %.val = load ptr, ptr %i.x, align 8, !tbaa !215
  %i.jv = lshr i32 %i.ae, 6
  %i.jw = and i32 %i.ae, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl nuw i64 1, %i.jx
  %i.jz = zext nneg i32 %i.jv to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.jz ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !216
  %i.kc = or i64 %i.kb, %i.jy
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !216
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  br i1 %i.js, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.thread402, %bb.z
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !246 ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ki = load i32, ptr %i.ce, align 4, !tbaa !537 ; 2 uses
  %.not226 = icmp eq i32 %i.ki, -1
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i32, ptr %i.co, align 4, !tbaa !538 ; 2 uses
  %.not227 = icmp eq i32 %i.km, -1
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %wide.trip.count = zext nneg i32 %i.kf to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %indvars.iv ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !249
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  store float %i.ks, ptr %i.kt, align 4, !tbaa !540
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ku = load float, ptr %i.kl, align 4, !tbaa !328
  %i.kv = load <2 x float>, ptr %i.kq, align 4
  %i.kw = load <2 x float>, ptr %i.kk, align 4    ; 2 uses
  %i.kx = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.la = fmul <2 x float> %i.ky, %i.kz           ; 2 uses
  %i.lb = fsub <2 x float> %i.kw, %i.la
  %i.lc = fadd <2 x float> %i.kw, %i.la
  %i.ld = shufflevector <2 x float> %i.lb, <2 x float> %i.lc, <2 x i32> <i32 0, i32 3>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.012.0 = phi <2 x float> [ %i.ld, %bb.ab ], [ zeroinitializer, %bb.aa ]
  br i1 %.not227, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.le = load float, ptr %i.kp, align 4, !tbaa !328
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.lg = load <2 x float>, ptr %i.lf, align 4
  %i.lh = load <2 x float>, ptr %i.ko, align 4    ; 2 uses
  %i.li = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = fmul <2 x float> %i.lj, %i.lk           ; 2 uses
  %i.lm = fsub <2 x float> %i.lh, %i.ll
  %i.ln = fadd <2 x float> %i.lh, %i.ll
  %i.lo = shufflevector <2 x float> %i.lm, <2 x float> %i.ln, <2 x i32> <i32 0, i32 3>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.06.0 = phi <2 x float> [ %i.lo, %bb.ad ], [ zeroinitializer, %bb.ac ]
  %i.lp = load <2 x float>, ptr %i.kd, align 4
  %i.lq = fsub <2 x float> %.sroa.06.0, %.sroa.012.0
  %i.lr = fmul <2 x float> %i.lp, %i.lq
  %i.ls = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lr)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kq, i64 36
  store float %i.ls, ptr %i.lt, align 4, !tbaa !541
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !533

.loopexit:                                        ; preds = %bb.ae, %.preheader, %.sink.split, %.critedge, %bb.z, %bb.c
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next392 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %._crit_edge, label %bb.b, !llvm.loop !534
}

declare void @b2StackFree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2DestroyContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2LinkContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2AddContactToGraph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @b2UpdateContact(ptr noundef, ptr noundef, ptr noundef, <2 x float>, <2 x float>, <2 x float>, ptr noundef, <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

declare { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2MakeShapeDistanceProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef) local_unnamed_addr #4

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @b2RayCastShape(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2ShapeCastShape(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2CollideMover(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare zeroext i1 @b2WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #4

declare <2 x float> @b2GetShapeCentroid(ptr noundef) local_unnamed_addr #4

declare float @b2GetShapeProjectedPerimeter(ptr noundef, <2 x float>) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
end_hunk_0
