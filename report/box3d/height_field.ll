Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/height_field?download=true
inline.NumInlined: 203
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeCastHeightField:bb.a
  %i.sv = fmul float %i.bv, %.1
  %i.sw = fadd float %i.ci, %i.sv
  %i.sx = fsub float %i.sw, %i.hx
  %i.sy = fdiv float %i.sx, %.sroa.11596.0.copyload
  %i.sz = call float @llvm.floor.f32(float %i.sy)
  %i.ta = fptosi float %i.sz to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.1649 = phi i32 [ %i.ta, %bb.am ], [ %.0641.ph, %bb.al ]
  %i.tb = fadd float %i.hy, %.1
  br label %bb.l

bb.ao:                                            ; preds = %bb.aj
  %i.tc = icmp eq i32 %.0641.ph, %i.cv
  br i1 %i.tc, label %.loopexit1136, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.td = add nsw i32 %.0641.ph, %.0637           ; 2 uses
  br i1 %i.hs, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.te = fmul float %i.cg, %.1634.ph
  %i.tf = fadd float %i.ch, %i.te
  %i.tg = fsub float %i.tf, %i.hw
  %i.th = fdiv float %i.tg, %.sroa.0588.0.copyload
  %i.ti = call float @llvm.floor.f32(float %i.th)
  %i.tj = fptosi float %i.ti to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.1645 = phi i32 [ %i.tj, %bb.aq ], [ %.0638, %bb.ap ]
  %i.tk = fadd float %i.hv, %.1634.ph
  br label %.outer

.loopexit1136:                                    ; preds = %bb.ao, %bb.ak, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.as

