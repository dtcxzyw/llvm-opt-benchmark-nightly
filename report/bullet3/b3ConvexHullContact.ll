Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z28b3FindSeparatingAxisEdgeEdgePK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_PS3_S8_PK9b3GpuFacePKiS8_S8_SB_SD_PS2_Pfb:bb.a
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.mu, float %i.mf, float %i.ne)
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.mh, float %i.nf)
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.mw, float %i.lv, float %i.ng)
  %i.ni = icmp sgt i32 %i.lr, 0
  br i1 %i.ni, label %.lr.ph.i143, label %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152

.lr.ph.i143:                                      ; preds = %bb.l
  %i.nj = load i32, ptr %i.v, align 16, !tbaa !46
  %i.nk = sext i32 %i.nj to i64
  %wide.trip.count.i144 = zext nneg i32 %i.lr to i64
  %invariant.gep.i145 = getelementptr [16 x i8], ptr %7, i64 %i.nk
  br label %bb.m

._crit_edge.i141:                                 ; preds = %bb.m
  %i.nl = fcmp ogt float %i.ny, %.2265
  br i1 %i.nl, label %bb.n, label %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152

bb.m:                                             ; preds = %bb.m, %.lr.ph.i143
  %.0267 = phi float [ f0x7F7FFFFF, %.lr.ph.i143 ], [ %.1268, %bb.m ]
  %.1264 = phi float [ f0xFF7FFFFF, %.lr.ph.i143 ], [ %.2265, %bb.m ] ; 2 uses
  %i.nm = phi float [ f0x7F7FFFFF, %.lr.ph.i143 ], [ %i.ny, %bb.m ] ; 2 uses
  %indvars.iv.i146 = phi i64 [ 0, %.lr.ph.i143 ], [ %indvars.iv.next.i148, %bb.m ] ; 2 uses
  %gep.i147 = getelementptr [16 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.i146 ; 3 uses
  %i.nn = load float, ptr %gep.i147, align 16, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %gep.i147, i64 4
  %i.np = load float, ptr %i.no, align 4, !tbaa !37
  %i.nq = fmul float %i.nd, %i.np
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.nn, float %i.mz, float %i.nq)
  %i.ns = getelementptr inbounds nuw i8, ptr %gep.i147, i64 8
  %i.nt = load float, ptr %i.ns, align 8, !tbaa !37
  %i.nu = tail call noundef float @llvm.fmuladd.f32(float %i.nt, float %i.nh, float %i.nr) ; 5 uses
  %i.nv = fcmp olt float %i.nu, %i.nm             ; 2 uses
  %.1268 = select i1 %i.nv, float %i.nu, float %.0267 ; 2 uses
  %i.nw = select i1 %i.nv, float %i.nu, float %i.nm
  %i.nx = fcmp ogt float %i.nu, %.1264            ; 2 uses
  %.2265 = select i1 %i.nx, float %i.nu, float %.1264 ; 4 uses
  %i.ny = select i1 %i.nx, float %.1268, float %i.nw ; 4 uses
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %exitcond.not.i149 = icmp eq i64 %indvars.iv.next.i148, %wide.trip.count.i144
  br i1 %exitcond.not.i149, label %._crit_edge.i141, label %bb.m, !llvm.loop !0

bb.n:                                             ; preds = %._crit_edge.i141
  br label %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152

_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152: ; preds = %bb.l, %._crit_edge.i141, %bb.n
  %.3266 = phi float [ %.2265, %._crit_edge.i141 ], [ %i.ny, %bb.n ], [ f0x7F7FFFFF, %bb.l ]
  %i.nz = phi float [ %i.ny, %._crit_edge.i141 ], [ %.2265, %bb.n ], [ f0xFF7FFFFF, %bb.l ]
  %i.oa = fmul float %.sroa.5256.0.copyload, %.sroa.7.0.copyload
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.x, float %i.lq, float %i.oa)
  %i.oc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7258.0.copyload, float %i.lp, float %i.ob) ; 2 uses
  %i.od = fadd float %i.oc, %i.nz                 ; 2 uses
  %i.oe = fadd float %i.oc, %.3266                ; 2 uses
  %i.of = load i32, ptr %i.r, align 4, !tbaa !45  ; 2 uses
  %i.og = load float, ptr %5, align 16, !tbaa !37 ; 5 uses
  %i.oh = fneg float %i.og                        ; 2 uses
  %i.oi = load float, ptr %i.s, align 4, !tbaa !37 ; 5 uses
  %i.oj = fneg float %i.oi                        ; 2 uses
  %i.ok = load float, ptr %i.t, align 8, !tbaa !37 ; 5 uses
  %i.ol = fneg float %i.ok                        ; 2 uses
  %i.om = load float, ptr %i.u, align 4, !tbaa !44 ; 6 uses
  %i.on = fmul float %i.lp, %i.oj
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.om, float %i.lq, float %i.on)
  %i.op = tail call float @llvm.fmuladd.f32(float %i.ok, float %.sroa.7.0.copyload, float %i.oo) ; 3 uses
  %i.oq = fmul float %i.lq, %i.ol
  %i.or = tail call float @llvm.fmuladd.f32(float %i.om, float %.sroa.7.0.copyload, float %i.oq)
  %i.os = tail call float @llvm.fmuladd.f32(float %i.og, float %i.lp, float %i.or) ; 3 uses
  %i.ot = fmul float %.sroa.7.0.copyload, %i.oh
  %i.ou = tail call float @llvm.fmuladd.f32(float %i.om, float %i.lp, float %i.ot)
  %i.ov = tail call float @llvm.fmuladd.f32(float %i.oi, float %i.lq, float %i.ou) ; 3 uses
  %i.ow = fmul float %.sroa.7.0.copyload, %i.oi
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.og, float %i.lq, float %i.ow)
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.ok, float %i.lp, float %i.ox) ; 3 uses
  %i.oz = fmul float %i.om, %i.op
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.og, float %i.oz)
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.os, float %i.ok, float %i.pa)
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.oj, float %i.pb)
  %i.pd = fmul float %i.om, %i.os
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.oi, float %i.pd)
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.og, float %i.pe)
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.op, float %i.ol, float %i.pf)
  %i.ph = fmul float %i.om, %i.ov
  %i.pi = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.ok, float %i.ph)
  %i.pj = tail call float @llvm.fmuladd.f32(float %i.op, float %i.oi, float %i.pi)
  %i.pk = tail call float @llvm.fmuladd.f32(float %i.os, float %i.oh, float %i.pj)
  %i.pl = icmp sgt i32 %i.of, 0
  br i1 %i.pl, label %.lr.ph.i156, label %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165

