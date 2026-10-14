Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/capsule?download=true
inline.NumInlined: 93
inline.NumDeleted: 24
begin_hunk_0
@5 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'const b3ShapeProxy' (aka 'const struct b3ShapeProxy')\00" }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 88, i32 17 }, ptr @5, i8 3, i8 0 }
@b3Transform_identity = internal unnamed_addr constant %struct.b3Transform { %struct.b3Vec3 zeroinitializer, %struct.b3Quat { %struct.b3Vec3 zeroinitializer, float 1.000000e+00 } }, align 8
@7 = private unnamed_addr constant { i16, i16, [7 x i8] } { i16 0, i16 6, [7 x i8] c"'bool'\00" }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 103, i32 21 }, ptr @0, i8 2, i8 3 }
@9 = private unnamed_addr constant { i16, i16, [59 x i8] } { i16 -1, i16 0, [59 x i8] c"'const b3RayCastInput' (aka 'const struct b3RayCastInput')\00" }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 123, i32 27 }, ptr @9, i8 2, i8 3 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 345, i32 47 }, ptr @0, i8 2, i8 3 }
@12 = private unnamed_addr constant { i16, i16, [63 x i8] } { i16 -1, i16 0, [63 x i8] c"'const b3ShapeCastInput' (aka 'const struct b3ShapeCastInput')\00" }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 346, i32 28 }, ptr @12, i8 3, i8 3 }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 350, i32 33 }, ptr @7 }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 358, i32 29 }, ptr @0, i8 2, i8 3 }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 358, i32 45 }, ptr @0, i8 2, i8 3 }
@17 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'b3PlaneResult' (aka 'struct b3PlaneResult')\00" }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 383, i32 2 }, ptr @17, i8 2, i8 1 }

; Function Attrs: nounwind uwtable
define void @b3ComputeCapsuleMass(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3MassData) align 4 captures(none) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 !func_sanitize !25 {
bb.a:
  %3 = alloca %struct.b3Matrix3, align 8          ; 7 uses
  %4 = alloca %struct.b3Matrix3, align 8          ; 7 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.068.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 2 uses
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.671.0.copyload = load float, ptr %.sroa.671.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !15 ; 8 uses
  %i.i = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.068.0.copyload ; 3 uses
  %i.j = fsub float %.sroa.6.0.copyload, %.sroa.671.0.copyload ; 3 uses
  %i.k = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.k, %shift
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fmul float %i.j, %i.j
  %i.n = fadd float %i.m, %i.l                    ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.n) ; 7 uses
  %i.o = fmul float %i.h, f0x40490FDB
  %i.p = fmul float %i.h, %i.o
  %i.q = fmul float %i.p, %sqrt.i.i
  %i.r = fmul float %2, %i.q                      ; 2 uses
  %i.s = fmul float %i.h, f0x40860A92
  %i.t = fmul float %i.h, %i.s
  %i.u = fmul float %i.h, %i.t
  %i.v = fmul float %2, %i.u                      ; 3 uses
  call void @b3CylinderInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %3, float noundef %i.r, float noundef %i.h, float noundef %sqrt.i.i) #9
  call void @b3SphereInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %4, float noundef %i.v, float noundef %i.h) #9
  %.sroa.0192.0.copyload = load float, ptr %4, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.4193.0.copyload = load float, ptr %.sroa.4193.0..sroa_idx, align 4
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.11200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.11200.0.copyload = load float, ptr %.sroa.11200.0..sroa_idx, align 8
  %.sroa.0183.0.copyload = load float, ptr %3, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4184.0.copyload = load float, ptr %.sroa.4184.0..sroa_idx, align 4
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load <4 x float>, ptr %.sroa.5194.0..sroa_idx, align 8
  %i.x = load <4 x float>, ptr %.sroa.5185.0..sroa_idx, align 8
  %.sroa.9189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load <2 x float>, ptr %.sroa.6195.0..sroa_idx, align 4 ; 2 uses
  %i.z = load <2 x float>, ptr %.sroa.9198.0..sroa_idx, align 8
  %i.aa = load <2 x float>, ptr %.sroa.6186.0..sroa_idx, align 4 ; 2 uses
  %i.ab = load <2 x float>, ptr %.sroa.9189.0..sroa_idx, align 8
  %.sroa.11191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.11191.0.copyload = load float, ptr %.sroa.11191.0..sroa_idx, align 8
  %i.ac = fmul float %sqrt.i.i, %sqrt.i.i
  %i.ad = fcmp ogt float %i.ac, f0x057A0000
  br i1 %i.ad, label %b3Normalize.exit, label %bb.d