bb.as:                                            ; preds = %b3MakeAABB.exit, %.loopexit1136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare zeroext i1 @b3RayCastAABB(ptr noundef byval(%struct.b3AABB) align 8, <2 x float>, float, <2 x float>, float, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

declare float @b3IntersectRayTriangle(<4 x float> noundef, <4 x float> noundef, <4 x float> noundef, <4 x float> noundef, <4 x float> noundef) local_unnamed_addr #2

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @b3OverlapHeightField(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [128 x %struct.b3Vec3], align 16    ; 3 uses
  %4 = alloca %struct.b3ShapeProxy, align 8       ; 6 uses
  %5 = alloca %struct.b3AABB, align 16            ; 7 uses
  %6 = alloca %struct.b3DistanceInput, align 8    ; 11 uses
  %7 = alloca %struct.b3SimplexCache, align 4     ; 6 uses
  %8 = alloca [3 x %struct.b3Vec3], align 16      ; 9 uses
  %9 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  %10 = alloca [3 x %struct.b3Vec3], align 16     ; 9 uses
  %11 = alloca %struct.b3DistanceOutput, align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = call { ptr, i64 } @b3MakeLocalProxy(ptr noundef %2, ptr noundef nonnull byval(%struct.b3Transform) align 8 %1, ptr noundef nonnull %3) #14 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  store ptr %i.b, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  store i64 %i.d, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @b3ComputeProxyAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef nonnull %4) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.044.0.copyload = load float, ptr %i.e, align 8, !tbaa !21
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = load <4 x float>, ptr %i.f, align 8, !tbaa !21 ; 3 uses
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.j = insertelement <2 x float> poison, float %.sroa.546.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x float> %i.i, %i.k
  %i.m = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i32>     ; 2 uses
  %i.o = load <4 x float>, ptr %5, align 16, !tbaa !21
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.q = insertelement <2 x float> poison, float %.sroa.044.0.copyload, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r              ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = call float @llvm.floor.f32(float %i.t)
  %i.v = fptosi float %i.u to i32                 ; 3 uses
  %i.w = extractelement <2 x float> %i.s, i64 1
  %i.x = call float @llvm.floor.f32(float %i.w)
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %i.z = load <4 x float>, ptr %5, align 16
  %i.aa = insertelement <4 x float> %i.h, float 0.000000e+00, i64 1
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.val77 = load double, ptr %i.g, align 4, !tbaa !41
  %i.ac = insertelement <2 x double> poison, double %.val77, i64 0
  %i.ad = bitcast <2 x double> %i.ac to <4 x float>
  %i.ae = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.h, <4 x i32> <i32 7, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ag = fadd <4 x float> %i.ab, %i.af
  %i.ah = fmul <4 x float> %i.ag, splat (float 5.000000e-01) ; 3 uses
  %i.ai = fsub <4 x float> %i.af, %i.ah           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !48
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !49
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i8 1, ptr %i.al, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.am = extractelement <2 x i32> %i.n, i64 0    ; 2 uses
  %i.an = extractelement <2 x i32> %i.n, i64 1    ; 2 uses
  %.not112.not = icmp sgt i32 %i.am, %i.an
  br i1 %.not112.not, label %.critedge69, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not66110 = icmp sgt i32 %i.v, %i.y
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.5101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.6.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 36
  %.sroa.5.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.694.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.6.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 36
  %.not66110.fr = freeze i1 %.not66110
  br i1 %.not66110.fr, label %.critedge69, label %.lr.ph116.split.preheader

.lr.ph116.split.preheader:                        ; preds = %.lr.ph116
  %smax = call i32 @llvm.smax.i32(i32 %i.v, i32 %i.y)
  br label %.lr.ph116.split

.lr.ph116.split:                                  ; preds = %.lr.ph116.split.preheader, %.critedge
  %.063113 = phi i32 [ %i.eo, %.critedge ], [ %i.am, %.lr.ph116.split.preheader ] ; 8 uses
  %i.bc = icmp slt i32 %.063113, 0
  br i1 %i.bc, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph116.split
  %i.bd = load i32, ptr %i.ao, align 8, !tbaa !24
  %i.be = add nsw i32 %i.bd, -1
  %.not65 = icmp sgt i32 %i.be, %.063113
  br i1 %.not65, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.bf = add nuw nsw i32 %.063113, 1             ; 2 uses
  %i.bg = uitofp nneg i32 %.063113 to float
  %i.bh = uitofp nneg i32 %i.bf to float
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.j
  %.056111 = phi i32 [ %i.v, %.preheader ], [ %i.en, %bb.j ] ; 9 uses
  %i.bi = icmp slt i32 %.056111, 0
  br i1 %i.bi, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = load i32, ptr %i.ap, align 4, !tbaa !23 ; 3 uses
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  %.not67 = icmp sgt i32 %i.bk, %.056111
  br i1 %.not67, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bl = mul nuw nsw i32 %i.bk, %.063113
  %i.bm = add nuw nsw i32 %i.bl, %.056111
  %i.bn = load i32, ptr %i.aq, align 8, !tbaa !26
  %i.bo = sext i32 %i.bn to i64
  %i.bp = add nsw i64 %i.bo, %i.ar
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !41
  %i.bu = icmp eq i8 %i.bt, -1
  br i1 %i.bu, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = mul nuw nsw i32 %i.bj, %.063113
  %i.bw = add nuw nsw i32 %i.bv, %.056111
  %i.bx = mul nuw nsw i32 %i.bj, %i.bf
  %i.by = add nuw nsw i32 %i.bx, %.056111
  %i.bz = load float, ptr %i.as, align 4, !tbaa !34 ; 3 uses
  %i.ca = load float, ptr %i.at, align 4, !tbaa !33
  %i.cb = load i32, ptr %i.au, align 4, !tbaa !25
  %i.cc = sext i32 %i.cb to i64
  %i.cd = add nsw i64 %i.cc, %i.ar
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %12 = zext nneg i32 %i.bw to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %12
  %13 = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %13
  %i.ch = load <2 x i16>, ptr %i.cf, align 2, !tbaa !36
  %i.ci = load <2 x i16>, ptr %i.cg, align 2, !tbaa !36
  %i.cj = shufflevector <2 x i16> %i.ch, <2 x i16> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ck = uitofp <4 x i16> %i.cj to <4 x float>
  %i.cl = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fmul <4 x float> %i.cm, %i.ck           ; 3 uses
  %i.co = extractelement <4 x float> %i.cn, i64 0
  %i.cp = fadd float %i.bz, %i.co
  %i.cq = extractelement <4 x float> %i.cn, i64 1
  %i.cr = fadd float %i.bz, %i.cq
  %i.cs = uitofp nneg i32 %.056111 to float
  %i.ct = add nuw nsw i32 %.056111, 1
  %i.cu = uitofp nneg i32 %i.ct to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.e, align 8 ; 3 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0 ; 2 uses
  %i.cv = fmul float %.sroa.06.0.vec.extract.i.i, %i.cs
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.cv, i64 0 ; 2 uses
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 1 ; 2 uses
  %i.cw = fmul float %i.cp, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i.i, float %i.cw, i64 1 ; 2 uses
  %i.cx = fmul float %.sroa.7.0.copyload.i, %i.bg ; 4 uses
  %i.cy = fmul float %.sroa.06.0.vec.extract.i.i, %i.cu ; 2 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.cz = fmul float %i.cr, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i101.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.cz, i64 1 ; 3 uses
  %i.da = fmul float %.sroa.7.0.copyload.i, %i.bh ; 4 uses
  %i.db = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.de = fadd <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %.sroa.047.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = fmul <2 x float> %i.df, %i.de           ; 2 uses
  %i.dh = shufflevector <2 x float> %.sroa.08.0.vec.insert.i.i, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.di = insertelement <2 x float> %i.dg, float %i.cy, i64 0 ; 2 uses
  %i.dj = bitcast <2 x float> %.sroa.08.4.vec.insert.i.i to double
  %i.dk = bitcast <2 x float> %.sroa.08.4.vec.insert.i101.i to double
  %i.dl = bitcast <2 x float> %i.dh to double
  %i.dm = bitcast <2 x float> %i.di to double
  %i.dn = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.do = bitcast <2 x double> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cx, i64 0 ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dr = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ds = bitcast <2 x double> %i.dr to <4 x float>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.du = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dv = bitcast <2 x double> %i.du to <4 x float>
  %i.dw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.da, i64 0 ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dy = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dz = bitcast <2 x double> %i.dy to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eb = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ah, <4 x float> noundef %i.ai, <4 x float> noundef %i.dq, <4 x float> noundef %i.dx, <4 x float> noundef %i.dt) #14
  br i1 %i.eb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> %.sroa.08.4.vec.insert.i.i, ptr %8, align 16
  store float %i.cx, ptr %.sroa.5101.0..sroa_idx102, align 8, !tbaa !21
  store <2 x float> %i.dh, ptr %i.av, align 4
  store float %i.da, ptr %.sroa.6.0..sroa_idx87, align 4, !tbaa !21
  store <2 x float> %.sroa.08.4.vec.insert.i101.i, ptr %i.aw, align 8
  store float %i.cx, ptr %.sroa.694.0..sroa_idx95, align 16, !tbaa !21
  store ptr %8, ptr %6, align 8, !tbaa !44
  store i32 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.ax, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #14
  %i.ec = call float @b3GetLengthUnitsPerMeter() #14
  %i.ed = fmul float %i.ec, 5.000000e-03
  %i.ee = fmul float %i.ed, 1.000000e-01
  %i.ef = load float, ptr %i.ay, align 4, !tbaa !55
  %i.eg = fcmp uge float %i.ef, %i.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %i.eg, label %bb.h, label %.critedge69

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.eh = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ah, <4 x float> noundef %i.ai, <4 x float> noundef %i.dx, <4 x float> noundef %i.ea, <4 x float> noundef %i.dt) #14
  br i1 %i.eh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <2 x float> %i.di, ptr %10, align 16
  store float %i.da, ptr %.sroa.5.0..sroa_idx82, align 8, !tbaa !21
  store <2 x float> %.sroa.08.4.vec.insert.i101.i, ptr %i.az, align 4
  store float %i.cx, ptr %.sroa.694.0..sroa_idx97, align 4, !tbaa !21
  store <2 x float> %i.dh, ptr %i.ba, align 8
  store float %i.da, ptr %.sroa.6.0..sroa_idx89, align 16, !tbaa !21
  store ptr %10, ptr %6, align 8, !tbaa !44
  store i32 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.ax, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %11, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #14
  %i.ei = call float @b3GetLengthUnitsPerMeter() #14
  %i.ej = fmul float %i.ei, 5.000000e-03
  %i.ek = fmul float %i.ej, 1.000000e-01
  %i.el = load float, ptr %i.bb, align 4, !tbaa !55
  %i.em = fcmp uge float %i.el, %i.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br i1 %i.em, label %bb.j, label %.critedge69

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.c, %bb.d
  %i.en = add i32 %.056111, 1
  %exitcond.not = icmp eq i32 %.056111, %smax
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !104

