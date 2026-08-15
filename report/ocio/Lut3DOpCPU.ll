inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl:.preheader151
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.pf ; 3 uses
  %i.ph = load i64, ptr %i.b, align 16, !tbaa !118 ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.ph
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !126 ; 2 uses
  %i.pk = tail call double @llvm.fabs.f64(double %i.pj)
  %i.pl = fcmp olt double %i.pk, 1.000000e-09
  br i1 %i.pl, label %bb.z, label %._crit_edge429.2.i

._crit_edge429.2.i:                               ; preds = %.preheader360.2.i
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.it
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !126
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.om
  %i.pp = load double, ptr %i.po, align 8, !tbaa !126
  %i.pq = tail call double @llvm.fmuladd.f64(double %i.pp, double %.sroa.5463.0.i, double 0.000000e+00)
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pn, double %.sroa.9.0.i, double %i.pq)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.pf
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !126
  %i.pu = fsub double %i.pt, %i.pr
  %i.pv = fdiv double %i.pu, %i.pj                ; 3 uses
  %i.pw = fcmp olt double %i.pv, -1.000000e-09
  %i.px = fadd double %.3.ph.1.i, %i.pv
  %i.py = fcmp ogt double %i.px, f0x3FF000000044B830
  %or.cond489.i = or i1 %i.pw, %i.py
  br i1 %or.cond489.i, label %.thread336.i, label %.thread347.thread.i

bb.z:                                             ; preds = %.preheader360.2.i
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.pf
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !126
  %i.qb = tail call double @llvm.fabs.f64(double %i.qa)
  %i.qc = fcmp ogt double %i.qb, 1.000000e-09
  br i1 %i.qc, label %.thread336.i, label %.thread347.thread.i

.thread347.thread.i:                              ; preds = %bb.z, %._crit_edge429.2.i
  %.sroa.0462.0.i = phi double [ %i.pv, %._crit_edge429.2.i ], [ 0.000000e+00, %bb.z ]
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ph
  store double %.sroa.0462.0.i, ptr %i.qd, align 8, !tbaa !126
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.om
  store double %.sroa.5463.0.i, ptr %i.qe, align 8, !tbaa !126
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.it
  store double %.sroa.9.0.i, ptr %i.qf, align 8, !tbaa !126
  %i.qg = load double, ptr %i.ce, align 8, !tbaa !126
  %i.qh = fptrunc double %i.qg to float           ; 2 uses
  %.idx = mul i64 %.0290433.i, 24
  %i.qi = getelementptr i8, ptr @__const._ZNK16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer5applyEPKvPvl.path_list, i64 %.idx ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !118
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qk
  store float %i.qh, ptr %i.ql, align 4, !tbaa !103
  %i.qm = load double, ptr %i.h, align 16, !tbaa !126
  %i.qn = getelementptr i8, ptr %i.qi, i64 8
  %i.qo = fpext float %i.qh to double
  %i.qp = fadd double %i.qm, %i.qo
  %i.qq = fptrunc double %i.qp to float           ; 2 uses
  %i.qr = load i64, ptr %i.qn, align 8, !tbaa !118
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qr
  store float %i.qq, ptr %i.qs, align 4, !tbaa !103
  %i.qt = load double, ptr %i.cf, align 16, !tbaa !126
  %i.qu = fpext float %i.qq to double
  %i.qv = fadd double %i.qt, %i.qu
  %i.qw = fptrunc double %i.qv to float
  %i.qx = load i64, ptr %i.qi, align 8, !tbaa !118
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.qx
  store float %i.qw, ptr %i.qy, align 4, !tbaa !103
  %.pre = load float, ptr %i.r, align 4, !tbaa !103
  %i.qz = load <2 x float>, ptr %i.bq, align 4, !tbaa !103
  br label %.thread

.thread336.i:                                     ; preds = %bb.z, %._crit_edge429.2.i, %bb.y, %._crit_edge429.1.i, %._crit_edge429.i, %bb.w, %._crit_edge424.i
  %.7.ph.i = phi i64 [ %.0255436.i, %._crit_edge424.i ], [ 1, %bb.z ], [ 1, %bb.w ], [ 1, %._crit_edge429.2.i ], [ 1, %bb.y ], [ 1, %._crit_edge429.i ], [ 1, %._crit_edge429.1.i ] ; 2 uses
  %i.ra = add nuw nsw i64 %.0290433.i, 1          ; 2 uses
  %exitcond458.not.i = icmp eq i64 %i.ra, 8
  br i1 %exitcond458.not.i, label %.thread347.i, label %bb.i, !llvm.loop !133

.thread347.i:                                     ; preds = %.thread336.i
  %i.rb = icmp eq i64 %.7.ph.i, 0
  br i1 %i.rb, label %.thread, label %select.unfold

.thread:                                          ; preds = %.thread347.i, %.thread347.thread.i
  %i.rc = phi float [ %.pre, %.thread347.thread.i ], [ %i.dj, %.thread347.i ]
  %i.rd = phi <2 x float> [ %i.qz, %.thread347.thread.i ], [ %i.dk, %.thread347.i ]
  %i.re = uitofp i64 %.0. to float
  %i.rf = fadd float %i.rc, %i.re                 ; 2 uses
  store float %i.rf, ptr %i.r, align 4, !tbaa !103
  %i.rg = uitofp <2 x i64> %i.fe to <2 x float>
  %i.rh = fadd <2 x float> %i.rd, %i.rg           ; 3 uses
  %i.ri = extractelement <2 x float> %i.rh, i64 0
  store float %i.ri, ptr %i.bq, align 4, !tbaa !103
  %i.rj = extractelement <2 x float> %i.rh, i64 1
  store float %i.rj, ptr %i.br, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.aa:                                            ; preds = %bb.h
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !111
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.dz
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !118
  %i.ro = shl i64 %.1169, 32
  %sext = add i64 %i.ro, 4294967296
  %i.rp = ashr exact i64 %sext, 32                ; 4 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.rp
  store i64 %i.rn, ptr %i.rq, align 8, !tbaa !118
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !111
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.dz
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !118
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rp
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !118
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.rp
  store i64 0, ptr %i.rw, align 8, !tbaa !118
  br label %bb.ab

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.rx = add nuw i64 %i.dv, 1
  store i64 %i.rx, ptr %i.dw, align 8, !tbaa !118
  %i.ry = add i64 %i.dz, 1
  store i64 %i.ry, ptr %i.dy, align 8, !tbaa !118
  br label %bb.ab

select.unfold:                                    ; preds = %.thread347.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ab