b3Normalize.exit:                                 ; preds = %bb.c
  %i.ae = fcmp ogt float %i.n, f0x057A0000        ; 2 uses
  %i.af = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.i, %i.ah
  %i.aj = fmul float %i.j, %i.af
  %.sroa.07.0.i = select i1 %i.ae, <2 x float> %i.ai, <2 x float> zeroinitializer
  %.sroa.5.0.i = select i1 %i.ae, float %i.aj, float 0.000000e+00
  %i.ak = call { <2 x float>, <2 x float> } @b3ComputeQuatBetweenUnitVectors(<2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %.sroa.07.0.i, float %.sroa.5.0.i) #9 ; 2 uses
  %i.al = extractvalue { <2 x float>, <2 x float> } %i.ak, 0 ; 6 uses
  %i.am = extractvalue { <2 x float>, <2 x float> } %i.ak, 1 ; 4 uses
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.al, <3 x i32> <i32 0, i32 2, i32 0>
  %i.ap = fmul <3 x float> %i.an, %i.ao           ; 3 uses
  %i.aq = shufflevector <2 x float> %i.al, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 1> ; 2 uses
  %i.ar = fmul <3 x float> %i.aq, %i.aq
  %i.as = shufflevector <2 x float> %i.al, <2 x float> %i.am, <3 x i32> <i32 0, i32 2, i32 2> ; 2 uses
  %i.at = fmul <3 x float> %i.as, %i.as
  %i.au = shufflevector <2 x float> %i.am, <2 x float> %i.al, <3 x i32> <i32 1, i32 0, i32 3>
  %i.av = shufflevector <2 x float> %i.al, <2 x float> %i.am, <3 x i32> <i32 0, i32 3, i32 3>
  %i.aw = fmul <3 x float> %i.au, %i.av           ; 3 uses
  %i.ax = fadd <3 x float> %i.ar, %i.at
  %i.ay = fmul <3 x float> %i.ax, splat (float 2.000000e+00)
  %foldExtExtBinop242 = fadd <3 x float> %i.ap, %i.aw
  %i.az = extractelement <3 x float> %foldExtExtBinop242, i64 1
  %i.ba = fmul float %i.az, 2.000000e+00
  %i.bb = fsub <3 x float> %i.ap, %i.aw
  %i.bc = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.bd = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.be = fadd <2 x float> %i.bc, %i.bd
  %i.bf = shufflevector <3 x float> %i.bb, <3 x float> poison, <5 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison>
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bh = fsub <3 x float> splat (float 1.000000e+00), %i.ay
  %i.bi = shufflevector <3 x float> %i.bh, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bj = shufflevector <5 x float> %i.bf, <5 x float> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 6, i32 poison, i32 poison, i32 poison>
  %i.bk = fmul <8 x float> %i.bj, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float poison, float poison, float poison>
  %i.bl = shufflevector <8 x float> %i.bi, <8 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 12>
  br label %bb.d