.critedge:                                        ; preds = %bb.j, %.lr.ph116.split, %bb.b
  %i.eo = add i32 %.063113, 1
  %exitcond119.not = icmp eq i32 %.063113, %i.an
  br i1 %exitcond119.not, label %.critedge69, label %.lr.ph116.split, !llvm.loop !105

.critedge69:                                      ; preds = %.critedge, %bb.g, %bb.i, %.lr.ph116, %bb.a
  %.not109 = phi i1 [ false, %.lr.ph116 ], [ true, %bb.g ], [ false, %bb.a ], [ true, %bb.i ], [ false, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 %.not109
}

declare { ptr, i64 } @b3MakeLocalProxy(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare void @b3ComputeProxyAABB(ptr dead_on_unwind writable sret(%struct.b3AABB) align 4, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef, <4 x float> noundef, <4 x float> noundef, <4 x float> noundef, <4 x float> noundef) local_unnamed_addr #2

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3QueryHeightField(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0126.0.copyload = load float, ptr %i.a, align 8, !tbaa !21
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.5128.0.copyload = load float, ptr %.sroa.5128.0..sroa_idx, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !111 ; 2 uses
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.f, i64 1
  %i.i = insertelement <2 x float> poison, float %.sroa.5128.0.copyload, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x float> %i.h, %i.j
  %i.l = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.k)
  %i.m = fptosi <2 x float> %i.l to <2 x i32>     ; 2 uses
  %i.n = load float, ptr %1, align 8, !tbaa !112  ; 2 uses
  %i.o = load float, ptr %i.d, align 4, !tbaa !113 ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.n, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1
  %i.r = insertelement <2 x float> poison, float %.sroa.0126.0.copyload, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x float> %i.q, %i.s
  %i.u = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fptosi float %i.v to i32                 ; 3 uses
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %i.z = extractelement <2 x i32> %i.m, i64 0     ; 2 uses
  %i.aa = extractelement <2 x i32> %i.m, i64 1    ; 2 uses
  %.not214 = icmp sgt i32 %i.z, %i.aa
  br i1 %.not214, label %._crit_edge, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not148212 = icmp sgt i32 %i.w, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load float, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not148212.fr = freeze i1 %.not148212
  br i1 %.not148212.fr, label %._crit_edge, label %.lr.ph217.split.preheader

.lr.ph217.split.preheader:                        ; preds = %.lr.ph217
  %smax = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  br label %.lr.ph217.split

._crit_edge:                                      ; preds = %..loopexit_crit_edge, %.lr.ph217, %bb.a
  ret void

.lr.ph217.split:                                  ; preds = %.lr.ph217.split.preheader, %..loopexit_crit_edge
  %.0215 = phi i32 [ %i.ec, %..loopexit_crit_edge ], [ %i.z, %.lr.ph217.split.preheader ] ; 8 uses
  %i.an = icmp slt i32 %.0215, 0
  br i1 %i.an, label %..loopexit_crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph217.split
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !24
  %i.ap = add nsw i32 %i.ao, -1
  %.not147 = icmp sgt i32 %i.ap, %.0215
  br i1 %.not147, label %.preheader, label %..loopexit_crit_edge

.preheader:                                       ; preds = %bb.b
  %i.aq = add nuw nsw i32 %.0215, 1               ; 2 uses
  %i.ar = uitofp nneg i32 %.0215 to float
  %i.as = uitofp nneg i32 %i.aq to float
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %b3AABB_Overlaps.exit.thread
  %.0145213 = phi i32 [ %i.w, %.preheader ], [ %i.eb, %b3AABB_Overlaps.exit.thread ] ; 9 uses
  %i.at = icmp slt i32 %.0145213, 0
  br i1 %i.at, label %b3AABB_Overlaps.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = load i32, ptr %i.ac, align 4, !tbaa !23 ; 3 uses
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %.not149 = icmp sgt i32 %i.av, %.0145213
  br i1 %.not149, label %bb.e, label %b3AABB_Overlaps.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aw = mul nuw nsw i32 %i.av, %.0215
  %i.ax = add nuw nsw i32 %i.aw, %.0145213        ; 2 uses
  %i.ay = load i32, ptr %i.ad, align 8, !tbaa !26
  %i.az = sext i32 %i.ay to i64
  %i.ba = add nsw i64 %i.az, %i.ae
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = zext nneg i32 %i.ax to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !41
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %b3AABB_Overlaps.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = mul nuw nsw i32 %i.au, %.0215
  %i.bh = add nuw nsw i32 %i.bg, %.0145213
  %i.bi = mul nuw nsw i32 %i.au, %i.aq
  %i.bj = add nuw nsw i32 %i.bi, %.0145213
  %i.bk = load float, ptr %i.af, align 4, !tbaa !34
  %i.bl = load float, ptr %i.ag, align 4, !tbaa !33
  %i.bm = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bn, %i.ae
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %4 = zext nneg i32 %i.bh to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %4
  %5 = zext nneg i32 %i.bj to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %5
  %i.bs = uitofp nneg i32 %.0145213 to float
  %i.bt = add nuw nsw i32 %.0145213, 1
  %i.bu = uitofp nneg i32 %i.bt to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.5128.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0 ; 2 uses
  %i.bv = fmul float %.sroa.06.0.vec.extract.i.i, %i.bs ; 6 uses
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bw = fmul float %.sroa.7.0.copyload.i, %i.ar ; 10 uses
  %i.bx = fmul float %.sroa.06.0.vec.extract.i.i, %i.bu ; 6 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.by = fmul float %.sroa.7.0.copyload.i, %i.as ; 10 uses
  %i.bz = fcmp olt float %i.bv, %i.bx
  %i.ca = select i1 %i.bz, float %i.bv, float %i.bx
  %i.cb = fcmp olt float %i.bw, %i.by
  %i.cc = select i1 %i.cb, float %i.bw, float %i.by
  %i.cd = fcmp ogt float %i.bv, %i.bx
  %i.ce = select i1 %i.cd, float %i.bv, float %i.bx
  %i.cf = load <2 x i16>, ptr %i.bq, align 2, !tbaa !36 ; 2 uses
  %i.cg = load <2 x i16>, ptr %i.br, align 2, !tbaa !36 ; 2 uses
  %i.ch = shufflevector <2 x i16> %i.cf, <2 x i16> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.ci = uitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fmul <2 x float> %i.ck, %i.ci
  %i.cm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fadd <2 x float> %i.cn, %i.cl
  %i.cp = shufflevector <2 x i16> %i.cf, <2 x i16> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.cq = uitofp <2 x i16> %i.cp to <2 x float>
  %i.cr = fmul <2 x float> %i.ck, %i.cq
  %i.cs = fadd <2 x float> %i.cn, %i.cr
  %i.ct = shufflevector <2 x float> %.sroa.047.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cu = fmul <2 x float> %i.co, %i.ct           ; 6 uses
  %i.cv = shufflevector <2 x float> %.sroa.08.0.vec.insert.i.i, <2 x float> %i.cu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cw = fmul <2 x float> %i.cs, %i.ct           ; 6 uses
  %i.cx = shufflevector <2 x float> %.sroa.08.0.vec.insert.i99.i, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.cy = insertelement <2 x float> %i.cu, float %i.bv, i64 0 ; 4 uses
  %i.cz = insertelement <2 x float> %i.cw, float %i.bx, i64 0 ; 2 uses
  %i.da = fcmp olt <2 x float> %i.cu, %i.cw
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cu, <2 x float> %i.cw ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0 ; 2 uses
  %i.dd = extractelement <2 x float> %i.db, i64 1 ; 2 uses
  %i.de = fcmp olt float %i.dc, %i.dd
  %i.df = select i1 %i.de, float %i.dc, float %i.dd
  %i.dg = fcmp ogt <2 x float> %i.cu, %i.cw
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.cu, <2 x float> %i.cw ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dk = fcmp ogt float %i.di, %i.dj
  %i.dl = select i1 %i.dk, float %i.di, float %i.dj
  %i.dm = fcmp ogt float %i.bw, %i.by
  %i.dn = select i1 %i.dm, float %i.bw, float %i.by
  %i.do = fcmp uge float %i.o, %i.ca
  %i.dp = fcmp ule float %i.n, %i.ce
  %or.cond.not211 = select i1 %i.do, i1 %i.dp, i1 false
  %i.dq = fcmp uge float %i.aj, %i.df
  %or.cond197.not208 = select i1 %or.cond.not211, i1 %i.dq, i1 false
  %i.dr = fcmp ule float %i.al, %i.dl
  %or.cond200.not206 = select i1 %or.cond197.not208, i1 %i.dr, i1 false
  %i.ds = fcmp uge float %i.f, %i.cc
  %or.cond201.not204 = select i1 %or.cond200.not206, i1 %i.ds, i1 false
  %i.dt = fcmp ule float %i.c, %i.dn
  %or.cond202 = select i1 %or.cond201.not204, i1 %i.dt, i1 false
  br i1 %or.cond202, label %bb.g, label %b3AABB_Overlaps.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.du = shl nuw nsw i32 %i.ax, 1                ; 3 uses
  %i.dv = load i8, ptr %i.am, align 8, !tbaa !31
  %.not150 = icmp eq i8 %i.dv, 0
  %i.dw = or disjoint i32 %i.du, 1                ; 2 uses
  br i1 %.not150, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dx = tail call zeroext i1 %2(<2 x float> %i.cv, float %i.bw, <2 x float> %i.cx, float %i.bw, <2 x float> %i.cy, float %i.by, i32 noundef %i.du, ptr noundef %3) #14 ; 0 uses
  %i.dy = tail call zeroext i1 %2(<2 x float> %i.cz, float %i.by, <2 x float> %i.cy, float %i.by, <2 x float> %i.cx, float %i.bw, i32 noundef %i.dw, ptr noundef %3) #14 ; 0 uses
  br label %b3AABB_Overlaps.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.dz = tail call zeroext i1 %2(<2 x float> %i.cv, float %i.bw, <2 x float> %i.cy, float %i.by, <2 x float> %i.cx, float %i.bw, i32 noundef %i.du, ptr noundef %3) #14 ; 0 uses
  %i.ea = tail call zeroext i1 %2(<2 x float> %i.cz, float %i.by, <2 x float> %i.cx, float %i.bw, <2 x float> %i.cy, float %i.by, i32 noundef %i.dw, ptr noundef %3) #14 ; 0 uses
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.f, %bb.i, %bb.h, %bb.e, %bb.c, %bb.d
  %i.eb = add i32 %.0145213, 1
  %exitcond.not = icmp eq i32 %.0145213, %smax
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.c, !llvm.loop !108

..loopexit_crit_edge:                             ; preds = %b3AABB_Overlaps.exit.thread, %.lr.ph217.split, %bb.b
  %i.ec = add i32 %.0215, 1
  %exitcond219.not = icmp eq i32 %.0215, %i.aa
  br i1 %exitcond219.not, label %._crit_edge, label %.lr.ph217.split, !llvm.loop !109
}

