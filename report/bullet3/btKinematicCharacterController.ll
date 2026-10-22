Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btKinematicCharacterController?download=true
inline.NumInlined: 552
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3:bb.a
bb.u:                                             ; preds = %bb.t
  %i.jv = call noundef float @sqrtf(float noundef %.pre-phi70) #24
  %i.jw = fdiv float 1.000000e+00, %i.jv          ; 3 uses
  %i.jx = extractelement <2 x float> %i.jt, i64 0
  %i.jy = fmul float %i.jx, %i.jw
  %i.jz = extractelement <2 x float> %i.jt, i64 1
  %i.ka = fmul float %i.jz, %i.jw
  %i.kb = fmul float %.pre-phi64, %i.jw
  %i.kc = load float, ptr %i.bj, align 4, !tbaa !10
  %i.kd = load float, ptr %i.bk, align 8, !tbaa !10
  %i.ke = fmul float %i.ka, %i.kd
  %i.kf = call float @llvm.fmuladd.f32(float %i.jy, float %i.kc, float %i.ke)
  %i.kg = load float, ptr %i.bl, align 4, !tbaa !10
  %i.kh = call noundef float @llvm.fmuladd.f32(float %i.kb, float %i.kg, float %i.kf)
  %i.ki = fcmp ugt float %i.kh, 0.000000e+00
  br i1 %i.ki, label %.critedge58, label %.critedge.sink.split

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !65
  br label %.critedge58

.critedge58:                                      ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.kj = fcmp ule float %i.gy, f0x3C23D70A
  %i.kk = add nsw i32 %i.bm, -1
  %.not = icmp eq i32 %i.bm, 0
  %or.cond = select i1 %i.kj, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge.sink.split:                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge

