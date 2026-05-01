inline.NumInlined: 813
inline.NumDeleted: 378
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.n = alloca [16 x i64], align 16              ; 7 uses
  %i.o = alloca [16 x i64], align 16              ; 12 uses
  %i.p = alloca [16 x i64], align 16              ; 6 uses
  %i.q = alloca [3 x i64], align 16               ; 7 uses
  %i.r = alloca [3 x float], align 4              ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !117
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %i.aa, ptr %i.at, align 8, !tbaa !117
  %i.au = add i64 %i.t, -3
  %i.av = uitofp i64 %i.au to float               ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.not = icmp eq i64 %.val, 0                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
.lr.ph175:                                        ; preds = %._crit_edge
  %i.bo = add i64 %.val120, -1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %.val129.pre = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val129.pre, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %.val129.pre, i64 72
  %.8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.a
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  store i64 0, ptr %i.n, align 16, !tbaa !117
  store i64 0, ptr %i.p, align 16, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0111173, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0111173, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.0109174, i64 12
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  br label %.preheader149

.preheader149:                                    ; preds = %bb.a, %.loopexit
  %5 = phi float [ 0.000000e+00, %bb.a ], [ %14, %.loopexit ] ; 3 uses
  %6 = phi float [ 0.000000e+00, %bb.a ], [ %15, %.loopexit ] ; 3 uses
  %i.dg = phi float [ 0.000000e+00, %bb.a ], [ %i.ro, %.loopexit ] ; 3 uses
  %.16.205 = phi i64 [ 0, %bb.a ], [ %.16.206, %.loopexit ] ; 2 uses
  %.8.200 = phi i64 [ 0, %bb.a ], [ %.8.201, %.loopexit ] ; 2 uses
  %.0.195 = phi i64 [ 0, %bb.a ], [ %.0.196, %.loopexit ] ; 2 uses
  %.0110171 = phi i64 [ 0, %bb.a ], [ %i.rp, %.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0110171 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !117 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0110171
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !117
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %.lr.ph170, label %.loopexit
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151

bb.b:                                             ; preds = %.lr.ph170, %bb.ab
  %.16.204 = phi i64 [ %.16.205, %.lr.ph170 ], [ %.16.203, %bb.ab ] ; 4 uses
  %.8.199 = phi i64 [ %.8.200, %.lr.ph170 ], [ %.8.198, %bb.ab ] ; 4 uses
  %.0.194 = phi i64 [ %.0.195, %.lr.ph170 ], [ %.0.193, %bb.ab ] ; 4 uses
  %i.dq = phi i64 [ %i.di, %.lr.ph170 ], [ %i.rk, %bb.ab ] ; 2 uses
  %7 = phi ptr [ %i.dh, %.lr.ph170 ], [ %i.rj, %bb.ab ] ; 2 uses
  %.1169 = phi i64 [ %.0110171, %.lr.ph170 ], [ %.4, %bb.ab ] ; 6 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.1169 ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !117 ; 6 uses
  %i.dt = getelementptr inbounds nuw [112 x i8], ptr %.val129.pre, i64 %.1169 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = mul i64 %i.ds, %.val                    ; 4 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !87 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ee
  %i.er = load float, ptr %i.eq, align 4, !tbaa !102
  %i.es = fcmp ugt float %.sroa.speculated.i134, %i.er
  %i.et = add nuw i64 %i.dq, 1
  store i64 %i.et, ptr %7, align 8, !tbaa !117
  %i.eu = add i64 %i.ds, 1
  store i64 %i.eu, ptr %i.dr, align 8, !tbaa !117
  br i1 %i.es, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ev = icmp eq i64 %.1169, %i.bo
  br i1 %i.ev, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.h
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
.lr.ph167:                                        ; preds = %.preheader
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %.val130, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr align 8 %i.ew, i64 %i.cf, i1 false), !tbaa !117
  %.0..0..pre = load i64, ptr %i.q, align 16, !tbaa !117
  %.8..8..pre = load i64, ptr %.8..8..sroa_idx, align 8, !tbaa !117
  %.16..16..pre = load i64, ptr %.16..16..sroa_idx, align 16, !tbaa !117
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %.lr.ph167, %.preheader
  %.16. = phi i64 [ %.16..16..pre, %.lr.ph167 ], [ %.16.204, %.preheader ] ; 4 uses
  %.8. = phi i64 [ %.8..8..pre, %.lr.ph167 ], [ %.8.199, %.preheader ] ; 4 uses
  %.0. = phi i64 [ %.0..0..pre, %.lr.ph167 ], [ %.0.194, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.ex = mul i64 %i.dn, %.0.
  %i.ey = mul i64 %i.do, %.8.
  %i.ez = mul i64 %i.dp, %.16.
  %i.fa = getelementptr [4 x i8], ptr %i.dm, i64 %i.ez
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.ey
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.qn = load i64, ptr %i.py, align 8, !tbaa !117
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qn
  store float %i.qm, ptr %i.qo, align 4, !tbaa !102
  %.pre = load float, ptr %i.r, align 4, !tbaa !102
  %.pre208 = load float, ptr %4, align 4, !tbaa !102
  %.pre209 = load float, ptr %i.bq, align 4, !tbaa !102
  br label %.thread

.thread336.i:                                     ; preds = %bb.z, %._crit_edge433.2.i, %bb.y, %._crit_edge433.1.i, %._crit_edge433.i, %bb.w, %._crit_edge428.i
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  br i1 %i.qq, label %.thread, label %select.unfold

.thread:                                          ; preds = %.thread347.i, %.thread347.thread.i
  %8 = phi float [ %.pre209, %.thread347.thread.i ], [ %5, %.thread347.i ]
  %9 = phi float [ %.pre208, %.thread347.thread.i ], [ %6, %.thread347.i ]
  %i.qr = phi float [ %.pre, %.thread347.thread.i ], [ %i.dg, %.thread347.i ]
  %10 = uitofp i64 %.0. to float
  %11 = fadd float %i.qr, %10                     ; 2 uses
  store float %11, ptr %i.r, align 4, !tbaa !102
  %12 = uitofp i64 %.8. to float
  %13 = fadd float %9, %12                        ; 2 uses
  store float %13, ptr %4, align 4, !tbaa !102
  %i.qs = uitofp i64 %.16. to float
  %i.qt = fadd float %8, %i.qs                    ; 2 uses
  store float %i.qt, ptr %i.bq, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
end_hunk_11
begin_hunk_12_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !110
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.ds
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !117
  %i.qy = shl i64 %.1169, 32
  %sext = add i64 %i.qy, 4294967296
  %i.qz = ashr exact i64 %sext, 32                ; 4 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.qz
end_hunk_12
begin_hunk_13_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  br label %bb.ab

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.rh = add nuw i64 %i.dq, 1
  store i64 %i.rh, ptr %7, align 8, !tbaa !117
  %i.ri = add i64 %i.ds, 1
  store i64 %i.ri, ptr %i.dr, align 8, !tbaa !117
  br label %bb.ab
end_hunk_13
begin_hunk_14_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151

bb.ab:                                            ; preds = %select.unfold, %bb.g, %bb.aa, %.critedge
  %.16.203 = phi i64 [ %.16., %select.unfold ], [ %.16.204, %bb.aa ], [ %.16.204, %bb.g ], [ %.16.204, %.critedge ] ; 2 uses
  %.8.198 = phi i64 [ %.8., %select.unfold ], [ %.8.199, %bb.aa ], [ %.8.199, %bb.g ], [ %.8.199, %.critedge ] ; 2 uses
  %.0.193 = phi i64 [ %.0., %select.unfold ], [ %.0.194, %bb.aa ], [ %.0.194, %bb.g ], [ %.0.194, %.critedge ] ; 2 uses
  %.4 = phi i64 [ %i.bo, %select.unfold ], [ %i.qz, %bb.aa ], [ %.1169, %bb.g ], [ %.1169, %.critedge ] ; 4 uses
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.4 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !117 ; 2 uses
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.4
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !117
  %i.rn = icmp ult i64 %i.rk, %i.rm
  br i1 %i.rn, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %.preheader149, %.thread
  %14 = phi float [ %i.qt, %.thread ], [ %5, %.preheader149 ], [ %5, %bb.ab ] ; 2 uses
  %15 = phi float [ %13, %.thread ], [ %6, %.preheader149 ], [ %6, %bb.ab ] ; 2 uses
  %i.ro = phi float [ %11, %.thread ], [ %i.dg, %.preheader149 ], [ %i.dg, %bb.ab ] ; 2 uses
  %.16.206 = phi i64 [ %.16., %.thread ], [ %.16.205, %.preheader149 ], [ %.16.203, %bb.ab ]
  %.8.201 = phi i64 [ %.8., %.thread ], [ %.8.200, %.preheader149 ], [ %.8.198, %bb.ab ]
  %.0.196 = phi i64 [ %.0., %.thread ], [ %.0.195, %.preheader149 ], [ %.0.193, %bb.ab ]
  %.5 = phi i64 [ 0, %.thread ], [ %.0110171, %.preheader149 ], [ %.4, %bb.ab ] ; 2 uses
  %i.rp = add nsw i64 %.5, -1
  %16 = fadd float %i.ro, -1.000000e+00           ; 2 uses
  %17 = fcmp ogt float %16, 0.000000e+00
  %.sroa.speculated2.i135 = select i1 %17, float %16, float 0.000000e+00 ; 2 uses
  %18 = fcmp ogt float %.sroa.speculated2.i135, %i.av
  %.sroa.speculated.i136 = select i1 %18, float %i.av, float %.sroa.speculated2.i135
  %19 = load float, ptr %i.bp, align 8, !tbaa !68
  %20 = fmul float %19, %.sroa.speculated.i136
  store float %20, ptr %.0111173, align 4, !tbaa !102
  %21 = fadd float %15, -1.000000e+00             ; 2 uses
  %22 = fcmp ogt float %21, 0.000000e+00
  %.sroa.speculated2.i137 = select i1 %22, float %21, float 0.000000e+00 ; 2 uses
  %23 = fcmp ogt float %.sroa.speculated2.i137, %i.av
  %.sroa.speculated.i138 = select i1 %23, float %i.av, float %.sroa.speculated2.i137
  %i.rq = load float, ptr %i.bp, align 8, !tbaa !68
  %i.rr = fmul float %i.rq, %.sroa.speculated.i138
  store float %i.rr, ptr %i.cy, align 4, !tbaa !102
  %i.rs = fadd float %14, -1.000000e+00           ; 2 uses
  %i.rt = fcmp ogt float %i.rs, 0.000000e+00
  %.sroa.speculated2.i139 = select i1 %i.rt, float %i.rs, float 0.000000e+00 ; 2 uses
  %i.ru = fcmp ogt float %.sroa.speculated2.i139, %i.av
end_hunk_14
begin_hunk_15_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  store float %i.rw, ptr %i.cz, align 4, !tbaa !102
  %i.rx = load float, ptr %i.da, align 4, !tbaa !102
  store float %i.rx, ptr %i.db, align 4, !tbaa !102
  %i.ry = icmp sgt i64 %.5, 0
  br i1 %i.ry, label %.preheader149, label %bb.ac, !llvm.loop !133

bb.ac:                                            ; preds = %.loopexit
end_hunk_15