; Function Attrs: nounwind uwtable
define hidden i32 @b3CollideMoverAndHeightField(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %5 = alloca %struct.b3SimplexCache, align 4     ; 6 uses
  %6 = alloca [3 x %struct.b3Vec3], align 16      ; 10 uses
  %7 = alloca %struct.b3DistanceOutput, align 4   ; 7 uses
  %8 = alloca [3 x %struct.b3Vec3], align 16      ; 10 uses
  %9 = alloca %struct.b3DistanceOutput, align 4   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !44
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 2, ptr %.sroa.2125.0..sroa_idx, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.0118.0.copyload = load <2 x float>, ptr %3, align 4 ; 3 uses
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2119.0.copyload = load float, ptr %.sroa.2119.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0116.0.copyload = load <2 x float>, ptr %i.e, align 4 ; 3 uses
  %.sroa.2117.0..sroa_idx = getelementptr i8, ptr %3, i64 20
  %.sroa.2117.0.copyload = load float, ptr %.sroa.2117.0..sroa_idx, align 4 ; 2 uses
  %.sroa.011.4.vec.extract.i = extractelement <2 x float> %.sroa.0118.0.copyload, i64 1
  %i.f = fmul float %.sroa.011.4.vec.extract.i, 5.000000e-01
  %.sroa.08.4.vec.extract.i = extractelement <2 x float> %.sroa.0116.0.copyload, i64 1
  %i.g = fmul float %.sroa.08.4.vec.extract.i, 5.000000e-01
  %i.h = fadd float %i.f, %i.g                    ; 2 uses
  %i.i = shufflevector <2 x float> %.sroa.0118.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.j = insertelement <2 x float> %i.i, float %.sroa.2119.0.copyload, i64 0
  %i.k = fmul <2 x float> %i.j, splat (float 5.000000e-01)
  %i.l = shufflevector <2 x float> %.sroa.0116.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x float> %i.l, float %.sroa.2117.0.copyload, i64 0
  %i.n = fmul <2 x float> %i.m, splat (float 5.000000e-01)
  %i.o = fadd <2 x float> %i.k, %i.n              ; 2 uses
  %i.p = bitcast <2 x float> %.sroa.0118.0.copyload to double
  %i.q = insertelement <2 x double> poison, double %i.p, i64 0
  %i.r = bitcast <2 x double> %i.q to <4 x float>
  %i.s = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.2119.0.copyload, i64 0
  %i.t = shufflevector <4 x float> %i.r, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.u = bitcast <2 x float> %.sroa.0116.0.copyload to double
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = bitcast <2 x double> %i.v to <4 x float>
  %i.x = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.2117.0.copyload, i64 0
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.z = insertelement <4 x float> poison, float %i.d, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.t, <4 x float> %i.y)
  %i.ac = fsub <4 x float> %i.ab, %i.aa           ; 3 uses
  %i.ad = tail call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %i.y)
  %i.ae = fadd <4 x float> %i.aa, %i.ad           ; 4 uses
  %i.af = fadd <4 x float> %i.ac, %i.ae
  %i.ag = fmul <4 x float> %i.af, splat (float 5.000000e-01) ; 3 uses
  %i.ah = fsub <4 x float> %i.ae, %i.ag           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.sroa.087.0.copyload = load float, ptr %i.ai, align 8, !tbaa !21
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %.sroa.590.0.copyload = load float, ptr %.sroa.590.0..sroa_idx, align 8, !tbaa !21
  %i.aj = shufflevector <4 x float> %i.ac, <4 x float> %i.ae, <2 x i32> <i32 2, i32 6>
  %i.ak = insertelement <2 x float> poison, float %.sroa.590.0.copyload, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x float> %i.aj, %i.al
  %i.an = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.am)
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 2 uses
  %i.ap = shufflevector <4 x float> %i.ac, <4 x float> %i.ae, <2 x i32> <i32 0, i32 4>
  %i.aq = insertelement <2 x float> poison, float %.sroa.087.0.copyload, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x float> %i.ap, %i.ar           ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = tail call float @llvm.floor.f32(float %i.at)
  %i.av = fptosi float %i.au to i32               ; 3 uses
  %i.aw = extractelement <2 x float> %i.as, i64 1
  %i.ax = tail call float @llvm.floor.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !31
  %.not = icmp eq i8 %i.ba, 0
  %i.bb = extractelement <2 x i32> %i.ao, i64 0   ; 2 uses
  %i.bc = extractelement <2 x i32> %i.ao, i64 1   ; 2 uses
  %.not187301 = icmp sgt i32 %i.bb, %i.bc
  br i1 %.not187301, label %.thread289, label %.lr.ph306