bb.ab:                                            ; preds = %select.unfold, %bb.g, %bb.aa, %.critedge
  %.0.193 = phi i64 [ %.0., %select.unfold ], [ %.0.194, %bb.aa ], [ %.0.194, %bb.g ], [ %.0.194, %.critedge ] ; 2 uses
  %.4 = phi i64 [ %i.bo, %select.unfold ], [ %i.rp, %bb.aa ], [ %.1169, %bb.g ], [ %.1169, %.critedge ] ; 4 uses
  %i.rz = phi <2 x i64> [ %i.fe, %select.unfold ], [ %i.dx, %bb.aa ], [ %i.dx, %bb.g ], [ %i.dx, %.critedge ] ; 2 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.4 ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !118 ; 2 uses
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.4
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !118
  %i.se = icmp ult i64 %i.sb, %i.sd
  br i1 %i.se, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %.preheader149, %.thread
  %i.sf = phi float [ %i.rf, %.thread ], [ %i.dj, %.preheader149 ], [ %i.dj, %bb.ab ] ; 2 uses
  %.0.196 = phi i64 [ %.0., %.thread ], [ %.0.195, %.preheader149 ], [ %.0.193, %bb.ab ]
  %.5 = phi i64 [ 0, %.thread ], [ %.0110171, %.preheader149 ], [ %.4, %bb.ab ] ; 2 uses
  %i.sg = phi <2 x float> [ %i.rh, %.thread ], [ %i.dk, %.preheader149 ], [ %i.dk, %bb.ab ] ; 2 uses
  %i.sh = phi <2 x i64> [ %i.fe, %.thread ], [ %i.dl, %.preheader149 ], [ %i.rz, %bb.ab ]
  %i.si = add nsw i64 %.5, -1
  %i.sj = fadd float %i.sf, -1.000000e+00         ; 2 uses
  %i.sk = fcmp ogt float %i.sj, 0.000000e+00
  %.sroa.speculated2.i135 = select i1 %i.sk, float %i.sj, float 0.000000e+00 ; 2 uses
  %i.sl = fcmp ogt float %.sroa.speculated2.i135, %i.av
  %.sroa.speculated.i136 = select i1 %i.sl, float %i.av, float %.sroa.speculated2.i135
  %i.sm = load float, ptr %i.bp, align 8, !tbaa !69
  %i.sn = fmul float %i.sm, %.sroa.speculated.i136
  store float %i.sn, ptr %.0111173, align 4, !tbaa !103
  %i.so = fadd <2 x float> %i.sg, splat (float -1.000000e+00) ; 2 uses
  %i.sp = load float, ptr %i.bp, align 8, !tbaa !69
  %i.sq = fcmp ogt <2 x float> %i.so, zeroinitializer
  %i.sr = select <2 x i1> %i.sq, <2 x float> %i.so, <2 x float> zeroinitializer ; 2 uses
  %i.ss = fcmp ogt <2 x float> %i.sr, %i.ck
  %i.st = select <2 x i1> %i.ss, <2 x float> %i.ck, <2 x float> %i.sr ; 2 uses
  %i.su = extractelement <2 x float> %i.st, i64 0
  %i.sv = fmul float %i.sp, %i.su
  store float %i.sv, ptr %i.db, align 4, !tbaa !103
  %i.sw = load float, ptr %i.bp, align 8, !tbaa !69
  %i.sx = extractelement <2 x float> %i.st, i64 1
  %i.sy = fmul float %i.sw, %i.sx
  store float %i.sy, ptr %i.dc, align 4, !tbaa !103
  %i.sz = load float, ptr %i.dd, align 4, !tbaa !103
  store float %i.sz, ptr %i.de, align 4, !tbaa !103
  %i.ta = icmp sgt i64 %.5, 0
  br i1 %i.ta, label %.preheader149, label %bb.ac, !llvm.loop !134

bb.ac:                                            ; preds = %.loopexit
  %i.tb = getelementptr inbounds nuw i8, ptr %.0109174, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %.0111173, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.td = add nuw nsw i64 %.0112172, 1            ; 2 uses
  %exitcond189.not = icmp eq i64 %i.td, %3
  br i1 %exitcond189.not, label %._crit_edge176, label %bb.a, !llvm.loop !135
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i64], align 16               ; 12 uses
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = alloca [4 x float], align 16             ; 10 uses
  %i.d = alloca [16 x i64], align 16              ; 24 uses
  %2 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %4 = alloca %"class.OpenColorIO_v2_5::Lut3DOpData::Lut3DArray", align 8 ; 15 uses
  %i.e = alloca [3 x float], align 4              ; 5 uses
  %i.f = alloca [3 x float], align 8              ; 8 uses
  %i.g = alloca [3 x float], align 8              ; 8 uses
  %i.h = alloca [3 x float], align 8              ; 8 uses
  %i.i = alloca [3 x float], align 8              ; 8 uses
  %i.j = alloca [3 x float], align 8              ; 8 uses
  %i.k = alloca [3 x float], align 8              ; 8 uses
  %i.l = alloca [3 x float], align 8              ; 8 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.n), !inline_history !136 ; 28 uses
  %i.s = add i64 %i.r, 2
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArrayC1Em(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.s)
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.a, %bb.b
  %.0224.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.v = add nuw i64 %.0224.i, 1                  ; 3 uses
  br label %.preheader220.i

.preheader218.lr.ph.i:                            ; preds = %bb.b
  %i.w = add i64 %i.r, 1                          ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.y = add i64 %i.r, -1                         ; 12 uses
  br label %.preheader218.i

