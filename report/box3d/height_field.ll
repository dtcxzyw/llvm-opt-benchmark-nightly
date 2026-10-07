Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/height_field?download=true
inline.NumInlined: 203
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3ShapeCastHeightField:bb.a
  br i1 %i.sn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.so = load float, ptr %i.ho, align 4, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !103
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.hi, align 4
  %.sroa.27.0.copyload = load float, ptr %.sroa.255.0..sroa_idx, align 4
  %i.sp = fadd <2 x float> %.sroa.01011.0, %.sroa.06.0.copyload
  %i.sq = fadd float %.sroa.16.0, %.sroa.27.0.copyload
  store <2 x float> %i.sp, ptr %i.hi, align 4, !tbaa !21
  store float %i.sq, ptr %.sroa.255.0..sroa_idx, align 4, !tbaa !21
  store i32 %i.mk, ptr %i.hj, align 4, !tbaa !98
  store i32 %i.iz, ptr %i.hk, align 4, !tbaa !99
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.7 = phi float [ %i.so, %bb.ah ], [ %.6, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.s, %bb.af, %bb.ai, %bb.y, %b3Normalize.exit, %bb.p, %bb.o
  %.12 = phi float [ %.26541104, %bb.o ], [ %.26541104, %bb.p ], [ %.26541104, %bb.s ], [ %.3655, %bb.y ], [ %i.os, %b3Normalize.exit ], [ %.7, %bb.ai ], [ %.6, %bb.af ] ; 2 uses
  %i.sr = add i32 %.06611103, 1
  %exitcond.not = icmp eq i32 %.06611103, %.0638..0644
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !87

.loopexit:                                        ; preds = %b3AABB_Overlaps.exit.thread, %..loopexit_crit_edge
  %.pre-phi = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.in, %b3AABB_Overlaps.exit.thread ] ; 2 uses
  %.13 = phi float [ %.16531106, %..loopexit_crit_edge ], [ %.12, %b3AABB_Overlaps.exit.thread ] ; 5 uses
  %exitcond1108.not = icmp eq i32 %.pre-phi, %i.ie
  br i1 %exitcond1108.not, label %bb.m, label %bb.n, !llvm.loop !88

bb.aj:                                            ; preds = %bb.m
  %i.ss = fcmp ugt float %.1, %.1634.ph
  br i1 %i.ss, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.st = icmp eq i32 %.0638, %i.dd
  br i1 %i.st, label %.loopexit1136, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.su = add nsw i32 %.0638, %.0631              ; 2 uses
  br i1 %i.hr, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
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
  %smax = call i32 @llvm.smax.i32(i32 %i.y, i32 %i.v)
  br label %.lr.ph116.split

