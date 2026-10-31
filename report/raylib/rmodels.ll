Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@GetRayCollisionSphere:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.083.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 4 uses
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.284.0.copyload = load float, ptr %.sroa.284.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.083.0.copyload, i64 0
  %foldExtExtBinop173 = fmul <2 x float> %foldExtExtBinop171, %.sroa.083.0.copyload
  %i.d = extractelement <2 x float> %foldExtExtBinop173, i64 1
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %.sroa.01.0.vec.extract.i, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %.sroa.284.0.copyload, float %i.e) ; 4 uses
  %foldExtExtBinop175 = fmul <2 x float> %foldExtExtBinop171, %foldExtExtBinop171
  %i.g = extractelement <2 x float> %foldExtExtBinop175, i64 1
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.g)
  %i.i = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.h)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.i) ; 3 uses
  %i.j = fneg float %i.f
  %i.k = fmul float %i.f, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %sqrt.i, float %sqrt.i, float %i.k)
  %i.m = fneg float %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.m) ; 2 uses
  %i.o = fcmp oge float %i.n, 0.000000e+00
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %0, align 4
  %i.q = fcmp olt float %sqrt.i, %4
  %i.r = tail call float @sqrtf(float noundef %i.n) #54 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = fadd float %i.f, %i.r                    ; 3 uses
  store float %i.u, ptr %i.s, align 4
  %i.v = fmul float %.sroa.284.0.copyload, %i.u
  %i.w = fadd float %.sroa.296.0.copyload, %i.v   ; 2 uses
  store float %i.w, ptr %.sroa.475.0..sroa_idx, align 4
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %.sroa.083.0.copyload, %i.y
  %i.aa = fadd <2 x float> %.sroa.095.0.copyload, %i.z ; 2 uses
  store <2 x float> %i.aa, ptr %i.t, align 4
  %i.ab = fsub <2 x float> %i.aa, %2              ; 5 uses
  %i.ac = fsub float %i.w, %3                     ; 4 uses
  %foldExtExtBinop177 = fmul <2 x float> %i.ab, %i.ab
  %i.ad = extractelement <2 x float> %foldExtExtBinop177, i64 1
  %i.ae = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ad)
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af) ; 2 uses
  %i.ah = fcmp une float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %Vector3Normalize.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i132 = tail call float @llvm.sqrt.f32(float %i.ag)
  %i.ai = fdiv float 1.000000e+00, %sqrt.i132     ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ab, %i.ak
  %i.am = fmul float %i.ac, %i.ai
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.b, %bb.c
  %.sroa.013.0.i = phi <2 x float> [ %i.al, %bb.c ], [ %i.ab, %bb.b ]
  %.sroa.617.0.i = phi float [ %i.am, %bb.c ], [ %i.ac, %bb.b ]
  %i.an = fneg <2 x float> %.sroa.013.0.i
  %i.ao = fneg float %.sroa.617.0.i
  br label %Vector3Normalize.exit168

bb.d:                                             ; preds = %bb.a
  %i.ap = fsub float %i.f, %i.r                   ; 3 uses
  store float %i.ap, ptr %i.s, align 4
  %i.aq = fmul float %.sroa.284.0.copyload, %i.ap
  %i.ar = fadd float %.sroa.296.0.copyload, %i.aq ; 2 uses
  store float %i.ar, ptr %.sroa.475.0..sroa_idx, align 4
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %.sroa.083.0.copyload, %i.at
  %i.av = fadd <2 x float> %.sroa.095.0.copyload, %i.au ; 2 uses
  store <2 x float> %i.av, ptr %i.t, align 4
  %i.aw = fsub <2 x float> %i.av, %2              ; 5 uses
  %i.ax = fsub float %i.ar, %3                    ; 4 uses
  %foldExtExtBinop179 = fmul <2 x float> %i.aw, %i.aw
  %i.ay = extractelement <2 x float> %foldExtExtBinop179, i64 1
  %i.az = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.ay)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.ba) ; 2 uses
  %i.bc = fcmp une float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.e, label %Vector3Normalize.exit168

