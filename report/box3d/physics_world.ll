Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@b3World_Explode:bb.a
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ab, ptr %4, align 16, !tbaa !142, !alias.scope !635
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = shufflevector <4 x float> %i.v, <4 x float> %i.d, <2 x i32> <i32 1, i32 4>
  %i.ae = insertelement <2 x float> poison, float %i.u, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fadd <2 x float> %i.ad, %i.af
  store <2 x float> %i.ag, ptr %i.ac, align 16, !tbaa !142, !alias.scope !635
  %i.ah = getelementptr i8, ptr %i.h, i64 -3808
  %i.ai = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.ah, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef %i.a, i1 noundef zeroext false, ptr noundef nonnull @ExplosionCallback, ptr noundef nonnull %3) #21 ; 0 uses
  store i8 0, ptr %i.i, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b3RecWrite_WorldExplode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ExplosionCallback(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 7 uses
  %4 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %5 = alloca %struct.b3DistanceInput, align 8    ; 10 uses
  %6 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %7 = alloca %struct.b3DistanceOutput, align 8   ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !356    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %sext = shl i64 %1, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = getelementptr inbounds [232 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !636
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3880
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !280
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.m ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.a, ptr noundef %i.n) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0132.0.copyload = load <2 x float>, ptr %i.o, align 8
  %.sroa.2133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2133.0.copyload = load float, ptr %.sroa.2133.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 3 uses
  %i.u = load <2 x float>, ptr %3, align 8, !tbaa !142
  %i.v = fsub <2 x float> %.sroa.0132.0.copyload, %i.u ; 4 uses
  %i.w = load float, ptr %i.p, align 8, !tbaa !269
  %i.x = fsub float %.sroa.2133.0.copyload, %i.w  ; 3 uses
  %i.y = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1 ; 2 uses
  %i.aa = fmul <2 x float> %i.z, %i.r
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.r, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %i.v, %i.ab
  %i.ad = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ae = fmul <2 x float> %i.v, %i.ad
  %i.af = insertelement <2 x float> %i.y, float %i.x, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.r
  %i.ah = fsub <2 x float> %i.aa, %i.ae
  %i.ai = fsub <2 x float> %i.ac, %i.ag
  %i.aj = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.af, %i.aj
  %i.al = fmul <2 x float> %i.z, %i.aj
  %i.am = fsub <2 x float> %i.ah, %i.ak           ; 2 uses
  %i.an = fsub <2 x float> %i.ai, %i.al           ; 2 uses
  %i.ao = fmul <2 x float> %i.ad, %i.am
  %i.ap = fmul <2 x float> %i.ab, %i.an
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.as = fmul <2 x float> %i.r, %i.ar            ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = fmul <2 x float> %i.aq, splat (float 2.000000e+00)
  %i.av = fadd <2 x float> %i.v, %i.au
  %i.aw = fmul float %i.at, 2.000000e+00
  %i.ax = fadd float %i.x, %i.aw
  store <2 x float> %i.av, ptr %4, align 8
  %.sroa.2131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.ax, ptr %.sroa.2131.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ay = call { ptr, i64 } @b3MakeShapeProxy(ptr noundef nonnull %i.e) #21 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  store ptr %i.az, ptr %5, align 8, !tbaa !315
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ba, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.bb, align 8, !tbaa !315
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.2124.0..sroa_idx, align 8, !tbaa !82
  %.sroa.3125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.3125.0..sroa_idx, align 4, !tbaa !142
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !285
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 1, ptr %i.bd, align 4, !tbaa !638
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #21
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !639 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !640 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !642
  %i.bk = fadd float %i.bf, %i.bh                 ; 2 uses
  %i.bl = fcmp ogt float %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.a, ptr noundef %i.n) #21 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !271
  %.not = icmp eq i32 %i.bo, 2
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.sroa.0114.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !142
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !142
  %i.bp = load float, ptr %i.bi, align 4, !tbaa !642
  %i.bq = fcmp oeq float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.br = call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %i.e) #21 ; 2 uses
  %.fca.0.extract108 = extractvalue { <2 x float>, float } %i.br, 0
  %.fca.1.extract109 = extractvalue { <2 x float>, float } %i.br, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0114.0 = phi <2 x float> [ %.fca.0.extract108, %bb.e ], [ %.sroa.0114.0.copyload, %bb.d ] ; 3 uses
  %.sroa.6.0 = phi float [ %.fca.1.extract109, %bb.e ], [ %.sroa.6.0.copyload, %bb.d ] ; 4 uses
  %.sroa.099.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.2100.0.copyload = load float, ptr %.sroa.2131.0..sroa_idx, align 8
  %i.bs = fsub <2 x float> %.sroa.0114.0, %.sroa.099.0.copyload ; 3 uses
  %i.bt = fsub float %.sroa.6.0, %.sroa.2100.0.copyload ; 3 uses
  %i.bu = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %shift211 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop212 = fadd <2 x float> %i.bu, %shift211
  %i.bv = extractelement <2 x float> %foldExtExtBinop212, i64 0
  %i.bw = fmul float %i.bt, %i.bt
  %i.bx = fadd float %i.bw, %i.bv                 ; 2 uses
  %i.by = fcmp ogt float %i.bx, f0x2BC80000
  br i1 %i.by, label %b3Normalize.exit, label %bb.g