.critedge:                                        ; preds = %.critedge58, %.critedge.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 19 uses
  %4 = alloca %class.btTransform, align 4         ; 17 uses
  %5 = alloca %class.btTransform, align 4         ; 12 uses
  %.sroa.016 = alloca [4 x float], align 4        ; 4 uses
  %6 = alloca %class.btKinematicClosestNotMeConvexResultCallback, align 8 ; 13 uses
  %7 = alloca %class.btKinematicClosestNotMeConvexResultCallback, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !81 ; 3 uses
  %i.d = fcmp olt float %i.c, 0.000000e+00
  %i.e = fneg float %i.c
  %i.f = select i1 %i.d, float %i.e, float 0.000000e+00
  %i.g = fmul float %2, %i.f                      ; 5 uses
  %i.h = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.h, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load float, ptr %i.j, align 4, !tbaa !96 ; 2 uses
  %i.l = fcmp ogt float %i.g, %i.k
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.n = load i8, ptr %i.m, align 4, !tbaa !97, !range !42, !noundef !67
  %i.o = trunc nuw i8 %i.n to i1
  %.not = xor i1 %i.o, true
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 277
  %i.q = load i8, ptr %i.p, align 1, !range !42
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond101 = select i1 %.not, i1 %i.r, i1 false
  br i1 %or.cond101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.035 = phi float [ %i.k, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !35
  %i.v = fadd float %.035, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 3 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = fmul float %i.v, %i.x                    ; 2 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  %i.z = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %i.aa = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.z, %i.ab            ; 2 uses
  %i.ad = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.ae = fsub <2 x float> %i.ad, %i.ac
  store <2 x float> %i.ae, ptr %i.a, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !10
  %i.ah = fsub float %i.ag, %i.y
  store float %i.ah, ptr %i.af, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load float, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store float 1.000000e+00, ptr %i.am, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV43btKinematicClosestNotMeConvexResultCallback, i64 16), ptr %6, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !88
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !65
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 120
  store float %i.al, ptr %i.as, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load <2 x i32>, ptr %i.av, align 8, !tbaa !90
  store <2 x i32> %i.aw, ptr %i.an, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store float 1.000000e+00, ptr %i.ax, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV43btKinematicClosestNotMeConvexResultCallback, i64 16), ptr %7, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.aj, ptr %i.bb, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !65
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 120
  store float %i.al, ptr %i.bd, align 8, !tbaa !89
  %i.be = load <2 x i32>, ptr %i.av, align 8, !tbaa !90
  store <2 x i32> %i.be, ptr %i.ay, align 4, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 318 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.z, %bb.f
  %.sroa.066.0 = phi <2 x float> [ %i.ac, %bb.f ], [ %i.im, %bb.z ] ; 2 uses
  %.sroa.16.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.f ], [ %.sroa.3.12.vec.insert.i56, %bb.z ]
  %8 = phi i1 [ true, %bb.f ], [ false, %bb.z ]
  %.036 = phi i1 [ false, %bb.f ], [ true, %bb.z ] ; 2 uses
  store float 1.000000e+00, ptr %5, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bq, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bs, align 4, !tbaa !10
  store i32 0, ptr %i.bt, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !10
  %i.cy = load <8 x float>, ptr %i.bx, align 8, !tbaa !10 ; 6 uses
  %i.cz = load float, ptr %i.cj, align 4, !tbaa !10 ; 3 uses
  %i.da = load float, ptr %i.ci, align 8, !tbaa !10 ; 2 uses
  %i.db = load float, ptr %i.ch, align 4, !tbaa !10 ; 3 uses
  %i.dc = load float, ptr %i.ca, align 4, !tbaa !10 ; 3 uses
  %i.dd = load float, ptr %i.bz, align 8, !tbaa !10 ; 2 uses
  %i.de = load float, ptr %i.by, align 4, !tbaa !10 ; 3 uses
  %i.df = shufflevector <8 x float> %i.cy, <8 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.dg = fmul <2 x float> %i.df, %i.df
  %i.dh = shufflevector <8 x float> %i.cy, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.di = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dh, <2 x float> %i.dg)
  %i.dj = shufflevector <8 x float> %i.cy, <8 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dl = shufflevector <8 x float> %i.cy, <8 x float> poison, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dl, <2 x float> %i.dk)
  %i.dn = fdiv <2 x float> splat (float 2.000000e+00), %i.dm ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0 ; 3 uses
  %i.dp = extractelement <8 x float> %i.cy, i64 0 ; 4 uses
  %i.dq = fmul float %i.dp, %i.do                 ; 2 uses
  %i.dr = fmul float %i.de, %i.do                 ; 3 uses
  %i.ds = fmul float %i.dd, %i.do                 ; 4 uses
  %i.dt = fmul float %i.dc, %i.dq                 ; 2 uses
  %i.du = fmul float %i.dc, %i.dr                 ; 2 uses
  %i.dv = fmul float %i.dc, %i.ds                 ; 2 uses
  %i.dw = fmul float %i.dp, %i.dq                 ; 2 uses
  %i.dx = fmul float %i.dp, %i.dr                 ; 2 uses
  %i.dy = fmul float %i.dp, %i.ds                 ; 2 uses
  %i.dz = fmul float %i.de, %i.dr                 ; 2 uses
  %i.ea = fmul float %i.de, %i.ds                 ; 2 uses
  %i.eb = fmul float %i.dd, %i.ds                 ; 2 uses
  %i.ec = fadd float %i.dz, %i.eb
  %i.ed = fsub float 1.000000e+00, %i.ec
  %i.ee = fsub float %i.dx, %i.dv
  %i.ef = fadd float %i.dy, %i.du
  %i.eg = fadd float %i.dx, %i.dv
  %i.eh = fadd float %i.dw, %i.eb
  %i.ei = fsub float 1.000000e+00, %i.eh
  %i.ej = fsub float %i.ea, %i.dt
  %i.ek = fsub float %i.dy, %i.du
  %i.el = fadd float %i.ea, %i.dt
  %i.em = fadd float %i.dw, %i.dz
  %i.en = fsub float 1.000000e+00, %i.em
  store float %i.ed, ptr %3, align 4, !tbaa !10
  store float %i.ee, ptr %i.bf, align 4, !tbaa !10
  store float %i.ef, ptr %i.cb, align 4, !tbaa !10
  store float %i.eg, ptr %i.cd, align 4, !tbaa !10
  store float %i.ei, ptr %i.bg, align 4, !tbaa !10
  store float %i.ej, ptr %i.bh, align 4, !tbaa !10
  store float %i.ek, ptr %i.cf, align 4, !tbaa !10
  store float %i.el, ptr %i.cg, align 4, !tbaa !10
  store float %i.en, ptr %i.bi, align 4, !tbaa !10
  %i.eo = extractelement <2 x float> %i.dn, i64 1 ; 3 uses
  %i.ep = extractelement <8 x float> %i.cy, i64 4 ; 4 uses
  %i.eq = fmul float %i.ep, %i.eo                 ; 2 uses
  %i.er = fmul float %i.db, %i.eo                 ; 3 uses
  %i.es = fmul float %i.da, %i.eo                 ; 4 uses
  %i.et = fmul float %i.cz, %i.eq                 ; 2 uses
  %i.eu = fmul float %i.cz, %i.er                 ; 2 uses
  %i.ev = fmul float %i.cz, %i.es                 ; 2 uses
  %i.ew = fmul float %i.ep, %i.eq                 ; 2 uses
  %i.ex = fmul float %i.ep, %i.er                 ; 2 uses
  %i.ey = fmul float %i.ep, %i.es                 ; 2 uses
  %i.ez = fmul float %i.db, %i.er                 ; 2 uses
  %i.fa = fmul float %i.db, %i.es                 ; 2 uses
  %i.fb = fmul float %i.da, %i.es                 ; 2 uses
  %i.fc = fadd float %i.ez, %i.fb
  %i.fd = fsub float 1.000000e+00, %i.fc
  %i.fe = fsub float %i.ex, %i.ev
  %i.ff = fadd float %i.ey, %i.eu
  %i.fg = fadd float %i.ex, %i.ev
  %i.fh = fadd float %i.ew, %i.fb
  %i.fi = fsub float 1.000000e+00, %i.fh
  %i.fj = fsub float %i.fa, %i.et
  %i.fk = fsub float %i.ey, %i.eu
  %i.fl = fadd float %i.fa, %i.et
  %i.fm = fadd float %i.ew, %i.ez
  %i.fn = fsub float 1.000000e+00, %i.fm
  store float %i.fd, ptr %4, align 4, !tbaa !10
  store float %i.fe, ptr %i.bk, align 4, !tbaa !10
  store float %i.ff, ptr %i.ck, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !10
  store float %i.fg, ptr %i.cm, align 4, !tbaa !10
  store float %i.fi, ptr %i.bl, align 4, !tbaa !10
  store float %i.fj, ptr %i.bm, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !10
  store float %i.fk, ptr %i.co, align 4, !tbaa !10
  store float %i.fl, ptr %i.cp, align 4, !tbaa !10
  store float %i.fn, ptr %i.bn, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !10
  %i.fo = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.fp = fsub <2 x float> %i.fo, %.sroa.066.0
  %i.fq = load float, ptr %i.af, align 8, !tbaa !10
  %.sroa.16.8.vec.extract84 = extractelement <2 x float> %.sroa.16.0, i64 0 ; 2 uses
  %i.fr = fsub float %i.fq, %.sroa.16.8.vec.extract84
  %.sroa.3.12.vec.insert.i51 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fr, i64 0
  store <2 x float> %i.fp, ptr %i.cq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i51, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !64
  %i.fs = load i8, ptr %i.cr, align 2, !tbaa !91, !range !42, !noundef !67
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.fu = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.fv = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.fw = load float, ptr %i.ct, align 4, !tbaa !92
  call void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(408) %i.fu, ptr noundef %i.fv, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(20) %6, float noundef %i.fw)
  %i.fx = load float, ptr %i.am, align 8, !tbaa !84
  %i.fy = fcmp olt float %i.fx, 1.000000e+00
  br i1 %i.fy, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fz = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 224
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !77
  %i.gc = and i32 %i.gb, 4
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ge = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.gf = load float, ptr %i.ct, align 4, !tbaa !92
  call void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(408) %i.fz, ptr noundef %i.ge, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(20) %7, float noundef %i.gf)
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.gg = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.gh = load float, ptr %i.ct, align 4, !tbaa !92
  call void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(121) %1, ptr noundef %i.gg, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(20) %6, float noundef %i.gh)
  %i.gi = load float, ptr %i.am, align 8, !tbaa !84
  %i.gj = fcmp olt float %i.gi, 1.000000e+00
  br i1 %i.gj, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gk = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 224
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !77
  %i.gn = and i32 %i.gm, 4
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gp = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.gq = load float, ptr %i.ct, align 4, !tbaa !92
  call void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(121) %1, ptr noundef %i.gp, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(20) %7, float noundef %i.gq)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.k, %bb.l, %bb.h, %bb.i
  %i.gr = load float, ptr %i.b, align 4, !tbaa !81 ; 2 uses
  %i.gs = fcmp olt float %i.gr, 0.000000e+00
  %i.gt = fneg float %i.gr
  %i.gu = select i1 %i.gs, float %i.gt, float 0.000000e+00
  %i.gv = fmul float %2, %i.gu                    ; 2 uses
  %i.gw = load i8, ptr %i.cu, align 2, !tbaa !37, !range !42, !noundef !67
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.gy = load float, ptr %i.am, align 8, !tbaa !84
  %i.gz = fcmp olt float %i.gy, 1.000000e+00
  %i.ha = load float, ptr %i.ax, align 8
  %i.hb = fcmp olt float %i.ha, 1.000000e+00
  %or.cond104 = select i1 %i.gz, i1 true, i1 %i.hb
  br i1 %or.cond104, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.hc = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 224
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !77
  %i.hf = and i32 %i.he, 4
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.hh = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.hi = load ptr, ptr %0, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.hc, ptr noundef %i.hh)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.hm = load float, ptr %i.ax, align 8, !tbaa !84
  %i.hn = fcmp olt float %i.hm, 1.000000e+00
  br i1 %i.hn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ho = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 224
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !77
  %i.hr = and i32 %i.hq, 4
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ht = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.hu = load ptr, ptr %0, align 8, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 112
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call noundef zeroext i1 %i.hw(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.ho, ptr noundef %i.ht)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.o, %bb.r, %bb.s, %bb.p
  %.029.in = phi i1 [ %i.hl, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.r ], [ %i.hx, %bb.t ]
  %i.hy = load float, ptr %i.b, align 4, !tbaa !81
  %i.hz = fcmp olt float %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ia = load float, ptr %i.cv, align 4, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi float [ %i.ia, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %9 = fcmp ogt float %i.gv, 0.000000e+00
  %10 = fcmp olt float %i.gv, %.0
  %or.cond.not110.not114 = select i1 %9, i1 %10, i1 false
  %brmerge.not111 = and i1 %.029.in, %or.cond.not110.not114
  %or.cond47 = and i1 %8, %brmerge.not111
  br i1 %or.cond47, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ib = load i8, ptr %i.cw, align 4, !tbaa !97, !range !42, !noundef !67
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.id = load i8, ptr %i.cx, align 1, !tbaa !98, !range !42, !noundef !67
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.016, i64 16, i1 false), !tbaa.struct !65
  %i.if = load float, ptr %i.t, align 4, !tbaa !35
  %i.ig = fadd float %.0, %i.if                   ; 2 uses
  %i.ih = load float, ptr %i.w, align 4, !tbaa !10
  %i.ii = fmul float %i.ig, %i.ih                 ; 2 uses
  %.sroa.3.12.vec.insert.i56 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ii, i64 0
  %i.ij = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %i.ik = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.ij, %i.il           ; 2 uses
  %i.in = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.io = fsub <2 x float> %i.in, %i.im
  store <2 x float> %i.io, ptr %i.a, align 8, !tbaa !10
  %i.ip = load float, ptr %i.af, align 8, !tbaa !10
  %i.iq = fsub float %i.ip, %i.ii
  store float %i.iq, ptr %i.af, align 8, !tbaa !10
  br label %bb.g

