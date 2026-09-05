Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/partition?download=true
begin_hunk_0_@meshopt_partitionClusters:bb.a
  %i.mh = fadd <2 x float> %i.ma, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !23
  %i.mk = fadd float %.sroa.16.045.i, %i.mj
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.04346.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !15
  %i.mo = zext i32 %i.mn to i64
  %i.mp = mul i64 %i.ki, %i.mo
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.mp ; 2 uses
  %i.mr = load <2 x float>, ptr %i.mq, align 4, !tbaa !23
  %i.ms = fadd <2 x float> %i.mh, %i.mr           ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !23
  %i.mv = fadd float %i.mk, %i.mu                 ; 3 uses
  %i.mw = add nuw nsw i64 %.04346.i, 2            ; 2 uses
  %niter431.next.1 = add i64 %niter431, 2         ; 2 uses
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %.lr.ph54.preheader.i.unr-lcssa, label %.lr.ph.i214, !llvm.loop !47

.lr.ph54.i:                                       ; preds = %.lr.ph54.i, %.lr.ph54.preheader.i
  %.052.i = phi i64 [ %i.np, %.lr.ph54.i ], [ 0, %.lr.ph54.preheader.i ] ; 2 uses
  %.04251.i = phi float [ %i.no, %.lr.ph54.i ], [ 0.000000e+00, %.lr.ph54.preheader.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.052.i
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !15
  %i.mz = zext i32 %i.my to i64
  %i.na = mul i64 %i.ki, %i.mz
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.na ; 3 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !23
  %i.nd = fsub float %i.nc, %i.ly                 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !23
  %i.ng = fsub float %i.nf, %i.lz                 ; 2 uses
  %i.nh = fmul float %i.ng, %i.ng
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.nd, float %i.nh)
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !23
  %i.nl = fsub float %i.nk, %i.lx                 ; 2 uses
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.nl, float %i.nl, float %i.ni) ; 2 uses
  %i.nn = fcmp olt float %.04251.i, %i.nm
  %i.no = select i1 %i.nn, float %i.nm, float %.04251.i ; 2 uses
  %i.np = add nuw nsw i64 %.052.i, 1              ; 2 uses
  %exitcond62.not.i = icmp eq i64 %i.np, %i.lg
  br i1 %exitcond62.not.i, label %_ZN7meshoptL20computeClusterBoundsEPKjmPKfmPf.exit, label %.lr.ph54.i, !llvm.loop !48

_ZN7meshoptL20computeClusterBoundsEPKjmPKfmPf.exit: ; preds = %.lr.ph54.i, %bb.y
  %.sroa.16.1.i = phi float [ 0.000000e+00, %bb.y ], [ %i.lx, %.lr.ph54.i ]
  %.042.lcssa.i = phi float [ 0.000000e+00, %bb.y ], [ %i.no, %.lr.ph54.i ]
  %i.nq = phi <2 x float> [ zeroinitializer, %bb.y ], [ %i.lw, %.lr.ph54.i ]
  store <2 x float> %i.nq, ptr %i.lh, align 4
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store float %.sroa.16.1.i, ptr %.sroa.16.0..sroa_idx.i, align 4
  %i.nr = tail call noundef float @sqrtf(float noundef %.042.lcssa.i) #12
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kr, i64 28
  store float %i.nr, ptr %i.ns, align 4, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %_ZN7meshoptL20computeClusterBoundsEPKjmPKfmPf.exit, %bb.x
  %.sroa.5.0.insert.ext = zext i32 %i.kz to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.049.0.insert.ext = and i64 %.0168263, 4294967295
  %.sroa.049.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.049.0.insert.ext ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.0168263
  store i64 %.sroa.049.0.insert.insert, ptr %i.nt, align 4
  %.not17.i = icmp eq i64 %.0168263, 0
  br i1 %.not17.i, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.z, %bb.aa
  %.018.i = phi i64 [ %i.nv, %bb.aa ], [ %.0168263, %bb.z ] ; 2 uses
  %i.nu = add i64 %.018.i, -1
  %i.nv = lshr i64 %i.nu, 1                       ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.nv ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !67
  %i.nz = icmp sgt i32 %i.ny, %i.kz
  br i1 %i.nz, label %bb.aa, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit

bb.aa:                                            ; preds = %.lr.ph.i216
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.018.i
  %i.ob = load i64, ptr %i.nw, align 4
  store i64 %i.ob, ptr %i.oa, align 4
  store i64 %.sroa.049.0.insert.insert, ptr %i.nw, align 4
  %.not.i218 = icmp eq i64 %i.nv, 0
  br i1 %.not.i218, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit, label %.lr.ph.i216, !llvm.loop !49

_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit: ; preds = %.lr.ph.i216, %bb.aa, %bb.z
  %exitcond.not = icmp eq i64 %i.ku, %4
  br i1 %exitcond.not, label %.lr.ph273, label %bb.x, !llvm.loop !50

bb.ab:                                            ; preds = %.lr.ph273, %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232
  %.1170272 = phi i64 [ %4, %.lr.ph273 ], [ %.3172, %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232 ] ; 3 uses
  %i.oc = add i64 %.1170272, -1                   ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ka, align 4 ; 3 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.oc ; 2 uses
  %i.oe = load i64, ptr %i.od, align 4
  store i64 %i.oe, ptr %i.ka, align 4
  %i.of = icmp ugt i64 %i.oc, 1
  br i1 %i.of, label %.lr.ph.i219, label %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit

.lr.ph.i219:                                      ; preds = %bb.ab, %bb.ae
  %i.og = phi i64 [ %i.pd, %bb.ae ], [ 1, %bb.ab ] ; 2 uses
  %i.oh = phi i64 [ %i.pc, %bb.ae ], [ 0, %bb.ab ]
  %.02733.i = phi i64 [ %i.ot, %bb.ae ], [ 0, %bb.ab ]
  %i.oi = add nuw i64 %i.oh, 2                    ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.oc
  br i1 %i.oj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i219
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.oi
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !67
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.og
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !67
  %i.oq = icmp slt i32 %i.om, %i.op
  %i.or = zext i1 %i.oq to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i219
  %i.os = phi i64 [ 0, %.lr.ph.i219 ], [ %i.or, %bb.ac ]
  %i.ot = add nuw i64 %i.os, %i.og                ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.ot ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !67
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.02733.i ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !67
  %.not.i220 = icmp slt i32 %i.ow, %i.oz
  br i1 %.not.i220, label %bb.ae, label %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit

bb.ae:                                            ; preds = %bb.ad
  %i.pa = load i64, ptr %i.ox, align 4
  %i.pb = load i64, ptr %i.ou, align 4
  store i64 %i.pb, ptr %i.ox, align 4
  store i64 %i.pa, ptr %i.ou, align 4
  %i.pc = shl i64 %i.ot, 1                        ; 2 uses
  %i.pd = or disjoint i64 %i.pc, 1                ; 2 uses
  %i.pe = icmp ult i64 %i.pd, %i.oc
  br i1 %i.pe, label %.lr.ph.i219, label %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit

_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit:     ; preds = %bb.ad, %bb.ae, %bb.ab
  %.sroa.034.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 8 uses
  %i.pf = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 2 uses
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.pf ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 3 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !22 ; 2 uses
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.preheader248, !llvm.loop !51

.preheader248:                                    ; preds = %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit
  %i.pk = icmp sgt i32 %.sroa.034.0.extract.trunc, -1 ; 2 uses
  br i1 %i.pk, label %.lr.ph265, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph265, %.preheader248
  %i.pl = zext i32 %i.pi to i64
  %.not188 = icmp ugt i64 %8, %i.pl
  br i1 %.not188, label %bb.af, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, !llvm.loop !51

.lr.ph265:                                        ; preds = %.preheader248, %.lr.ph265
  %.0165264 = phi i32 [ %i.pp, %.lr.ph265 ], [ %.sroa.034.0.extract.trunc, %.preheader248 ]
  %i.pm = zext nneg i32 %.0165264 to i64
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.pm ; 2 uses
  store i32 -1, ptr %i.pn, align 4, !tbaa !64
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !21 ; 2 uses
  %i.pq = icmp sgt i32 %i.pp, -1
  br i1 %i.pq, label %.lr.ph265, label %._crit_edge, !llvm.loop !52