bb.d:                                             ; preds = %b3Normalize.exit, %bb.c
  %.sroa.7146.0 = phi float [ %i.ba, %b3Normalize.exit ], [ 0.000000e+00, %bb.c ] ; 4 uses
  %i.bm = phi <8 x float> [ %i.bl, %b3Normalize.exit ], [ <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ] ; 14 uses
  %i.bn = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bo = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bp = fadd float %.sroa.11200.0.copyload, %.sroa.11191.0.copyload
  %i.bq = fmul float %i.v, 1.250000e-01
  %i.br = fmul float %i.h, 3.000000e+00
  %i.bs = fmul float %sqrt.i.i, 2.000000e+00
  %i.bt = fadd float %i.br, %i.bs
  %i.bu = fmul float %i.bq, %i.bt
  %i.bv = fmul float %sqrt.i.i, %i.bu             ; 2 uses
  %i.bw = fadd float %i.bv, %i.bp                 ; 2 uses
  %i.bx = fadd float %.sroa.0192.0.copyload, %.sroa.0183.0.copyload
  %i.by = fadd <2 x float> %i.z, %i.ab            ; 3 uses
  %i.bz = fadd <2 x float> %i.bo, %i.bn           ; 3 uses
  %i.ca = insertelement <2 x float> %i.y, float %.sroa.4193.0.copyload, i64 1
  %i.cb = insertelement <2 x float> %i.aa, float %.sroa.4184.0.copyload, i64 1
  %i.cc = fadd <2 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = fadd <2 x float> %.sroa.068.0.copyload, %.sroa.065.0.copyload
  %i.ce = fadd float %.sroa.671.0.copyload, %.sroa.6.0.copyload
  %i.cf = fmul <2 x float> %i.cd, splat (float 5.000000e-01)
  %i.cg = fmul float %i.ce, 5.000000e-01
  %i.ch = fadd float %i.v, %i.r
  store float %i.ch, ptr %0, align 4, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.cf, ptr %i.ci, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.cg, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 5, i32 7> ; 2 uses
  %i.cl = fmul <2 x float> %i.bz, %i.ck           ; 2 uses
  %shift244 = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop245 = fadd <2 x float> %shift244, %i.cl
  %i.cm = extractelement <2 x float> %foldExtExtBinop245, i64 0
  %i.cn = extractelement <8 x float> %i.bm, i64 0 ; 2 uses
  %i.co = fmul float %i.bw, %i.cn
  %i.cp = fadd float %i.co, %i.cm                 ; 2 uses
  %i.cq = insertelement <2 x float> %i.y, float %i.bv, i64 0
  %i.cr = insertelement <2 x float> %i.aa, float %i.bx, i64 0
  %i.cs = fadd <2 x float> %i.cq, %i.cr           ; 3 uses
  %i.ct = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 7, i32 5>
  %i.cu = fmul <2 x float> %i.cc, %i.ct
  %i.cv = fmul <2 x float> %i.cs, %i.ck
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.by, %i.cx
  %i.cz = fadd <2 x float> %i.cy, %i.cw           ; 3 uses
  %i.da = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 4, i32 2> ; 2 uses
  %i.db = fmul <2 x float> %i.cc, %i.da
  %i.dc = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.dd = fmul <2 x float> %i.by, %i.dc
  %i.de = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 3, i32 6> ; 3 uses
  %i.df = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.dg = fmul <2 x float> %i.cs, %i.df
  %i.dh = fadd <2 x float> %i.db, %i.dg
  %i.di = fadd <2 x float> %i.dd, %i.dh           ; 3 uses
  %i.dj = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = insertelement <2 x float> %i.da, float %.sroa.7146.0, i64 1
  %i.dl = fmul <2 x float> %i.dj, %i.dk
  %i.dm = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.dn = fmul <2 x float> %i.bz, %i.dm
  %i.do = fadd <2 x float> %i.dn, %i.dl
  %i.dp = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 6, i32 3>
  %i.ds = fmul <2 x float> %i.dq, %i.dr
  %i.dt = fadd <2 x float> %i.ds, %i.do           ; 3 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.de, %i.du
  %i.dw = shufflevector <8 x float> %i.bm, <8 x float> poison, <4 x i32> <i32 0, i32 0, i32 5, i32 7>
  %i.dx = shufflevector <2 x float> %i.di, <2 x float> %i.dt, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dy = fmul <4 x float> %i.dw, %i.dx           ; 4 uses
  %shift247 = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop248 = fadd <4 x float> %i.dy, %shift247
  %i.dz = insertelement <2 x float> %i.df, float %.sroa.7146.0, i64 0 ; 3 uses
  %i.ea = fmul <2 x float> %i.dz, %i.di
  %i.eb = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ec = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = fadd <2 x float> %i.ea, %i.ed
  %i.ef = fadd <2 x float> %i.dv, %i.ee
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %shift250.a = shufflevector <4 x float> %foldExtExtBinop248, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop251 = fadd <4 x float> %i.dy, %shift250.a
  %i.eh = extractelement <4 x float> %foldExtExtBinop251, i64 0
  %i.ei = insertelement <2 x float> %i.eb, float %.sroa.7146.0, i64 1
  %i.ej = fmul <2 x float> %i.cc, %i.ei
  %i.ek = shufflevector <8 x float> %i.bm, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.el = fmul <2 x float> %i.by, %i.ek
  %i.em = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = fmul <2 x float> %i.de, %i.em
  %i.eo = insertelement <2 x float> %i.dm, float %.sroa.7146.0, i64 0
  %i.ep = fmul <2 x float> %i.cs, %i.eo
  %i.eq = fadd <2 x float> %i.ej, %i.ep
  %i.er = fadd <2 x float> %i.el, %i.eq           ; 3 uses
  %i.es = fmul <2 x float> %i.dz, %i.er
  %i.et = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = fmul <2 x float> %i.eb, %i.et
  %i.ev = fadd <2 x float> %i.es, %i.eu
  %i.ew = fadd <2 x float> %i.en, %i.ev
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = shufflevector <8 x float> %i.bm, <8 x float> poison, <4 x i32> <i32 5, i32 7, i32 5, i32 7>
  %i.ez = shufflevector <2 x float> %i.er, <2 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fa = fmul <4 x float> %i.ey, %i.ez           ; 4 uses
  %shift253 = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop254 = fadd <4 x float> %i.fa, %shift253
  %shift256 = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop257 = fadd <4 x float> %shift256, %foldExtExtBinop254
  %i.fb = extractelement <4 x float> %foldExtExtBinop257, i64 0
  %shift259 = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop260 = fadd <4 x float> %i.fa, %shift259
  %i.fc = extractelement <4 x float> %foldExtExtBinop260, i64 2
  %i.fd = fmul <2 x float> %i.dz, %i.cz
  %i.fe = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fmul <2 x float> %i.eb, %i.fe
  %i.fg = fadd <2 x float> %i.fd, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.de, %i.fi
  %i.fk = fadd <2 x float> %i.fj, %i.fg
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = fmul float %i.cn, %i.cp
  %i.fn = fadd float %i.fm, %i.fc
  store <2 x float> %i.eg, ptr %i.cj, align 4, !tbaa !12
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.eh, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !12
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.ex, ptr %.sroa.5133.0..sroa_idx, align 4, !tbaa !12
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.fb, ptr %.sroa.6134.0..sroa_idx, align 4, !tbaa !12
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.fl, ptr %.sroa.7135.0..sroa_idx, align 4, !tbaa !12
  %.sroa.8136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.fn, ptr %.sroa.8136.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @b3CylinderInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @b3SphereInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare { <2 x float>, <2 x float> } @b3ComputeQuatBetweenUnitVectors(<2 x float>, float, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @b3ComputeCapsuleAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2) local_unnamed_addr #0 !func_sanitize !29 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15 ; 3 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0117.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load <4 x float>, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5119.0.copyload = load <2 x float>, ptr %.sroa.5119.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6120.0.copyload = load <2 x float>, ptr %.sroa.6120.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5119.0.copyload, i64 0 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.h, align 4 ; 4 uses
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.051.0.copyload, %.sroa.6120.0.copyload
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.j = fmul float %.sroa.252.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.k = fsub float %i.i, %i.j
  %i.l = shufflevector <2 x float> %.sroa.051.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.m = insertelement <2 x float> %i.l, float %.sroa.252.0.copyload, i64 1 ; 2 uses
  %i.n = fmul <2 x float> %i.m, %.sroa.5119.0.copyload
  %i.o = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> %.sroa.6120.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.p = fmul <2 x float> %.sroa.051.0.copyload, %i.o
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = insertelement <2 x float> %i.l, float %.sroa.252.0.copyload, i64 0
  %i.s = shufflevector <2 x float> %.sroa.6120.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.t = fmul <2 x float> %i.r, %i.s
  %i.u = fmul <2 x float> %i.m, %i.s
  %i.v = fadd <2 x float> %i.t, %i.q              ; 2 uses
  %i.w = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x float> %i.w, float %i.k, i64 0
  %i.y = fadd <2 x float> %i.u, %i.x              ; 2 uses
  %i.z = fmul <2 x float> %i.o, %i.v
  %i.aa = shufflevector <2 x float> %.sroa.6120.0.copyload, <2 x float> %.sroa.5119.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %i.ac = fsub <2 x float> %i.z, %i.ab
  %i.ad = fmul <2 x float> %i.ac, splat (float 2.000000e+00)
  %i.ae = fadd <2 x float> %.sroa.051.0.copyload, %i.ad
  %i.af = fadd <2 x float> %.sroa.0117.0.copyload, %i.ae ; 4 uses
  %foldExtExtBinop122 = fmul <2 x float> %.sroa.6120.0.copyload, %.sroa.043.0.copyload
  %i.ag = extractelement <2 x float> %foldExtExtBinop122, i64 0
  %i.ah = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.244.0.copyload
  %i.ai = fsub float %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %.sroa.043.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %.sroa.244.0.copyload, i64 1 ; 2 uses
  %i.al = fmul <2 x float> %.sroa.5119.0.copyload, %i.ak
  %i.am = fmul <2 x float> %i.o, %.sroa.043.0.copyload
  %i.an = fsub <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = insertelement <2 x float> %i.aj, float %.sroa.244.0.copyload, i64 0
  %i.ap = fmul <2 x float> %i.s, %i.ao
  %i.aq = fmul <2 x float> %i.s, %i.ak
  %i.ar = fadd <2 x float> %i.ap, %i.an           ; 2 uses
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x float> %i.as, float %i.ai, i64 0
  %i.au = fadd <2 x float> %i.aq, %i.at           ; 2 uses
  %i.av = fmul <2 x float> %i.o, %i.ar
  %i.aw = fmul <2 x float> %i.aa, %i.au
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = fmul <2 x float> %i.ax, splat (float 2.000000e+00)
  %i.az = fadd <2 x float> %.sroa.043.0.copyload, %i.ay
  %i.ba = fadd <2 x float> %.sroa.0117.0.copyload, %i.az ; 4 uses
  %i.bb = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = shufflevector <2 x float> %i.y, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = shufflevector <2 x float> %i.v, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = fsub <2 x float> %i.bd, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = insertelement <2 x float> poison, float %.sroa.252.0.copyload, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %.sroa.244.0.copyload, i64 1
  %i.bl = fadd <2 x float> %i.bk, %i.bi
  %i.bm = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fadd <2 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = fcmp olt <2 x float> %i.af, %i.ba
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.af, <2 x float> %i.ba
  %i.bq = extractelement <2 x float> %i.bn, i64 0 ; 4 uses
  %i.br = extractelement <2 x float> %i.bn, i64 1 ; 4 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.bq, float %i.br
  %i.bu = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fsub <2 x float> %i.bp, %i.bv
  %i.bx = fsub float %i.bt, %i.g
  store <2 x float> %i.bw, ptr %0, align 4, !tbaa !12
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bx, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = fcmp ogt float %i.bq, %i.br
  %i.ca = select i1 %i.bz, float %i.bq, float %i.br
  %i.cb = fcmp ogt <2 x float> %i.af, %i.ba
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.af, <2 x float> %i.ba
  %i.cd = fadd <2 x float> %i.bv, %i.cc
  %i.ce = fadd float %i.g, %i.ca
  store <2 x float> %i.cd, ptr %i.by, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ce, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3ComputeSweptCapsuleAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15 ; 3 uses
  %.sroa.0103.0.copyload = load <2 x float>, ptr %1, align 4 ; 7 uses
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0258.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load <4 x float>, ptr %.sroa.4259.0..sroa_idx, align 8
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5260.0.copyload = load <2 x float>, ptr %.sroa.5260.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6261.0.copyload = load <2 x float>, ptr %.sroa.6261.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5260.0.copyload, i64 0 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.h, align 4 ; 7 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0250.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4251.0.copyload = load float, ptr %.sroa.4251.0..sroa_idx, align 8
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5252.0.copyload = load <2 x float>, ptr %.sroa.5252.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6253.0.copyload = load <2 x float>, ptr %.sroa.6253.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i154 = extractelement <2 x float> %.sroa.5252.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0103.0.copyload, %.sroa.6261.0.copyload
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.j = fmul float %.sroa.2104.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.k = fsub float %i.i, %i.j
  %i.l = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.m = insertelement <2 x float> %i.l, float %.sroa.2104.0.copyload, i64 1 ; 4 uses
  %i.n = fmul <2 x float> %i.m, %.sroa.5260.0.copyload
  %i.o = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.6261.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.p = fmul <2 x float> %.sroa.0103.0.copyload, %i.o
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = insertelement <2 x float> %i.l, float %.sroa.2104.0.copyload, i64 0 ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.6261.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.t = fmul <2 x float> %i.r, %i.s
  %i.u = fmul <2 x float> %i.m, %i.s
  %i.v = fadd <2 x float> %i.t, %i.q              ; 2 uses
  %i.w = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x float> %i.w, float %i.k, i64 0
  %i.y = fadd <2 x float> %i.u, %i.x              ; 2 uses
  %i.z = fmul <2 x float> %i.o, %i.v
  %i.aa = shufflevector <2 x float> %.sroa.6261.0.copyload, <2 x float> %.sroa.5260.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %i.ac = fsub <2 x float> %i.z, %i.ab
  %i.ad = fmul <2 x float> %i.ac, splat (float 2.000000e+00)
  %i.ae = fadd <2 x float> %.sroa.0103.0.copyload, %i.ad
  %i.af = fadd <2 x float> %.sroa.0258.0.copyload, %i.ae ; 4 uses
  %foldExtExtBinop263 = fmul <2 x float> %.sroa.6261.0.copyload, %.sroa.094.0.copyload
  %i.ag = extractelement <2 x float> %foldExtExtBinop263, i64 0
  %i.ah = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.295.0.copyload
  %i.ai = fsub float %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %.sroa.295.0.copyload, i64 1 ; 4 uses
  %i.al = fmul <2 x float> %.sroa.5260.0.copyload, %i.ak
  %i.am = fmul <2 x float> %i.o, %.sroa.094.0.copyload
  %i.an = fsub <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = insertelement <2 x float> %i.aj, float %.sroa.295.0.copyload, i64 0 ; 2 uses
  %i.ap = fmul <2 x float> %i.s, %i.ao
  %i.aq = fmul <2 x float> %i.s, %i.ak
  %i.ar = fadd <2 x float> %i.ap, %i.an           ; 2 uses
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x float> %i.as, float %i.ai, i64 0
  %i.au = fadd <2 x float> %i.aq, %i.at           ; 2 uses
  %i.av = fmul <2 x float> %i.o, %i.ar
  %i.aw = fmul <2 x float> %i.aa, %i.au
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = fmul <2 x float> %i.ax, splat (float 2.000000e+00)
  %i.az = fadd <2 x float> %.sroa.094.0.copyload, %i.ay
  %i.ba = fadd <2 x float> %.sroa.0258.0.copyload, %i.az ; 4 uses
  %foldExtExtBinop265 = fmul <2 x float> %.sroa.0103.0.copyload, %.sroa.6253.0.copyload
  %i.bb = extractelement <2 x float> %foldExtExtBinop265, i64 0
  %i.bc = fmul float %.sroa.2104.0.copyload, %.sroa.09.0.vec.extract.i.i154
  %i.bd = fsub float %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.m, %.sroa.5252.0.copyload
  %i.bf = shufflevector <2 x float> %.sroa.5252.0.copyload, <2 x float> %.sroa.6253.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bg = fmul <2 x float> %.sroa.0103.0.copyload, %i.bf
  %i.bh = fsub <2 x float> %i.be, %i.bg           ; 2 uses
  %i.bi = shufflevector <2 x float> %.sroa.6253.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bj = fmul <2 x float> %i.r, %i.bi
  %i.bk = fmul <2 x float> %i.m, %i.bi
  %i.bl = fadd <2 x float> %i.bj, %i.bh           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bn = insertelement <2 x float> %i.bm, float %i.bd, i64 0
  %i.bo = fadd <2 x float> %i.bk, %i.bn           ; 2 uses
  %i.bp = fmul <2 x float> %i.bf, %i.bl
  %i.bq = shufflevector <2 x float> %.sroa.6253.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bo
  %i.bs = fsub <2 x float> %i.bp, %i.br
  %i.bt = fmul <2 x float> %i.bs, splat (float 2.000000e+00)
  %i.bu = fadd <2 x float> %.sroa.0103.0.copyload, %i.bt
  %i.bv = fadd <2 x float> %.sroa.0250.0.copyload, %i.bu ; 4 uses
  %foldExtExtBinop267 = fmul <2 x float> %.sroa.094.0.copyload, %.sroa.6253.0.copyload
  %i.bw = extractelement <2 x float> %foldExtExtBinop267, i64 0
  %i.bx = fmul float %.sroa.295.0.copyload, %.sroa.09.0.vec.extract.i.i154
  %i.by = fsub float %i.bw, %i.bx
  %i.bz = fmul <2 x float> %i.ak, %.sroa.5252.0.copyload
  %i.ca = fmul <2 x float> %.sroa.094.0.copyload, %i.bf
  %i.cb = fsub <2 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = fmul <2 x float> %i.ao, %i.bi
  %i.cd = fmul <2 x float> %i.ak, %i.bi
  %i.ce = fadd <2 x float> %i.cc, %i.cb           ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cg = insertelement <2 x float> %i.cf, float %i.by, i64 0
  %i.ch = fadd <2 x float> %i.cd, %i.cg           ; 2 uses
  %i.ci = fmul <2 x float> %i.bf, %i.ce
  %i.cj = fmul <2 x float> %i.bq, %i.ch
  %i.ck = fsub <2 x float> %i.ci, %i.cj
  %i.cl = fmul <2 x float> %i.ck, splat (float 2.000000e+00)
  %i.cm = fadd <2 x float> %.sroa.094.0.copyload, %i.cl
  %i.cn = fadd <2 x float> %.sroa.0250.0.copyload, %i.cm ; 4 uses
  %i.co = fcmp olt <2 x float> %i.af, %i.ba
  %i.cp = select <2 x i1> %i.co, <2 x float> %i.af, <2 x float> %i.ba ; 2 uses
  %i.cq = fcmp olt <2 x float> %i.bv, %i.cn
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.bv, <2 x float> %i.cn ; 2 uses
  %i.cs = fcmp olt <2 x float> %i.cp, %i.cr
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.cp, <2 x float> %i.cr
  %i.cu = insertelement <2 x float> poison, float %i.g, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fsub <2 x float> %i.ct, %i.cv
  store <2 x float> %i.cw, ptr %0, align 4
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cy = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cz = shufflevector <2 x float> %i.y, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.da = fmul <2 x float> %i.cy, %i.cz
  %i.db = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dc = shufflevector <2 x float> %i.v, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = fsub <2 x float> %i.da, %i.dd
  %i.df = fmul <2 x float> %i.de, splat (float 2.000000e+00)
  %i.dg = insertelement <2 x float> poison, float %.sroa.2104.0.copyload, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fadd <2 x float> %i.dh, %i.df
  %i.dj = insertelement <2 x float> %5, float %.sroa.4251.0.copyload, i64 1 ; 2 uses
  %i.dk = fadd <2 x float> %i.dj, %i.di           ; 4 uses
  %i.dl = shufflevector <2 x float> %i.au, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.dm = fmul <2 x float> %i.cy, %i.dl
  %i.dn = shufflevector <2 x float> %i.ar, <2 x float> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.do = fmul <2 x float> %i.db, %i.dn
  %i.dp = fsub <2 x float> %i.dm, %i.do
  %i.dq = fmul <2 x float> %i.dp, splat (float 2.000000e+00)
  %i.dr = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fadd <2 x float> %i.ds, %i.dq
  %i.du = fadd <2 x float> %i.dj, %i.dt           ; 4 uses
  %i.dv = fcmp olt <2 x float> %i.dk, %i.du
  %i.dw = select <2 x i1> %i.dv, <2 x float> %i.dk, <2 x float> %i.du ; 2 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.dy = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.dz = fcmp olt float %i.dx, %i.dy
  %i.ea = select i1 %i.dz, float %i.dx, float %i.dy
  %i.eb = fsub float %i.ea, %i.g
  store float %i.eb, ptr %.sroa.238.0..sroa_idx, align 4
  %i.ec = fcmp ogt <2 x float> %i.dk, %i.du
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.dk, <2 x float> %i.du ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0 ; 2 uses
  %i.ef = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.eg = fcmp ogt float %i.ee, %i.ef
  %i.eh = select i1 %i.eg, float %i.ee, float %i.ef
  %i.ei = fcmp ogt <2 x float> %i.af, %i.ba
  %i.ej = select <2 x i1> %i.ei, <2 x float> %i.af, <2 x float> %i.ba ; 2 uses
  %i.ek = fcmp ogt <2 x float> %i.bv, %i.cn
  %i.el = select <2 x i1> %i.ek, <2 x float> %i.bv, <2 x float> %i.cn ; 2 uses
  %i.em = fcmp ogt <2 x float> %i.ej, %i.el
  %i.en = select <2 x i1> %i.em, <2 x float> %i.ej, <2 x float> %i.el
  %i.eo = fadd <2 x float> %i.cv, %i.en
  %i.ep = fadd float %i.g, %i.eh
  store <2 x float> %i.eo, ptr %i.cx, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ep, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapCapsule(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !31 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %0, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.412.0.copyload = load float, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.513.0.copyload = load <2 x float>, ptr %.sroa.513.0..sroa_idx, align 4 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.o = fsub <2 x float> zeroinitializer, %.sroa.011.0.copyload ; 4 uses
  %i.p = fsub float 0.000000e+00, %.sroa.412.0.copyload ; 3 uses
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %.sroa.513.0.copyload
  %i.t = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.513.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fmul <2 x float> %i.o, %i.t
  %i.v = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.o, %i.v
  %i.x = insertelement <2 x float> %i.q, float %i.p, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.513.0.copyload
  %i.z = fsub <2 x float> %i.s, %i.w
  %i.aa = fsub <2 x float> %i.u, %i.y
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = fmul <2 x float> %i.r, %i.ab
  %i.ae = fsub <2 x float> %i.z, %i.ac            ; 2 uses
  %i.af = fsub <2 x float> %i.aa, %i.ad           ; 2 uses
  %i.ag = fmul <2 x float> %i.v, %i.ae
  %i.ah = fmul <2 x float> %i.t, %i.af
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %foldExtExtBinop = fmul <2 x float> %.sroa.513.0.copyload, %i.af
  %foldExtExtBinop18 = fmul <2 x float> %.sroa.513.0.copyload, %i.ae
  %shift = shufflevector <2 x float> %foldExtExtBinop18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.aj = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.ak = fmul <2 x float> %i.ai, splat (float 2.000000e+00)
  %i.al = fadd <2 x float> %i.o, %i.ak
  %i.am = fmul float %i.aj, 2.000000e+00
  %i.an = fadd float %i.p, %i.am
  %i.ao = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ap = fmul <4 x float> %i.ao, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.aq = extractelement <4 x float> %i.ap, i64 1 ; 2 uses
  %i.ar = extractelement <4 x float> %i.ap, i64 2
  %i.as = extractelement <4 x float> %i.ap, i64 0 ; 2 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.av = fadd float %i.at, %i.au
  %i.aw = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fadd <2 x float> %i.ba, %i.ay
  %i.bc = fsub <2 x float> %i.bb, %.sroa.513.0.copyload
  %i.bd = fsub float %i.av, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.be = fadd float %i.as, %i.aq
  %i.bf = fadd float %i.ar, %i.be
  %i.bg = fadd float %.sroa.2.12.vec.extract.i, %i.bf
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bg, i64 1
  store <2 x float> %i.al, ptr %i.n, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bh, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !35
  %i.bk = call float @b3GetLengthUnitsPerMeter() #9
  %i.bl = fmul float %i.bk, 5.000000e-03
  %i.bm = fmul float %i.bl, 1.000000e-01
  %i.bn = fcmp olt float %i.bj, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bn
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b3RayCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %3 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %4 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %5 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %6 = alloca %struct.b3Sphere, align 8           ; 5 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.0308.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0303.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = load <2 x float>, ptr %.sroa.5305.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 1   ; 6 uses
  %i.i = fsub <2 x float> %.sroa.0303.0.copyload, %.sroa.0308.0.copyload ; 3 uses
  %i.j = extractelement <2 x float> %i.g, i64 0
  %i.k = fsub float %i.j, %.sroa.8.0.copyload     ; 3 uses
  %i.l = tail call float @b3GetLengthUnitsPerMeter() #9
end_hunk_0