.lr.ph116.split:                                  ; preds = %.lr.ph116.split.preheader, %.critedge
  %.063113 = phi i32 [ %i.eq, %.critedge ], [ %i.am, %.lr.ph116.split.preheader ] ; 8 uses
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
  %.056111 = phi i32 [ %i.v, %.preheader ], [ %i.ep, %bb.j ] ; 9 uses
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
  %i.cq = extractelement <4 x float> %i.cp, i64 0
  %i.cr = fadd float %i.bz, %i.cq
  %i.cs = extractelement <4 x float> %i.cp, i64 1
  %i.ct = fadd float %i.bz, %i.cs
  %i.cu = uitofp nneg i32 %.056111 to float
  %i.cv = add nuw nsw i32 %.056111, 1
  %i.cw = uitofp nneg i32 %i.cv to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0 ; 2 uses
  %i.cx = fmul float %.sroa.06.0.vec.extract.i.i, %i.cu
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.cx, i64 0 ; 2 uses
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 1 ; 2 uses
  %i.cy = fmul float %i.cr, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i.i, float %i.cy, i64 1 ; 2 uses
  %i.cz = fmul float %.sroa.7.0.copyload.i, %i.bg ; 4 uses
  %i.da = fmul float %.sroa.06.0.vec.extract.i.i, %i.cw ; 2 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.da, i64 0
  %i.db = fmul float %i.ct, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i101.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.db, i64 1 ; 3 uses
  %i.dc = fmul float %.sroa.7.0.copyload.i, %i.bh ; 4 uses
  %i.dd = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dg = fadd <2 x float> %i.de, %i.df
  %i.dh = shufflevector <2 x float> %.sroa.047.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.dh, %i.dg           ; 2 uses
  %i.dj = shufflevector <2 x float> %.sroa.08.0.vec.insert.i.i, <2 x float> %i.di, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.dk = insertelement <2 x float> %i.di, float %i.da, i64 0 ; 2 uses
  %i.dl = bitcast <2 x float> %.sroa.08.4.vec.insert.i.i to double
  %i.dm = bitcast <2 x float> %.sroa.08.4.vec.insert.i101.i to double
  %i.dn = bitcast <2 x float> %i.dj to double
  %i.do = bitcast <2 x float> %i.dk to double
  %i.dp = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dq = bitcast <2 x double> %i.dp to <4 x float>
  %i.dr = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cz, i64 0 ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dt = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.du = bitcast <2 x double> %i.dt to <4 x float>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dx = bitcast <2 x double> %i.dw to <4 x float>
  %i.dy = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dc, i64 0 ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %i.do, i64 0
  %i.eb = bitcast <2 x double> %i.ea to <4 x float>
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ed = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ah, <4 x float> noundef %i.ai, <4 x float> noundef %i.ds, <4 x float> noundef %i.dz, <4 x float> noundef %i.dv) #14
  br i1 %i.ed, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store <2 x float> %.sroa.08.4.vec.insert.i.i, ptr %8, align 16, !tbaa !21
  store float %i.cz, ptr %.sroa.5101.0..sroa_idx102, align 8, !tbaa !21
  store <2 x float> %i.dj, ptr %i.av, align 4, !tbaa !21
  store float %i.dc, ptr %.sroa.6.0..sroa_idx87, align 4, !tbaa !21
  store <2 x float> %.sroa.08.4.vec.insert.i101.i, ptr %i.aw, align 8, !tbaa !21
  store float %i.cz, ptr %.sroa.694.0..sroa_idx95, align 16, !tbaa !21
  store ptr %8, ptr %6, align 8, !tbaa !44
  store i32 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.ax, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #14
  %i.ee = call float @b3GetLengthUnitsPerMeter() #14
  %i.ef = fmul float %i.ee, 5.000000e-03
  %i.eg = fmul float %i.ef, 1.000000e-01
  %i.eh = load float, ptr %i.ay, align 4, !tbaa !55
  %i.ei = fcmp uge float %i.eh, %i.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %i.ei, label %bb.h, label %.critedge69

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ej = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ah, <4 x float> noundef %i.ai, <4 x float> noundef %i.dz, <4 x float> noundef %i.ec, <4 x float> noundef %i.dv) #14
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store <2 x float> %i.dk, ptr %10, align 16, !tbaa !21
  store float %i.dc, ptr %.sroa.5.0..sroa_idx82, align 8, !tbaa !21
  store <2 x float> %.sroa.08.4.vec.insert.i101.i, ptr %i.az, align 4, !tbaa !21
  store float %i.cz, ptr %.sroa.694.0..sroa_idx97, align 4, !tbaa !21
  store <2 x float> %i.dj, ptr %i.ba, align 8, !tbaa !21
  store float %i.dc, ptr %.sroa.6.0..sroa_idx89, align 16, !tbaa !21
  store ptr %10, ptr %6, align 8, !tbaa !44
  store i32 3, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.ax, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %11, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, i32 noundef 0) #14
  %i.ek = call float @b3GetLengthUnitsPerMeter() #14
  %i.el = fmul float %i.ek, 5.000000e-03
  %i.em = fmul float %i.el, 1.000000e-01
  %i.en = load float, ptr %i.bb, align 4, !tbaa !55
  %i.eo = fcmp uge float %i.en, %i.em
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br i1 %i.eo, label %bb.j, label %.critedge69

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.c, %bb.d
  %i.ep = add i32 %.056111, 1
  %exitcond.not = icmp eq i32 %.056111, %smax
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !104