bb.af:                                            ; preds = %._crit_edge
  %sext = shl i64 %.sroa.0.0.copyload.i, 32
  %i.pr = ashr exact i64 %sext, 27
  %i.ps = getelementptr inbounds i8, ptr %i.jv, i64 %i.pr ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !65
  %i.pv = sitofp i32 %i.pu to float
  %i.pw = tail call float @sqrtf(float noundef %i.pv) #12
  %i.px = fdiv float 1.000000e+00, %i.pw          ; 2 uses
  br i1 %i.pk, label %.lr.ph86.i, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232

.preheader.i223:                                  ; preds = %._crit_edge.i222
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 28
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ps, i64 20
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  br i1 %.not245, label %.lr.ph103.split.i, label %.lr.ph103.split.us.i

.lr.ph103.split.us.i:                             ; preds = %.preheader.i223, %._crit_edge94.split.us.us.i
  %.064102.us.i = phi i32 [ %12, %._crit_edge94.split.us.us.i ], [ %.sroa.034.0.extract.trunc, %.preheader.i223 ]
  %.067101.us.i = phi i32 [ %.1.lcssa.us.i, %._crit_edge94.split.us.us.i ], [ 0, %.preheader.i223 ] ; 2 uses
  %.068100.us.i = phi float [ %.169.lcssa.us.i, %._crit_edge94.split.us.us.i ], [ 0.000000e+00, %.preheader.i223 ] ; 2 uses
  %.07399.us.i = phi i32 [ %.174.lcssa.us.i, %._crit_edge94.split.us.us.i ], [ -1, %.preheader.i223 ] ; 2 uses
  %i.qd = zext nneg i32 %.064102.us.i to i64      ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.qd ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !15 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 4 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !15
  %.not87.us.i = icmp eq i32 %i.qf, %i.qh
  br i1 %.not87.us.i, label %._crit_edge94.split.us.us.i, label %.lr.ph93.us.i

._crit_edge94.split.us.us.i:                      ; preds = %bb.al, %.lr.ph103.split.us.i
  %.174.lcssa.us.i = phi i32 [ %.07399.us.i, %.lr.ph103.split.us.i ], [ %.477.us.us.i, %bb.al ] ; 2 uses
  %.169.lcssa.us.i = phi float [ %.068100.us.i, %.lr.ph103.split.us.i ], [ %.472.us.us.i, %bb.al ]
  %.1.lcssa.us.i = phi i32 [ %.067101.us.i, %.lr.ph103.split.us.i ], [ %.4.us.us.i, %bb.al ] ; 2 uses
  %10 = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.qd
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !21     ; 2 uses
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %.lr.ph103.split.us.i, label %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, !llvm.loop !53

.lr.ph93.us.i:                                    ; preds = %.lr.ph103.split.us.i, %bb.al
  %.06391.us.us.i = phi i32 [ %i.sn, %bb.al ], [ %i.qf, %.lr.ph103.split.us.i ] ; 2 uses
  %.190.us.us.i = phi i32 [ %.4.us.us.i, %bb.al ], [ %.067101.us.i, %.lr.ph103.split.us.i ] ; 4 uses
  %.16989.us.us.i = phi float [ %.472.us.us.i, %bb.al ], [ %.068100.us.i, %.lr.ph103.split.us.i ] ; 5 uses
  %.17488.us.us.i = phi i32 [ %.477.us.us.i, %bb.al ], [ %.07399.us.i, %.lr.ph103.split.us.i ] ; 4 uses
  %i.qi = zext i32 %.06391.us.us.i to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !15
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !64 ; 3 uses
  %i.qo = icmp slt i32 %i.qn, 0
  br i1 %i.qo, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph93.us.i
  %i.qp = zext nneg i32 %i.qn to i64              ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.qp ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !15 ; 3 uses
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.qq, align 4, !tbaa !15
  %i.qt = load i32, ptr %i.py, align 4, !tbaa !22
  %i.qu = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.qp ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !22
  %i.qx = add i32 %i.qw, %i.qt
  %i.qy = zext i32 %i.qx to i64
  %i.qz = icmp ult i64 %i.b, %i.qy
  br i1 %i.qz, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !65
  %i.rc = sitofp i32 %i.rb to float
  %i.rd = tail call float @sqrtf(float noundef %i.rc) #12
  %i.re = fdiv float 1.000000e+00, %i.rd
  %i.rf = sitofp i32 %i.qr to float
  %i.rg = fadd float %i.px, %i.re
  %i.rh = fmul float %i.rg, %i.rf
  %i.ri = load float, ptr %i.pz, align 4, !tbaa !24 ; 5 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qu, i64 28
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !24 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !23
  %i.rn = load float, ptr %i.qa, align 4, !tbaa !23
  %i.ro = fsub float %i.rm, %i.rn                 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !23
  %i.rr = load float, ptr %i.qb, align 4, !tbaa !23
  %i.rs = fsub float %i.rq, %i.rr                 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !23
  %i.rv = load float, ptr %i.qc, align 4, !tbaa !23
  %i.rw = fsub float %i.ru, %i.rv                 ; 2 uses
  %i.rx = fmul float %i.rs, %i.rs
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.ro, float %i.ro, float %i.rx)
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.rw, float %i.rw, float %i.ry)
  %sqrt.i.us.us.i = tail call float @llvm.sqrt.f32(float %i.rz) ; 2 uses
  %i.sa = fadd float %i.ri, %sqrt.i.us.us.i
  %i.sb = fcmp olt float %i.sa, %i.rk
  br i1 %i.sb, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.sc = fadd float %i.rk, %sqrt.i.us.us.i       ; 2 uses
  %i.sd = fcmp olt float %i.sc, %i.ri
  br i1 %i.sd, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.se = fadd float %i.ri, %i.sc
  %i.sf = fmul float %i.se, 5.000000e-01
  br label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i