.lr.ph306:                                        ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not189296 = icmp sgt i32 %i.av, %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bg = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.6254.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.10.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.10246.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.6.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.10246.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.10.0..sroa_idx236 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.not189296.fr = freeze i1 %.not189296
  br i1 %.not189296.fr, label %.thread289, label %.lr.ph306.split.preheader

.lr.ph306.split.preheader:                        ; preds = %.lr.ph306
  %smax = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %i.ay)
  br label %.lr.ph306.split

.lr.ph306.split:                                  ; preds = %.lr.ph306.split.preheader, %..loopexit_crit_edge
  %.0149304 = phi i32 [ %.17166, %..loopexit_crit_edge ], [ 0, %.lr.ph306.split.preheader ] ; 3 uses
  %.0168302 = phi i32 [ %i.ht, %..loopexit_crit_edge ], [ %i.bb, %.lr.ph306.split.preheader ] ; 8 uses
  %i.bt = icmp slt i32 %.0168302, 0
  br i1 %i.bt, label %..loopexit_crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph306.split
  %i.bu = load i32, ptr %i.bd, align 8, !tbaa !24
  %i.bv = add nsw i32 %i.bu, -1
  %.not188 = icmp sgt i32 %i.bv, %.0168302
  br i1 %.not188, label %.preheader, label %..loopexit_crit_edge