.lr.ph.i156:                                      ; preds = %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152
  %i.pm = load i32, ptr %i.w, align 16, !tbaa !46
  %i.pn = sext i32 %i.pm to i64
  %wide.trip.count.i157 = zext nneg i32 %i.of to i64
  %invariant.gep.i158 = getelementptr [16 x i8], ptr %11, i64 %i.pn
  br label %bb.o

._crit_edge.i154:                                 ; preds = %bb.o
  %i.po = fcmp ogt float %i.qb, %.2
  br i1 %i.po, label %bb.p, label %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165

bb.o:                                             ; preds = %bb.o, %.lr.ph.i156
  %.0261 = phi float [ f0x7F7FFFFF, %.lr.ph.i156 ], [ %.1262, %bb.o ]
  %.1 = phi float [ f0xFF7FFFFF, %.lr.ph.i156 ], [ %.2, %bb.o ] ; 2 uses
  %i.pp = phi float [ f0x7F7FFFFF, %.lr.ph.i156 ], [ %i.qb, %bb.o ] ; 2 uses
  %indvars.iv.i159 = phi i64 [ 0, %.lr.ph.i156 ], [ %indvars.iv.next.i161, %bb.o ] ; 2 uses
  %gep.i160 = getelementptr [16 x i8], ptr %invariant.gep.i158, i64 %indvars.iv.i159 ; 3 uses
  %i.pq = load float, ptr %gep.i160, align 16, !tbaa !37
  %i.pr = getelementptr inbounds nuw i8, ptr %gep.i160, i64 4
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !37
  %i.pt = fmul float %i.pg, %i.ps
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.pc, float %i.pt)
  %i.pv = getelementptr inbounds nuw i8, ptr %gep.i160, i64 8
  %i.pw = load float, ptr %i.pv, align 8, !tbaa !37
  %i.px = tail call noundef float @llvm.fmuladd.f32(float %i.pw, float %i.pk, float %i.pu) ; 5 uses
  %i.py = fcmp olt float %i.px, %i.pp             ; 2 uses
  %.1262 = select i1 %i.py, float %i.px, float %.0261 ; 2 uses
  %i.pz = select i1 %i.py, float %i.px, float %i.pp
  %i.qa = fcmp ogt float %i.px, %.1               ; 2 uses
  %.2 = select i1 %i.qa, float %i.px, float %.1   ; 4 uses
  %i.qb = select i1 %i.qa, float %.1262, float %i.pz ; 4 uses
  %indvars.iv.next.i161 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i162 = icmp eq i64 %indvars.iv.next.i161, %wide.trip.count.i157
  br i1 %exitcond.not.i162, label %._crit_edge.i154, label %bb.o, !llvm.loop !0

bb.p:                                             ; preds = %._crit_edge.i154
  br label %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165

_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165: ; preds = %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152, %._crit_edge.i154, %bb.p
  %.3 = phi float [ %.2, %._crit_edge.i154 ], [ %i.qb, %bb.p ], [ f0x7F7FFFFF, %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152 ]
  %i.qc = phi float [ %i.qb, %._crit_edge.i154 ], [ %.2, %bb.p ], [ f0xFF7FFFFF, %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit152 ]
  %i.qd = fmul float %.sroa.5249.0.copyload, %.sroa.7.0.copyload
  %i.qe = tail call float @llvm.fmuladd.f32(float %.sroa.0247.0.copyload, float %i.lq, float %i.qd)
  %i.qf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7251.0.copyload, float %i.lp, float %i.qe) ; 2 uses
  %i.qg = fadd float %i.qf, %i.qc                 ; 2 uses
  %i.qh = fadd float %i.qf, %.3                   ; 2 uses
  %i.qi = fcmp olt float %i.oe, %i.qg
  %i.qj = fcmp olt float %i.qh, %i.od
  %or.cond288 = select i1 %i.qi, i1 true, i1 %i.qj
  br i1 %or.cond288, label %.critedge118.critedge, label %bb.q

bb.q:                                             ; preds = %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165
  %i.qk = fsub float %i.oe, %i.qg                 ; 2 uses
  %i.ql = fsub float %i.qh, %i.od                 ; 2 uses
  %i.qm = fcmp olt float %i.qk, %i.ql
  %i.qn = select i1 %i.qm, float %i.qk, float %i.ql ; 2 uses
  %i.qo = load float, ptr %16, align 4, !tbaa !44
  %i.qp = fcmp olt float %i.qn, %i.qo
  br i1 %i.qp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store float %i.qn, ptr %16, align 4, !tbaa !44
  store <4 x float> %i.lo, ptr %15, align 16
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 162
  br i1 %exitcond, label %.critedge116, label %bb.l, !llvm.loop !272

.critedge116:                                     ; preds = %bb.s, %.critedge.critedge.thread, %.preheader
  %i.qq = load float, ptr %6, align 16, !tbaa !37
  %i.qr = fneg float %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.qt = load <2 x float>, ptr %i.qs, align 4, !tbaa !37
  %i.qu = fneg <2 x float> %i.qt                  ; 2 uses
  %i.qv = load <2 x float>, ptr %15, align 16, !tbaa !37 ; 3 uses
  %shift = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop376 = fmul <2 x float> %shift, %i.qu
  %i.qw = extractelement <2 x float> %foldExtExtBinop376, i64 0
  %i.qx = extractelement <2 x float> %i.qv, i64 0
  %i.qy = tail call float @llvm.fmuladd.f32(float %i.qr, float %i.qx, float %i.qw)
  %i.qz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 8, !tbaa !37 ; 2 uses
  %i.rb = extractelement <2 x float> %i.qu, i64 1
  %i.rc = tail call noundef float @llvm.fmuladd.f32(float %i.rb, float %i.ra, float %i.qy)
  %i.rd = fcmp ogt float %i.rc, 0.000000e+00
  br i1 %i.rd, label %bb.t, label %.critedge118.critedge

bb.t:                                             ; preds = %.critedge116
  %i.re = fneg <2 x float> %i.qv
  %i.rf = fneg float %i.ra
  %.sroa.3.12.vec.insert.i.i168 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rf, i64 0
  store <2 x float> %i.re, ptr %15, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i168, ptr %i.qz, align 8, !tbaa !37
  br label %.critedge118.critedge