_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.sg = phi float [ %i.sf, %bb.ak ], [ %i.rk, %bb.ai ], [ %i.ri, %bb.aj ] ; 2 uses
  %i.sh = fcmp ogt float %i.sg, 0.000000e+00
  %i.si = fdiv float %i.ri, %i.sg
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.si, float 4.000000e-01, float 1.000000e+00)
  %i.sk = select i1 %i.sh, float %i.sj, float 1.000000e+00
  %i.sl = fmul float %i.rh, %i.sk                 ; 2 uses
  %i.sm = fcmp ogt float %i.sl, %.16989.us.us.i   ; 3 uses
  %.275.us.us.i = select i1 %i.sm, i32 %i.qn, i32 %.17488.us.us.i
  %.270.us.us.i = select i1 %i.sm, float %i.sl, float %.16989.us.us.i
  %.2.us.us.i = select i1 %i.sm, i32 %i.qr, i32 %.190.us.us.i
  br label %bb.al

bb.al:                                            ; preds = %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i, %bb.ah, %bb.ag, %.lr.ph93.us.i
  %.477.us.us.i = phi i32 [ %.17488.us.us.i, %.lr.ph93.us.i ], [ %.17488.us.us.i, %bb.ag ], [ %.275.us.us.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i ], [ %.17488.us.us.i, %bb.ah ] ; 2 uses
  %.472.us.us.i = phi float [ %.16989.us.us.i, %.lr.ph93.us.i ], [ %.16989.us.us.i, %bb.ag ], [ %.270.us.us.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i ], [ %.16989.us.us.i, %bb.ah ] ; 2 uses
  %.4.us.us.i = phi i32 [ %.190.us.us.i, %.lr.ph93.us.i ], [ %.190.us.us.i, %bb.ag ], [ %.2.us.us.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i ], [ %.190.us.us.i, %bb.ah ] ; 2 uses
  %i.sn = add i32 %.06391.us.us.i, 1              ; 2 uses
  %i.so = load i32, ptr %i.qg, align 4, !tbaa !15
  %.not.us.us.i = icmp eq i32 %i.sn, %i.so
  br i1 %.not.us.us.i, label %._crit_edge94.split.us.us.i, label %.lr.ph93.us.i, !llvm.loop !54

.lr.ph86.i:                                       ; preds = %bb.af, %._crit_edge.i222
  %.06684.i = phi i32 [ %i.sw, %._crit_edge.i222 ], [ %.sroa.034.0.extract.trunc, %bb.af ]
  %i.sp = zext nneg i32 %.06684.i to i64          ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.sp ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !15 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !15 ; 2 uses
  %.not8182.i = icmp eq i32 %i.sr, %i.st
  br i1 %.not8182.i, label %._crit_edge.i222, label %.lr.ph.i221

._crit_edge.i222:                                 ; preds = %bb.an, %.lr.ph86.i
  %i.su = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.sp
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !21 ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, -1
  br i1 %i.sx, label %.lr.ph86.i, label %.preheader.i223, !llvm.loop !55