bb.e:                                             ; preds = %bb.d
  %sqrt.i165 = tail call float @llvm.sqrt.f32(float %i.bb)
  %i.bd = fdiv float 1.000000e+00, %sqrt.i165     ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.aw, %i.bf
  %i.bh = fmul float %i.ax, %i.bd
  br label %Vector3Normalize.exit168

Vector3Normalize.exit168:                         ; preds = %bb.e, %bb.d, %Vector3Normalize.exit
  %.sroa.013.0.i161.sink = phi <2 x float> [ %i.an, %Vector3Normalize.exit ], [ %i.bg, %bb.e ], [ %i.aw, %bb.d ]
  %.sroa.617.0.i162.sink = phi float [ %i.ao, %Vector3Normalize.exit ], [ %i.bh, %bb.e ], [ %i.ax, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> %.sroa.013.0.i161.sink, ptr %i.bi, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.sroa.617.0.i162.sink, ptr %.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetRayCollisionBox(ptr dead_on_unwind noalias nofree writable sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef byval(%struct.Ray) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.BoundingBox) align 8 captures(none) %2) local_unnamed_addr #40 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = load float, ptr %1, align 8              ; 3 uses
  %i.b = load float, ptr %2, align 8              ; 2 uses
  %i.c = fcmp ogt float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = fcmp olt float %i.a, %i.e
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre175 = load float, ptr %.phi.trans.insert174, align 4
  %.phi.trans.insert176 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre177 = load float, ptr %.phi.trans.insert176, align 8
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4            ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load float, ptr %i.i, align 4            ; 4 uses
  %i.k = fcmp ogt float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load float, ptr %i.l, align 8            ; 4 uses
  %i.n = fcmp olt float %i.h, %i.m
  %or.cond116 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond116, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 8            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 8
  %i.s = fcmp ogt float %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load float, ptr %i.t, align 4
  %i.v = fcmp olt float %i.p, %i.u
  %or.cond173 = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond173, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0103.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4
  %i.x = fneg <2 x float> %.sroa.0103.0.copyload
  %i.y = fneg float %.sroa.2104.0.copyload
  store <2 x float> %i.x, ptr %i.w, align 4
  store float %i.y, ptr %.sroa.2104.0..sroa_idx, align 4
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b, %bb.c, %bb.d
  %i.z = phi float [ %i.m, %bb.b ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %.pre177, %..thread_crit_edge ]
  %i.aa = phi float [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %.pre175, %..thread_crit_edge ]
  %i.ab = phi float [ %i.j, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ], [ %.pre, %..thread_crit_edge ]
  %i.ac = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %..thread_crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load float, ptr %i.ae, align 4          ; 2 uses
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ab, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.aa, i64 1 ; 2 uses
  %i.al = fsub <2 x float> %i.ai, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.e, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.z, i64 1
  %i.ao = fsub <2 x float> %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load float, ptr %i.ap, align 8          ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load float, ptr %i.ar, align 8          ; 3 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fmul float %i.ag, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aw = load float, ptr %i.av, align 4          ; 2 uses
  %i.ax = fsub float %i.aw, %i.as
  %i.ay = fmul float %i.ag, %i.ax
  %i.az = fpext nsz float %i.au to double         ; 2 uses
  %i.ba = fpext nsz float %i.ay to double         ; 2 uses
  %i.bb = tail call nsz double @llvm.minnum.f64(double %i.az, double %i.ba)
  %i.bc = load <2 x float>, ptr %i.ad, align 4
  %i.bd = fdiv <2 x float> splat (float 1.000000e+00), %i.bc ; 2 uses
  %i.be = fmul <2 x float> %i.al, %i.bd
  %i.bf = fmul <2 x float> %i.ao, %i.bd
  %i.bg = fpext nsz <2 x float> %i.be to <2 x double> ; 2 uses
  %i.bh = fpext nsz <2 x float> %i.bf to <2 x double> ; 2 uses
  %i.bi = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bg, <2 x double> %i.bh) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = extractelement <2 x double> %i.bi, i64 1
  %i.bl = tail call nsz double @llvm.maxnum.f64(double %i.bj, double %i.bk)
  %i.bm = tail call nsz double @llvm.maxnum.f64(double %i.bl, double %i.bb)
  %i.bn = fptrunc double %i.bm to float           ; 5 uses
  %i.bo = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bg, <2 x double> %i.bh) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = extractelement <2 x double> %i.bo, i64 1
  %i.br = tail call nsz double @llvm.minnum.f64(double %i.bp, double %i.bq)
  %i.bs = tail call nsz double @llvm.maxnum.f64(double %i.az, double %i.ba)
  %i.bt = tail call nsz double @llvm.minnum.f64(double %i.br, double %i.bs) ; 2 uses
  %i.bu = fptrunc double %i.bt to float
  %i.bv = fcmp uge double %i.bt, f0xB690000000000000
  %i.bw = fcmp ule float %i.bn, %i.bu
  %.not111 = and i1 %i.bv, %i.bw
  %i.bx = zext i1 %.not111 to i8
  store i8 %i.bx, ptr %0, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store float %i.bn, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.ad, align 4
  %i.ca = fmul float %i.af, %i.bn
  %.sroa.074.0.copyload = load <2 x float>, ptr %1, align 8
  %i.cb = fadd float %i.as, %i.ca                 ; 2 uses
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cb, ptr %.sroa.485.0..sroa_idx, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.064.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.d, align 4
  %i.cd = fsub float %i.aw, %i.aq                 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float 5.000000e-01, float %i.aq)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cf = fsub float %i.cb, %i.ce
  %i.cg = fmul float %i.cf, 2.010000e+00
  %i.ch = fdiv float %i.cg, %i.cd
  %i.ci = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %.sroa.080.0.copyload, %i.cj
  %i.cl = fadd <2 x float> %.sroa.074.0.copyload, %i.ck ; 2 uses
  store <2 x float> %i.cl, ptr %i.bz, align 4
  %i.cm = fsub <2 x float> %.sroa.062.0.copyload, %.sroa.064.0.copyload ; 2 uses
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> splat (float 5.000000e-01), <2 x float> %.sroa.064.0.copyload)
  %i.co = fsub <2 x float> %i.cl, %i.cn
  %i.cp = fmul <2 x float> %i.co, splat (float 2.010000e+00)
  %i.cq = fdiv <2 x float> %i.cp, %i.cm
  %i.cr = fptosi <2 x float> %i.cq to <2 x i32>
  %i.cs = sitofp <2 x i32> %i.cr to <2 x float>   ; 6 uses
  store <2 x float> %i.cs, ptr %i.cc, align 4
  %i.ct = fptosi float %i.ch to i32
  %i.cu = sitofp i32 %i.ct to float               ; 4 uses
  %.sroa.07.0.vec.extract.i = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %foldExtExtBinop = fmul nnan <2 x float> %i.cs, %i.cs
  %i.cv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cw = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i, float %.sroa.07.0.vec.extract.i, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cw) ; 2 uses
  %i.cy = fcmp une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.e, label %Vector3Normalize.exit