.preheader220.i:                                  ; preds = %bb.c, %.preheader221.i
  %.0170223.i = phi i64 [ 0, %.preheader221.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.z = add nuw i64 %.0170223.i, 1               ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %exitcond254.not.i = icmp eq i64 %i.v, %i.r
  br i1 %exitcond254.not.i, label %.preheader218.lr.ph.i, label %.preheader221.i, !llvm.loop !137

bb.c:                                             ; preds = %bb.f
  %exitcond253.not.i = icmp eq i64 %i.z, %i.r
  br i1 %exitcond253.not.i, label %bb.b, label %.preheader220.i, !llvm.loop !138

bb.d:                                             ; preds = %bb.f, %.preheader220.i
  %.0174222.i = phi i64 [ 0, %.preheader220.i ], [ %i.aa, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0224.i, i64 noundef %.0170223.i, i64 noundef %.0174222.i, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw i64 %.0174222.i, 1              ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.v, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull %i.e)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %exitcond.not.i = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !139

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.ay

.preheader218.i:                                  ; preds = %bb.h, %.preheader218.lr.ph.i
  %.0181227.i = phi i64 [ 0, %.preheader218.lr.ph.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ac = add nuw i64 %.0181227.i, 1              ; 3 uses
  br label %.preheader217.i

.preheader215.lr.ph.i:                            ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %.preheader215.i

.preheader217.i:                                  ; preds = %bb.i, %.preheader218.i
  %.0185226.i = phi i64 [ 0, %.preheader218.i ], [ %i.ae, %bb.i ] ; 2 uses
  %i.ae = add nuw i64 %.0185226.i, 1              ; 3 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.i
  %exitcond256.not.i = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond256.not.i, label %.preheader215.lr.ph.i, label %.preheader218.i, !llvm.loop !140

bb.i:                                             ; preds = %bb.l
  %exitcond255.not.i = icmp eq i64 %i.ae, %i.r
  br i1 %exitcond255.not.i, label %bb.h, label %.preheader217.i, !llvm.loop !141

bb.j:                                             ; preds = %bb.l, %.preheader217.i
  %.0186225.i = phi i64 [ 0, %.preheader217.i ], [ %i.an, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0181227.i, i64 noundef %.0185226.i, i64 noundef %.0186225.i, ptr noundef nonnull %i.f)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = icmp eq i64 %.0186225.i, 0
  %i.ag = select i1 %i.af, i64 0, i64 %i.w
  %i.ah = load <2 x float>, ptr %i.f, align 8, !tbaa !103
  %i.ai = fadd <2 x float> %i.ah, splat (float -5.000000e-01)
  %i.aj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.aj, ptr %i.f, align 8, !tbaa !103
  %i.ak = load float, ptr %i.x, align 8, !tbaa !103
  %i.al = fadd float %i.ak, -5.000000e-01
  %i.am = call float @llvm.fmuladd.f32(float %i.al, float 4.000000e+00, float 5.000000e-01)
  store float %i.am, ptr %i.x, align 8, !tbaa !103
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.f)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.an = add i64 %.0186225.i, %i.y               ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.r
  br i1 %i.ao, label %bb.j, label %bb.i, !llvm.loop !142

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ay

.preheader215.i:                                  ; preds = %bb.n, %.preheader215.lr.ph.i
  %.0190230.i = phi i64 [ 0, %.preheader215.lr.ph.i ], [ %i.aq, %bb.n ] ; 2 uses
  %i.aq = add nuw i64 %.0190230.i, 1              ; 3 uses
  br label %.preheader214.i

.preheader212.lr.ph.i:                            ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br label %.preheader212.i

.preheader214.i:                                  ; preds = %bb.o, %.preheader215.i
  %.0194229.i = phi i64 [ 0, %.preheader215.i ], [ %i.au, %bb.o ] ; 3 uses
  %i.as = icmp eq i64 %.0194229.i, 0
  %i.at = select i1 %i.as, i64 0, i64 %i.w
  br label %bb.p

bb.n:                                             ; preds = %bb.o
  %exitcond258.not.i = icmp eq i64 %i.aq, %i.r
  br i1 %exitcond258.not.i, label %.preheader212.lr.ph.i, label %.preheader215.i, !llvm.loop !143

bb.o:                                             ; preds = %bb.r
  %i.au = add i64 %.0194229.i, %i.y               ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.r
  br i1 %i.av, label %.preheader214.i, label %bb.n, !llvm.loop !144

bb.p:                                             ; preds = %bb.r, %.preheader214.i
  %.0195228.i = phi i64 [ 0, %.preheader214.i ], [ %i.aw, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  invoke void @_ZNK16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6getRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef %.0190230.i, i64 noundef %.0194229.i, i64 noundef %.0195228.i, ptr noundef nonnull %i.g)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw i64 %.0195228.i, 1              ; 3 uses
  %i.ax = load <2 x float>, ptr %i.g, align 8, !tbaa !103
  %i.ay = fadd <2 x float> %i.ax, splat (float -5.000000e-01)
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.az, ptr %i.g, align 8, !tbaa !103
  %i.ba = load float, ptr %i.ad, align 8, !tbaa !103
  %i.bb = fadd float %i.ba, -5.000000e-01
  %i.bc = call float @llvm.fmuladd.f32(float %i.bb, float 4.000000e+00, float 5.000000e-01)
  store float %i.bc, ptr %i.ad, align 8, !tbaa !103
  invoke void @_ZN16OpenColorIO_v2_511Lut3DOpData10Lut3DArray6setRGBElllPf(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.aq, i64 noundef %i.at, i64 noundef %i.aw, ptr noundef nonnull %i.g)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %exitcond257.not.i = icmp eq i64 %i.aw, %i.r
  br i1 %exitcond257.not.i, label %bb.o, label %bb.p, !llvm.loop !145

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.ay

.preheader212.i:                                  ; preds = %bb.t, %.preheader212.lr.ph.i
  %.0193233.i = phi i64 [ 0, %.preheader212.lr.ph.i ], [ %i.bi, %bb.t ] ; 3 uses
  %i.be = icmp eq i64 %.0193233.i, 0
  %i.bf = select i1 %i.be, i64 0, i64 %i.w
  br label %.preheader211.i

.preheader209.lr.ph.i:                            ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %.preheader209.i

.preheader211.i:                                  ; preds = %bb.u, %.preheader212.i
  %.0192232.i = phi i64 [ 0, %.preheader212.i ], [ %i.bh, %bb.u ] ; 2 uses
  %i.bh = add nuw i64 %.0192232.i, 1              ; 3 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.u
  %i.bi = add i64 %.0193233.i, %i.y               ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.r
  br i1 %i.bj, label %.preheader212.i, label %.preheader209.lr.ph.i, !llvm.loop !146

bb.u:                                             ; preds = %bb.x
  %exitcond260.not.i = icmp eq i64 %i.bh, %i.r
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %.val40.i.i, i64 %.147.i.i ; 2 uses
  store i64 %.03250.i.i, ptr %i.lv, align 8, !tbaa !118
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i64 %.048.i.i, ptr %i.lw, align 8, !tbaa !118
  %i.lx = or disjoint i64 %.048.i.i, 1
  %i.ly = getelementptr [32 x i8], ptr %.val40.i.i, i64 %.147.i.i ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 32
  store i64 %.03250.i.i, ptr %i.lz, align 8, !tbaa !118
  %i.ma = getelementptr i8, ptr %i.ly, i64 40
  store i64 %i.lx, ptr %i.ma, align 8, !tbaa !118
  %i.mb = or disjoint i64 %.048.i.i, 2
  %i.mc = getelementptr [32 x i8], ptr %.val40.i.i, i64 %.147.i.i ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 64
  store i64 %.03250.i.i, ptr %i.md, align 8, !tbaa !118
  %i.me = getelementptr i8, ptr %i.mc, i64 72
  store i64 %i.mb, ptr %i.me, align 8, !tbaa !118
  %i.mf = or disjoint i64 %.048.i.i, 3
  %i.mg = getelementptr [32 x i8], ptr %.val40.i.i, i64 %.147.i.i ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 96
  store i64 %.03250.i.i, ptr %i.mh, align 8, !tbaa !118
  %i.mi = getelementptr i8, ptr %i.mg, i64 104
  store i64 %i.mf, ptr %i.mi, align 8, !tbaa !118
  %i.mj = add i64 %.147.i.i, 4                    ; 3 uses
  %i.mk = add nuw i64 %.048.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.preheader45.i.i.new, !llvm.loop !183

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i: ; preds = %._crit_edge.i.i, %._crit_edge57.split.us.us.i.i, %bb.bn, %bb.bm, %._crit_edge162.i
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.val72.i = load ptr, ptr %i.ml, align 8, !tbaa !176 ; 27 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val73.i = load ptr, ptr %i.mm, align 8, !tbaa !184 ; 7 uses
  %i.mn = ptrtoint ptr %.val73.i to i64
  %i.mo = ptrtoint ptr %.val72.i to i64           ; 2 uses
  %i.mp = sub i64 %i.mn, %i.mo                    ; 3 uses
  %i.mq = ashr exact i64 %i.mp, 5                 ; 11 uses
  %.not184.i = icmp eq ptr %.val73.i, %.val72.i
  %.pre35 = load i64, ptr %i.fh, align 8, !tbaa !120 ; 9 uses
  br i1 %.not184.i, label %._crit_edge168.i, label %.lr.ph164.i

.lr.ph164.i:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree8initIndsEv.exit.i
  %.not.i83.i = icmp eq i64 %.pre35, 0
  %i.mr = shl nuw i64 %.pre35, 3
  br i1 %.not.i83.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader, label %.lr.ph164.split.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader: ; preds = %.lr.ph164.i
  %xtraiter333 = and i64 %i.mq, 7                 ; 3 uses
  %i.ms = icmp ult i64 %i.mq, 8
  br i1 %i.ms, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader
  %unroll_iter337 = and i64 %i.mq, -8
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new
  %.059163.us.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new ], [ %i.nj, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i ] ; 9 uses
  %niter338 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader.new ], [ %niter338.next.7, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mt = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  store i64 0, ptr %i.mu, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 56
  store i64 0, ptr %i.mw, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mx = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 88
  store i64 0, ptr %i.my, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mz = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 120
  store i64 0, ptr %i.na, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 152
  store i64 0, ptr %i.nc, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 184
  store i64 0, ptr %i.ne, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nf = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 216
  store i64 0, ptr %i.ng, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nh = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 248
  store i64 0, ptr %i.ni, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.nj = add nuw i64 %.059163.us.i, 8            ; 2 uses
  %niter338.next.7 = add i64 %niter338, 8         ; 2 uses
  %niter338.ncmp.7 = icmp eq i64 %niter338.next.7, %unroll_iter337
  br i1 %niter338.ncmp.7, label %._crit_edge165.thread296.i.loopexit.unr-lcssa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i, !llvm.loop !187

.lr.ph164.split.i:                                ; preds = %.lr.ph164.i
  %i.nk = load i64, ptr %i.ex, align 8, !tbaa !119 ; 5 uses
  %.not29.i.i = icmp eq i64 %i.nk, 0
  %i.nl = load ptr, ptr %i.jh, align 8, !tbaa !111 ; 2 uses
  %min.iters.check193 = icmp ult i64 %i.nk, 4
  %n.vec195 = and i64 %i.nk, -4                   ; 3 uses
  %cmp.n209 = icmp eq i64 %i.nk, %n.vec195
  %min.iters.check175 = icmp ult i64 %.pre35, 4
  %n.vec177 = and i64 %.pre35, -4                 ; 3 uses
  %cmp.n189 = icmp eq i64 %.pre35, %n.vec177
  br label %.lr.ph26.i.i

bb.bp:                                            ; preds = %bb.bp, %.lr.ph161.i
  %i.nm = phi i64 [ %i.jt, %.lr.ph161.i ], [ %i.nx, %bb.bp ]
  %.061160.i = phi i64 [ 0, %.lr.ph161.i ], [ %i.nw, %bb.bp ] ; 3 uses
  %i.nn = load i64, ptr %i.ex, align 8, !tbaa !119
  %i.no = add i64 %i.nn, 1
  %i.np = xor i64 %.061160.i, -1
  %i.nq = add i64 %i.nm, %i.np
  %i.nr = mul i64 %i.no, %i.nq
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = shl nuw i32 1, %i.ns
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.061160.i
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !118
  %i.nw = add nuw i64 %.061160.i, 1               ; 2 uses
  %i.nx = load i64, ptr %i.fh, align 8, !tbaa !120 ; 2 uses
  %i.ny = icmp ult i64 %i.nw, %i.nx
  br i1 %i.ny, label %bb.bp, label %._crit_edge162.i, !llvm.loop !188

._crit_edge165.thread296.i.loopexit.unr-lcssa:    ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %._crit_edge165.thread296.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader: ; preds = %._crit_edge165.thread296.i.loopexit.unr-lcssa, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader
  %.059163.us.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.preheader ], [ %i.nj, %._crit_edge165.thread296.i.loopexit.unr-lcssa ]
  %lcmp.mod336 = icmp ne i64 %xtraiter333, 0
  call void @llvm.assume(i1 %lcmp.mod336)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader
  %.059163.us.i.epil = phi i64 [ %i.ob, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil ], [ %.059163.us.i.epil.init, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader ] ; 2 uses
  %epil.iter334 = phi i64 [ %epil.iter334.next, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.nz = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.us.i.epil
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  store i64 0, ptr %i.oa, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ob = add nuw i64 %.059163.us.i.epil, 1
  %epil.iter334.next = add i64 %epil.iter334, 1   ; 2 uses
  %epil.iter334.cmp.not = icmp eq i64 %epil.iter334.next, %xtraiter333
  br i1 %epil.iter334.cmp.not, label %._crit_edge165.thread296.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil, !llvm.loop !189

._crit_edge165.thread296.i:                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, %._crit_edge165.thread296.i.loopexit.unr-lcssa, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.us.i.epil
  %i.oc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mq, i1 true)
  %i.od = shl nuw nsw i64 %i.oc, 1
  %i.oe = xor i64 %i.od, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.val72.i, ptr %.val73.i, i64 noundef %i.oe)
  %i.of = icmp sgt i64 %i.mp, 512
  br i1 %i.of, label %.lr.ph.i.i.i.i78.i, label %.preheader.i21.i.i.i.i

