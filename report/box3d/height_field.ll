Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/height_field?download=true
inline.NumInlined: 203
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeCastHeightField:bb.a
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
  %.063113 = phi i32 [ %i.ei, %.critedge ], [ %i.am, %.lr.ph116.split.preheader ] ; 8 uses
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
  %.056111 = phi i32 [ %i.v, %.preheader ], [ %i.eh, %bb.j ] ; 9 uses
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
  %i.bw = add nsw i32 %i.bv, %.056111
  %i.bx = mul nuw nsw i32 %i.bj, %i.bf
  %i.by = add nsw i32 %i.bx, %.056111
  %i.bz = load float, ptr %i.as, align 4, !tbaa !34 ; 3 uses
  %i.ca = load float, ptr %i.at, align 4, !tbaa !33
  %i.cb = load i32, ptr %i.au, align 4, !tbaa !25
  %i.cc = sext i32 %i.cb to i64
  %i.cd = add nsw i64 %i.cc, %i.ar
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = sext i32 %i.bw to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = sext i32 %i.by to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load <2 x i16>, ptr %i.cg, align 2, !tbaa !36
  %i.ck = load <2 x i16>, ptr %i.ci, align 2, !tbaa !36
  %i.cl = shufflevector <2 x i16> %i.cj, <2 x i16> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = uitofp <4 x i16> %i.cl to <4 x float>
  %i.cn = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cp = fmul <4 x float> %i.co, %i.cm           ; 3 uses
  %12 = extractelement <4 x float> %i.cp, i64 0
  %13 = fadd float %i.bz, %12
  %14 = extractelement <4 x float> %i.cp, i64 1
  %15 = fadd float %i.bz, %14
  %i.cq = uitofp nneg i32 %.056111 to float
  %i.cr = add nuw nsw i32 %.056111, 1
  %i.cs = uitofp nneg i32 %i.cr to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0 ; 2 uses
  %i.ct = fmul float %.sroa.06.0.vec.extract.i.i, %i.cq
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ct, i64 0 ; 2 uses
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 1 ; 2 uses
  %16 = fmul float %13, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i.i, float %16, i64 1 ; 2 uses
  %i.cu = fmul float %.sroa.7.0.copyload.i, %i.bg ; 4 uses
  %i.cv = fmul float %.sroa.06.0.vec.extract.i.i, %i.cs ; 2 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.cv, i64 0
  %17 = fmul float %15, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i101.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %17, i64 1 ; 3 uses
  %i.cw = fmul float %.sroa.7.0.copyload.i, %i.bh ; 4 uses
  %18 = insertelement <2 x float> poison, float %i.bz, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cy = fadd <2 x float> %19, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.047.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cz, %i.cy           ; 2 uses
  %i.db = shufflevector <2 x float> %.sroa.08.0.vec.insert.i.i, <2 x float> %i.da, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.dc = insertelement <2 x float> %i.da, float %i.cv, i64 0 ; 2 uses
  %i.dd = bitcast <2 x float> %.sroa.08.4.vec.insert.i.i to double
  %i.de = bitcast <2 x float> %.sroa.08.4.vec.insert.i101.i to double
  %i.df = bitcast <2 x float> %i.db to double
  %i.dg = bitcast <2 x float> %i.dc to double
  %i.dh = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.di = bitcast <2 x double> %i.dh to <4 x float>
  %i.dj = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cu, i64 0 ; 2 uses
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dl = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dm = bitcast <2 x double> %i.dl to <4 x float>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.do = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dp = bitcast <2 x double> %i.do to <4 x float>
  %i.dq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cw, i64 0 ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dt = bitcast <2 x double> %i.ds to <4 x float>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dv = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ah, <4 x float> noundef %i.ai, <4 x float> noundef %i.dk, <4 x float> noundef %i.dr, <4 x float> noundef %i.dn) #14
  br i1 %i.dv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> %.sroa.08.4.vec.insert.i.i, ptr %8, align 16, !tbaa !21
  store float %i.cu, ptr %.sroa.5101.0..sroa_idx102, align 8, !tbaa !21
  store <2 x float> %i.db, ptr %i.av, align 4, !tbaa !21
  store float %i.cw, ptr %.sroa.6.0..sroa_idx87, align 4, !tbaa !21
  store <2 x float> %.sroa.08.4.vec.insert.i101.i, ptr %i.aw, align 8, !tbaa !21
  store float %i.cu, ptr %.sroa.694.0..sroa_idx95, align 16, !tbaa !21
  store ptr %8, ptr %6, align 8, !tbaa !44
  store i32 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.ax, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #14
  %i.dw = call float @b3GetLengthUnitsPerMeter() #14
  %i.dx = fmul float %i.dw, 5.000000e-03
  %i.dy = fmul float %i.dx, 1.000000e-01
  %i.dz = load float, ptr %i.ay, align 4, !tbaa !55
  %i.ea = fcmp uge float %i.dz, %i.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %i.ea, label %bb.h, label %.critedge69

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.eb = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ah, <4 x float> noundef %i.ai, <4 x float> noundef %i.dr, <4 x float> noundef %i.du, <4 x float> noundef %i.dn) #14
  br i1 %i.eb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <2 x float> %i.dc, ptr %10, align 16, !tbaa !21
  store float %i.cw, ptr %.sroa.5.0..sroa_idx82, align 8, !tbaa !21
  store <2 x float> %.sroa.08.4.vec.insert.i101.i, ptr %i.az, align 4, !tbaa !21
  store float %i.cu, ptr %.sroa.694.0..sroa_idx97, align 4, !tbaa !21
  store <2 x float> %i.db, ptr %i.ba, align 8, !tbaa !21
  store float %i.cw, ptr %.sroa.6.0..sroa_idx89, align 16, !tbaa !21
  store ptr %10, ptr %6, align 8, !tbaa !44
  store i32 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.ax, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %11, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #14
  %i.ec = call float @b3GetLengthUnitsPerMeter() #14
  %i.ed = fmul float %i.ec, 5.000000e-03
  %i.ee = fmul float %i.ed, 1.000000e-01
  %i.ef = load float, ptr %i.bb, align 4, !tbaa !55
  %i.eg = fcmp uge float %i.ef, %i.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br i1 %i.eg, label %bb.j, label %.critedge69

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.c, %bb.d
  %i.eh = add i32 %.056111, 1
  %exitcond.not = icmp eq i32 %.056111, %smax
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !104

.critedge:                                        ; preds = %bb.j, %.lr.ph116.split, %bb.b
  %i.ei = add i32 %.063113, 1
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
  %.0215 = phi i32 [ %i.ee, %..loopexit_crit_edge ], [ %i.z, %.lr.ph217.split.preheader ] ; 8 uses
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
  %.0145213 = phi i32 [ %i.w, %.preheader ], [ %i.ed, %b3AABB_Overlaps.exit.thread ] ; 9 uses
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
end_hunk_0