.lr.ph.i221:                                      ; preds = %.lr.ph86.i, %bb.an
  %i.sy = phi i32 [ %i.tm, %bb.an ], [ %i.st, %.lr.ph86.i ]
  %.06583.i = phi i32 [ %i.tn, %bb.an ], [ %i.sr, %.lr.ph86.i ] ; 2 uses
  %i.sz = zext i32 %.06583.i to i64               ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !15
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !64 ; 2 uses
  %i.tf = icmp sgt i32 %i.te, -1
  br i1 %i.tf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i221
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.sz
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !15
  %i.ti = zext nneg i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ti ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !15
  %i.tl = add i32 %i.tk, %i.th
  store i32 %i.tl, ptr %i.tj, align 4, !tbaa !15
  %.pre.i226 = load i32, ptr %i.ss, align 4, !tbaa !15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i221
  %i.tm = phi i32 [ %.pre.i226, %bb.am ], [ %i.sy, %.lr.ph.i221 ] ; 2 uses
  %i.tn = add i32 %.06583.i, 1                    ; 2 uses
  %.not81.i = icmp eq i32 %i.tn, %i.tm
  br i1 %.not81.i, label %._crit_edge.i222, label %.lr.ph.i221, !llvm.loop !56

.lr.ph103.split.i:                                ; preds = %.preheader.i223, %._crit_edge94.split.i
  %.064102.i = phi i32 [ %i.tv, %._crit_edge94.split.i ], [ %.sroa.034.0.extract.trunc, %.preheader.i223 ]
  %.067101.i = phi i32 [ %.1.lcssa.i225, %._crit_edge94.split.i ], [ 0, %.preheader.i223 ] ; 2 uses
  %.068100.i = phi float [ %.169.lcssa.i, %._crit_edge94.split.i ], [ 0.000000e+00, %.preheader.i223 ] ; 2 uses
  %.07399.i = phi i32 [ %.174.lcssa.i, %._crit_edge94.split.i ], [ -1, %.preheader.i223 ] ; 2 uses
  %i.to = zext nneg i32 %.064102.i to i64         ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.to ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !15 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !15
  %.not87.i = icmp eq i32 %i.tq, %i.ts
  br i1 %.not87.i, label %._crit_edge94.split.i, label %.lr.ph93.i

._crit_edge94.split.i:                            ; preds = %bb.ar, %.lr.ph103.split.i
  %.174.lcssa.i = phi i32 [ %.07399.i, %.lr.ph103.split.i ], [ %.477.i, %bb.ar ] ; 2 uses
  %.169.lcssa.i = phi float [ %.068100.i, %.lr.ph103.split.i ], [ %.472.i, %bb.ar ]
  %.1.lcssa.i225 = phi i32 [ %.067101.i, %.lr.ph103.split.i ], [ %.4.i, %bb.ar ] ; 2 uses
  %i.tt = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.to
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !21 ; 2 uses
  %i.tw = icmp sgt i32 %i.tv, -1
  br i1 %i.tw, label %.lr.ph103.split.i, label %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, !llvm.loop !53