.lr.ph.i.i.i.i78.i:                               ; preds = %._crit_edge165.thread296.i
  %i.og = getelementptr i8, ptr %.val72.i, i64 24
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val72.i, i64 32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bv, %.lr.ph.i.i.i.i78.i
  %.sroa.0.019.i.idx.i.i.i.i = phi i64 [ 32, %.lr.ph.i.i.i.i78.i ], [ %.sroa.0.019.i.add.i.i.i.i, %bb.bv ] ; 4 uses
  %.pn18.i.i.i.i.i = phi ptr [ %.val72.i, %.lr.ph.i.i.i.i78.i ], [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.bv ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val72.i, i64 %.sroa.0.019.i.idx.i.i.i.i ; 5 uses
  %i.oh = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 56
  %.val2.i.i.i.i.i.i = load i64, ptr %i.oh, align 8, !tbaa !185 ; 4 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %i.og, align 8, !tbaa !185
  %i.oi = icmp ult i64 %.val2.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.oi, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i.ptr.i.i.i.i, i64 32, i1 false), !tbaa.struct !190
  %i.oj = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i, 32
  br i1 %i.oj, label %bb.bs, label %bb.bt, !prof !191

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val72.i, i64 %.sroa.0.019.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ok = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ok, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val72.i, i64 32, i1 false), !tbaa.struct !190
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val72.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %.sroa.06.i.i.i.i.i.i.sroa.0.0.copyload = load <3 x i64>, ptr %.sroa.0.019.i.ptr.i.i.i.i, align 8, !tbaa !97
  %i.ol = getelementptr i8, ptr %.pn18.i.i.i.i.i, i64 24
  %.val2.i9.i.i.i.i.i.i = load i64, ptr %i.ol, align 8, !tbaa !185
  %i.om = icmp ult i64 %.val2.i.i.i.i.i.i, %.val2.i9.i.i.i.i.i.i
  br i1 %i.om, label %.lr.ph.i.i.i.i.i80.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i80.i:                             ; preds = %bb.bu, %.lr.ph.i.i.i.i.i80.i
  %.sroa.08.010.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i80.i ], [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.bu ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !190
  %i.on = getelementptr i8, ptr %.sroa.08.010.i.i.i.i.i.i, i64 -40
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.on, align 8, !tbaa !185
  %i.oo = icmp ult i64 %.val2.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i
  br i1 %i.oo, label %.lr.ph.i.i.i.i.i80.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !192

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i80.i, %bb.bu
  %.sroa.08.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i, %bb.bu ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i80.i ] ; 2 uses
  store <3 x i64> %.sroa.06.i.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !97
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i, i64 24
  store i64 %.val2.i.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i.i, align 8, !tbaa !118
  br label %bb.bv

