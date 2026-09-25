Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/distance?download=true
inline.NumInlined: 184
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@b2ShapeCast:.peel.begin

.critedge.loopexit:                               ; preds = %bb.g, %bb.h, %bb.d, %bb.c
  %.lcssa79 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.at, %bb.h ], [ %i.at, %bb.g ]
  store i32 %.lcssa79, ptr %i.r, align 4, !tbaa !69
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.f, %.loopexit85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.j

.loopexit:                                        ; preds = %bb.i
  store i32 20, ptr %i.r, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @b2TimeOfImpact(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2TOIOutput) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2SimplexCache, align 8     ; 5 uses
  %3 = alloca %struct.b2DistanceInput, align 4    ; 8 uses
  %4 = alloca %struct.b2DistanceOutput, align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load float, ptr %i.a, align 4, !tbaa !77 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0347.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 6 uses
  %.sroa.6350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.6350.0.copyload = load <2 x float>, ptr %.sroa.6350.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.9353.0.copyload = load <2 x float>, ptr %.sroa.9353.0..sroa_idx, align 4 ; 3 uses
  %.sroa.12356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.15358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.sroa.18360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.0335.0.copyload = load <2 x float>, ptr %i.d, align 4 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.9340.0.copyload = load <2 x float>, ptr %.sroa.9340.0..sroa_idx, align 4 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.e = load <4 x float>, ptr %.sroa.12356.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %i.f = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %i.g = load <2 x float>, ptr %.sroa.15358.0..sroa_idx, align 4, !tbaa !10
  %i.h = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10 ; 2 uses
  %i.i = load <2 x float>, ptr %.sroa.18360.0..sroa_idx, align 4, !tbaa !10
  %i.j = load <2 x float>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 4 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 4 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !14
  %i.p = fadd float %i.m, %i.o
  %i.q = tail call float @b2GetLengthUnitsPerMeter() #12
  %i.r = fmul float %i.q, 5.000000e-03            ; 2 uses
  %i.s = tail call float @b2GetLengthUnitsPerMeter() #12
  %i.t = fmul float %i.s, 5.000000e-03
  %i.u = fsub float %i.p, %i.t                    ; 2 uses
  %i.v = fcmp ogt float %i.r, %i.u
  %i.w = select i1 %i.v, float %i.r, float %i.u   ; 5 uses
  %i.x = tail call float @b2GetLengthUnitsPerMeter() #12
  %i.y = fmul float %i.x, 5.000000e-03
  %i.z = fmul float %i.y, 2.500000e-01            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !25
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 0, ptr %i.ab, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.aa, ptr noundef nonnull align 4 dereferenceable(72) %i.k, i64 72, i1 false), !tbaa.struct !25
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 144
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = fadd float %i.z, %i.w                   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aj = fsub float %i.w, %i.z                   ; 2 uses
  %i.ak = shufflevector <4 x float> %i.e, <4 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.al = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.am = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ap = shufflevector <2 x float> %i.i, <2 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.al, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.as = extractelement <2 x float> %i.h, i64 0
  %i.at = shufflevector <4 x float> %i.e, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.f, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float %i.as, i64 3
  %i.aw = shufflevector <4 x float> %i.e, <4 x float> %i.f, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  br label %bb.b