.lr.ph93.i:                                       ; preds = %.lr.ph103.split.i, %bb.ar
  %.06391.i = phi i32 [ %i.uy, %bb.ar ], [ %i.tq, %.lr.ph103.split.i ] ; 2 uses
  %.190.i = phi i32 [ %.4.i, %bb.ar ], [ %.067101.i, %.lr.ph103.split.i ] ; 4 uses
  %.16989.i = phi float [ %.472.i, %bb.ar ], [ %.068100.i, %.lr.ph103.split.i ] ; 5 uses
  %.17488.i = phi i32 [ %.477.i, %bb.ar ], [ %.07399.i, %.lr.ph103.split.i ] ; 4 uses
  %i.tx = zext i32 %.06391.i to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !15
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !64 ; 3 uses
  %i.ud = icmp slt i32 %i.uc, 0
  br i1 %i.ud, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph93.i
  %i.ue = zext nneg i32 %i.uc to i64              ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ue ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !15 ; 3 uses
  %i.uh = icmp eq i32 %i.ug, 0
  br i1 %i.uh, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.uf, align 4, !tbaa !15
  %i.ui = load i32, ptr %i.py, align 4, !tbaa !22
  %i.uj = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ue ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !22
  %i.um = add i32 %i.ul, %i.ui
  %i.un = zext i32 %i.um to i64
  %i.uo = icmp ult i64 %i.b, %i.un
  br i1 %i.uo, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !65
  %i.ur = sitofp i32 %i.uq to float
  %i.us = tail call float @sqrtf(float noundef %i.ur) #12
  %i.ut = fdiv float 1.000000e+00, %i.us
  %i.uu = sitofp i32 %i.ug to float
  %i.uv = fadd float %i.px, %i.ut
  %i.uw = fmul float %i.uv, %i.uu                 ; 2 uses
  %i.ux = fcmp ogt float %i.uw, %.16989.i         ; 3 uses
  %.275.i = select i1 %i.ux, i32 %i.uc, i32 %.17488.i
  %.270.i = select i1 %i.ux, float %i.uw, float %.16989.i
  %.2.i = select i1 %i.ux, i32 %i.ug, i32 %.190.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %.lr.ph93.i
  %.477.i = phi i32 [ %.17488.i, %.lr.ph93.i ], [ %.17488.i, %bb.ao ], [ %.275.i, %bb.aq ], [ %.17488.i, %bb.ap ] ; 2 uses
  %.472.i = phi float [ %.16989.i, %.lr.ph93.i ], [ %.16989.i, %bb.ao ], [ %.270.i, %bb.aq ], [ %.16989.i, %bb.ap ] ; 2 uses
  %.4.i = phi i32 [ %.190.i, %.lr.ph93.i ], [ %.190.i, %bb.ao ], [ %.2.i, %bb.aq ], [ %.190.i, %bb.ap ] ; 2 uses
  %i.uy = add i32 %.06391.i, 1                    ; 2 uses
  %i.uz = load i32, ptr %i.tr, align 4, !tbaa !15
  %.not.i224 = icmp eq i32 %i.uy, %i.uz
  br i1 %.not.i224, label %._crit_edge94.split.i, label %.lr.ph93.i, !llvm.loop !54

_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit: ; preds = %._crit_edge94.split.us.us.i, %._crit_edge94.split.i
  %.073.lcssa.i = phi i32 [ %.174.lcssa.i, %._crit_edge94.split.i ], [ %.174.lcssa.us.i, %._crit_edge94.split.us.us.i ] ; 3 uses
  %.067.lcssa.i = phi i32 [ %.1.lcssa.i225, %._crit_edge94.split.i ], [ %.1.lcssa.us.i, %._crit_edge94.split.us.us.i ] ; 2 uses
  %i.va = icmp eq i32 %.073.lcssa.i, -1
  br i1 %i.va, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.preheader246, !llvm.loop !51

.preheader246:                                    ; preds = %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, %.preheader246
  %.0164 = phi i32 [ %i.ve, %.preheader246 ], [ %.sroa.034.0.extract.trunc, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit ]
  %i.vb = zext nneg i32 %.0164 to i64
  %i.vc = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.vb ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !21 ; 2 uses
  %i.vf = icmp sgt i32 %i.ve, -1
  br i1 %i.vf, label %.preheader246, label %bb.as, !llvm.loop !57