bb.bv:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i79.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i, 512
  br i1 %.not.i.i.i.i79.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i, label %bb.bq, !llvm.loop !193

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i: ; preds = %bb.bv
  %i.op = getelementptr inbounds nuw i8, ptr %.val72.i, i64 512 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.op, %.val73.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i10.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ou, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i ], [ %i.op, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i ] ; 6 uses
  %.sroa.06.i.i9.i.i.i.i.sroa.0.0.copyload = load <3 x i64>, ptr %.sroa.0.05.i.i.i.i.i, align 8, !tbaa !97
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i.i, align 8, !tbaa !118 ; 3 uses
  %i.oq = getelementptr i8, ptr %.sroa.0.05.i.i.i.i.i, i64 -8
  %.val2.i9.i.i11.i.i.i.i = load i64, ptr %i.oq, align 8, !tbaa !185
  %i.or = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i9.i.i11.i.i.i.i
  br i1 %i.or, label %.lr.ph.i.i16.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i

.lr.ph.i.i16.i.i.i.i:                             ; preds = %.lr.ph.i10.i.i.i.i, %.lr.ph.i.i16.i.i.i.i
  %.sroa.08.010.i.i17.i.i.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i.i.i, %.lr.ph.i.i16.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.i, %.lr.ph.i10.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i18.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i17.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i17.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i18.i.i.i.i, i64 32, i1 false), !tbaa.struct !190
  %i.os = getelementptr i8, ptr %.sroa.08.010.i.i17.i.i.i.i, i64 -40
  %.val2.i.i.i19.i.i.i.i = load i64, ptr %i.os, align 8, !tbaa !185
  %i.ot = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i.i, %.val2.i.i.i19.i.i.i.i
  br i1 %i.ot, label %.lr.ph.i.i16.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i, !llvm.loop !192

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i: ; preds = %.lr.ph.i.i16.i.i.i.i, %.lr.ph.i10.i.i.i.i
  %.sroa.08.0.lcssa.i.i13.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i.i, %.lr.ph.i10.i.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i.i, %.lr.ph.i.i16.i.i.i.i ] ; 2 uses
  store <3 x i64> %.sroa.06.i.i9.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.lcssa.i.i13.i.i.i.i, align 8, !tbaa !97
  %.sroa.4.0..val.sroa_idx.i.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i13.i.i.i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i14.i.i.i.i, align 8, !tbaa !118
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i15.i.i.i.i = icmp eq ptr %i.ou, %.val73.i
  br i1 %.not.i15.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i10.i.i.i.i, !llvm.loop !194

.preheader.i21.i.i.i.i:                           ; preds = %._crit_edge165.thread296.i
  %.sroa.0.016.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val72.i, i64 32 ; 2 uses
  %.not17.i23.i.i.i.i = icmp eq ptr %.sroa.0.016.i22.i.i.i.i, %.val73.i
  br i1 %.not17.i23.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i24.i.i.i.i

.lr.ph.i24.i.i.i.i:                               ; preds = %.preheader.i21.i.i.i.i
  %i.ov = getelementptr i8, ptr %.val72.i, i64 24
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cc, %.lr.ph.i24.i.i.i.i
  %.sroa.0.019.i25.i.i.i.i = phi ptr [ %.sroa.0.016.i22.i.i.i.i, %.lr.ph.i24.i.i.i.i ], [ %.sroa.0.0.i33.i.i.i.i, %bb.cc ] ; 7 uses
  %.pn18.i26.i.i.i.i = phi ptr [ %.val72.i, %.lr.ph.i24.i.i.i.i ], [ %.sroa.0.019.i25.i.i.i.i, %bb.cc ] ; 4 uses
  %i.ow = getelementptr i8, ptr %.pn18.i26.i.i.i.i, i64 56
  %.val2.i.i27.i.i.i.i = load i64, ptr %i.ow, align 8, !tbaa !185 ; 4 uses
  %.val3.i.i28.i.i.i.i = load i64, ptr %i.ov, align 8, !tbaa !185
  %i.ox = icmp ult i64 %.val2.i.i27.i.i.i.i, %.val3.i.i28.i.i.i.i
  br i1 %i.ox, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.019.i25.i.i.i.i, i64 32, i1 false), !tbaa.struct !190
  %i.oy = ptrtoint ptr %.sroa.0.019.i25.i.i.i.i to i64
  %i.oz = sub i64 %i.oy, %i.mo                    ; 3 uses
  %i.pa = ashr exact i64 %i.oz, 5                 ; 2 uses
  %i.pb = icmp sgt i64 %i.pa, 1
  br i1 %i.pb, label %bb.by, label %bb.bz, !prof !191

bb.by:                                            ; preds = %bb.bx
  %i.pc = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i, i64 64
  %i.pd = sub nsw i64 0, %i.pa
  %i.pe = getelementptr inbounds [32 x i8], ptr %i.pc, i64 %i.pd
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pe, ptr noundef nonnull align 8 dereferenceable(1) %.val72.i, i64 %i.oz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.pf = icmp eq i64 %i.oz, 32
  br i1 %i.pf, label %bb.ca, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.pg = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pg, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val72.i, i64 32, i1 false), !tbaa.struct !190
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i: ; preds = %bb.ca, %bb.bz, %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.val72.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %.sroa.06.i.i20.i.i.i.i.sroa.0.0.copyload = load <3 x i64>, ptr %.sroa.0.019.i25.i.i.i.i, align 8, !tbaa !97
  %i.ph = getelementptr i8, ptr %.pn18.i26.i.i.i.i, i64 24
  %.val2.i9.i.i29.i.i.i.i = load i64, ptr %i.ph, align 8, !tbaa !185
  %i.pi = icmp ult i64 %.val2.i.i27.i.i.i.i, %.val2.i9.i.i29.i.i.i.i
  br i1 %i.pi, label %.lr.ph.i.i35.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i