bb.b:                                             ; preds = %bb.al, %bb.a
  %.0132 = phi i32 [ 0, %bb.a ], [ %i.dk, %bb.al ]
  %.0128 = phi float [ 0.000000e+00, %bb.a ], [ %.2130.ph, %bb.al ] ; 7 uses
  %i.ax = fsub float 1.000000e+00, %.0128
  %i.ay = insertelement <2 x float> poison, float %.0128, i64 0 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fmul <2 x float> %.sroa.9353.0.copyload, %i.az
  %i.bb = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x float> %i.ar, %i.bb
  %i.bd = fmul <2 x float> %.sroa.9340.0.copyload, %i.az
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0 ; 2 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul <2 x float> %.sroa.6350.0.copyload, %i.bf
  %i.bh = fadd <2 x float> %i.ba, %i.bg
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bj = fmul <4 x float> %i.ao, %i.bi
  %i.bk = fadd <4 x float> %i.bc, %i.bj           ; 3 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl
  %i.bn = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = fadd <2 x float> %i.bo, %i.bm           ; 2 uses
  %i.bq = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bp)
  %i.br = fcmp ogt <2 x float> %i.bp, zeroinitializer
  %i.bs = fdiv <2 x float> splat (float 1.000000e+00), %i.bq
  %i.bt = select <2 x i1> %i.br, <2 x float> %i.bs, <2 x float> zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bv = fmul <4 x float> %i.bk, %i.bu           ; 18 uses
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bx = fmul <2 x float> %.sroa.0347.0.copyload, %i.bw
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ca = fmul <2 x float> %.sroa.0347.0.copyload, %i.bz ; 2 uses
  %i.cb = fsub <2 x float> %i.ca, %i.by
  %i.cc = fadd <2 x float> %i.ca, %i.by
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ce = fsub <2 x float> %i.bh, %i.cd           ; 13 uses
  %i.cf = fmul <2 x float> %.sroa.6.0.copyload, %i.bf
  %i.cg = fadd <2 x float> %i.bd, %i.cf
  %i.ch = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ci = fmul <2 x float> %.sroa.0335.0.copyload, %i.ch
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cl = fmul <2 x float> %.sroa.0335.0.copyload, %i.ck ; 2 uses
  %i.cm = fsub <2 x float> %i.cl, %i.cj
  %i.cn = fadd <2 x float> %i.cl, %i.cj
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.cp = fsub <2 x float> %i.cg, %i.co           ; 7 uses
  %i.cq = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 10 uses
  %i.cr = fmul <2 x float> %i.bz, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.bw, %i.cq
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = fadd <2 x float> %i.cr, %i.ct
  %i.cv = fsub <2 x float> %i.cr, %i.ct
  %i.cw = shufflevector <2 x float> %i.cu, <2 x float> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.cx = fsub <2 x float> %i.cp, %i.ce           ; 2 uses
  %i.cy = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 17 uses
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cy, %i.cz           ; 2 uses
  %i.db = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.db, %i.dc           ; 2 uses
  %i.de = fadd <2 x float> %i.da, %i.dd
  %i.df = fsub <2 x float> %i.da, %i.dd
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.dg, ptr %i.ac, align 4
  store <2 x float> %i.cw, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %4, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  %i.dh = load <2 x float>, ptr %i.ad, align 8    ; 7 uses
  %i.di = load <2 x float>, ptr %4, align 8       ; 6 uses
  %i.dj = load <2 x float>, ptr %i.ae, align 8    ; 6 uses
  %i.dk = add nuw nsw i32 %.0132, 1               ; 2 uses
  %i.dl = load float, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.dm = fcmp ugt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 4, !tbaa !79
  br label %.thread384

bb.d:                                             ; preds = %bb.b
  %i.dn = fcmp ugt float %i.dl, %i.ag
  br i1 %i.dn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.extract.i.le627 = extractelement <2 x float> %i.dh, i64 0
  %i.do = extractelement <4 x float> %i.bv, i64 0
  %.sroa.0.4.vec.extract.i.le616 = extractelement <2 x float> %i.dh, i64 1
  %i.dp = extractelement <4 x float> %i.bv, i64 1
  %i.dq = fmul <2 x float> %i.dh, %i.cy           ; 2 uses
  %i.dr = fmul float %.sroa.0.0.vec.extract.i.le627, %i.dp
  %i.ds = fmul float %.sroa.0.4.vec.extract.i.le616, %i.do
  store i32 3, ptr %0, align 4, !tbaa !79
  %i.dt = load float, ptr %i.l, align 4, !tbaa !14
  %i.du = load float, ptr %i.n, align 4, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = fadd float %i.dr, %i.ds
  %6 = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.010.0.vec.insert.i.le = fsub <2 x float> %i.dq, %6
  %.sroa.010.4.vec.insert.i.le577 = insertelement <2 x float> %.sroa.010.0.vec.insert.i.le, float %5, i64 1 ; 3 uses
  %i.dw = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.dw, %i.cy           ; 2 uses
  %i.dy = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = fmul <2 x float> %i.dy, %i.dz           ; 2 uses
  %i.eb = fsub <2 x float> %i.dx, %i.ea
  %i.ec = fadd <2 x float> %i.dx, %i.ea
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> %i.ec, <2 x i32> <i32 0, i32 3>
  %i.ee = fadd <2 x float> %i.ed, %i.ce
  %i.ef = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ef, %i.cy           ; 2 uses
  %i.eh = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = fmul <2 x float> %i.eh, %i.dz           ; 2 uses
  %i.ej = fsub <2 x float> %i.eg, %i.ei
  %i.ek = fadd <2 x float> %i.eg, %i.ei
  %i.el = shufflevector <2 x float> %i.ej, <2 x float> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.em = fadd <2 x float> %i.el, %i.ce
  %i.en = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %.sroa.010.4.vec.insert.i.le577, %i.eo
  %i.eq = fadd <2 x float> %i.ee, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.du, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %.sroa.010.4.vec.insert.i.le577, %i.es
  %i.eu = fsub <2 x float> %i.em, %i.et
  %i.ev = fmul <2 x float> %i.eq, splat (float 5.000000e-01)
  %i.ew = fmul <2 x float> %i.eu, splat (float 5.000000e-01)
  %i.ex = fadd <2 x float> %i.ev, %i.ew
  store <2 x float> %i.ex, ptr %i.dv, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.010.4.vec.insert.i.le577, ptr %i.ey, align 4
  br label %.thread384