b3Normalize.exit:                                 ; preds = %bb.f
  %sqrt = call float @llvm.sqrt.f32(float %i.bx)
  %i.bz = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bs, %i.cb
  %i.cd = fmul float %i.bt, %i.bz
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %b3Normalize.exit
  %.sroa.0103.0 = phi <2 x float> [ %i.cc, %b3Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.f ] ; 5 uses
  %.sroa.10.0 = phi float [ %i.cd, %b3Normalize.exit ], [ 0.000000e+00, %bb.f ] ; 5 uses
  %i.ce = call float @b3GetShapeProjectedArea(ptr noundef nonnull %i.e, <2 x float> %.sroa.0103.0, float %.sroa.10.0) #21
  %i.cf = load float, ptr %i.bi, align 4, !tbaa !642 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, %i.bf
  %i.ch = fcmp ogt float %i.bh, 0.000000e+00
  %or.cond = and i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ci = fsub float %i.bk, %i.cf
  %i.cj = fdiv float %i.ci, %i.bh                 ; 3 uses
  %i.ck = fcmp olt float %i.cj, 0.000000e+00
  %i.cl = fcmp ogt float %i.cj, 1.000000e+00
  %i.cm = select i1 %i.cl, float 1.000000e+00, float %i.cj
  %i.cn = select i1 %i.ck, float 0.000000e+00, float %i.cm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0158 = phi float [ %i.cn, %bb.h ], [ 1.000000e+00, %bb.g ]
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cp = load float, ptr %i.co, align 4, !tbaa !643
  %i.cq = fmul float %i.ce, %i.cp
  %i.cr = fmul float %.0158, %i.cq
  %i.cs = load float, ptr %i.f, align 8, !tbaa !636
  %i.ct = fmul float %i.cs, %i.cr                 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.q, align 4     ; 5 uses
  %i.cv = load <2 x float>, ptr %i.s, align 4     ; 4 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %i.cu, i64 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !357
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 3920
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !93 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 176
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !107
  %i.dd = sext i32 %i.cx to i64                   ; 2 uses
  %i.de = getelementptr inbounds [56 x i8], ptr %i.dc, i64 %i.dd ; 5 uses
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !105
  %i.dg = getelementptr inbounds [216 x i8], ptr %i.df, i64 %i.dd ; 12 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.di = load float, ptr %i.dh, align 4, !tbaa !644 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.de, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %foldExtExtBinop214 = fmul <2 x float> %.sroa.0103.0, %i.cv
  %8 = extractelement <2 x float> %foldExtExtBinop214, i64 0
  %9 = fmul float %.sroa.10.0, %.sroa.011.0.vec.extract.i.i
  %i.dj = fsub float %8, %9
  %i.dk = shufflevector <2 x float> %.sroa.0103.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.10.0, i64 1 ; 2 uses
  %i.dm = fmul <2 x float> %i.dl, %i.cu
  %i.dn = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.do = fmul <2 x float> %.sroa.0103.0, %i.dn
  %i.dp = fsub <2 x float> %i.dm, %i.do           ; 2 uses
  %i.dq = insertelement <2 x float> %i.dk, float %.sroa.10.0, i64 0
  %i.dr = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ds = fmul <2 x float> %i.dq, %i.dr
  %i.dt = fmul <2 x float> %i.dl, %i.dr
  %i.du = fadd <2 x float> %i.ds, %i.dp           ; 2 uses
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x float> %i.dv, float %i.dj, i64 0
  %i.dx = fadd <2 x float> %i.dt, %i.dw           ; 2 uses
  %i.dy = fmul <2 x float> %i.dn, %i.du
  %i.dz = shufflevector <2 x float> %i.cv, <2 x float> %i.cu, <2 x i32> <i32 0, i32 2>
  %i.ea = fmul <2 x float> %i.dz, %i.dx
  %i.eb = fsub <2 x float> %i.dy, %i.ea
  %i.ec = shufflevector <2 x float> %i.dx, <2 x float> %i.du, <2 x i32> <i32 0, i32 3>
  %i.ed = fmul <2 x float> %i.cu, %i.ec           ; 2 uses
  %shift216 = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fsub <2 x float> %i.ed, %shift216
  %i.ee = extractelement <2 x float> %foldExtExtBinop217, i64 0
  %i.ef = fmul <2 x float> %i.eb, splat (float 2.000000e+00)
  %i.eg = fadd <2 x float> %.sroa.0103.0, %i.ef
  %i.eh = fmul float %i.ee, 2.000000e+00
  %i.ei = fadd float %.sroa.10.0, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.ek, %i.eg           ; 3 uses
  %i.em = fmul float %i.ct, %i.ei                 ; 3 uses
  %i.en = insertelement <2 x float> poison, float %i.di, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.eo, %i.el
  %i.eq = fadd <2 x float> %.sroa.049.0.copyload, %i.ep
  %i.er = fmul float %i.di, %i.em
  %i.es = fadd float %.sroa.250.0.copyload, %i.er
  store <2 x float> %i.eq, ptr %i.de, align 4, !tbaa !142
  store float %i.es, ptr %.sroa.250.0..sroa_idx, align 4, !tbaa !142
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 68
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.et, align 4 ; 2 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 76
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 4 ; 2 uses
  %i.eu = load <2 x float>, ptr %i.q, align 4     ; 3 uses
  %i.ev = load <2 x float>, ptr %i.s, align 4     ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dg, i64 144
  %.sroa.0.0.copyload = load float, ptr %i.ex, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 148
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !142
  %.sroa.6.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.dg, i64 156
  %.sroa.6.0.copyload206 = load float, ptr %.sroa.6.0..sroa_idx205, align 4, !tbaa !142
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 160
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !142
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 164
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !142
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 168
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !142
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 172
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !142
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 176
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !142
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.ew, align 4 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 20 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %.sroa.25.0..sroa_idx, align 4
  %i.ey = shufflevector <2 x float> %.sroa.0114.0, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison> ; 2 uses
  %i.ez = insertelement <4 x float> %i.ey, float 1.000000e+00, i64 3
  %i.fa = insertelement <4 x float> %i.ez, float %.sroa.6.0, i64 1
  %i.fb = shufflevector <2 x float> %.sroa.035.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.fc = insertelement <4 x float> %i.fb, float 0.000000e+00, i64 3
  %i.fd = insertelement <4 x float> %i.fc, float %.sroa.236.0.copyload, i64 1 ; 2 uses
  %i.fe = fsub <4 x float> %i.fa, %i.fd           ; 2 uses
  %i.ff = shufflevector <2 x float> %.sroa.0114.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float -0.000000e+00, i64 3
  %i.fh = insertelement <4 x float> %i.fg, float %.sroa.6.0, i64 0
  %i.fi = shufflevector <2 x float> %.sroa.035.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 0.000000e+00, i64 3
  %i.fk = insertelement <4 x float> %i.fj, float %.sroa.236.0.copyload, i64 0
  %i.fl = fsub <4 x float> %i.fh, %i.fk
  %i.fm = insertelement <4 x float> %i.ey, float 0.000000e+00, i64 3
  %i.fn = insertelement <4 x float> %i.fm, float %.sroa.6.0, i64 1
  %i.fo = fsub <4 x float> %i.fn, %i.fd
  %i.fp = shufflevector <2 x float> %i.eu, <2 x float> %i.ev, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.fq = insertelement <4 x float> %i.fp, float 1.000000e+00, i64 3
  %i.fr = fmul <4 x float> %i.fl, %i.fq
  %i.fs = shufflevector <2 x float> %i.ev, <2 x float> %i.eu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ft = insertelement <4 x float> %i.fs, float 1.000000e+00, i64 3 ; 2 uses
  %i.fu = fmul <4 x float> %i.fo, %i.ft
  %i.fv = fsub <4 x float> %i.fr, %i.fu
  %i.fw = shufflevector <4 x float> %i.fe, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fx = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.fy = insertelement <4 x float> %i.fx, float 1.000000e+00, i64 3
  %i.fz = fmul <4 x float> %i.fw, %i.fy
  %i.ga = fadd <4 x float> %i.fz, %i.fv           ; 2 uses
  %i.gb = fmul <4 x float> %i.ft, %i.ga
  %i.gc = shufflevector <2 x float> %i.eu, <2 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.gd = insertelement <4 x float> %i.gc, float 0.000000e+00, i64 3
  %i.ge = shufflevector <4 x float> %i.ga, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gf = fmul <4 x float> %i.gd, %i.ge
  %i.gg = fsub <4 x float> %i.gb, %i.gf
  %i.gh = fmul <4 x float> %i.gg, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.gi = fadd <4 x float> %i.fe, %i.gh           ; 2 uses
  %i.gj = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gk = insertelement <4 x float> %i.gj, float 1.000000e+00, i64 3
  %i.gl = insertelement <4 x float> %i.gk, float %i.em, i64 0
  %i.gm = fmul <4 x float> %i.gl, %i.gi
  %i.gn = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.go = insertelement <4 x float> %i.gn, float 0.000000e+00, i64 3
  %i.gp = insertelement <4 x float> %i.go, float %i.em, i64 1
  %i.gq = shufflevector <4 x float> %i.gi, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.gr = fmul <4 x float> %i.gp, %i.gq
  %i.gs = fsub <4 x float> %i.gm, %i.gr           ; 4 uses
  %i.gt = extractelement <4 x float> %i.gs, i64 0 ; 2 uses
  %i.gu = fmul float %.sroa.0.0.copyload, %i.gt
  %i.gv = extractelement <4 x float> %i.gs, i64 1 ; 2 uses
  %i.gw = fmul float %.sroa.6.0.copyload206, %i.gv
  %i.gx = extractelement <4 x float> %i.gs, i64 2 ; 2 uses
  %i.gy = fmul float %.sroa.9.0.copyload, %i.gx
  %i.gz = shufflevector <2 x float> %.sroa.04.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ha = insertelement <4 x float> %i.gz, float %.sroa.4.0.copyload, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %.sroa.7.0.copyload, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %.sroa.10.0.copyload, i64 2
  %i.hd = fmul <4 x float> %i.hc, %i.gs           ; 3 uses
  %i.he = fmul float %.sroa.5.0.copyload, %i.gt
  %i.hf = fmul float %.sroa.8.0.copyload, %i.gv
  %i.hg = fadd float %i.he, %i.hf
  %i.hh = fmul float %.sroa.11.0.copyload, %i.gx
  %i.hi = fadd float %i.hh, %i.hg
  %i.hj = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hk = insertelement <2 x float> %i.hj, float %i.gu, i64 0
  %i.hl = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hm = insertelement <2 x float> %i.hl, float %i.gw, i64 0
  %i.hn = fadd <2 x float> %i.hk, %i.hm
  %i.ho = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.hp = insertelement <2 x float> %i.ho, float %i.gy, i64 0
  %i.hq = fadd <2 x float> %i.hp, %i.hn
  %i.hr = fadd <2 x float> %.sroa.04.0.copyload, %i.hq
  %i.hs = fadd float %.sroa.25.0.copyload, %i.hi
  store <2 x float> %i.hr, ptr %i.ew, align 4, !tbaa !142
  store float %i.hs, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !142
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret i1 true
}

; Function Attrs: nounwind uwtable
define void @b3World_RebuildStaticTree(i32 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.b3RecArgs_WorldRebuildStaticTree, align 4 ; 4 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4768 x i8], ptr @b3_worlds, i64 %i.b ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !76, !range !77, !noundef !78
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.c, i64 -4768
  %i.h = icmp eq ptr %i.g, null
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 -32
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !202 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 %0, ptr %1, align 4, !tbaa !203
  call void @b3RecWrite_WorldRebuildStaticTree(ptr noundef nonnull %i.k, ptr noundef nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %i.c, i64 -3968
  %i.m = call i32 @b3DynamicTree_Rebuild(ptr noundef nonnull %i.l, i1 noundef zeroext true) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b3RecWrite_WorldRebuildStaticTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @b3DynamicTree_Rebuild(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3World_EnableSpeculative(i32 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
end_hunk_0