bb.aa:                                            ; preds = %bb.w, %bb.y
  %i.ir = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 224
  %i.it = load i32, ptr %i.is, align 8, !tbaa !77
  %i.iu = and i32 %i.it, 4
  %i.iv = icmp eq i32 %i.iu, 0
  %i.iw = load float, ptr %i.am, align 8
  %i.ix = fcmp olt float %i.iw, 1.000000e+00
  %or.cond107 = select i1 %i.iv, i1 %i.ix, i1 false
  br i1 %or.cond107, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.iy = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.iz = load ptr, ptr %0, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 112
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = call noundef zeroext i1 %i.jb(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.ir, ptr noundef %i.iy)
  %or.cond48 = or i1 %.036, %i.jc
  br i1 %or.cond48, label %bb.ad, label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  br i1 %.036, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.je = load float, ptr %i.jd, align 8, !tbaa !10 ; 2 uses
  %i.jf = load i8, ptr %i.cu, align 2, !tbaa !37, !range !42, !noundef !67
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !10
  %i.jj = fsub float %i.je, %i.ji
  %i.jk = fmul float %i.jj, 5.000000e-01
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !36, !range !42, !noundef !67
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.jo = load float, ptr %i.am, align 8, !tbaa !84
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.jp = load float, ptr %i.am, align 8, !tbaa !84
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink136 = phi float [ %i.jo, %bb.af ], [ %i.jp, %bb.ag ], [ %i.jk, %bb.ae ] ; 3 uses
  %i.jq = fsub float 1.000000e+00, %.sink136      ; 2 uses
  %i.jr = load float, ptr %i.bu, align 4, !tbaa !10
  %i.js = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.jt = insertelement <2 x float> poison, float %.sink136, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x float> %i.ju, %i.js
  %i.jw = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.je, i64 1
  %i.ka = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.jz, <2 x float> %i.jv)
  store <2 x float> %i.ka, ptr %i.bu, align 4, !tbaa !10
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !10
  %i.kd = load float, ptr %i.af, align 8, !tbaa !10
  %i.ke = fmul float %.sink136, %i.kd
  %i.kf = call float @llvm.fmuladd.f32(float %i.jq, float %i.kc, float %i.ke)
  store float %i.kf, ptr %i.kb, align 4, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 317
  store i8 0, ptr %i.kg, align 1, !tbaa !36
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !10
  store i8 0, ptr %i.cx, align 1, !tbaa !98
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ab, %bb.ac
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 317
  store i8 1, ptr %i.kh, align 1, !tbaa !36
  %i.ki = load i8, ptr %i.cu, align 2, !tbaa !37, !range !42, !noundef !67
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.kk = load float, ptr %i.b, align 4, !tbaa !81 ; 2 uses
  %i.kl = fcmp olt float %i.kk, 0.000000e+00
  %i.km = fneg float %i.kk
  %i.kn = select i1 %i.kl, float %i.km, float 0.000000e+00
  %i.ko = fmul float %2, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !96 ; 2 uses
  %i.kr = fcmp ogt float %i.ko, %i.kq
  br i1 %i.kr, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ks = load i8, ptr %i.cw, align 4, !tbaa !97, !range !42, !noundef !67
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ku = load i8, ptr %i.cx, align 1, !tbaa !98, !range !42, !noundef !67
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.kw = load float, ptr %i.af, align 8, !tbaa !10
  %i.kx = fadd float %.sroa.16.8.vec.extract84, %i.kw
  %i.ky = load float, ptr %i.t, align 4, !tbaa !35
  %i.kz = fadd float %i.kq, %i.ky                 ; 2 uses
  %i.la = load float, ptr %i.w, align 4, !tbaa !10
  %i.lb = fmul float %i.kz, %i.la
  %i.lc = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.ld = fadd <2 x float> %.sroa.066.0, %i.lc
  %i.le = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %i.lf = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x float> %i.le, %i.lg
  %i.li = fsub <2 x float> %i.ld, %i.lh
  store <2 x float> %i.li, ptr %i.a, align 8, !tbaa !10
  %i.lj = fsub float %i.kx, %i.lb
  store float %i.lj, ptr %i.af, align 8, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.am, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((84, 116), (279, 280)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 279
  store i8 1, ptr %i.a, align 1, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load float, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %i.k = tail call noundef float @sqrtf(float noundef %i.j) #24
  %i.l = fcmp ogt float %i.k, f0x34000000
  br i1 %i.l, label %bb.b, label %_ZL19getNormalizedVectorRK9btVector3.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i.i = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.8.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload3.i.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %.sroa.0.0.copyload3.i.i
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.n = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.m)
  %.sroa.8.8.vec.extract.i.i = extractelement <2 x float> %.sroa.8.0.copyload.i.i, i64 0 ; 3 uses
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i.i, float %.sroa.8.8.vec.extract.i.i, float %i.n)
  %i.p = tail call noundef float @sqrtf(float noundef %i.o) #24
  %i.q = fdiv float 1.000000e+00, %i.p            ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %i.s
  %i.u = fmul float %.sroa.8.8.vec.extract.i.i, %i.q
  %.sroa.8.8.vec.insert.i.i = insertelement <2 x float> %.sroa.8.0.copyload.i.i, float %i.u, i64 0
  br label %_ZL19getNormalizedVectorRK9btVector3.exit