.critedge118.critedge:                            ; preds = %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165, %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit139, %.critedge116, %bb.t
  %.10 = phi i1 [ false, %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit139 ], [ true, %.critedge116 ], [ true, %bb.t ], [ false, %_Z9b3ProjectPK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionPS3_S8_PfS9_.exit165 ]
  ret i1 %.10
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z33b3FindConcaveSeparatingAxisKernelP6b3Int4PK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3SC_PK9b3GpuFacePKiPK15b3GpuChildShapeP6b3AabbPSA_S0_SN_SN_SN_Piiii(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef writeonly captures(none) %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef writeonly captures(none) %15, i32 noundef %16, i32 %17, i32 noundef %18) local_unnamed_addr #2 {
bb.a:
  %19 = alloca %struct.b3ConvexPolyhedronData, align 16 ; 15 uses
  %20 = alloca [3 x %class.b3Vector3], align 16   ; 21 uses
  %i.a = alloca float, align 4                    ; 7 uses
  %21 = alloca %class.b3Vector3, align 16         ; 10 uses
  %22 = alloca [3 x %class.b3Vector3], align 16   ; 9 uses
  %23 = alloca [5 x %struct.b3GpuFace], align 16  ; 32 uses
  %i.b = alloca [12 x i32], align 16              ; 6 uses
  %24 = alloca %class.b3Vector3, align 16         ; 10 uses
  %25 = alloca %class.b3Vector3, align 16         ; 14 uses
  %26 = alloca %class.b3Quaternion, align 16      ; 10 uses
  %27 = alloca %class.b3Quaternion, align 16      ; 13 uses
  %28 = alloca %class.b3Vector3, align 16         ; 7 uses
  %i.c = sext i32 %18 to i64                      ; 3 uses
  %i.d = getelementptr inbounds [16 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds [80 x i8], ptr %1, i64 %i.h ; 3 uses
  %i.j = sext i32 %i.g to i64                     ; 2 uses
  %i.k = getelementptr inbounds [80 x i8], ptr %1, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load i32, ptr %i.l, align 16, !tbaa !33
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  switch i32 %i.s, label %bb.b [
    i32 3, label %bb.c
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.t, align 4, !tbaa !37
  br label %bb.q

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.v = load i32, ptr %i.u, align 16, !tbaa !33
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %2, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = getelementptr inbounds [4 x i8], ptr %15, i64 %i.c ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 76
  store i32 3, ptr %i.ad, align 4, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 80
  store i32 0, ptr %i.ae, align 16, !tbaa !46
  %i.af = sext i32 %i.z to i64
  %i.ag = getelementptr inbounds [96 x i8], ptr %3, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43
  %i.aj = add nsw i32 %i.ai, %i.ac
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [32 x i8], ptr %6, i64 %i.ak ; 4 uses
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %29 = load <3 x float>, ptr %i.al, align 16     ; 6 uses
  %30 = shufflevector <3 x float> %29, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %.sroa.475.0.copyload = load float, ptr %.sroa.475.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.sroa.475.0.copyload.a = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !37
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.an = load i32, ptr %i.am, align 16, !tbaa !46 ; 3 uses
  %i.ao = sext i32 %.sroa.7.0.copyload to i64     ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !38
  %i.ar = add nsw i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %4, i64 %i.as ; 3 uses
  %.sroa.7332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !37 ; 5 uses
  %.sroa.7332.0..sroa_idx333 = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 3 uses
  %.sroa.10.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %20, i64 12
  store float %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx341, align 4, !tbaa !37
  %i.au = getelementptr [4 x i8], ptr %7, i64 %i.ao
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !38
  %i.ax = add nsw i32 %i.an, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ay ; 3 uses
  %.sroa.7332.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.sroa.13.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.sroa.13.0.copyload.1 = load float, ptr %.sroa.13.0..sroa_idx.1, align 4, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %.sroa.7332.0..sroa_idx333.1 = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %.sroa.10.0..sroa_idx337.1 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %.sroa.13.0..sroa_idx341.1 = getelementptr inbounds nuw i8, ptr %20, i64 28
  store float %.sroa.13.0.copyload.1, ptr %.sroa.13.0..sroa_idx341.1, align 4, !tbaa !37
  %i.bb = getelementptr [4 x i8], ptr %7, i64 %i.ao
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38
  %i.be = add nsw i32 %i.an, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bf ; 3 uses
  %.sroa.7332.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.7332.0.copyload = load float, ptr %.sroa.7332.0..sroa_idx, align 4 ; 3 uses
  %i.bh = load <3 x float>, ptr %i.at, align 16   ; 7 uses
  %i.bi = extractelement <3 x float> %i.bh, i64 0 ; 3 uses
  store float %i.bi, ptr %20, align 16
  store float %.sroa.7332.0.copyload, ptr %.sroa.7332.0..sroa_idx333, align 4
  %i.bj = extractelement <3 x float> %i.bh, i64 2 ; 3 uses
  store float %i.bj, ptr %.sroa.10.0..sroa_idx337, align 8
  %i.bk = fadd <3 x float> %i.bh, zeroinitializer
  %i.bl = fcmp olt float %i.bi, 1.000000e+30
  %i.bm = shufflevector <3 x float> %i.bh, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bn = insertelement <2 x float> %i.bm, float 1.000000e+30, i64 1
  %.sroa.0.0.i = select i1 %i.bl, <2 x float> %i.bn, <2 x float> splat (float 1.000000e+30) ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.bo = fcmp olt float %.sroa.7332.0.copyload, %.sroa.0.4.vec.extract.i
  %i.bp = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bq = shufflevector <3 x float> %i.bp, <3 x float> %i.bh, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i = select i1 %i.bo, <2 x float> %i.bq, <2 x float> %.sroa.0.0.i ; 4 uses
  %i.br = fcmp olt float %i.bj, 1.000000e+30
  %i.bs = shufflevector <3 x float> %i.bh, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float 0.000000e+00, i64 1 ; 2 uses
  %.sroa.6.0.i = select i1 %i.br, <2 x float> %i.bt, <2 x float> <float 1.000000e+30, float 0.000000e+00> ; 3 uses
  %.sroa.6.12.vec.extract.i = extractelement <2 x float> %.sroa.6.0.i, i64 1
  %i.bu = fcmp olt float %.sroa.13.0.copyload, %.sroa.6.12.vec.extract.i
  %.sroa.6.12.vec.insert.i = insertelement <2 x float> %.sroa.6.0.i, float %.sroa.13.0.copyload, i64 1
  %.sroa.6.1.i = select i1 %i.bu, <2 x float> %.sroa.6.12.vec.insert.i, <2 x float> %.sroa.6.0.i ; 2 uses
  %i.bv = fcmp ogt float %i.bi, -1.000000e+30
  %i.bw = insertelement <2 x float> %i.bm, float -1.000000e+30, i64 1
  %.sroa.0.0.i197 = select i1 %i.bv, <2 x float> %i.bw, <2 x float> splat (float -1.000000e+30) ; 3 uses
  %.sroa.0.4.vec.extract.i198 = extractelement <2 x float> %.sroa.0.0.i197, i64 1
  %i.bx = fcmp olt float %.sroa.0.4.vec.extract.i198, %.sroa.7332.0.copyload
  %i.by = shufflevector <2 x float> %.sroa.0.0.i197, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bz = shufflevector <3 x float> %i.by, <3 x float> %i.bh, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i200 = select i1 %i.bx, <2 x float> %i.bz, <2 x float> %.sroa.0.0.i197 ; 4 uses
  %i.ca = fcmp ogt float %i.bj, -1.000000e+30
  %.sroa.6.0.i203 = select i1 %i.ca, <2 x float> %i.bt, <2 x float> <float -1.000000e+30, float 0.000000e+00> ; 3 uses
  %.sroa.6.12.vec.extract.i204 = extractelement <2 x float> %.sroa.6.0.i203, i64 1
  %i.cb = fcmp olt float %.sroa.6.12.vec.extract.i204, %.sroa.13.0.copyload
  %.sroa.6.12.vec.insert.i205 = insertelement <2 x float> %.sroa.6.0.i203, float %.sroa.13.0.copyload, i64 1
  %.sroa.6.1.i206 = select i1 %i.cb, <2 x float> %.sroa.6.12.vec.insert.i205, <2 x float> %.sroa.6.0.i203 ; 2 uses
  %.sroa.7332.0.copyload.1 = load float, ptr %.sroa.7332.0..sroa_idx.1, align 4 ; 3 uses
  %i.cc = load <3 x float>, ptr %i.az, align 16   ; 7 uses
  %i.cd = extractelement <3 x float> %i.cc, i64 0 ; 3 uses
  store float %i.cd, ptr %i.ba, align 16
  store float %.sroa.7332.0.copyload.1, ptr %.sroa.7332.0..sroa_idx333.1, align 4
  %i.ce = extractelement <3 x float> %i.cc, i64 2 ; 3 uses
  store float %i.ce, ptr %.sroa.10.0..sroa_idx337.1, align 8
  %i.cf = fadd <3 x float> %i.bk, %i.cc
  %.sroa.0.0.vec.extract.i.1 = extractelement <2 x float> %.sroa.0.1.i, i64 0
  %i.cg = fcmp olt float %i.cd, %.sroa.0.0.vec.extract.i.1
  %i.ch = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %sel = select i1 %i.cg, <2 x float> %i.ch, <2 x float> %.sroa.0.1.i ; 2 uses
  %.sroa.0.0.i.1 = shufflevector <2 x float> %sel, <2 x float> %.sroa.0.1.i, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i.1 = extractelement <2 x float> %.sroa.0.1.i, i64 1
  %i.ci = fcmp olt float %.sroa.7332.0.copyload.1, %.sroa.0.4.vec.extract.i.1
  %i.cj = shufflevector <2 x float> %sel, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> %i.cc, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i.1 = select i1 %i.ci, <2 x float> %i.ck, <2 x float> %.sroa.0.0.i.1 ; 4 uses
  %.sroa.6.8.vec.extract.i.1 = extractelement <2 x float> %.sroa.6.1.i, i64 0
  %i.cl = fcmp olt float %i.ce, %.sroa.6.8.vec.extract.i.1
  %i.cm = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 2, i32 poison> ; 2 uses
  %.sroa.6.0.i.1 = select i1 %i.cl, <2 x float> %i.cm, <2 x float> %.sroa.6.1.i
  %.sroa.0.0.vec.extract.i195.1 = extractelement <2 x float> %.sroa.0.1.i200, i64 0
  %i.cn = fcmp olt float %.sroa.0.0.vec.extract.i195.1, %i.cd
  %sel422.a = select i1 %i.cn, <2 x float> %i.ch, <2 x float> %.sroa.0.1.i200 ; 2 uses
  %.sroa.0.0.i197.1 = shufflevector <2 x float> %sel422.a, <2 x float> %.sroa.0.1.i200, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i198.1 = extractelement <2 x float> %.sroa.0.1.i200, i64 1
  %i.co = fcmp olt float %.sroa.0.4.vec.extract.i198.1, %.sroa.7332.0.copyload.1
  %i.cp = shufflevector <2 x float> %sel422.a, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cq = shufflevector <3 x float> %i.cp, <3 x float> %i.cc, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i200.1 = select i1 %i.co, <2 x float> %i.cq, <2 x float> %.sroa.0.0.i197.1 ; 4 uses
  %.sroa.6.8.vec.extract.i201.1 = extractelement <2 x float> %.sroa.6.1.i206, i64 0
  %i.cr = fcmp olt float %.sroa.6.8.vec.extract.i201.1, %i.ce
  %.sroa.6.0.i203.1 = select i1 %i.cr, <2 x float> %i.cm, <2 x float> %.sroa.6.1.i206
  %.sroa.7332.0.copyload.2 = load float, ptr %.sroa.7332.0..sroa_idx.2, align 4 ; 6 uses
  %i.cs = load <3 x float>, ptr %i.bg, align 16   ; 8 uses
  %.sroa.13.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.sroa.13.0.copyload.2 = load float, ptr %.sroa.13.0..sroa_idx.2, align 4, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.cu = extractelement <3 x float> %i.cs, i64 0 ; 4 uses
  store float %i.cu, ptr %i.ct, align 16
  %.sroa.7332.0..sroa_idx333.2 = getelementptr inbounds nuw i8, ptr %20, i64 36 ; 2 uses
  store float %.sroa.7332.0.copyload.2, ptr %.sroa.7332.0..sroa_idx333.2, align 4
  %.sroa.10.0..sroa_idx337.2 = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.cv = extractelement <3 x float> %i.cs, i64 2 ; 7 uses
  store float %i.cv, ptr %.sroa.10.0..sroa_idx337.2, align 8
  %.sroa.13.0..sroa_idx341.2 = getelementptr inbounds nuw i8, ptr %20, i64 44
  store float %.sroa.13.0.copyload.2, ptr %.sroa.13.0..sroa_idx341.2, align 4, !tbaa !37
  %i.cw = fadd <3 x float> %i.cf, %i.cs
  %.sroa.0.0.vec.extract.i.2 = extractelement <2 x float> %.sroa.0.1.i.1, i64 0
  %i.cx = fcmp olt float %i.cu, %.sroa.0.0.vec.extract.i.2
  %i.cy = shufflevector <3 x float> %i.cs, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %sel423 = select i1 %i.cx, <2 x float> %i.cy, <2 x float> %.sroa.0.1.i.1 ; 2 uses
  %.sroa.0.0.i.2 = shufflevector <2 x float> %sel423, <2 x float> %.sroa.0.1.i.1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i.2 = extractelement <2 x float> %.sroa.0.1.i.1, i64 1
  %i.cz = fcmp olt float %.sroa.7332.0.copyload.2, %.sroa.0.4.vec.extract.i.2
  %i.da = shufflevector <2 x float> %sel423, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.db = shufflevector <3 x float> %i.da, <3 x float> %i.cs, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i.2 = select i1 %i.cz, <2 x float> %i.db, <2 x float> %.sroa.0.0.i.2 ; 2 uses
  %.sroa.6.8.vec.extract.i.2 = extractelement <2 x float> %.sroa.6.0.i.1, i64 0 ; 2 uses
  %i.dc = fcmp olt float %i.cv, %.sroa.6.8.vec.extract.i.2
  %.sroa.0.0.vec.extract.i195.2 = extractelement <2 x float> %.sroa.0.1.i200.1, i64 0
  %i.dd = fcmp olt float %.sroa.0.0.vec.extract.i195.2, %i.cu
  %sel424 = select i1 %i.dd, <2 x float> %i.cy, <2 x float> %.sroa.0.1.i200.1 ; 2 uses
  %.sroa.0.0.i197.2 = shufflevector <2 x float> %sel424, <2 x float> %.sroa.0.1.i200.1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.extract.i198.2 = extractelement <2 x float> %.sroa.0.1.i200.1, i64 1
  %i.de = fcmp olt float %.sroa.0.4.vec.extract.i198.2, %.sroa.7332.0.copyload.2
  %i.df = shufflevector <2 x float> %sel424, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dg = shufflevector <3 x float> %i.df, <3 x float> %i.cs, <2 x i32> <i32 0, i32 4>
  %.sroa.0.1.i200.2 = select i1 %i.de, <2 x float> %i.dg, <2 x float> %.sroa.0.0.i197.2 ; 2 uses
  %.sroa.6.8.vec.extract.i201.2 = extractelement <2 x float> %.sroa.6.0.i203.1, i64 0 ; 2 uses
  %i.dh = fcmp olt float %.sroa.6.8.vec.extract.i201.2, %i.cv
  %.sroa.0344.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i.2, i64 0
  %i.di = getelementptr inbounds [32 x i8], ptr %9, i64 %i.j ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load float, ptr %i.dj, align 16, !tbaa !37
  %i.dl = fcmp ogt float %.sroa.0344.0.vec.extract, %i.dk
  br i1 %i.dl, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.11348.16.vec.extract = extractelement <2 x float> %.sroa.0.1.i200.2, i64 0
  %i.dm = load float, ptr %i.di, align 16, !tbaa !37
  %i.dn = fcmp uge float %.sroa.11348.16.vec.extract, %i.dm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.do = phi i1 [ false, %bb.c ], [ %i.dn, %bb.d ]
  %.sroa.7346.8.vec.extract = select i1 %i.dc, float %i.cv, float %.sroa.6.8.vec.extract.i.2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !37
  %i.dr = fcmp ogt float %.sroa.7346.8.vec.extract, %i.dq
  br i1 %i.dr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.16.24.vec.extract = select i1 %i.dh, float %i.cv, float %.sroa.6.8.vec.extract.i201.2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !37
  %i.du = fcmp uge float %.sroa.16.24.vec.extract, %i.dt
  %spec.select188 = select i1 %i.du, i1 %i.do, i1 false
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dv = phi i1 [ false, %bb.e ], [ %spec.select188, %bb.f ]
  %.sroa.0344.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i.2, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !37
  %i.dy = fcmp ogt float %.sroa.0344.4.vec.extract, %i.dx
  br i1 %i.dy, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.11348.20.vec.extract = extractelement <2 x float> %.sroa.0.1.i200.2, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !37
  %i.eb = fcmp uge float %.sroa.11348.20.vec.extract, %i.ea
  %spec.select189 = select i1 %i.eb, i1 %i.dv, i1 false
  br i1 %spec.select189, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store <2 x float> <float 1.000000e+00, float 2.000000e+00>, ptr %21, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> <float 3.000000e+00, float 4.000000e+00>, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 88
  store i32 3, ptr %i.ed, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw i8, ptr %19, i64 84
  store i32 0, ptr %i.ee, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.ef = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !37 ; 2 uses
  %i.eh = load float, ptr %.sroa.10.0..sroa_idx337, align 8, !tbaa !37 ; 5 uses
  %i.ei = fsub float %i.eg, %i.eh
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ei, i64 0
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.459.0..sroa_idx, align 8, !tbaa !37
  %i.ej = load <2 x float>, ptr %i.ba, align 16, !tbaa !37 ; 2 uses
  %i.ek = shufflevector <3 x float> %i.cs, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.el = insertelement <2 x float> %i.ek, float %.sroa.7332.0.copyload.2, i64 1
  %i.em = fsub <2 x float> %i.el, %i.ej
  %i.en = fsub float %i.cv, %i.eg
  %.sroa.3.12.vec.insert.i.i211 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.en, i64 0
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <2 x float> %i.em, ptr %i.eo, align 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i211, ptr %.sroa.457.0..sroa_idx, align 8, !tbaa !37
  %i.ep = fsub float %i.eh, %i.cv
  %.sroa.3.12.vec.insert.i.i216 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 32
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i.i216, ptr %.sroa.455.0..sroa_idx, align 8, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 68
  store i32 0, ptr %i.er, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %31 = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %31, align 16, !tbaa !50
  %32 = extractelement <3 x float> %29, i64 0     ; 4 uses
  store float %32, ptr %23, align 16, !tbaa !37
  %33 = getelementptr inbounds nuw i8, ptr %23, i64 4
  store float %.sroa.475.0.copyload, ptr %33, align 4, !tbaa !37
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 8
  %34 = extractelement <3 x float> %29, i64 2     ; 3 uses
  store float %34, ptr %i.es, align 8, !tbaa !37
  %35 = getelementptr inbounds nuw i8, ptr %23, i64 12
  store float %.sroa.475.0.copyload.a, ptr %35, align 4, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 3, ptr %i.et, align 4, !tbaa !51
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %23, i64 48
  store i32 3, ptr %i.ev, align 16, !tbaa !50
  store <4 x i32> <i32 0, i32 1, i32 2, i32 2>, ptr %i.b, align 16, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ex = fneg float %32
  store float %i.ex, ptr %i.eu, align 16, !tbaa !37
  %i.ey = fneg float %.sroa.475.0.copyload
  %i.ez = getelementptr inbounds nuw i8, ptr %23, i64 36
  store float %i.ey, ptr %i.ez, align 4, !tbaa !37
  %i.fa = fneg float %34
  %i.fb = getelementptr inbounds nuw i8, ptr %23, i64 40
  store float %i.fa, ptr %i.fb, align 8, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.fd = getelementptr inbounds nuw i8, ptr %23, i64 52
  store i32 3, ptr %i.fd, align 4, !tbaa !51
  %36 = load <2 x float>, ptr %20, align 16, !tbaa !37 ; 4 uses
  %37 = load float, ptr %.sroa.7332.0..sroa_idx333, align 4, !tbaa !37 ; 3 uses
  %38 = extractelement <2 x float> %36, i64 0     ; 2 uses
  %39 = insertelement <2 x float> %36, float %37, i64 1
  %40 = fsub <2 x float> %i.ej, %39
  store <2 x float> %40, ptr %22, align 16
  %41 = fsub float %38, %i.cu
  %42 = fsub float %37, %.sroa.7332.0.copyload.2
  %.sroa.0.0.vec.insert.i.i214 = insertelement <2 x float> poison, float %41, i64 0
  %.sroa.0.4.vec.insert.i.i215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i214, float %42, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i215, ptr %i.eq, align 16
  %43 = shufflevector <3 x float> %i.cs, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %44 = insertelement <4 x float> %43, float %.sroa.7332.0.copyload.2, i64 3
  %45 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %46 = shufflevector <4 x float> %45, <4 x float> %44, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %47 = shufflevector <4 x float> %45, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 0, i32 1>
  %48 = insertelement <4 x float> %47, float %i.eh, i64 1
  %49 = fsub <4 x float> %46, %48                 ; 3 uses
  %50 = fneg <4 x float> %49
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %52 = shufflevector <3 x float> %29, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %53 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %54 = fneg <4 x float> %49
  %55 = shufflevector <4 x float> %53, <4 x float> %54, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %56 = shufflevector <2 x float> %51, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %57 = shufflevector <4 x float> %55, <4 x float> %56, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %58 = fmul <4 x float> %52, %57
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> %49, <4 x float> %58) ; 4 uses
  %60 = extractelement <4 x float> %59, i64 0
  %61 = tail call noundef float @llvm.fmuladd.f32(float %34, float %i.eh, float %60)
  store float %61, ptr %i.fc, align 4, !tbaa !37
  %62 = extractelement <4 x float> %59, i64 2     ; 3 uses
  %63 = fmul float %62, %62
  %i.fe = extractelement <4 x float> %59, i64 1   ; 3 uses
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fe, float %63)
  %i.fg = extractelement <4 x float> %59, i64 3   ; 3 uses
  %i.fh = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.ff)
  %i.fi = tail call noundef float @sqrtf(float noundef %i.fh) #28
  %i.fj = fdiv float 1.000000e+00, %i.fi          ; 3 uses
  %64 = fmul float %i.fe, %i.fj                   ; 2 uses
  %i.fk = fmul float %i.fj, %62                   ; 2 uses
  %65 = fmul float %i.fg, %i.fj                   ; 2 uses
  %66 = fmul float %37, %i.fk
  %67 = tail call float @llvm.fmuladd.f32(float %64, float %38, float %66)
  %68 = tail call noundef float @llvm.fmuladd.f32(float %65, float %i.eh, float %67)
  %69 = fneg float %68
  %70 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %71 = getelementptr inbounds nuw i8, ptr %23, i64 84
  store i32 2, ptr %71, align 4, !tbaa !51
  %72 = getelementptr inbounds nuw i8, ptr %23, i64 80
  store i32 6, ptr %72, align 16, !tbaa !50
  store <4 x i32> <i32 1, i32 0, i32 0, i32 2>, ptr %i.ew, align 16, !tbaa !38
  store float %64, ptr %70, align 16, !tbaa !37
  %73 = getelementptr inbounds nuw i8, ptr %23, i64 68
  store float %i.fk, ptr %73, align 4, !tbaa !37
  %74 = getelementptr inbounds nuw i8, ptr %23, i64 72
  store float %65, ptr %74, align 8, !tbaa !37
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 76
  store float %69, ptr %i.fl, align 4, !tbaa !37
  %.sroa.0303.0.copyload.1 = load float, ptr %i.ba, align 16 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.fn = getelementptr inbounds nuw i8, ptr %23, i64 116
  %i.fo = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fq = load <2 x float>, ptr %.sroa.7332.0..sroa_idx333.1, align 4 ; 5 uses
  %i.fr = load <2 x float>, ptr %.sroa.7332.0..sroa_idx333, align 4
  %i.fs = load <3 x float>, ptr %20, align 16
  %i.ft = insertelement <2 x float> %i.fq, float %.sroa.0303.0.copyload.1, i64 0
  %i.fu = shufflevector <3 x float> %i.fs, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fv = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fw = fsub <2 x float> %i.fu, %i.fv           ; 2 uses
  %i.fx = fsub <2 x float> %i.fr, %i.fq           ; 2 uses
  %i.fy = fneg <2 x float> %i.fx
  %75 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.fz = fmul <2 x float> %75, %i.fy
  %76 = shufflevector <3 x float> %29, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ga = insertelement <2 x float> %76, float %.sroa.475.0.copyload, i64 0 ; 2 uses
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.fw, <2 x float> %i.fz) ; 4 uses
  %i.gc = extractelement <2 x float> %i.fw, i64 1
  %i.gd = fneg float %i.gc
  %i.ge = fmul float %.sroa.475.0.copyload, %i.gd
  %i.gf = extractelement <2 x float> %i.fx, i64 0
  %i.gg = tail call float @llvm.fmuladd.f32(float %32, float %i.gf, float %i.ge) ; 3 uses
  %foldExtExtBinop401.a = fmul <2 x float> %i.gb, %i.gb
  %i.gh = extractelement <2 x float> %foldExtExtBinop401.a, i64 1
  %i.gi = extractelement <2 x float> %i.gb, i64 0 ; 2 uses
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gi, float %i.gh)
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.gg, float %i.gj)
  %i.gl = tail call noundef float @sqrtf(float noundef %i.gk) #28
  %i.gm = extractelement <2 x float> %i.fq, i64 1
  store i32 2, ptr %i.fn, align 4, !tbaa !51
  store i32 8, ptr %i.fo, align 16, !tbaa !50
  %i.gn = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.go = getelementptr inbounds nuw i8, ptr %23, i64 108
  %.sroa.0303.0.copyload.2 = load float, ptr %i.ct, align 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.gq = getelementptr inbounds nuw i8, ptr %23, i64 148
  %i.gr = getelementptr inbounds nuw i8, ptr %23, i64 144
  %i.gs = load <2 x float>, ptr %.sroa.7332.0..sroa_idx333.2, align 4 ; 3 uses
  %i.gt = fsub float %.sroa.0303.0.copyload.1, %.sroa.0303.0.copyload.2 ; 2 uses
  %i.gu = fsub <2 x float> %i.fq, %i.gs           ; 3 uses
  %i.gv = fneg <2 x float> %i.gu
  %i.gw = fmul <2 x float> %75, %i.gv
  %i.gx = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %i.gt, i64 1
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gy, <2 x float> %i.gw) ; 4 uses
  %i.ha = fneg float %i.gt
  %i.hb = fmul float %.sroa.475.0.copyload, %i.ha
  %i.hc = extractelement <2 x float> %i.gu, i64 0
  %i.hd = tail call float @llvm.fmuladd.f32(float %32, float %i.hc, float %i.hb) ; 3 uses
  %foldExtExtBinop403.a = fmul <2 x float> %i.gz, %i.gz
  %i.he = extractelement <2 x float> %foldExtExtBinop403.a, i64 1
  %i.hf = extractelement <2 x float> %i.gz, i64 0 ; 2 uses
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hf, float %i.he)
  %i.hh = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.hd, float %i.hg)
  %i.hi = tail call noundef float @sqrtf(float noundef %i.hh) #28
  %i.hj = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.hk = insertelement <2 x float> %i.hj, float %i.hi, i64 1
  %i.hl = fdiv <2 x float> splat (float 1.000000e+00), %i.hk ; 4 uses
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul <2 x float> %i.gb, %i.hm           ; 3 uses
  %i.ho = extractelement <2 x float> %i.hl, i64 0
  %i.hp = fmul float %i.gg, %i.ho                 ; 2 uses
  %shift = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop405 = fmul <2 x float> %i.fq, %shift
  %i.hq = extractelement <2 x float> %foldExtExtBinop405, i64 0
  %i.hr = extractelement <2 x float> %i.hn, i64 0
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %.sroa.0303.0.copyload.1, float %i.hq)
  %i.ht = tail call noundef float @llvm.fmuladd.f32(float %i.hp, float %i.gm, float %i.hs)
  %i.hu = fneg float %i.ht
  store <2 x float> %i.hn, ptr %i.fm, align 16, !tbaa !37
  store float %i.hp, ptr %i.gn, align 8, !tbaa !37
  store float %i.hu, ptr %i.go, align 4, !tbaa !37
  %i.hv = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = fmul <2 x float> %i.gz, %i.hv           ; 3 uses
  %i.hx = extractelement <2 x float> %i.hl, i64 1
  %i.hy = fmul float %i.hd, %i.hx                 ; 2 uses
  %shift407 = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop408 = fmul <2 x float> %i.gs, %shift407
  %i.hz = extractelement <2 x float> %foldExtExtBinop408, i64 0
  %i.ia = extractelement <2 x float> %i.hw, i64 0
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.ia, float %.sroa.0303.0.copyload.2, float %i.hz)
  %i.ic = extractelement <2 x float> %i.gs, i64 1
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.hy, float %i.ic, float %i.ib)
  %i.ie = fneg float %i.id
  store i32 2, ptr %i.gq, align 4, !tbaa !51
  store i32 10, ptr %i.gr, align 16, !tbaa !50
  store <4 x i32> <i32 1, i32 0, i32 2, i32 1>, ptr %i.fp, align 16, !tbaa !38
  store <2 x float> %i.hw, ptr %i.gp, align 16, !tbaa !37
  %i.if = getelementptr inbounds nuw i8, ptr %23, i64 136
  store float %i.hy, ptr %i.if, align 8, !tbaa !37
  %i.ig = getelementptr inbounds nuw i8, ptr %23, i64 140
  store float %i.ie, ptr %i.ig, align 4, !tbaa !37
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i32 5, ptr %i.ih, align 8, !tbaa !42
  %i.ii = fmul <3 x float> %i.cw, splat (float f0x3EAAAAAB) ; 3 uses
  %i.ij = shufflevector <3 x float> %i.ii, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ik = shufflevector <3 x float> %i.ii, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.il = insertelement <2 x float> %i.ik, float 0.000000e+00, i64 1
  store <2 x float> %i.ij, ptr %19, align 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %i.il, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !40
  %i.im = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float 0.000000e+00, ptr %i.im, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %25, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !40
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 12
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, ptr noundef nonnull align 16 dereferenceable(16) %i.io, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %27, ptr noundef nonnull align 16 dereferenceable(16) %i.ip, i64 16, i1 false)
  %i.iq = load i32, ptr %i.r, align 4, !tbaa !36
  %i.ir = icmp eq i32 %i.iq, 6
  %.sroa.23.48.copyload.i248.pre = load float, ptr %25, align 16 ; 2 uses
  br i1 %i.ir, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.sroa.25.48..sroa_idx.i249.phi.trans.insert = getelementptr inbounds nuw i8, ptr %25, i64 4
  %.sroa.25.48.copyload.i250.pre = load float, ptr %.sroa.25.48..sroa_idx.i249.phi.trans.insert, align 4
  %.sroa.26.48..sroa_idx.i251.phi.trans.insert = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.26.48.copyload.i252.pre = load float, ptr %.sroa.26.48..sroa_idx.i251.phi.trans.insert, align 8
  %i.is = load <4 x float>, ptr %27, align 16, !tbaa !37
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !37
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [48 x i8], ptr %8, i64 %i.iv ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load i32, ptr %i.ix, align 16, !tbaa !37
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 3 uses
  %.sroa.25.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 4
  %.sroa.25.48.copyload.i = load float, ptr %.sroa.25.48..sroa_idx.i, align 4
  %.sroa.26.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !37 ; 6 uses
  %.sroa.0274.0.copyload = load float, ptr %i.iz, align 16
  %i.jd = load <3 x float>, ptr %i.iz, align 16   ; 2 uses
  %i.je = shufflevector <3 x float> %i.jd, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.jf = load <4 x float>, ptr %i.iz, align 16   ; 2 uses
  %i.jg = load float, ptr %27, align 16, !tbaa !37 ; 6 uses
  %i.jh = load <3 x float>, ptr %27, align 16, !tbaa !37 ; 4 uses
  %i.ji = extractelement <3 x float> %i.jh, i64 1 ; 5 uses
  %i.jj = fmul float %i.ji, %i.ji
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jg, float %i.jg, float %i.jj)
  %i.jl = extractelement <3 x float> %i.jh, i64 2 ; 4 uses
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jl, float %i.jk)
  %i.jn = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.jc, float %i.jm)
  %i.jo = fdiv float 2.000000e+00, %i.jn          ; 3 uses
  %i.jp = fneg <3 x float> %i.jh
  %i.jq = shufflevector <3 x float> %i.jp, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2> ; 2 uses
  %i.jr = fneg float %.sroa.0274.0.copyload
  %i.js = shufflevector <3 x float> %i.jh, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.jt = shufflevector <4 x float> %i.jf, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ju = insertelement <2 x float> %i.jt, float %i.jr, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.jw = fmul <4 x float> %i.js, %i.jv
  %i.jx = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.jf, <4 x float> %i.jw)
  %i.ka = shufflevector <4 x float> %i.js, <4 x float> %i.jq, <4 x i32> <i32 1, i32 2, i32 0, i32 6>
  %i.kb = shufflevector <3 x float> %i.jd, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.kc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ka, <4 x float> %i.kb, <4 x float> %i.jz)
  %i.kd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> %i.je, <4 x float> %i.kc) ; 3 uses
  %i.ke = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kf = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.ke, ptr %27, align 16
  store <2 x float> %i.kf, ptr %i.ja, align 8
  %i.kg = sext i32 %i.iy to i64
  %i.kh = getelementptr inbounds [16 x i8], ptr %2, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !37
  %.sroa.0278.0.copyload = load float, ptr %i.iw, align 16 ; 3 uses
  %.sroa.4279.0.copyload = load float, ptr %.sroa.4279.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5280.0.copyload = load float, ptr %.sroa.5280.0..sroa_idx, align 8 ; 3 uses
  %i.kk = fmul float %i.jg, %i.jo                 ; 2 uses
  %i.kl = fmul float %i.ji, %i.jo                 ; 3 uses
  %i.km = fmul float %i.jl, %i.jo                 ; 4 uses
  %i.kn = fmul float %i.jc, %i.kk                 ; 2 uses
  %i.ko = fmul float %i.jc, %i.kl                 ; 2 uses
  %i.kp = fmul float %i.jc, %i.km                 ; 2 uses
  %i.kq = fmul float %i.jg, %i.kk                 ; 2 uses
  %i.kr = fmul float %i.jg, %i.kl                 ; 2 uses
  %i.ks = fmul float %i.jg, %i.km                 ; 2 uses
  %i.kt = fmul float %i.ji, %i.kl                 ; 2 uses
  %i.ku = fmul float %i.ji, %i.km                 ; 2 uses
  %i.kv = fmul float %i.jl, %i.km                 ; 2 uses
  %i.kw = fadd float %i.kt, %i.kv
  %i.kx = fsub float 1.000000e+00, %i.kw
  %i.ky = fsub float %i.kr, %i.kp
  %i.kz = fadd float %i.ks, %i.ko
  %i.la = fadd float %i.kr, %i.kp
  %i.lb = fadd float %i.kq, %i.kv
  %i.lc = fsub float 1.000000e+00, %i.lb
  %i.ld = fsub float %i.ku, %i.kn
  %i.le = fsub float %i.ks, %i.ko
  %i.lf = fadd float %i.ku, %i.kn
  %i.lg = fadd float %i.kq, %i.kt
  %i.lh = fsub float 1.000000e+00, %i.lg
  %i.li = fmul float %.sroa.4279.0.copyload, %i.ky
  %i.lj = tail call float @llvm.fmuladd.f32(float %.sroa.0278.0.copyload, float %i.kx, float %i.li)
  %i.lk = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5280.0.copyload, float %i.kz, float %i.lj)
  %i.ll = fmul float %.sroa.4279.0.copyload, %i.lc
  %i.lm = tail call float @llvm.fmuladd.f32(float %.sroa.0278.0.copyload, float %i.la, float %i.ll)
  %i.ln = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5280.0.copyload, float %i.ld, float %i.lm)
  %i.lo = fmul float %.sroa.4279.0.copyload, %i.lf
  %i.lp = tail call float @llvm.fmuladd.f32(float %.sroa.0278.0.copyload, float %i.le, float %i.lo)
  %i.lq = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5280.0.copyload, float %i.lh, float %i.lp)
  %i.lr = fadd float %.sroa.23.48.copyload.i248.pre, %i.lk ; 2 uses
  %i.ls = fadd float %.sroa.25.48.copyload.i, %i.ln ; 2 uses
  %i.lt = fadd float %.sroa.26.48.copyload.i, %i.lq ; 2 uses
  %.sroa.0.0.vec.insert.i.i2.i.i = insertelement <2 x float> poison, float %i.lr, i64 0
  %.sroa.0.4.vec.insert.i.i3.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i2.i.i, float %i.ls, i64 1
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lt, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i3.i.i, ptr %25, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.26.48..sroa_idx.i, align 8, !tbaa !37
  %i.lu = load <3 x float>, ptr %19, align 16
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.sroa.26.48.copyload.i252 = phi float [ %i.lt, %bb.j ], [ %.sroa.26.48.copyload.i252.pre, %._crit_edge ]
  %.sroa.25.48.copyload.i250 = phi float [ %i.ls, %bb.j ], [ %.sroa.25.48.copyload.i250.pre, %._crit_edge ]
  %.sroa.23.48.copyload.i248 = phi float [ %i.lr, %bb.j ], [ %.sroa.23.48.copyload.i248.pre, %._crit_edge ]
  %.0 = phi i32 [ %i.kj, %bb.j ], [ %i.q, %._crit_edge ]
  %i.lv = phi <4 x float> [ %i.kd, %bb.j ], [ %i.is, %._crit_edge ] ; 10 uses
  %i.lw = phi <3 x float> [ %i.lu, %bb.j ], [ %i.ii, %._crit_edge ] ; 4 uses
  %.sroa.26.48..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.26.48.copyload.i242 = load float, ptr %.sroa.26.48..sroa_idx.i241, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !37 ; 3 uses
  %i.ma = sext i32 %.0 to i64
  %i.mb = getelementptr inbounds [96 x i8], ptr %3, i64 %i.ma ; 6 uses
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mc = extractelement <4 x float> %i.lv, i64 0
  %i.md = extractelement <4 x float> %i.lv, i64 3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.me = load <2 x float>, ptr %24, align 16
  %i.mf = load <2 x float>, ptr %26, align 16, !tbaa !37 ; 6 uses
  %i.mg = load float, ptr %i.lx, align 8, !tbaa !37 ; 2 uses
end_hunk_0