.lr.ph.i.i35.i.i.i.i:                             ; preds = %bb.cb, %.lr.ph.i.i35.i.i.i.i
  %.sroa.08.010.i.i36.i.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i.i, %.lr.ph.i.i35.i.i.i.i ], [ %.sroa.0.019.i25.i.i.i.i, %bb.cb ] ; 3 uses
  %.sroa.0.0.i.i37.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i36.i.i.i.i, i64 -32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i36.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i37.i.i.i.i, i64 32, i1 false), !tbaa.struct !190
  %i.pj = getelementptr i8, ptr %.sroa.08.010.i.i36.i.i.i.i, i64 -40
  %.val2.i.i.i38.i.i.i.i = load i64, ptr %i.pj, align 8, !tbaa !185
  %i.pk = icmp ult i64 %.val2.i.i27.i.i.i.i, %.val2.i.i.i38.i.i.i.i
  br i1 %i.pk, label %.lr.ph.i.i35.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i, !llvm.loop !192

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i: ; preds = %.lr.ph.i.i35.i.i.i.i, %bb.cb
  %.sroa.08.0.lcssa.i.i31.i.i.i.i = phi ptr [ %.sroa.0.019.i25.i.i.i.i, %bb.cb ], [ %.sroa.0.0.i.i37.i.i.i.i, %.lr.ph.i.i35.i.i.i.i ] ; 2 uses
  store <3 x i64> %.sroa.06.i.i20.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.lcssa.i.i31.i.i.i.i, align 8, !tbaa !97
  %.sroa.4.0..val.sroa_idx.i.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i31.i.i.i.i, i64 24
  store i64 %.val2.i.i27.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i32.i.i.i.i, align 8, !tbaa !118
  br label %bb.cc

bb.cc:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i39.i.i.i.i
  %.sroa.0.0.i33.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i25.i.i.i.i, i64 32 ; 2 uses
  %.not.i34.i.i.i.i = icmp eq ptr %.sroa.0.0.i33.i.i.i.i, %.val73.i
  br i1 %.not.i34.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %bb.bw, !llvm.loop !193

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i: ; preds = %bb.cc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i.i, %.preheader.i21.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit.i.i.i.i
  %i.pl = icmp ugt i64 %i.mq, 1152921504606846975
  br i1 %i.pl, label %.noexc.i, label %.noexc82.i

.noexc.i:                                         ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #27
  unreachable

.noexc82.i:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  %i.pm = ashr exact i64 %i.mp, 2
  %i.pn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pm) #24 ; 9 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.mq
  store i64 0, ptr %i.pn, align 8, !tbaa !118
  %i.pp = getelementptr i8, ptr %i.pn, i64 8      ; 3 uses
  %i.pq = add nsw i64 %i.mq, -1                   ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc82.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.pq, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.pp, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !118
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i

.lr.ph26.i.i:                                     ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, %.lr.ph164.split.i
  %.059163.i = phi i64 [ 0, %.lr.ph164.split.i ], [ %i.rp, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %.val22.i.i = load ptr, ptr %i.ml, align 8
  %i.pt = getelementptr inbounds nuw [32 x i8], ptr %.val22.i.i, i64 %.059163.i ; 2 uses
  br i1 %.not29.i.i, label %.lr.ph26.split.preheader.i.i, label %.lr.ph.us.i.i

.lr.ph26.split.preheader.i.i:                     ; preds = %.lr.ph26.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.mr, i1 false), !tbaa !118
  br label %.lr.ph.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph26.i.i, %._crit_edge.us.i.i
  %.02024.us.i.i = phi i64 [ %i.qv, %._crit_edge.us.i.i ], [ 0, %.lr.ph26.i.i ] ; 3 uses
  %i.pu = xor i64 %.02024.us.i.i, -1
  %i.pv = add i64 %.pre35, %i.pu                  ; 2 uses
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph.us.i.i
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph194
  %index199 = phi i64 [ 0, %vector.ph194 ], [ %index.next206, %vector.body198 ] ; 3 uses
  %vec.phi200 = phi <2 x i64> [ zeroinitializer, %vector.ph194 ], [ %i.qg, %vector.body198 ]
  %vec.phi201 = phi <2 x i64> [ zeroinitializer, %vector.ph194 ], [ %i.qh, %vector.body198 ]
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %index199 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load202 = load <2 x i64>, ptr %i.pw, align 8, !tbaa !118
  %wide.load203 = load <2 x i64>, ptr %i.px, align 8, !tbaa !118
  %i.py = lshr <2 x i64> %wide.load202, %broadcast.splat197
  %i.pz = lshr <2 x i64> %wide.load203, %broadcast.splat197
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.pows2, i64 %index199 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %wide.load204 = load <2 x i64>, ptr %i.qa, align 16, !tbaa !118
  %wide.load205 = load <2 x i64>, ptr %i.qb, align 16, !tbaa !118
  %i.qc = trunc <2 x i64> %i.py to <2 x i1>
  %i.qd = trunc <2 x i64> %i.pz to <2 x i1>
  %i.qe = select <2 x i1> %i.qc, <2 x i64> %wide.load204, <2 x i64> zeroinitializer
  %i.qf = select <2 x i1> %i.qd, <2 x i64> %wide.load205, <2 x i64> zeroinitializer
  %i.qg = add <2 x i64> %i.qe, %vec.phi200        ; 2 uses
  %i.qh = add <2 x i64> %i.qf, %vec.phi201        ; 2 uses
  %index.next206 = add nuw i64 %index199, 4       ; 2 uses
  %i.qi = icmp eq i64 %index.next206, %n.vec195
  br i1 %i.qi, label %middle.block207, label %vector.body198, !llvm.loop !195

middle.block207:                                  ; preds = %vector.body198
  %bin.rdx208 = add <2 x i64> %i.qh, %i.qg
  %i.qj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx208) ; 2 uses
  br i1 %cmp.n209, label %._crit_edge.us.i.i, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.lr.ph.us.i.i, %middle.block207
  %.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.qj, %middle.block207 ]
  %.02123.us.i.i.ph = phi i64 [ 0, %.lr.ph.us.i.i ], [ %n.vec195, %middle.block207 ]
  br label %scalar.ph192

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %i.qk = phi i64 [ %i.qs, %scalar.ph192 ], [ %.ph, %scalar.ph192.preheader ]
  %.02123.us.i.i = phi i64 [ %i.qt, %scalar.ph192 ], [ %.02123.us.i.i.ph, %scalar.ph192.preheader ] ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %.02123.us.i.i
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !118
  %i.qn = lshr i64 %i.qm, %i.pv
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.pows2, i64 %.02123.us.i.i
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !118
  %i.qq = trunc i64 %i.qn to i1
  %i.qr = select i1 %i.qq, i64 %i.qp, i64 0
  %i.qs = add i64 %i.qr, %i.qk                    ; 2 uses
  %i.qt = add nuw i64 %.02123.us.i.i, 1           ; 2 uses
  %exitcond.not.i84.i = icmp eq i64 %i.qt, %i.nk
  br i1 %exitcond.not.i84.i, label %._crit_edge.us.i.i, label %scalar.ph192, !llvm.loop !196

._crit_edge.us.i.i:                               ; preds = %scalar.ph192, %middle.block207
  %.lcssa = phi i64 [ %i.qj, %middle.block207 ], [ %i.qs, %scalar.ph192 ]
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02024.us.i.i
  store i64 %.lcssa, ptr %i.qu, align 8, !tbaa !118
  %i.qv = add nuw i64 %.02024.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.qv, %.pre35
  br i1 %exitcond33.not.i.i, label %.lr.ph.i.i, label %.lr.ph.us.i.i, !llvm.loop !197