_ZL19getNormalizedVectorRK9btVector3.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.t, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.8.8.vec.insert.i.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 100
  store <2 x float> %.sroa.0.0.i, ptr %i.v, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((84, 116), (279, 280)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 279
  store i8 0, ptr %i.a, align 1, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load float, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %i.k = tail call noundef float @sqrtf(float noundef %i.j) #24
  %i.l = fcmp ogt float %i.k, f0x34000000
  br i1 %i.l, label %bb.b, label %_ZL19getNormalizedVectorRK9btVector3.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i.i = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.8.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload3.i.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %.sroa.0.0.copyload3.i.i
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.n = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.m)
  %.sroa.8.8.vec.extract.i.i = extractelement <2 x float> %.sroa.8.0.copyload.i.i, i64 0 ; 3 uses
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i.i, float %.sroa.8.8.vec.extract.i.i, float %i.n)
  %i.p = tail call noundef float @sqrtf(float noundef %i.o) #24
  %i.q = fdiv float 1.000000e+00, %i.p            ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %i.s
  %i.u = fmul float %.sroa.8.8.vec.extract.i.i, %i.q
  %.sroa.8.8.vec.insert.i.i = insertelement <2 x float> %.sroa.8.0.copyload.i.i, float %i.u, i64 0
  br label %_ZL19getNormalizedVectorRK9btVector3.exit

end_hunk_0