bb.f:                                             ; preds = %bb.d
  %i.ez = load i64, ptr %2, align 8               ; 5 uses
  %.sroa.266.0.extract.shift.i = lshr i64 %i.ez, 16 ; 4 uses
  %.sroa.670.0.extract.shift.i = lshr i64 %i.ez, 24 ; 2 uses
  %.sroa.872.0.extract.shift.i = lshr i64 %i.ez, 40 ; 3 uses
  %.sroa.11.0.extract.shift.i = lshr i64 %i.ez, 48
  %i.fa = and i64 %i.ez, 65535
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fc = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fc
  %.sroa.035.0.copyload.i = load <2 x float>, ptr %i.fd, align 4, !noalias !80 ; 2 uses
  %i.fe = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fe
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.ff, align 4, !noalias !80 ; 2 uses
  %i.fg = shufflevector <2 x float> %.sroa.035.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.cy, %i.fg           ; 2 uses
  %i.fi = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = shufflevector <2 x float> %.sroa.035.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fk = fmul <2 x float> %i.fi, %i.fj           ; 2 uses
  %i.fl = fsub <2 x float> %i.fh, %i.fk
  %i.fm = fadd <2 x float> %i.fh, %i.fk
  %i.fn = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.fo = fadd <2 x float> %i.ce, %i.fn
  %i.fp = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.cq, %i.fp           ; 2 uses
  %i.fr = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.fs = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fmul <2 x float> %i.fr, %i.fs           ; 2 uses
  %i.fu = fsub <2 x float> %i.fq, %i.ft
  %i.fv = fadd <2 x float> %i.fq, %i.ft
  %i.fw = shufflevector <2 x float> %i.fu, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.fx = fadd <2 x float> %i.cp, %i.fw
  %i.fy = fsub <2 x float> %i.fx, %i.fo           ; 3 uses
  %i.fz = fmul <2 x float> %i.fy, %i.fy
  %i.ga = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fz) ; 2 uses
  %i.gb = fcmp ogt float %i.ga, f0x057A0000
  br i1 %i.gb, label %bb.h, label %b2MakeSeparationFunction.exit

bb.h:                                             ; preds = %bb.g
  %sqrt.i.i184 = tail call nnan float @llvm.sqrt.f32(float %i.ga)
  %i.gc = fdiv nnan float 1.000000e+00, %sqrt.i.i184
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.fy, %i.ge
  br label %b2MakeSeparationFunction.exit

bb.i:                                             ; preds = %bb.f
  %i.gg = xor i64 %.sroa.266.0.extract.shift.i, %.sroa.670.0.extract.shift.i
  %i.gh = and i64 %i.gg, 255
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.gj = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gj
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %i.gk, align 4, !noalias !80 ; 2 uses
  %i.gl = and i64 %.sroa.11.0.extract.shift.i, 255
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gl
  %.sroa.026.0.copyload.i = load <2 x float>, ptr %i.gm, align 4, !noalias !80 ; 2 uses
  %i.gn = fsub <2 x float> %.sroa.026.0.copyload.i, %.sroa.028.0.copyload.i ; 4 uses
  %i.go = fmul <2 x float> %i.gn, %i.gn
  %i.gp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.go) ; 2 uses
  %i.gq = fcmp ogt float %i.gp, f0x057A0000
  br i1 %i.gq, label %bb.k, label %b2Normalize.exit114.i

bb.k:                                             ; preds = %bb.j
  %i.gr = extractelement <2 x float> %i.gn, i64 0
  %i.gs = fneg float %i.gr
  %sqrt.i111.i = tail call float @llvm.sqrt.f32(float %i.gp)
  %i.gt = fdiv float 1.000000e+00, %sqrt.i111.i   ; 2 uses
  %i.gu = extractelement <2 x float> %i.gn, i64 1
  %i.gv = fmul float %i.gu, %i.gt
  %.sroa.012.0.vec.insert.i112.i = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.gw = fmul float %i.gt, %i.gs
  %.sroa.012.4.vec.insert.i113.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i112.i, float %i.gw, i64 1
  br label %b2Normalize.exit114.i