bb.as:                                            ; preds = %.preheader246
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  store i32 %.073.lcssa.i, ptr %i.vg, align 4, !tbaa !21
  %i.vh = zext nneg i32 %.073.lcssa.i to i64
  %i.vi = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.vh ; 5 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !22
  %i.vl = load i32, ptr %i.ph, align 4, !tbaa !22
  %i.vm = add i32 %i.vl, %i.vk
  store i32 %i.vm, ptr %i.ph, align 4, !tbaa !22
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 12 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !65
  %i.vp = getelementptr inbounds nuw i8, ptr %i.pg, i64 12 ; 3 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !65
  %i.vr = add i32 %i.vq, %i.vo                    ; 2 uses
  %i.vs = icmp ugt i32 %i.vr, %.067.lcssa.i
  %i.vt = sub nuw i32 %i.vr, %.067.lcssa.i
  %spec.select = select i1 %i.vs, i32 %i.vt, i32 1
  store i32 %spec.select, ptr %i.vp, align 4, !tbaa !65
  store i32 0, ptr %i.vj, align 4, !tbaa !22
  store i32 0, ptr %i.vn, align 4, !tbaa !65
  br i1 %.not245, label %.lr.ph269.preheader, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.vu = getelementptr inbounds nuw i8, ptr %i.pg, i64 28 ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !24 ; 4 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vi, i64 28 ; 2 uses
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !24 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 3 uses
  %i.wa = load <2 x float>, ptr %i.vy, align 4, !tbaa !23 ; 2 uses
  %i.wb = load <2 x float>, ptr %i.vz, align 4, !tbaa !23 ; 2 uses
  %i.wc = fsub <2 x float> %i.wa, %i.wb           ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.we = load float, ptr %i.wd, align 4, !tbaa !23 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.pg, i64 24 ; 3 uses
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !23 ; 2 uses
  %i.wh = fsub float %i.we, %i.wg                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.wc, %i.wc
  %i.wi = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.wj = extractelement <2 x float> %i.wc, i64 0 ; 2 uses
  %i.wk = tail call float @llvm.fmuladd.f32(float %i.wj, float %i.wj, float %i.wi)
  %i.wl = tail call float @llvm.fmuladd.f32(float %i.wh, float %i.wh, float %i.wk) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.wl) ; 3 uses
  %i.wm = fadd float %i.vv, %sqrt.i
  %i.wn = fcmp olt float %i.wm, %i.vx
  br i1 %i.wn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store <2 x float> %i.wa, ptr %i.vz, align 4, !tbaa !23
  store float %i.we, ptr %i.wf, align 4, !tbaa !23
  br label %.sink.split.i

bb.av:                                            ; preds = %bb.at
  %i.wo = fadd float %i.vx, %sqrt.i               ; 3 uses
  %i.wp = fcmp ogt float %i.wo, %i.vv
  br i1 %i.wp, label %bb.aw, label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit

bb.aw:                                            ; preds = %bb.av
  %i.wq = fcmp ogt float %i.wl, 0.000000e+00
  %i.wr = fsub float %i.wo, %i.vv
  %i.ws = fmul nnan float %sqrt.i, 2.000000e+00
  %i.wt = fdiv float %i.wr, %i.ws
  %i.wu = select i1 %i.wq, float %i.wt, float 0.000000e+00 ; 2 uses
  %i.wv = insertelement <2 x float> poison, float %i.wu, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wc, <2 x float> %i.ww, <2 x float> %i.wb)
  store <2 x float> %i.wx, ptr %i.vz, align 4, !tbaa !23
  %i.wy = tail call float @llvm.fmuladd.f32(float %i.wh, float %i.wu, float %i.wg)
  store float %i.wy, ptr %i.wf, align 4, !tbaa !23
  %i.wz = fadd float %i.vv, %i.wo
  %i.xa = fmul float %i.wz, 5.000000e-01
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aw, %bb.au
  %.sink.i = phi float [ %i.xa, %bb.aw ], [ %i.vx, %bb.au ]
  store float %.sink.i, ptr %i.vu, align 4, !tbaa !24
  br label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit

_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit: ; preds = %bb.av, %.sink.split.i
  store float 0.000000e+00, ptr %i.vw, align 4, !tbaa !24
  br label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.as, %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit
  br label %.lr.ph269

._crit_edge270:                                   ; preds = %.lr.ph269
  %i.xb = load i32, ptr %i.vp, align 4, !tbaa !65 ; 2 uses
  %.sroa.19.0.insert.ext = zext i32 %i.xb to i64
  %.sroa.19.0.insert.shift = shl nuw i64 %.sroa.19.0.insert.ext, 32
  %.sroa.034.0.insert.insert = or disjoint i64 %.sroa.19.0.insert.shift, %i.pf ; 2 uses
  store i64 %.sroa.034.0.insert.insert, ptr %i.od, align 4
  %.not17.i227 = icmp eq i64 %i.oc, 0
  br i1 %.not17.i227, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %._crit_edge270, %bb.ax
  %.018.i229 = phi i64 [ %i.xd, %bb.ax ], [ %i.oc, %._crit_edge270 ] ; 2 uses
  %i.xc = add i64 %.018.i229, -1
  %i.xd = lshr i64 %i.xc, 1                       ; 3 uses
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.xd ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !67
  %i.xh = icmp sgt i32 %i.xg, %i.xb
  br i1 %i.xh, label %bb.ax, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232

