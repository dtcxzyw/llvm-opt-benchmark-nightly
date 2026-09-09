Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ExplosionCallback:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cs = load <2 x float>, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !533
  %i.cv = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = fsub <2 x float> %.sroa.027.0, %i.cs    ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.n, %i.cx            ; 2 uses
  %i.cz = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.cz, %i.da           ; 2 uses
  %i.dc = fsub <2 x float> %i.cy, %i.db
  %i.dd = fadd <2 x float> %i.cy, %i.db
  %i.de = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.df = fmul <2 x float> %i.cv, %i.de           ; 2 uses
  %shift99 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop100 = fsub <2 x float> %i.df, %shift99
  %i.dg = extractelement <2 x float> %foldExtExtBinop100, i64 0
  %i.dh = fmul float %i.cu, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !330
  %i.dk = fadd float %i.dj, %i.dh
  store float %i.dk, ptr %i.di, align 4, !tbaa !330
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
  store i32 %0, ptr %1, align 4
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
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
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !208 ; 24 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !232 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !537
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [296 x i8], ptr %i.h, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !538
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
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 196 ; 7 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !230 ; 2 uses
  br i1 %i.ba, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = and i32 %i.bc, -196609
  %i.be = or disjoint i32 %i.bd, 131072
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !230
  %.val233 = load ptr, ptr %i.x, align 8, !tbaa !214
  %i.bf = lshr i32 %i.ae, 6
  %i.bg = and i32 %i.ae, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val233, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !215
  %i.bm = or i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !215
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
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bw, align 4 ; 3 uses
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.699.0.copyload = load <2 x float>, ptr %.sroa.699.0..sroa_idx, align 4 ; 14 uses
  %.sroa.088.0.copyload = load <2 x float>, ptr %i.bx, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !254
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !328
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cd = phi i32 [ %i.cc, %bb.e ], [ -1, %bb.d ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !539
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
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !328
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ -1, %bb.f ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !540
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
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !230
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !255
  %i.cx = and i32 %i.cw, 8
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond = select i1 %i.cy, i1 %i.y, i1 false
  %.pre395 = load i32, ptr %i.bb, align 4, !tbaa !230 ; 4 uses
  %i.cz = and i32 %.pre395, 4194312
  %or.cond230.not = icmp eq i32 %i.cz, 4194312
  %or.cond401 = select i1 %or.cond, i1 %or.cond230.not, i1 false
  br i1 %or.cond401, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.085.0.copyload = load <2 x float>, ptr %i.da, align 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.db, align 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.dc, align 4
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.sroa.482.0.copyload = load <2 x float>, ptr %.sroa.482.0..sroa_idx, align 4
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
  %4 = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %5 = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.du = fmul <2 x float> %4, %5
  %6 = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %7 = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %8 = fmul <2 x float> %6, %7
  %9 = fadd <2 x float> %i.du, %8                 ; 4 uses
  %10 = extractelement <2 x float> %9, i64 0      ; 2 uses
  %i.dv = extractelement <2 x float> %9, i64 1    ; 2 uses
  %i.dw = fcmp olt float %i.dv, %10
  %i.dx = select i1 %i.dw, float %i.dv, float %10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !243
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !541
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ed = phi float [ %i.ec, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !243
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !541
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ej = phi float [ %i.ei, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.ek = fcmp ogt float %i.dx, 9.800000e-01
  br i1 %i.ek, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.el = fmul <2 x float> %i.dk, %.sroa.482.0.copyload ; 2 uses
  %shift.a = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x float> %shift.a, %i.el
  %i.em = extractelement <2 x float> %foldExtExtBinop.a, i64 0 ; 3 uses
  %i.en = shufflevector <2 x float> %.sroa.081.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = fsub <2 x float> %i.en, %i.dt           ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eo           ; 2 uses
  %shift416.a = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop417.a = fadd <2 x float> %shift416.a, %i.ep
  %i.eq = extractelement <2 x float> %foldExtExtBinop417.a, i64 0
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.eq)
  %i.er = fcmp ogt float %i.ed, %i.ej
  %i.es = select i1 %i.er, float %i.ed, float %i.ej
  %i.et = select i1 %.not225, i1 %i.t, i1 false
  %i.eu = select i1 %i.et, float %i.s, float %i.p
  %i.ev = fcmp olt float %i.em, 0.000000e+00
  %i.ew = fneg float %i.em
  %i.ex = select i1 %i.ev, float %i.ew, float %i.em
  %i.ey = fmul float %i.ex, %i.es
  %i.ez = fadd float %sqrt.i, %i.ey
  %i.fa = fcmp olt float %i.ez, %i.eu
  br i1 %i.fa, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.fb = fmul <2 x float> %6, %5
  %i.fc = fmul <2 x float> %4, %7
  %i.fd = fsub <2 x float> %i.fb, %i.fc           ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fg = load <2 x float>, ptr %i.fe, align 4
  %i.fh = load <2 x float>, ptr %i.ff, align 4
  %i.fi = fsub <2 x float> %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !246 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %bb.p
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.fm, align 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %.not228 = icmp eq i32 %i.cd, -1
  %i.fp = sext i32 %i.cd to i64
  %i.fq = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.not229 = icmp eq i32 %i.cn, -1
  %i.fs = sext i32 %i.cn to i64
  %i.ft = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %wide.trip.count389 = zext nneg i32 %i.fk to i64
  %i.fv = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.q

.critedge:                                        ; preds = %bb.x, %bb.p
  %i.fy = load i32, ptr %i.aa, align 8, !tbaa !212
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.aa, align 8, !tbaa !212
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph382, %bb.x
  %indvars.iv386 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next387, %bb.x ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %indvars.iv386 ; 9 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 4    ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load <2 x float>, ptr %i.gc, align 4    ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !542
  %i.gg = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = fmul <2 x float> %i.fw, %i.gg           ; 2 uses
  %i.gi = fmul <2 x float> %11, %i.gb             ; 2 uses
  %i.gj = fsub <2 x float> %i.gi, %i.gh
  %i.gk = fadd <2 x float> %i.gi, %i.gh
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <2 x i32> <i32 0, i32 3>
  %i.gm = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = fmul <2 x float> %i.fx, %i.gm           ; 2 uses
  %i.go = fmul <2 x float> %i.fv, %i.gd           ; 2 uses
  %i.gp = fsub <2 x float> %i.go, %i.gn
  %i.gq = fadd <2 x float> %i.go, %i.gn
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = fsub <2 x float> %i.gr, %i.gl
  %i.gt = fadd <2 x float> %i.fi, %i.gs
  %i.gu = fmul <2 x float> %.sroa.065.0.copyload, %i.gt ; 2 uses
  %shift419 = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fadd <2 x float> %i.gu, %shift419
  %i.gv = extractelement <2 x float> %foldExtExtBinop420, i64 0
  %i.gw = fadd float %i.gf, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store float %i.gw, ptr %i.gx, align 4, !tbaa !249
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !251
  %i.ha = fcmp ogt float %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ga, i64 36
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !543 ; 2 uses
  %i.hd = load float, ptr %i.z, align 8, !tbaa !263
  %i.he = fneg float %i.hd
  %i.hf = fcmp olt float %i.hc, %i.he
  br i1 %i.hf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hg = load float, ptr %i.fo, align 4, !tbaa !544
  %i.hh = fneg float %i.hg
  %i.hi = fmul float %i.hc, %i.hh
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sink = phi float [ %i.hi, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  store float %.sink, ptr %i.hj, align 4, !tbaa !545
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = load float, ptr %i.fr, align 4, !tbaa !330
  %i.hl = load <2 x float>, ptr %i.fq, align 4    ; 2 uses
  %i.hm = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hn, %i.gb           ; 2 uses
  %shift422 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fsub <2 x float> %i.hl, %shift422
  %shift425 = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop426 = fadd <2 x float> %shift425, %i.ho
  %.sroa.02.4.vec.insert.i303 = shufflevector <2 x float> %foldExtExtBinop423, <2 x float> %foldExtExtBinop426, <2 x i32> <i32 0, i32 2>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.041.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i303, %bb.u ], [ zeroinitializer, %bb.t ]
  br i1 %.not229, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hp = load float, ptr %i.fu, align 4, !tbaa !330
  %i.hq = load <2 x float>, ptr %i.ft, align 4    ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x float> %i.hs, %i.gd           ; 2 uses
  %shift428 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop429 = fsub <2 x float> %i.hq, %shift428
  %shift431 = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432 = fadd <2 x float> %shift431, %i.ht
  %.sroa.02.4.vec.insert.i313 = shufflevector <2 x float> %foldExtExtBinop429, <2 x float> %foldExtExtBinop432, <2 x i32> <i32 0, i32 2>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.034.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i313, %bb.w ], [ zeroinitializer, %bb.v ]
  %i.hu = fsub <2 x float> %.sroa.034.0, %.sroa.041.0
  %i.hv = fmul <2 x float> %.sroa.065.0.copyload, %i.hu ; 2 uses
  %shift434 = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop435 = fadd <2 x float> %i.hv, %shift434
  %i.hw = extractelement <2 x float> %foldExtExtBinop435, i64 0
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ga, i64 36
  store float %i.hw, ptr %i.hx, align 4, !tbaa !543
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ga, i64 46
  store i8 1, ptr %i.hy, align 2, !tbaa !250
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.critedge, label %bb.q, !llvm.loop !534

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.n, %bb.i
  %i.hz = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre395, %bb.o ], [ %.pre395, %bb.n ], [ %.pre395, %bb.i ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store <2 x float> %.sroa.699.0.copyload, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store <2 x float> %.sroa.6.0.copyload, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.id = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ie = fmul <2 x float> %.sroa.699.0.copyload, %i.id ; 2 uses
  %shift437 = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop438 = fsub <2 x float> %i.ie, %shift437
  %i.if = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %shift440 = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop441 = fadd <2 x float> %i.if, %shift440
  %.sroa.010.0.vec.insert.i.i328 = shufflevector <2 x float> %foldExtExtBinop441, <2 x float> %foldExtExtBinop438, <2 x i32> <i32 0, i32 2>
  %i.ig = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = fmul <2 x float> %.sroa.699.0.copyload, %i.ih ; 2 uses
  %i.ij = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ik = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x float> %i.ij, %i.ik           ; 2 uses
  %i.im = fadd <2 x float> %i.ii, %i.il
  %i.in = fsub <2 x float> %i.ii, %i.il
  %i.io = shufflevector <2 x float> %i.im, <2 x float> %i.in, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.io, ptr %i.ic, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store <2 x float> %.sroa.010.0.vec.insert.i.i328, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ip = or i32 %i.hz, 4194304
  store i32 %i.ip, ptr %i.bb, align 4, !tbaa !230
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ir = load <2 x float>, ptr %i.iq, align 4    ; 2 uses
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %.sroa.699.0.copyload, %i.is ; 2 uses
  %i.iu = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iv = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iw = fmul <2 x float> %i.iu, %i.iv           ; 2 uses
  %i.ix = fsub <2 x float> %i.it, %i.iw
  %i.iy = fadd <2 x float> %i.it, %i.iw
  %i.iz = shufflevector <2 x float> %i.ix, <2 x float> %i.iy, <2 x i32> <i32 0, i32 3>
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.jb = load <2 x float>, ptr %i.ja, align 4    ; 2 uses
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x float> %.sroa.6.0.copyload, %i.jc ; 2 uses
  %i.je = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jg = fmul <2 x float> %i.je, %i.jf           ; 2 uses
  %i.jh = fsub <2 x float> %i.jd, %i.jg
  %i.ji = fadd <2 x float> %i.jd, %i.jg
  %i.jj = shufflevector <2 x float> %i.jh, <2 x float> %i.ji, <2 x i32> <i32 0, i32 3>
  %i.jk = tail call zeroext i1 @b2UpdateContact(ptr noundef %i.b, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, <2 x float> %.sroa.096.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x float> %i.iz, ptr noundef nonnull %i.am, <2 x float> %.sroa.088.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x float> %i.jj) #23 ; 3 uses
  %or.cond231 = select i1 %i.jk, i1 %.not225, i1 false
  br i1 %or.cond231, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %.thread
  %brmerge = select i1 %i.jk, i1 true, i1 %.not225
  br i1 %brmerge, label %bb.z, label %.sink.split

.sink.split:                                      ; preds = %bb.y, %.thread
  %.sink414 = phi i32 [ 262144, %.thread ], [ 524288, %bb.y ]
  %i.jl = load i32, ptr %i.bb, align 4, !tbaa !230
  %i.jm = or i32 %i.jl, %.sink414
  store i32 %i.jm, ptr %i.bb, align 4, !tbaa !230
  %.val = load ptr, ptr %i.x, align 8, !tbaa !214
  %i.jn = lshr i32 %i.ae, 6
  %i.jo = and i32 %i.ae, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl nuw i64 1, %i.jp
  %i.jr = zext nneg i32 %i.jn to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.jr ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !215
  %i.ju = or i64 %i.jt, %i.jq
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !215
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y
  br i1 %i.jk, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !246 ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.ka = load i32, ptr %i.ce, align 4, !tbaa !539 ; 2 uses
  %.not226 = icmp eq i32 %i.ka, -1
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.kb ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i32, ptr %i.co, align 4, !tbaa !540 ; 2 uses
  %.not227 = icmp eq i32 %i.ke, -1
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %wide.trip.count = zext nneg i32 %i.jx to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [48 x i8], ptr %i.jz, i64 %indvars.iv ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !249
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  store float %i.kk, ptr %i.kl, align 4, !tbaa !542
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.km = load float, ptr %i.kd, align 4, !tbaa !330
  %i.kn = load <2 x float>, ptr %i.ki, align 4
  %i.ko = load <2 x float>, ptr %i.kc, align 4    ; 2 uses
end_hunk_0