.lr.ph.i.i:                                       ; preds = %._crit_edge.us.i.i, %.lr.ph26.split.preheader.i.i
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.body178

vector.body178:                                   ; preds = %.lr.ph.i.i, %vector.body178
  %index179 = phi i64 [ %index.next186, %vector.body178 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %vec.phi180 = phi <2 x i64> [ %i.rc, %vector.body178 ], [ zeroinitializer, %.lr.ph.i.i ]
  %vec.phi181 = phi <2 x i64> [ %i.rd, %vector.body178 ], [ zeroinitializer, %.lr.ph.i.i ]
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index179 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %wide.load182 = load <2 x i64>, ptr %i.qw, align 16, !tbaa !118
  %wide.load183 = load <2 x i64>, ptr %i.qx, align 16, !tbaa !118
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %index179 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %wide.load184 = load <2 x i64>, ptr %i.qy, align 8, !tbaa !118
  %wide.load185 = load <2 x i64>, ptr %i.qz, align 8, !tbaa !118
  %i.ra = mul <2 x i64> %wide.load184, %wide.load182
  %i.rb = mul <2 x i64> %wide.load185, %wide.load183
  %i.rc = add <2 x i64> %i.ra, %vec.phi180        ; 2 uses
  %i.rd = add <2 x i64> %i.rb, %vec.phi181        ; 2 uses
  %index.next186 = add nuw i64 %index179, 4       ; 2 uses
  %i.re = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.re, label %middle.block187, label %vector.body178, !llvm.loop !198

middle.block187:                                  ; preds = %vector.body178
  %bin.rdx188 = add <2 x i64> %i.rd, %i.rc
  %i.rf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx188) ; 2 uses
  br i1 %cmp.n189, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %.lr.ph.i.i, %middle.block187
  %.028.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec177, %middle.block187 ]
  %.01927.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.rf, %middle.block187 ]
  br label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174.preheader, %scalar.ph174
  %.028.i.i = phi i64 [ %i.rm, %scalar.ph174 ], [ %.028.i.i.ph, %scalar.ph174.preheader ] ; 3 uses
  %.01927.i.i = phi i64 [ %i.rl, %scalar.ph174 ], [ %.01927.i.i.ph, %scalar.ph174.preheader ]
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.028.i.i
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !118
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.028.i.i
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !118
  %i.rk = mul i64 %i.rj, %i.rh
  %i.rl = add i64 %i.rk, %.01927.i.i              ; 2 uses
  %i.rm = add nuw i64 %.028.i.i, 1                ; 2 uses
  %exitcond34.not.i.i = icmp eq i64 %i.rm, %.pre35
  br i1 %exitcond34.not.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i, label %scalar.ph174, !llvm.loop !199

_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10indsToHashEm.exit.loopexit.i: ; preds = %scalar.ph174, %middle.block187
  %.lcssa168 = phi i64 [ %i.rf, %middle.block187 ], [ %i.rl, %scalar.ph174 ]
  %i.rn = getelementptr inbounds nuw [32 x i8], ptr %.val72.i, i64 %.059163.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store i64 %.lcssa168, ptr %i.ro, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.rp = add nuw i64 %.059163.i, 1               ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.rp, %i.mq
  br i1 %exitcond202.not.i, label %._crit_edge165.thread296.i, label %.lr.ph26.i.i, !llvm.loop !187

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc82.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ps, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.pp, %.noexc82.i ]
  %.val74.i = load ptr, ptr %i.ml, align 8, !tbaa !176 ; 5 uses
  %xtraiter340 = and i64 %i.mq, 3                 ; 3 uses
  %i.rq = icmp ult i64 %i.mq, 4
  br i1 %i.rq, label %.epil.preheader339, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new:         ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %unroll_iter344 = and i64 %i.mq, 1152921504606846972
  br label %bb.cq

._crit_edge168.i.loopexit.unr-lcssa:              ; preds = %bb.cq
  %lcmp.mod342.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod342.not, label %._crit_edge168.i.loopexit, label %.epil.preheader339

.epil.preheader339:                               ; preds = %._crit_edge168.i.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i
  %.053166.i.epil.init = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i ], [ %i.xt, %._crit_edge168.i.loopexit.unr-lcssa ]
  %lcmp.mod343 = icmp ne i64 %xtraiter340, 0
  call void @llvm.assume(i1 %lcmp.mod343)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader339
  %.053166.i.epil = phi i64 [ %.053166.i.epil.init, %.epil.preheader339 ], [ %i.rv, %bb.cd ] ; 3 uses
  %epil.iter341 = phi i64 [ 0, %.epil.preheader339 ], [ %epil.iter341.next, %bb.cd ]
  %i.rr = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %.053166.i.epil
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !185
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.053166.i.epil
  store i64 %i.rt, ptr %i.ru, align 8, !tbaa !118
  %i.rv = add nuw i64 %.053166.i.epil, 1
  %epil.iter341.next = add i64 %epil.iter341, 1   ; 2 uses
  %epil.iter341.cmp.not = icmp eq i64 %epil.iter341.next, %xtraiter340
  br i1 %epil.iter341.cmp.not, label %._crit_edge168.i.loopexit, label %bb.cd, !llvm.loop !200

end_hunk_1
begin_hunk_2_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !118
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !125
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !118
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !118
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !111
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE6resizeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val7 = load ptr, ptr %0, align 8, !tbaa !176  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !184 ; 6 uses
  %i.b = ptrtoint ptr %.val8 to i64               ; 2 uses
  %i.c = ptrtoint ptr %.val7 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 5                   ; 7 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %1, %i.e                     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.b
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.e, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.g
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i64 %i.g, 5                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.val8, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val8, i64 %i.p
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !184
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %i.g
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 range(i64 1, 0) %i.g)
  %i.r = add nuw nsw i64 %.sroa.speculated.i.i, %i.e
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 5
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d ; 2 uses
  %i.w = shl nuw nsw i64 %i.g, 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, i8 0, i64 %i.w, i1 false)
  %.not1.i.i.i.i = icmp eq ptr %.val7, %.val8
  br i1 %.not1.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.val7, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i, i64 32, i1 false), !tbaa.struct !190, !alias.scope !230
  %i.x = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.x, %.val8
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !234

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE12_M_check_lenEmPKc.exit.i
  %.not.i34.i = icmp eq ptr %.val7, null
  br i1 %.not.i34.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.z = sub i64 %i.j, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef %i.z) #26
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i: ; preds = %bb.f, %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.u, ptr %0, align 8, !tbaa !176
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.g
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !229
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.e
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.val7, i64 %1 ; 2 uses
  %.not.i9 = icmp eq ptr %.val8, %i.ad
  br i1 %.not.i9, label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !184
  br label %_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit

_ZNSt6vectorIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndES3_EvT_S5_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESaIS3_EE13_M_deallocateEPS3_m.exit35.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %9 = alloca %"struct.OpenColorIO_v2_5::(anonymous namespace)::InvLut3DRenderer::baseInd", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i17 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i17, 5               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph35

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.j = icmp eq i64 %i.bz, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph35, !llvm.loop !235

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i20.lcssa = phi i64 [ %.fr.i17, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i20.lcssa, 5               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i20.lcssa, 32
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i, %._crit_edge
  %.07.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %.07.i.i.i ; 2 uses
  %.sroa.03.i.i.i.sroa.0.0.copyload = load <3 x i64>, ptr %i.u, align 8
  %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.46.0.copyload.i.i.i = load i64, ptr %.sroa.46.0..sroa.0.0..val12.sroa_idx.i.i.i, align 8, !tbaa !118 ; 2 uses
  %i.v = icmp slt i64 %.07.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.042.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.07.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.042.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [32 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [32 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %.val2.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !185
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !185
  %i.ad = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.042.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !190
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !236

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.07.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i.i, %.07.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.06.i.i.i.i.i = phi i64 [ %.097.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.097.i.i.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !185
  %i.al = icmp ult i64 %.val1.i.i.i.i.i.i, %.sroa.46.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.06.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !tbaa.struct !190
  %i.an = icmp sgt i64 %.097.i.i.i.i.i, %.07.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i, !llvm.loop !237

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.f ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store <3 x i64> %.sroa.03.i.i.i.sroa.0.0.copyload, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %.sroa.46.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !118
  %.not.i.i.i = icmp eq i64 %.07.i.i.i, 0
  %i.ap = add nsw i64 %.07.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i, label %bb.c, !llvm.loop !238

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i
  %i.aq = icmp sgt i64 %.fr.i20.lcssa, 32
  br i1 %i.aq, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i
  %.sroa.0.02.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i ], [ %storemerge18.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -32 ; 4 uses
  %.sroa.03.i.i8.i.sroa.0.0.copyload = load <3 x i64>, ptr %i.ar, align 8
  %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.46.0.copyload.i.i10.i = load i64, ptr %.sroa.46.0..sroa.0.0..val4.sroa_idx.i.i.i, align 8, !tbaa !118 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 5                 ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = lshr i64 %i.av, 1
  %i.ax = icmp sgt i64 %i.au, 2
  br i1 %i.ax, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i26.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i26.i
  %.042.i.i.i27.i = phi i64 [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i26.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ay = shl i64 %.042.i.i.i27.i, 1              ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ba, i64 24
  %.val2.i.i.i.i28.i = load i64, ptr %i.bd, align 8, !tbaa !185
  %i.be = getelementptr i8, ptr %i.bc, i64 24
  %.val3.i.i.i.i29.i = load i64, ptr %i.be, align 8, !tbaa !185
  %i.bf = icmp ult i64 %.val2.i.i.i.i28.i, %.val3.i.i.i.i29.i
  %spec.select.i.i.i30.i = select i1 %i.bf, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bg = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i30.i
  %i.bh = getelementptr inbounds [32 x i8], ptr %0, i64 %.042.i.i.i27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !tbaa.struct !190
  %i.bi = icmp slt i64 %spec.select.i.i.i30.i, %i.aw
  br i1 %i.bi, label %.lr.ph.i.i.i26.i, label %._crit_edge.i.i.i11.i, !llvm.loop !236

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i26.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i30.i, %.lr.ph.i.i.i26.i ] ; 5 uses
  %i.bj = and i64 %i.at, 32
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bl = add nsw i64 %i.au, -2
  %i.bm = ashr exact i64 %i.bl, 1
  %i.bn = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bm
  br i1 %i.bn, label %.thread.i.i25.i, label %bb.h

.thread.i.i25.i:                                  ; preds = %bb.g
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.bp = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false), !tbaa.struct !190
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i25.i
  %.06.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.bp, %.thread.i.i25.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.06.i.i.i.i17.i = phi i64 [ %.097.i.i78.i.i19.i, %bb.i ], [ %.06.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.097.in.i.i.i.i18.i = add nsw i64 %.06.i.i.i.i17.i, -1
  %.097.i.i78.i.i19.i = lshr i64 %.097.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.097.i.i78.i.i19.i ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %.val1.i.i.i.i.i20.i = load i64, ptr %i.bt, align 8, !tbaa !185
  %i.bu = icmp ult i64 %.val1.i.i.i.i.i20.i, %.sroa.46.0.copyload.i.i10.i
  br i1 %i.bu, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bv = getelementptr inbounds [32 x i8], ptr %0, i64 %.06.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !tbaa.struct !190
  %.not9.i.i24.i = icmp eq i64 %.097.i.i78.i.i19.i, 0
  br i1 %.not9.i.i24.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !237

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i: ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.06.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bw = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  store <3 x i64> %.sroa.03.i.i8.i.sroa.0.0.copyload, ptr %i.bw, align 8
  %.sroa.4.0..sroa_idx.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 %.sroa.46.0.copyload.i.i10.i, ptr %.sroa.4.0..sroa_idx.i.i.i23.i, align 8, !tbaa !118
  %i.bx = icmp sgt i64 %i.at, 32
  br i1 %i.bx, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !239

.lr.ph35:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1834 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.01933 = phi i64 [ %i.bz, %bb.b ], [ %2, %.lr.ph ]
  %i.by = phi i64 [ %i.cs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bz = add nsw i64 %.01933, -1                 ; 3 uses
  %i.ca = lshr i64 %i.by, 1
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %storemerge1834, i64 -32 ; 4 uses
  %.val2.i.i.i = load i64, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 24
  %.val3.i.i.i = load i64, ptr %i.cd, align 8, !tbaa !185 ; 3 uses
  %i.ce = icmp ult i64 %.val2.i.i.i, %.val3.i.i.i
  %i.cf = getelementptr i8, ptr %storemerge1834, i64 -8
  %.val3.i27.i.i = load i64, ptr %i.cf, align 8, !tbaa !185 ; 4 uses
  br i1 %i.ce, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph35
  %i.cg = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph35
  %i.ci = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cj = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.cm, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1834, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.val3.i.i14.i = load i64, ptr %i.h, align 8, !tbaa !185 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i ], [ %i.cm, %bb.t ] ; 9 uses
  %i.ck = getelementptr i8, ptr %.sroa.012.1.i.i, i64 24
  %.val2.i.i15.i = load i64, ptr %i.ck, align 8, !tbaa !185
  %i.cl = icmp ult i64 %.val2.i.i15.i, %.val3.i.i14.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.cl, label %bb.t, label %.preheader.i.i, !llvm.loop !240

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.cn = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i10.i.i = load i64, ptr %i.cn, align 8, !tbaa !185
  %i.co = icmp ult i64 %.val3.i.i14.i, %.val3.i10.i.i
  br i1 %i.co, label %.preheader.i.i, label %bb.u, !llvm.loop !241

bb.u:                                             ; preds = %.preheader.i.i
  %i.cp = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cp, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, i64 32, i1 false), !tbaa.struct !190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !242

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1834, i64 noundef %i.bz)
  %i.cq = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cr = sub i64 %i.cq, %i.a
  %.fr.i = freeze i64 %i.cr                       ; 2 uses
  %i.cs = ashr exact i64 %.fr.i, 5                ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 16
  br i1 %i.ct, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !235

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i21.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer7baseIndESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !103
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !201
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !103
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30
end_hunk_2