bb.ax:                                            ; preds = %.lr.ph.i228
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.018.i229
  %i.xj = load i64, ptr %i.xe, align 4
  store i64 %i.xj, ptr %i.xi, align 4
  store i64 %.sroa.034.0.insert.insert, ptr %i.xe, align 4
  %.not.i231 = icmp eq i64 %i.xd, 0
  br i1 %.not.i231, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.lr.ph.i228, !llvm.loop !49

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %.lr.ph269
  %.0163267 = phi i32 [ %i.xn, %.lr.ph269 ], [ %.sroa.034.0.extract.trunc, %.lr.ph269.preheader ]
  %i.xk = zext nneg i32 %.0163267 to i64
  %i.xl = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.xk ; 2 uses
  store i32 %.sroa.034.0.extract.trunc, ptr %i.xl, align 4, !tbaa !64
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !21 ; 2 uses
  %i.xo = icmp sgt i32 %i.xn, -1
  br i1 %i.xo, label %.lr.ph269, label %._crit_edge270, !llvm.loop !58

_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232: ; preds = %.lr.ph.i228, %bb.ax, %bb.af, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, %._crit_edge270, %._crit_edge, %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit
  %.3172 = phi i64 [ %i.oc, %._crit_edge ], [ %i.oc, %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit ], [ %i.oc, %bb.af ], [ %i.oc, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit ], [ 1, %._crit_edge270 ], [ %.1170272, %bb.ax ], [ %.1170272, %.lr.ph.i228 ] ; 2 uses
  %.not = icmp eq i64 %.3172, 0
  br i1 %.not, label %._crit_edge274, label %bb.ab

._crit_edge274:                                   ; preds = %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232
  %.not186 = icmp eq ptr %5, null
  br i1 %.not186, label %bb.bc, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %._crit_edge274
  %xtraiter432 = and i64 %4, 1
  %i.xp = icmp eq i64 %4, 1
  br i1 %i.xp, label %.lr.ph277.epil.preheader, label %.lr.ph277.preheader.new

.lr.ph277.preheader.new:                          ; preds = %.lr.ph277.preheader
  %unroll_iter437 = and i64 %4, -2
  br label %.lr.ph277

._crit_edge274.thread:                            ; preds = %bb.p
  br i1 %.not186372, label %.lr.ph.i233, label %._crit_edge278

._crit_edge278.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod434.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod434.not, label %._crit_edge278, label %.lr.ph277.epil.preheader

.lr.ph277.epil.preheader:                         ; preds = %._crit_edge278.loopexit.unr-lcssa, %.lr.ph277.preheader
  %.0160276.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %i.yj, %._crit_edge278.loopexit.unr-lcssa ] ; 2 uses
  %.0161275.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %.1162.1, %._crit_edge278.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod436 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.xq = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0160276.epil.init
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !22
  %.not187.epil = icmp eq i32 %i.xs, 0
  br i1 %.not187.epil, label %._crit_edge278, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph277.epil.preheader
  %i.xt = trunc i64 %.0160276.epil.init to i32
  %i.xu = add i64 %.0161275.epil.init, 1
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0161275.epil.init
  store i32 %i.xt, ptr %i.xv, align 4, !tbaa !15
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge278.loopexit.unr-lcssa, %bb.ay, %.lr.ph277.epil.preheader, %._crit_edge274.thread
  %.0161.lcssa = phi i64 [ 0, %._crit_edge274.thread ], [ %.1162.1, %._crit_edge278.loopexit.unr-lcssa ], [ %i.xu, %bb.ay ], [ %.0161275.epil.init, %.lr.ph277.epil.preheader ]
  tail call fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr noundef %i.jv, ptr noundef %i.ka, i64 noundef %.0161.lcssa, i64 noundef %8, i64 noundef %i.b, i32 noundef 0)
  br label %bb.bc

.lr.ph277:                                        ; preds = %bb.bb, %.lr.ph277.preheader.new
  %.0160276 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %i.yj, %bb.bb ] ; 4 uses
  %.0161275 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %.1162.1, %bb.bb ] ; 3 uses
  %niter438 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %niter438.next.1, %bb.bb ]
  %i.xw = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0160276
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !22
  %.not187 = icmp eq i32 %i.xy, 0
  br i1 %.not187, label %.lr.ph277.1, label %bb.az

bb.az:                                            ; preds = %.lr.ph277
  %i.xz = trunc i64 %.0160276 to i32
  %i.ya = add i64 %.0161275, 1
end_hunk_0