b2Normalize.exit114.i:                            ; preds = %bb.k, %bb.j
  %.sroa.012.0.i110.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i113.i, %bb.k ], [ zeroinitializer, %bb.j ] ; 4 uses
  %i.gx = fadd <2 x float> %.sroa.028.0.copyload.i, %.sroa.026.0.copyload.i
  %i.gy = fmul <2 x float> %i.gx, splat (float 5.000000e-01) ; 4 uses
  %i.gz = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gz
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.ha, align 4, !noalias !80 ; 2 uses
  %i.hb = shufflevector <2 x float> %.sroa.012.0.i110.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.cq, %i.hb           ; 2 uses
  %i.hd = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.he = shufflevector <2 x float> %.sroa.012.0.i110.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x float> %i.hd, %i.he           ; 2 uses
  %i.hg = fsub <2 x float> %i.hc, %i.hf
  %i.hh = fadd <2 x float> %i.hc, %i.hf
  %i.hi = shufflevector <2 x float> %i.hg, <2 x float> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hj = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %i.cq, %i.hj           ; 2 uses
  %i.hl = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = fmul <2 x float> %i.hd, %i.hl           ; 2 uses
  %i.hn = fsub <2 x float> %i.hk, %i.hm
  %i.ho = fadd <2 x float> %i.hk, %i.hm
  %i.hp = shufflevector <2 x float> %i.hn, <2 x float> %i.ho, <2 x i32> <i32 0, i32 3>
  %i.hq = fadd <2 x float> %i.cp, %i.hp
  %i.hr = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.cy, %i.hr           ; 2 uses
  %i.ht = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fmul <2 x float> %i.ht, %i.hu           ; 2 uses
  %i.hw = fsub <2 x float> %i.hs, %i.hv
  %i.hx = fadd <2 x float> %i.hs, %i.hv
  %i.hy = shufflevector <2 x float> %i.hw, <2 x float> %i.hx, <2 x i32> <i32 0, i32 3>
  %i.hz = fadd <2 x float> %i.ce, %i.hy
  %i.ia = fsub <2 x float> %i.hz, %i.hq
  %i.ib = fmul <2 x float> %i.hi, %i.ia
  %i.ic = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ib)
  %i.id = fcmp olt float %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.l, label %b2MakeSeparationFunction.exit

bb.l:                                             ; preds = %b2Normalize.exit114.i
  %i.ie = fneg <2 x float> %.sroa.012.0.i110.i
  br label %b2MakeSeparationFunction.exit

bb.m:                                             ; preds = %bb.i
  %i.if = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.if
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.ig, align 4, !noalias !80 ; 2 uses
  %i.ih = and i64 %.sroa.670.0.extract.shift.i, 255
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ih
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.ii, align 4, !noalias !80 ; 2 uses
  %i.ij = fsub <2 x float> %.sroa.010.0.copyload.i, %.sroa.012.0.copyload.i ; 4 uses
  %i.ik = fmul <2 x float> %i.ij, %i.ij
  %i.il = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ik) ; 2 uses
  %i.im = fcmp ogt float %i.il, f0x057A0000
  br i1 %i.im, label %bb.n, label %b2Normalize.exit161.i

bb.n:                                             ; preds = %bb.m
  %i.in = extractelement <2 x float> %i.ij, i64 0
  %i.io = fneg float %i.in
  %sqrt.i158.i = tail call float @llvm.sqrt.f32(float %i.il)
  %i.ip = fdiv float 1.000000e+00, %sqrt.i158.i   ; 2 uses
  %i.iq = extractelement <2 x float> %i.ij, i64 1
  %i.ir = fmul float %i.iq, %i.ip
  %.sroa.012.0.vec.insert.i159.i = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.is = fmul float %i.ip, %i.io
  %.sroa.012.4.vec.insert.i160.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i159.i, float %i.is, i64 1
  br label %b2Normalize.exit161.i

b2Normalize.exit161.i:                            ; preds = %bb.n, %bb.m
  %.sroa.012.0.i157.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i160.i, %bb.n ], [ zeroinitializer, %bb.m ] ; 4 uses
  %i.it = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.iu = fmul <2 x float> %i.it, splat (float 5.000000e-01) ; 4 uses
  %i.iv = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.iv
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.iw, align 4, !noalias !80 ; 2 uses
  %i.ix = shufflevector <2 x float> %.sroa.012.0.i157.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = fmul <2 x float> %i.cy, %i.ix           ; 2 uses
  %i.iz = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ja = shufflevector <2 x float> %.sroa.012.0.i157.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jb = fmul <2 x float> %i.iz, %i.ja           ; 2 uses
  %i.jc = fsub <2 x float> %i.iy, %i.jb
  %i.jd = fadd <2 x float> %i.iy, %i.jb
  %i.je = shufflevector <2 x float> %i.jc, <2 x float> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.jf = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.cy, %i.jf           ; 2 uses
  %i.jh = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ji = fmul <2 x float> %i.iz, %i.jh           ; 2 uses
  %i.jj = fsub <2 x float> %i.jg, %i.ji
end_hunk_0