.critedge:                                        ; preds = %bb.j, %.lr.ph116.split, %bb.b
  %i.eq = add i32 %.063113, 1
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
  %smax = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %i.w)
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
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !41
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %b3AABB_Overlaps.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = mul nuw nsw i32 %i.au, %.0215
  %i.bh = add nsw i32 %i.bg, %.0145213
  %i.bi = mul nuw nsw i32 %i.au, %i.aq
  %i.bj = add nsw i32 %i.bi, %.0145213
  %i.bk = load float, ptr %i.af, align 4, !tbaa !34
  %i.bl = load float, ptr %i.ag, align 4, !tbaa !33
  %i.bm = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add nsw i64 %i.bn, %i.ae
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = sext i32 %i.bh to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = sext i32 %i.bj to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = uitofp nneg i32 %.0145213 to float
  %i.bv = add nuw nsw i32 %.0145213, 1
  %i.bw = uitofp nneg i32 %i.bv to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.5128.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0 ; 2 uses
  %i.bx = fmul float %.sroa.06.0.vec.extract.i.i, %i.bu ; 6 uses
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.by = fmul float %.sroa.7.0.copyload.i, %i.ar ; 10 uses
  %i.bz = fmul float %.sroa.06.0.vec.extract.i.i, %i.bw ; 6 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ca = fmul float %.sroa.7.0.copyload.i, %i.as ; 10 uses
  %i.cb = fcmp olt float %i.bx, %i.bz
  %i.cc = select i1 %i.cb, float %i.bx, float %i.bz
  %i.cd = fcmp olt float %i.by, %i.ca
  %i.ce = select i1 %i.cd, float %i.by, float %i.ca
  %i.cf = fcmp ogt float %i.bx, %i.bz
  %i.cg = select i1 %i.cf, float %i.bx, float %i.bz
  %i.ch = load <2 x i16>, ptr %i.br, align 2, !tbaa !36 ; 2 uses
  %i.ci = load <2 x i16>, ptr %i.bt, align 2, !tbaa !36 ; 2 uses
  %i.cj = shufflevector <2 x i16> %i.ch, <2 x i16> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.ck = uitofp <2 x i16> %i.cj to <2 x float>
  %i.cl = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %i.ck
  %i.co = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = fadd <2 x float> %i.cp, %i.cn
  %i.cr = shufflevector <2 x i16> %i.ch, <2 x i16> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.cs = uitofp <2 x i16> %i.cr to <2 x float>
  %i.ct = fmul <2 x float> %i.cm, %i.cs
  %i.cu = fadd <2 x float> %i.cp, %i.ct
  %i.cv = shufflevector <2 x float> %.sroa.047.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cw = fmul <2 x float> %i.cq, %i.cv           ; 6 uses
  %i.cx = shufflevector <2 x float> %.sroa.08.0.vec.insert.i.i, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cy = fmul <2 x float> %i.cu, %i.cv           ; 6 uses
  %i.cz = shufflevector <2 x float> %.sroa.08.0.vec.insert.i99.i, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.da = insertelement <2 x float> %i.cw, float %i.bx, i64 0 ; 4 uses
  %i.db = insertelement <2 x float> %i.cy, float %i.bz, i64 0 ; 2 uses
  %i.dc = fcmp olt <2 x float> %i.cw, %i.cy
  %i.dd = select <2 x i1> %i.dc, <2 x float> %i.cw, <2 x float> %i.cy ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.df = extractelement <2 x float> %i.dd, i64 1 ; 2 uses
  %i.dg = fcmp olt float %i.de, %i.df
  %i.dh = select i1 %i.dg, float %i.de, float %i.df
  %i.di = fcmp ogt <2 x float> %i.cw, %i.cy
  %i.dj = select <2 x i1> %i.di, <2 x float> %i.cw, <2 x float> %i.cy ; 2 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.dl = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.dm = fcmp ogt float %i.dk, %i.dl
  %i.dn = select i1 %i.dm, float %i.dk, float %i.dl
  %i.do = fcmp ogt float %i.by, %i.ca
  %i.dp = select i1 %i.do, float %i.by, float %i.ca
  %i.dq = fcmp uge float %i.o, %i.cc
  %i.dr = fcmp ule float %i.n, %i.cg
  %or.cond.not211 = select i1 %i.dq, i1 %i.dr, i1 false
  %i.ds = fcmp uge float %i.aj, %i.dh
  %or.cond197.not208 = select i1 %or.cond.not211, i1 %i.ds, i1 false
  %i.dt = fcmp ule float %i.al, %i.dn
  %or.cond200.not206 = select i1 %or.cond197.not208, i1 %i.dt, i1 false
  %i.du = fcmp uge float %i.f, %i.ce
  %or.cond201.not204 = select i1 %or.cond200.not206, i1 %i.du, i1 false
  %i.dv = fcmp ule float %i.c, %i.dp
  %or.cond202 = select i1 %or.cond201.not204, i1 %i.dv, i1 false
  br i1 %or.cond202, label %bb.g, label %b3AABB_Overlaps.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.dw = shl nuw nsw i32 %i.ax, 1                ; 3 uses
  %i.dx = load i8, ptr %i.am, align 8, !tbaa !31
  %.not150 = icmp eq i8 %i.dx, 0
  %i.dy = or disjoint i32 %i.dw, 1                ; 2 uses
  br i1 %.not150, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dz = tail call zeroext i1 %2(<2 x float> %i.cx, float %i.by, <2 x float> %i.cz, float %i.by, <2 x float> %i.da, float %i.ca, i32 noundef %i.dw, ptr noundef %3) #14 ; 0 uses
  %i.ea = tail call zeroext i1 %2(<2 x float> %i.db, float %i.ca, <2 x float> %i.da, float %i.ca, <2 x float> %i.cz, float %i.by, i32 noundef %i.dy, ptr noundef %3) #14 ; 0 uses
  br label %b3AABB_Overlaps.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.eb = tail call zeroext i1 %2(<2 x float> %i.cx, float %i.by, <2 x float> %i.da, float %i.ca, <2 x float> %i.cz, float %i.by, i32 noundef %i.dw, ptr noundef %3) #14 ; 0 uses
  %i.ec = tail call zeroext i1 %2(<2 x float> %i.db, float %i.ca, <2 x float> %i.cz, float %i.by, <2 x float> %i.da, float %i.ca, i32 noundef %i.dy, ptr noundef %3) #14 ; 0 uses
  br label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.f, %bb.i, %bb.h, %bb.e, %bb.c, %bb.d
  %i.ed = add i32 %.0145213, 1
  %exitcond.not = icmp eq i32 %.0145213, %smax
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.c, !llvm.loop !108