.preheader:                                       ; preds = %bb.b
  %i.bw = add nuw nsw i32 %.0168302, 1            ; 2 uses
  %i.bx = uitofp nneg i32 %.0168302 to float
  %i.by = uitofp nneg i32 %i.bw to float
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.thread284
  %.1150298 = phi i32 [ %.0149304, %.preheader ], [ %.15164, %.thread284 ] ; 8 uses
  %.0180297 = phi i32 [ %i.av, %.preheader ], [ %i.hs, %.thread284 ] ; 9 uses
  %i.bz = icmp slt i32 %.0180297, 0
  br i1 %i.bz, label %.thread284, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = load i32, ptr %i.be, align 4, !tbaa !23 ; 3 uses
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  %.not190 = icmp sgt i32 %i.cb, %.0180297
  br i1 %.not190, label %bb.e, label %.thread284

bb.e:                                             ; preds = %bb.d
  %i.cc = mul nuw nsw i32 %i.cb, %.0168302
  %i.cd = add nuw nsw i32 %i.cc, %.0180297        ; 3 uses
  %i.ce = load i32, ptr %i.bf, align 8, !tbaa !26
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add nsw i64 %i.cf, %i.bg
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = zext nneg i32 %i.cd to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !41  ; 2 uses
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = icmp eq i8 %i.ck, -1
  br i1 %i.cm, label %.thread284, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = mul nuw nsw i32 %i.ca, %.0168302
  %i.co = add nuw nsw i32 %i.cn, %.0180297
  %i.cp = mul nuw nsw i32 %i.ca, %i.bw
  %i.cq = add nuw nsw i32 %i.cp, %.0180297
  %i.cr = load float, ptr %i.bh, align 4, !tbaa !34
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !33
  %i.ct = load i32, ptr %i.bj, align 4, !tbaa !25
  %i.cu = sext i32 %i.ct to i64
  %i.cv = add nsw i64 %i.cu, %i.bg
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %10 = zext nneg i32 %i.co to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %10
  %11 = zext nneg i32 %i.cq to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %11
  %i.cz = load <2 x i16>, ptr %i.cx, align 2, !tbaa !36
  %i.da = load <2 x i16>, ptr %i.cy, align 2, !tbaa !36
  %i.db = shufflevector <2 x i16> %i.cz, <2 x i16> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = uitofp <4 x i16> %i.db to <4 x float>
  %i.dd = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = fmul <4 x float> %i.de, %i.dc
  %i.dg = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fadd <4 x float> %i.dh, %i.df           ; 4 uses
  %i.dj = uitofp nneg i32 %.0180297 to float
  %i.dk = add nuw nsw i32 %.0180297, 1
  %i.dl = uitofp nneg i32 %i.dk to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.ai, align 8 ; 3 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.590.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 1 ; 3 uses
  %i.dm = fmul float %.sroa.7.0.copyload.i, %i.bx ; 7 uses
  %i.dn = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.di, <2 x i32> <i32 0, i32 4>
  %i.dp = fmul <2 x float> %.sroa.047.0.copyload.i, %i.do ; 7 uses
  %i.dq = extractelement <4 x float> %i.di, i64 1
  %i.dr = fmul float %i.dq, %.sroa.06.4.vec.extract.i.i
  %i.ds = extractelement <4 x float> %i.di, i64 2
  %i.dt = fmul float %.sroa.06.4.vec.extract.i.i, %i.ds
  %.sroa.08.4.vec.insert.i107.i = insertelement <2 x float> %i.dp, float %i.dt, i64 1 ; 2 uses
  %i.du = fmul float %.sroa.06.0.vec.extract.i.i, %i.dl ; 3 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.du, i64 0 ; 2 uses
  %.sroa.08.4.vec.insert.i101.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.dr, i64 1 ; 2 uses
  %i.dv = fmul float %.sroa.7.0.copyload.i, %i.by ; 7 uses
  %i.dw = extractelement <4 x float> %i.di, i64 3
  %i.dx = fmul float %.sroa.06.4.vec.extract.i.i, %i.dw ; 3 uses
  %.sroa.08.4.vec.insert.i113.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.dx, i64 1 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.10246.0 = phi float [ %i.dm, %bb.f ], [ %i.dv, %bb.g ] ; 5 uses
  %.sroa.0240.0 = phi <2 x float> [ %.sroa.08.4.vec.insert.i101.i, %bb.f ], [ %.sroa.08.4.vec.insert.i107.i, %bb.g ] ; 5 uses
  %.sroa.10.0 = phi float [ %i.dv, %bb.f ], [ %i.dm, %bb.g ] ; 5 uses
  %.sroa.0223.0 = phi <2 x float> [ %.sroa.08.4.vec.insert.i107.i, %bb.f ], [ %.sroa.08.4.vec.insert.i101.i, %bb.g ] ; 5 uses
  %i.dy = bitcast <2 x float> %i.dp to double
  %i.dz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ea = bitcast <2 x double> %i.dz to <4 x float>
  %i.eb = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dm, i64 0
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ed = bitcast <2 x float> %.sroa.0240.0 to double
  %i.ee = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ef = bitcast <2 x double> %i.ee to <4 x float>
  %i.eg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.10246.0, i64 0
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ei = bitcast <2 x float> %.sroa.0223.0 to double
  %i.ej = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ek = bitcast <2 x double> %i.ej to <4 x float>
  %i.el = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.10.0, i64 0
  %i.em = shufflevector <4 x float> %i.ek, <4 x float> %i.el, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.en = bitcast <2 x float> %.sroa.08.4.vec.insert.i113.i to double
  %i.eo = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ep = bitcast <2 x double> %i.eo to <4 x float>
  %i.eq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dv, i64 0
  %i.er = shufflevector <4 x float> %i.ep, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.es = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ag, <4 x float> noundef %i.ah, <4 x float> noundef %i.ec, <4 x float> noundef %i.em, <4 x float> noundef %i.eh) #14
  br i1 %i.es, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.et = extractelement <2 x float> %i.dp, i64 1
  %i.eu = fsub float %i.h, %i.et
  %i.ev = fsub float %.sroa.10.0, %i.dm           ; 2 uses
  %i.ew = fsub <2 x float> %.sroa.0240.0, %i.dp   ; 3 uses
  %i.ex = fsub float %.sroa.10246.0, %i.dm        ; 2 uses
  %i.ey = extractelement <2 x float> %i.ew, i64 0
  %i.ez = fmul float %i.ev, %i.ey
  %i.fa = fsub <2 x float> %.sroa.0223.0, %i.dp   ; 3 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = fmul float %i.ex, %i.fb
  %i.fd = fsub float %i.ez, %i.fc
  %i.fe = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.ex, i64 1
  %i.fg = fmul <2 x float> %i.ff, %i.fa
  %i.fh = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ev, i64 1
  %i.fj = fmul <2 x float> %i.fi, %i.ew
  %i.fk = fsub <2 x float> %i.fg, %i.fj
  %i.fl = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.fn = fsub <2 x float> %i.o, %i.fm
  %i.fo = fmul float %i.eu, %i.fd
  %i.fp = fmul <2 x float> %i.fn, %i.fk           ; 2 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1
  %i.fr = fadd float %i.fq, %i.fo
  %i.fs = extractelement <2 x float> %i.fp, i64 0
  %i.ft = fadd float %i.fs, %i.fr
  %i.fu = fcmp ult float %i.ft, 0.000000e+00
  br i1 %i.fu, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <2 x float> %i.dp, ptr %6, align 16
  store float %i.dm, ptr %.sroa.6254.0..sroa_idx255, align 8, !tbaa !21
  store <2 x float> %.sroa.0223.0, ptr %i.bk, align 4
  store float %.sroa.10.0, ptr %.sroa.10.0..sroa_idx234, align 4, !tbaa !21
  store <2 x float> %.sroa.0240.0, ptr %i.bl, align 8
  store float %.sroa.10246.0, ptr %.sroa.10246.0..sroa_idx247, align 16, !tbaa !21
  store ptr %6, ptr %4, align 8, !tbaa !44
  store i32 3, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.329.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.bm, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #14
  %i.fv = load float, ptr %i.bn, align 4, !tbaa !55 ; 3 uses
  %i.fw = fcmp oeq float %i.fv, 0.000000e+00
  br i1 %i.fw, label %.thread264, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fx = load float, ptr %i.c, align 4, !tbaa !117 ; 2 uses
  %i.fy = fcmp ugt float %i.fv, %i.fx
  br i1 %i.fy, label %.thread264, label %bb.l