bb.e:                                             ; preds = %.thread
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.db, %i.cs
  %i.dd = fmul float %i.cz, %i.cu
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %.thread, %bb.e
  %.sroa.013.0.i = phi <2 x float> [ %i.dc, %bb.e ], [ %i.cs, %.thread ] ; 2 uses
  %.sroa.617.0.i = phi float [ %i.dd, %bb.e ], [ %i.cu, %.thread ] ; 2 uses
  store <2 x float> %.sroa.013.0.i, ptr %i.cc, align 4
  store float %.sroa.617.0.i, ptr %.sroa.467.0..sroa_idx, align 4
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %Vector3Normalize.exit
  %i.de = fneg float %i.bn
  store float %i.de, ptr %i.by, align 4
  %i.df = fneg <2 x float> %.sroa.013.0.i
  %i.dg = fneg float %.sroa.617.0.i
  store <2 x float> %i.df, ptr %i.cc, align 4
  store float %i.dg, ptr %.sroa.467.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Vector3Normalize.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #19

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GetRayCollisionMesh(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RayCollision) align 4 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%struct.Ray) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Mesh) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %3) local_unnamed_addr #35 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not57 = icmp eq ptr %i.g, null
  %i.h = load <12 x float>, ptr %3, align 8       ; 8 uses
  %.sroa.0105.0.copyload = load <2 x float>, ptr %1, align 8 ; 3 uses
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4106.0.copyload = load float, ptr %.sroa.4106.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.5107.0.copyload = load <2 x float>, ptr %.sroa.5107.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6108.0.copyload = load float, ptr %.sroa.6108.0..sroa_idx, align 4 ; 4 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5107.0.copyload, i64 1 ; 3 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5107.0.copyload, i64 0 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.8.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.j = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 7, i32 11> ; 3 uses
  %i.k = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 6, i32 10> ; 3 uses
  %i.l = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 4, i32 8> ; 3 uses
  %i.m = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 5, i32 9> ; 3 uses
  %i.n = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 11, i32 3> ; 3 uses
  %i.o = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 10, i32 2> ; 3 uses
  %i.p = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 8, i32 0> ; 3 uses
  %i.q = shufflevector <12 x float> %i.h, <12 x float> poison, <2 x i32> <i32 9, i32 1> ; 3 uses
  %shift149 = shufflevector <2 x float> %.sroa.0105.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %GetRayCollisionTriangle.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %GetRayCollisionTriangle.exit.thread ] ; 3 uses
  %.sroa.617.0.i.i128 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.617.0.i.i129, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %.sroa.013.0.i.i126 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.013.0.i.i127, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %i.r = phi float [ 0.000000e+00, %.lr.ph ], [ %i.es, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %.sroa.08.4.vec.insert.i204.i123 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.08.4.vec.insert.i204.i124, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  %i.s = phi float [ 0.000000e+00, %.lr.ph ], [ %i.et, %GetRayCollisionTriangle.exit.thread ] ; 6 uses
  %i.t = phi i8 [ 0, %.lr.ph ], [ %i.eu, %GetRayCollisionTriangle.exit.thread ] ; 5 uses
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 3 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.sroa.839.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.031.0.in = phi ptr [ %i.ae, %bb.d ], [ %i.ai, %bb.e ]
  %.sroa.8.0.in = phi ptr [ %.sroa.8.0..sroa_idx, %bb.d ], [ %.sroa.8.0..sroa_idx34, %bb.e ]
  %.sroa.036.0.in = phi ptr [ %i.aa, %bb.d ], [ %i.ah, %bb.e ]
  %.sroa.839.0.in = phi ptr [ %.sroa.839.0..sroa_idx, %bb.d ], [ %.sroa.839.0..sroa_idx40, %bb.e ]
  %.pn = phi i64 [ %i.w, %bb.d ], [ %i.af, %bb.e ]
  %.sroa.042.0.in = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.pn ; 2 uses
  %.sroa.845.0.in = getelementptr inbounds nuw i8, ptr %.sroa.042.0.in, i64 8
  %.sroa.845.0 = load float, ptr %.sroa.845.0.in, align 4
  %.sroa.042.0 = load <2 x float>, ptr %.sroa.042.0.in, align 4 ; 2 uses
  %.sroa.839.0 = load float, ptr %.sroa.839.0.in, align 4
  %.sroa.036.0 = load <2 x float>, ptr %.sroa.036.0.in, align 4 ; 2 uses
  %.sroa.8.0 = load float, ptr %.sroa.8.0.in, align 4
  %.sroa.031.0 = load <2 x float>, ptr %.sroa.031.0.in, align 4 ; 2 uses
  %i.aj = shufflevector <2 x float> %.sroa.042.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.m
  %i.al = fmul <2 x float> %i.aj, %i.q
  %i.am = shufflevector <2 x float> %.sroa.042.0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.am, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %.sroa.845.0, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.aq, <2 x float> %i.an)
end_hunk_0