..loopexit_crit_edge:                             ; preds = %b3AABB_Overlaps.exit.thread, %.lr.ph217.split, %bb.b
  %i.ee = add i32 %.0215, 1
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
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 %i.av)
  br label %.lr.ph306.split

.lr.ph306.split:                                  ; preds = %.lr.ph306.split.preheader, %..loopexit_crit_edge
  %.0149304 = phi i32 [ %.17166, %..loopexit_crit_edge ], [ 0, %.lr.ph306.split.preheader ] ; 3 uses
  %.0168302 = phi i32 [ %i.hv, %..loopexit_crit_edge ], [ %i.bb, %.lr.ph306.split.preheader ] ; 8 uses
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
  %.0180297 = phi i32 [ %i.av, %.preheader ], [ %i.hu, %.thread284 ] ; 9 uses
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
  %i.co = add nsw i32 %i.cn, %.0180297
  %i.cp = mul nuw nsw i32 %i.ca, %i.bw
  %i.cq = add nsw i32 %i.cp, %.0180297
  %i.cr = load float, ptr %i.bh, align 4, !tbaa !34
  %i.cs = load float, ptr %i.bi, align 4, !tbaa !33
  %i.ct = load i32, ptr %i.bj, align 4, !tbaa !25
  %i.cu = sext i32 %i.ct to i64
  %i.cv = add nsw i64 %i.cu, %i.bg
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = sext i32 %i.co to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = sext i32 %i.cq to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load <2 x i16>, ptr %i.cy, align 2, !tbaa !36
  %i.dc = load <2 x i16>, ptr %i.da, align 2, !tbaa !36
  %i.dd = shufflevector <2 x i16> %i.db, <2 x i16> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.de = uitofp <4 x i16> %i.dd to <4 x float>
  %i.df = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = fadd <4 x float> %i.dj, %i.dh           ; 4 uses
  %i.dl = uitofp nneg i32 %.0180297 to float
  %i.dm = add nuw nsw i32 %.0180297, 1
  %i.dn = uitofp nneg i32 %i.dm to float
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.ai, align 8, !tbaa !21 ; 3 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.590.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 1 ; 3 uses
  %i.do = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.dk, <2 x i32> <i32 0, i32 4>
  %i.dq = fmul <2 x float> %.sroa.047.0.copyload.i, %i.dp ; 7 uses
  %i.dr = fmul float %.sroa.7.0.copyload.i, %i.bx ; 7 uses
  %i.ds = extractelement <4 x float> %i.dk, i64 1
  %i.dt = fmul float %i.ds, %.sroa.06.4.vec.extract.i.i
  %i.du = extractelement <4 x float> %i.dk, i64 2
  %i.dv = fmul float %.sroa.06.4.vec.extract.i.i, %i.du
  %.sroa.08.4.vec.insert.i107.i = insertelement <2 x float> %i.dq, float %i.dv, i64 1 ; 2 uses
  %i.dw = fmul float %.sroa.06.0.vec.extract.i.i, %i.dn ; 3 uses
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.dw, i64 0 ; 2 uses
  %.sroa.08.4.vec.insert.i101.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.dt, i64 1 ; 2 uses
  %i.dx = fmul float %.sroa.7.0.copyload.i, %i.by ; 7 uses
  %i.dy = extractelement <4 x float> %i.dk, i64 3
  %i.dz = fmul float %.sroa.06.4.vec.extract.i.i, %i.dy ; 3 uses
  %.sroa.08.4.vec.insert.i113.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.dz, i64 1 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.10246.0 = phi float [ %i.dr, %bb.f ], [ %i.dx, %bb.g ] ; 5 uses
  %.sroa.0240.0 = phi <2 x float> [ %.sroa.08.4.vec.insert.i101.i, %bb.f ], [ %.sroa.08.4.vec.insert.i107.i, %bb.g ] ; 5 uses
  %.sroa.10.0 = phi float [ %i.dx, %bb.f ], [ %i.dr, %bb.g ] ; 5 uses
  %.sroa.0223.0 = phi <2 x float> [ %.sroa.08.4.vec.insert.i107.i, %bb.f ], [ %.sroa.08.4.vec.insert.i101.i, %bb.g ] ; 5 uses
  %i.ea = bitcast <2 x float> %i.dq to double
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = bitcast <2 x double> %i.eb to <4 x float>
  %i.ed = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dr, i64 0
  %i.ee = shufflevector <4 x float> %i.ec, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ef = bitcast <2 x float> %.sroa.0240.0 to double
  %i.eg = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.eh = bitcast <2 x double> %i.eg to <4 x float>
  %i.ei = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.10246.0, i64 0
  %i.ej = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ek = bitcast <2 x float> %.sroa.0223.0 to double
  %i.el = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.em = bitcast <2 x double> %i.el to <4 x float>
  %i.en = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.10.0, i64 0
  %i.eo = shufflevector <4 x float> %i.em, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ep = bitcast <2 x float> %.sroa.08.4.vec.insert.i113.i to double
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = bitcast <2 x double> %i.eq to <4 x float>
  %i.es = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.dx, i64 0
  %i.et = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eu = call zeroext i1 @b3TestBoundsTriangleOverlap(<4 x float> noundef %i.ag, <4 x float> noundef %i.ah, <4 x float> noundef %i.ee, <4 x float> noundef %i.eo, <4 x float> noundef %i.ej) #14
  br i1 %i.eu, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ev = extractelement <2 x float> %i.dq, i64 1
  %i.ew = fsub float %i.h, %i.ev
  %i.ex = fsub float %.sroa.10.0, %i.dr           ; 2 uses
  %i.ey = fsub <2 x float> %.sroa.0240.0, %i.dq   ; 3 uses
  %i.ez = fsub float %.sroa.10246.0, %i.dr        ; 2 uses
  %i.fa = extractelement <2 x float> %i.ey, i64 0
  %i.fb = fmul float %i.ex, %i.fa
  %i.fc = fsub <2 x float> %.sroa.0223.0, %i.dq   ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  %i.fe = fmul float %i.ez, %i.fd
  %i.ff = fsub float %i.fb, %i.fe
  %i.fg = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fh = insertelement <2 x float> %i.fg, float %i.ez, i64 1
  %i.fi = fmul <2 x float> %i.fh, %i.fc
  %i.fj = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fk = insertelement <2 x float> %i.fj, float %i.ex, i64 1
  %i.fl = fmul <2 x float> %i.fk, %i.ey
  %i.fm = fsub <2 x float> %i.fi, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.fp = fsub <2 x float> %i.o, %i.fo
  %i.fq = fmul float %i.ew, %i.ff
  %i.fr = fmul <2 x float> %i.fp, %i.fm           ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 1
  %i.ft = fadd float %i.fs, %i.fq
  %i.fu = extractelement <2 x float> %i.fr, i64 0
  %i.fv = fadd float %i.fu, %i.ft
  %i.fw = fcmp ult float %i.fv, 0.000000e+00
  br i1 %i.fw, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <2 x float> %i.dq, ptr %6, align 16, !tbaa !21
  store float %i.dr, ptr %.sroa.6254.0..sroa_idx255, align 8, !tbaa !21
  store <2 x float> %.sroa.0223.0, ptr %i.bk, align 4, !tbaa !21
  store float %.sroa.10.0, ptr %.sroa.10.0..sroa_idx234, align 4, !tbaa !21
  store <2 x float> %.sroa.0240.0, ptr %i.bl, align 8, !tbaa !21
  store float %.sroa.10246.0, ptr %.sroa.10246.0..sroa_idx247, align 16, !tbaa !21
  store ptr %6, ptr %4, align 8, !tbaa !44
  store i32 3, ptr %.sroa.228.0..sroa_idx, align 8, !tbaa !42
  store float 0.000000e+00, ptr %.sroa.329.0..sroa_idx, align 4, !tbaa !21
  store i16 0, ptr %i.bm, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #14
  %i.fx = load float, ptr %i.bn, align 4, !tbaa !55 ; 3 uses
  %i.fy = fcmp oeq float %i.fx, 0.000000e+00
  br i1 %i.fy, label %.thread264, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fz = load float, ptr %i.c, align 4, !tbaa !117 ; 2 uses
  %i.ga = fcmp ugt float %i.fx, %i.fz
  br i1 %i.ga, label %.thread264, label %bb.l

.thread264:                                       ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.gb = shl nuw nsw i32 %i.cd, 1
  %i.gc = fsub float %i.fz, %i.fx
  %i.gd = sext i32 %.1150298 to i64
  %i.ge = getelementptr inbounds [40 x i8], ptr %0, i64 %i.gd ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ge, ptr noundef nonnull align 4 dereferenceable(12) %i.bo, i64 12, i1 false)
  %.sroa.020.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store float %i.gc, ptr %.sroa.020.sroa.2.0..sroa_idx, align 4, !tbaa !21
  %.sroa.020.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.020.sroa.3.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store i32 %i.gb, ptr %.sroa.321.0..sroa_idx, align 4, !tbaa !42
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store i32 0, ptr %.sroa.422.0..sroa_idx, align 4, !tbaa !42
end_hunk_0