.thread264:                                       ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.fz = shl nuw nsw i32 %i.cd, 1
  %i.ga = fsub float %i.fx, %i.fv
  %i.gb = sext i32 %.1150298 to i64
  %i.gc = getelementptr inbounds [40 x i8], ptr %0, i64 %i.gb ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %i.bo, i64 12, i1 false)
  %.sroa.020.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store float %i.ga, ptr %.sroa.020.sroa.2.0..sroa_idx, align 4, !tbaa !21
  %.sroa.020.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.020.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  store i32 %i.fz, ptr %.sroa.321.0..sroa_idx, align 4, !tbaa !42
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store i32 0, ptr %.sroa.422.0..sroa_idx, align 4, !tbaa !42
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 36
  store i32 %i.cl, ptr %.sroa.523.0..sroa_idx, align 4, !tbaa !42
  %i.gd = add nsw i32 %.1150298, 1                ; 3 uses
  %.not191.not = icmp eq i32 %i.gd, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br i1 %.not191.not, label %.thread289, label %.thread

.thread:                                          ; preds = %bb.i, %.thread264, %bb.l, %bb.h
  %.6155 = phi i32 [ %i.gd, %bb.l ], [ %.1150298, %bb.h ], [ %.1150298, %.thread264 ], [ %.1150298, %bb.i ]
  %.6155.fr = freeze i32 %.6155                   ; 5 uses
  %i.ge = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ag, <4 x float> noundef %i.ah, <4 x float> noundef %i.em, <4 x float> noundef %i.er, <4 x float> noundef %i.eh) #14
  br i1 %i.ge, label %bb.m, label %.thread284

bb.m:                                             ; preds = %.thread
  %i.gf = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.du, i64 1
  %i.gh = fsub <2 x float> %i.o, %i.gg
  %i.gi = fsub float %i.h, %i.dx
  %i.gj = insertelement <2 x float> poison, float %i.du, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.dx, i64 1
  %i.gl = fsub <2 x float> %.sroa.0240.0, %i.gk   ; 3 uses
  %i.gm = fsub float %.sroa.10246.0, %i.dv        ; 2 uses
  %i.gn = fsub <2 x float> %.sroa.0223.0, %.sroa.08.4.vec.insert.i113.i ; 3 uses
  %i.go = fsub float %.sroa.10.0, %i.dv           ; 2 uses
  %i.gp = extractelement <2 x float> %i.gn, i64 0
  %i.gq = fmul float %i.gm, %i.gp
  %i.gr = extractelement <2 x float> %i.gl, i64 0
  %i.gs = fmul float %i.gr, %i.go
  %i.gt = fsub float %i.gq, %i.gs
  %i.gu = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gv = insertelement <2 x float> %i.gu, float %i.go, i64 1
  %i.gw = fmul <2 x float> %i.gl, %i.gv
  %i.gx = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %i.gm, i64 1
  %i.gz = fmul <2 x float> %i.gy, %i.gn
  %i.ha = fsub <2 x float> %i.gw, %i.gz
  %i.hb = fmul float %i.gi, %i.gt
  %i.hc = fmul <2 x float> %i.gh, %i.ha           ; 2 uses
  %i.hd = extractelement <2 x float> %i.hc, i64 1
  %i.he = fadd float %i.hd, %i.hb
  %i.hf = extractelement <2 x float> %i.hc, i64 0
  %i.hg = fadd float %i.hf, %i.he
  %i.hh = fcmp ult float %i.hg, 0.000000e+00
  br i1 %i.hh, label %.thread284, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> %.sroa.08.4.vec.insert.i113.i, ptr %8, align 16
  store float %i.dv, ptr %.sroa.6.0..sroa_idx221, align 8, !tbaa !21
  store <2 x float> %.sroa.0240.0, ptr %i.bp, align 4
  store float %.sroa.10246.0, ptr %.sroa.10246.0..sroa_idx249, align 4, !tbaa !21
  store <2 x float> %.sroa.0223.0, ptr %i.bq, align 8
  store float %.sroa.10.0, ptr %.sroa.10.0..sroa_idx236, align 16, !tbaa !21
  store ptr %8, ptr %4, align 8, !tbaa !44
  store i32 3, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.329.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.bm, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %9, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #14
  %i.hi = load float, ptr %i.br, align 4, !tbaa !55 ; 3 uses
end_hunk_0
