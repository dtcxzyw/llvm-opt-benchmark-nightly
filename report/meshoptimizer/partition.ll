Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/partition?download=true
inline.NumInlined: 33
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@meshopt_partitionClusters:bb.a
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.049.0.insert.ext = and i64 %.0168263, 4294967295
  %.sroa.049.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.049.0.insert.ext ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.0168263
  store i64 %.sroa.049.0.insert.insert, ptr %i.nm, align 4, !tbaa !15
  %.not17.i = icmp eq i64 %.0168263, 0
  br i1 %.not17.i, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.s, %bb.t
  %.018.i = phi i64 [ %i.no, %bb.t ], [ %.0168263, %bb.s ] ; 2 uses
  %i.nn = add i64 %.018.i, -1
  %i.no = lshr i64 %i.nn, 1                       ; 3 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.no ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !67
  %i.ns = icmp sgt i32 %i.nr, %i.ks
  br i1 %i.ns, label %bb.t, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit

bb.t:                                             ; preds = %.lr.ph.i216
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.018.i
  %i.nu = load i64, ptr %i.np, align 4, !tbaa !15
  store i64 %i.nu, ptr %i.nt, align 4, !tbaa !15
  store i64 %.sroa.049.0.insert.insert, ptr %i.np, align 4, !tbaa !15
  %.not.i218 = icmp eq i64 %i.no, 0
  br i1 %.not.i218, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit, label %.lr.ph.i216, !llvm.loop !49

_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit: ; preds = %.lr.ph.i216, %bb.t, %bb.s
  %exitcond.not = icmp eq i64 %i.kn, %4
  br i1 %exitcond.not, label %.lr.ph273, label %bb.q, !llvm.loop !50

bb.u:                                             ; preds = %.lr.ph273, %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232
  %.1170272 = phi i64 [ %4, %.lr.ph273 ], [ %.3172, %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232 ] ; 3 uses
  %i.nv = add i64 %.1170272, -1                   ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ka, align 4, !tbaa !15 ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.nv ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 4, !tbaa !15
  store i64 %i.nx, ptr %i.ka, align 4, !tbaa !15
  %i.ny = icmp ugt i64 %i.nv, 1
  br i1 %i.ny, label %.lr.ph.i219, label %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit

.lr.ph.i219:                                      ; preds = %bb.u, %bb.x
  %i.nz = phi i64 [ %i.ow, %bb.x ], [ 1, %bb.u ]  ; 2 uses
  %i.oa = phi i64 [ %i.ov, %bb.x ], [ 0, %bb.u ]
  %.02733.i = phi i64 [ %i.om, %bb.x ], [ 0, %bb.u ]
  %i.ob = add nuw i64 %i.oa, 2                    ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.nv
  br i1 %i.oc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i219
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.ob
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !67
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.nz
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !67
  %i.oj = icmp slt i32 %i.of, %i.oi
  %i.ok = zext i1 %i.oj to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i219
  %i.ol = phi i64 [ 0, %.lr.ph.i219 ], [ %i.ok, %bb.v ]
  %i.om = add nuw i64 %i.ol, %i.nz                ; 3 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.om ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !67
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.02733.i ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.os = load i32, ptr %i.or, align 4, !tbaa !67
  %.not.i220 = icmp slt i32 %i.op, %i.os
  br i1 %.not.i220, label %bb.x, label %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit

bb.x:                                             ; preds = %bb.w
  %i.ot = load i64, ptr %i.oq, align 4, !tbaa !15
  %i.ou = load i64, ptr %i.on, align 4, !tbaa !15
  store i64 %i.ou, ptr %i.oq, align 4, !tbaa !15
  store i64 %i.ot, ptr %i.on, align 4, !tbaa !15
  %i.ov = shl i64 %i.om, 1                        ; 2 uses
  %i.ow = or disjoint i64 %i.ov, 1                ; 2 uses
  %i.ox = icmp ult i64 %i.ow, %i.nv
  br i1 %i.ox, label %.lr.ph.i219, label %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit

_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit:     ; preds = %bb.w, %bb.x, %bb.u
  %.sroa.034.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 8 uses
  %i.oy = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 2 uses
  %i.oz = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.oy ; 5 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 3 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !22 ; 2 uses
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.preheader248, !llvm.loop !51

.preheader248:                                    ; preds = %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit
  %i.pd = icmp sgt i32 %.sroa.034.0.extract.trunc, -1 ; 2 uses
  br i1 %i.pd, label %.lr.ph265, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph265, %.preheader248
  %i.pe = zext i32 %i.pb to i64
  %.not188 = icmp ugt i64 %8, %i.pe
  br i1 %.not188, label %bb.y, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, !llvm.loop !51

.lr.ph265:                                        ; preds = %.preheader248, %.lr.ph265
  %.0165264 = phi i32 [ %i.pi, %.lr.ph265 ], [ %.sroa.034.0.extract.trunc, %.preheader248 ]
  %i.pf = zext nneg i32 %.0165264 to i64
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.pf ; 2 uses
  store i32 -1, ptr %i.pg, align 4, !tbaa !64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !21 ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, -1
  br i1 %i.pj, label %.lr.ph265, label %._crit_edge, !llvm.loop !52

bb.y:                                             ; preds = %._crit_edge
  %sext = shl i64 %.sroa.0.0.copyload.i, 32
  %i.pk = ashr exact i64 %sext, 27
  %i.pl = getelementptr inbounds i8, ptr %i.jv, i64 %i.pk ; 6 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !65
  %i.po = sitofp i32 %i.pn to float
  %i.pp = tail call float @sqrtf(float noundef %i.po) #12
  %i.pq = fdiv float 1.000000e+00, %i.pp          ; 2 uses
  br i1 %i.pd, label %.lr.ph86.i, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232

.preheader.i223:                                  ; preds = %._crit_edge.i222
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pl, i64 28
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pl, i64 20
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  br i1 %.not245, label %.lr.ph103.split.i, label %.lr.ph103.split.us.i

.lr.ph103.split.us.i:                             ; preds = %.preheader.i223, %._crit_edge94.split.us.us.i
  %.064102.us.i = phi i32 [ %i.sl, %._crit_edge94.split.us.us.i ], [ %.sroa.034.0.extract.trunc, %.preheader.i223 ]
  %.067101.us.i = phi i32 [ %.1.lcssa.us.i, %._crit_edge94.split.us.us.i ], [ 0, %.preheader.i223 ] ; 2 uses
  %.068100.us.i = phi float [ %.169.lcssa.us.i, %._crit_edge94.split.us.us.i ], [ 0.000000e+00, %.preheader.i223 ] ; 2 uses
  %.07399.us.i = phi i32 [ %.174.lcssa.us.i, %._crit_edge94.split.us.us.i ], [ -1, %.preheader.i223 ] ; 2 uses
  %i.pw = zext nneg i32 %.064102.us.i to i64      ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.pw ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !15 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 4 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !15
  %.not87.us.i = icmp eq i32 %i.py, %i.qa
  br i1 %.not87.us.i, label %._crit_edge94.split.us.us.i, label %.lr.ph93.us.i

.lr.ph93.us.i:                                    ; preds = %.lr.ph103.split.us.i, %bb.ae
  %.06391.us.us.i = phi i32 [ %i.sh, %bb.ae ], [ %i.py, %.lr.ph103.split.us.i ] ; 2 uses
  %.190.us.us.i = phi i32 [ %.4.us.us.i, %bb.ae ], [ %.067101.us.i, %.lr.ph103.split.us.i ] ; 4 uses
  %.16989.us.us.i = phi float [ %.472.us.us.i, %bb.ae ], [ %.068100.us.i, %.lr.ph103.split.us.i ] ; 5 uses
  %.17488.us.us.i = phi i32 [ %.477.us.us.i, %bb.ae ], [ %.07399.us.i, %.lr.ph103.split.us.i ] ; 4 uses
  %i.qb = zext i32 %.06391.us.us.i to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !15
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !64 ; 3 uses
  %i.qh = icmp slt i32 %i.qg, 0
  br i1 %i.qh, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.lr.ph93.us.i
  %i.qi = zext nneg i32 %i.qg to i64              ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !15 ; 3 uses
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.qj, align 4, !tbaa !15
  %i.qm = load i32, ptr %i.pr, align 4, !tbaa !22
  %i.qn = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.qi ; 6 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !22
  %i.qq = add i32 %i.qp, %i.qm
  %i.qr = zext i32 %i.qq to i64
  %i.qs = icmp ult i64 %i.b, %i.qr
  br i1 %i.qs, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !65
  %i.qv = sitofp i32 %i.qu to float
  %i.qw = tail call float @sqrtf(float noundef %i.qv) #12
  %i.qx = fdiv float 1.000000e+00, %i.qw
  %i.qy = sitofp i32 %i.qk to float
  %i.qz = fadd float %i.pq, %i.qx
  %i.ra = fmul float %i.qz, %i.qy
  %i.rb = load float, ptr %i.ps, align 4, !tbaa !24 ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 28
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !24 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.rf = load float, ptr %i.re, align 4, !tbaa !23
  %i.rg = load float, ptr %i.pt, align 4, !tbaa !23
  %i.rh = fsub float %i.rf, %i.rg                 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qn, i64 20
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !23
  %i.rk = load float, ptr %i.pu, align 4, !tbaa !23
  %i.rl = fsub float %i.rj, %i.rk                 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !23
  %i.ro = load float, ptr %i.pv, align 4, !tbaa !23
  %i.rp = fsub float %i.rn, %i.ro                 ; 2 uses
  %i.rq = fmul float %i.rl, %i.rl
  %i.rr = tail call float @llvm.fmuladd.f32(float %i.rh, float %i.rh, float %i.rq)
  %i.rs = tail call float @llvm.fmuladd.f32(float %i.rp, float %i.rp, float %i.rr)
  %i.rt = tail call float @llvm.sqrt.f32(float %i.rs) ; 2 uses
  %i.ru = fadd float %i.rb, %i.rt
  %i.rv = fcmp olt float %i.ru, %i.rd
  br i1 %i.rv, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.rw = fadd float %i.rd, %i.rt                 ; 2 uses
  %i.rx = fcmp olt float %i.rw, %i.rb
  br i1 %i.rx, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ry = fadd float %i.rb, %i.rw
  %i.rz = fmul float %i.ry, 5.000000e-01
  br label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i

_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.sa = phi float [ %i.rz, %bb.ad ], [ %i.rd, %bb.ab ], [ %i.rb, %bb.ac ] ; 2 uses
  %i.sb = fcmp ogt float %i.sa, 0.000000e+00
  %i.sc = fdiv float %i.rb, %i.sa
  %i.sd = tail call float @llvm.fmuladd.f32(float %i.sc, float 4.000000e-01, float 1.000000e+00)
  %i.se = select i1 %i.sb, float %i.sd, float 1.000000e+00
  %i.sf = fmul float %i.ra, %i.se                 ; 2 uses
  %i.sg = fcmp ogt float %i.sf, %.16989.us.us.i   ; 3 uses
  %.275.us.us.i = select i1 %i.sg, i32 %i.qg, i32 %.17488.us.us.i
  %.270.us.us.i = select i1 %i.sg, float %i.sf, float %.16989.us.us.i
  %.2.us.us.i = select i1 %i.sg, i32 %i.qk, i32 %.190.us.us.i
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i, %bb.aa, %bb.z, %.lr.ph93.us.i
  %.477.us.us.i = phi i32 [ %.17488.us.us.i, %.lr.ph93.us.i ], [ %.17488.us.us.i, %bb.z ], [ %.275.us.us.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i ], [ %.17488.us.us.i, %bb.aa ] ; 2 uses
  %.472.us.us.i = phi float [ %.16989.us.us.i, %.lr.ph93.us.i ], [ %.16989.us.us.i, %bb.z ], [ %.270.us.us.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i ], [ %.16989.us.us.i, %bb.aa ] ; 2 uses
  %.4.us.us.i = phi i32 [ %.190.us.us.i, %.lr.ph93.us.i ], [ %.190.us.us.i, %bb.z ], [ %.2.us.us.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.us.us.i ], [ %.190.us.us.i, %bb.aa ] ; 2 uses
  %i.sh = add i32 %.06391.us.us.i, 1              ; 2 uses
  %i.si = load i32, ptr %i.pz, align 4, !tbaa !15
  %.not.us.us.i = icmp eq i32 %i.sh, %i.si
  br i1 %.not.us.us.i, label %._crit_edge94.split.us.us.i, label %.lr.ph93.us.i, !llvm.loop !53

._crit_edge94.split.us.us.i:                      ; preds = %bb.ae, %.lr.ph103.split.us.i
  %.174.lcssa.us.i = phi i32 [ %.07399.us.i, %.lr.ph103.split.us.i ], [ %.477.us.us.i, %bb.ae ] ; 2 uses
  %.169.lcssa.us.i = phi float [ %.068100.us.i, %.lr.ph103.split.us.i ], [ %.472.us.us.i, %bb.ae ]
  %.1.lcssa.us.i = phi i32 [ %.067101.us.i, %.lr.ph103.split.us.i ], [ %.4.us.us.i, %bb.ae ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.pw
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !21 ; 2 uses
  %i.sm = icmp sgt i32 %i.sl, -1
  br i1 %i.sm, label %.lr.ph103.split.us.i, label %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, !llvm.loop !54

.lr.ph86.i:                                       ; preds = %bb.y, %._crit_edge.i222
  %.06684.i = phi i32 [ %i.su, %._crit_edge.i222 ], [ %.sroa.034.0.extract.trunc, %bb.y ]
  %i.sn = zext nneg i32 %.06684.i to i64          ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.sn ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !15 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 4 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !15 ; 2 uses
  %.not8182.i = icmp eq i32 %i.sp, %i.sr
  br i1 %.not8182.i, label %._crit_edge.i222, label %.lr.ph.i221

._crit_edge.i222:                                 ; preds = %bb.ag, %.lr.ph86.i
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.sn
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !21 ; 2 uses
  %i.sv = icmp sgt i32 %i.su, -1
  br i1 %i.sv, label %.lr.ph86.i, label %.preheader.i223, !llvm.loop !55

.lr.ph.i221:                                      ; preds = %.lr.ph86.i, %bb.ag
  %i.sw = phi i32 [ %i.tk, %bb.ag ], [ %i.sr, %.lr.ph86.i ]
  %.06583.i = phi i32 [ %i.tl, %bb.ag ], [ %i.sp, %.lr.ph86.i ] ; 2 uses
  %i.sx = zext i32 %.06583.i to i64               ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !15
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ta
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !64 ; 2 uses
  %i.td = icmp sgt i32 %i.tc, -1
  br i1 %i.td, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i221
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.sx
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !15
  %i.tg = zext nneg i32 %i.tc to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.tg ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !15
  %i.tj = add i32 %i.ti, %i.tf
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !15
  %.pre.i226 = load i32, ptr %i.sq, align 4, !tbaa !15
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i221
  %i.tk = phi i32 [ %.pre.i226, %bb.af ], [ %i.sw, %.lr.ph.i221 ] ; 2 uses
  %i.tl = add i32 %.06583.i, 1                    ; 2 uses
  %.not81.i = icmp eq i32 %i.tl, %i.tk
  br i1 %.not81.i, label %._crit_edge.i222, label %.lr.ph.i221, !llvm.loop !56

.lr.ph103.split.i:                                ; preds = %.preheader.i223, %._crit_edge94.split.i
  %.064102.i = phi i32 [ %i.tt, %._crit_edge94.split.i ], [ %.sroa.034.0.extract.trunc, %.preheader.i223 ]
  %.067101.i = phi i32 [ %.1.lcssa.i225, %._crit_edge94.split.i ], [ 0, %.preheader.i223 ] ; 2 uses
  %.068100.i = phi float [ %.169.lcssa.i, %._crit_edge94.split.i ], [ 0.000000e+00, %.preheader.i223 ] ; 2 uses
  %.07399.i = phi i32 [ %.174.lcssa.i, %._crit_edge94.split.i ], [ -1, %.preheader.i223 ] ; 2 uses
  %i.tm = zext nneg i32 %.064102.i to i64         ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.tm ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !15 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 4 ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !15
  %.not87.i = icmp eq i32 %i.to, %i.tq
  br i1 %.not87.i, label %._crit_edge94.split.i, label %.lr.ph93.i

._crit_edge94.split.i:                            ; preds = %bb.ak, %.lr.ph103.split.i
  %.174.lcssa.i = phi i32 [ %.07399.i, %.lr.ph103.split.i ], [ %.477.i, %bb.ak ] ; 2 uses
  %.169.lcssa.i = phi float [ %.068100.i, %.lr.ph103.split.i ], [ %.472.i, %bb.ak ]
  %.1.lcssa.i225 = phi i32 [ %.067101.i, %.lr.ph103.split.i ], [ %.4.i, %bb.ak ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.tm
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !21 ; 2 uses
  %i.tu = icmp sgt i32 %i.tt, -1
  br i1 %i.tu, label %.lr.ph103.split.i, label %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, !llvm.loop !54

.lr.ph93.i:                                       ; preds = %.lr.ph103.split.i, %bb.ak
  %.06391.i = phi i32 [ %i.uw, %bb.ak ], [ %i.to, %.lr.ph103.split.i ] ; 2 uses
  %.190.i = phi i32 [ %.4.i, %bb.ak ], [ %.067101.i, %.lr.ph103.split.i ] ; 4 uses
  %.16989.i = phi float [ %.472.i, %bb.ak ], [ %.068100.i, %.lr.ph103.split.i ] ; 5 uses
  %.17488.i = phi i32 [ %.477.i, %bb.ak ], [ %.07399.i, %.lr.ph103.split.i ] ; 4 uses
  %i.tv = zext i32 %.06391.i to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !15
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !64 ; 3 uses
  %i.ub = icmp slt i32 %i.ua, 0
  br i1 %i.ub, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph93.i
  %i.uc = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.uc ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !15 ; 3 uses
  %i.uf = icmp eq i32 %i.ue, 0
  br i1 %i.uf, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ud, align 4, !tbaa !15
  %i.ug = load i32, ptr %i.pr, align 4, !tbaa !22
  %i.uh = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.uc ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !22
  %i.uk = add i32 %i.uj, %i.ug
  %i.ul = zext i32 %i.uk to i64
  %i.um = icmp ult i64 %i.b, %i.ul
  br i1 %i.um, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.un = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !65
  %i.up = sitofp i32 %i.uo to float
  %i.uq = tail call float @sqrtf(float noundef %i.up) #12
  %i.ur = fdiv float 1.000000e+00, %i.uq
  %i.us = sitofp i32 %i.ue to float
  %i.ut = fadd float %i.pq, %i.ur
  %i.uu = fmul float %i.ut, %i.us                 ; 2 uses
  %i.uv = fcmp ogt float %i.uu, %.16989.i         ; 3 uses
  %.275.i = select i1 %i.uv, i32 %i.ua, i32 %.17488.i
  %.270.i = select i1 %i.uv, float %i.uu, float %.16989.i
  %.2.i = select i1 %i.uv, i32 %i.ue, i32 %.190.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %.lr.ph93.i
  %.477.i = phi i32 [ %.17488.i, %.lr.ph93.i ], [ %.17488.i, %bb.ah ], [ %.275.i, %bb.aj ], [ %.17488.i, %bb.ai ] ; 2 uses
  %.472.i = phi float [ %.16989.i, %.lr.ph93.i ], [ %.16989.i, %bb.ah ], [ %.270.i, %bb.aj ], [ %.16989.i, %bb.ai ] ; 2 uses
  %.4.i = phi i32 [ %.190.i, %.lr.ph93.i ], [ %.190.i, %bb.ah ], [ %.2.i, %bb.aj ], [ %.190.i, %bb.ai ] ; 2 uses
  %i.uw = add i32 %.06391.i, 1                    ; 2 uses
  %i.ux = load i32, ptr %i.tp, align 4, !tbaa !15
  %.not.i224 = icmp eq i32 %i.uw, %i.ux
  br i1 %.not.i224, label %._crit_edge94.split.i, label %.lr.ph93.i, !llvm.loop !53

_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit: ; preds = %._crit_edge94.split.us.us.i, %._crit_edge94.split.i
  %.073.lcssa.i = phi i32 [ %.174.lcssa.i, %._crit_edge94.split.i ], [ %.174.lcssa.us.i, %._crit_edge94.split.us.us.i ] ; 3 uses
  %.067.lcssa.i = phi i32 [ %.1.lcssa.i225, %._crit_edge94.split.i ], [ %.1.lcssa.us.i, %._crit_edge94.split.us.us.i ] ; 2 uses
  %i.uy = icmp eq i32 %.073.lcssa.i, -1
  br i1 %i.uy, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.preheader246, !llvm.loop !51

.preheader246:                                    ; preds = %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, %.preheader246
  %.0164 = phi i32 [ %i.vc, %.preheader246 ], [ %.sroa.034.0.extract.trunc, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit ]
  %i.uz = zext nneg i32 %.0164 to i64
  %i.va = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.uz ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !21 ; 2 uses
  %i.vd = icmp sgt i32 %i.vc, -1
  br i1 %i.vd, label %.preheader246, label %bb.al, !llvm.loop !57

bb.al:                                            ; preds = %.preheader246
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  store i32 %.073.lcssa.i, ptr %i.ve, align 4, !tbaa !21
  %i.vf = zext nneg i32 %.073.lcssa.i to i64
  %i.vg = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.vf ; 5 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !22
  %i.vj = load i32, ptr %i.pa, align 4, !tbaa !22
  %i.vk = add i32 %i.vj, %i.vi
  store i32 %i.vk, ptr %i.pa, align 4, !tbaa !22
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 12 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !65
  %i.vn = getelementptr inbounds nuw i8, ptr %i.oz, i64 12 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !65
  %i.vp = add i32 %i.vo, %i.vm                    ; 2 uses
  %i.vq = icmp ugt i32 %i.vp, %.067.lcssa.i
  %i.vr = sub nuw i32 %i.vp, %.067.lcssa.i
  %spec.select = select i1 %i.vq, i32 %i.vr, i32 1
  store i32 %spec.select, ptr %i.vn, align 4, !tbaa !65
  store i32 0, ptr %i.vh, align 4, !tbaa !22
  store i32 0, ptr %i.vl, align 4, !tbaa !65
  br i1 %.not245, label %.lr.ph269.preheader, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.vs = getelementptr inbounds nuw i8, ptr %i.oz, i64 28 ; 2 uses
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !24 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vg, i64 28 ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !24 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vx = getelementptr inbounds nuw i8, ptr %i.oz, i64 16 ; 3 uses
  %i.vy = load <2 x float>, ptr %i.vw, align 4, !tbaa !23 ; 2 uses
  %i.vz = load <2 x float>, ptr %i.vx, align 4, !tbaa !23 ; 2 uses
  %i.wa = fsub <2 x float> %i.vy, %i.vz           ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !23 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.oz, i64 24 ; 3 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !23 ; 2 uses
  %i.wf = fsub float %i.wc, %i.we                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.wa, %i.wa
  %i.wg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.wh = extractelement <2 x float> %i.wa, i64 0 ; 2 uses
  %i.wi = tail call float @llvm.fmuladd.f32(float %i.wh, float %i.wh, float %i.wg)
  %i.wj = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.wf, float %i.wi) ; 2 uses
  %i.wk = tail call float @llvm.sqrt.f32(float %i.wj) ; 3 uses
  %i.wl = fadd float %i.vt, %i.wk
  %i.wm = fcmp olt float %i.wl, %i.vv
  br i1 %i.wm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store <2 x float> %i.vy, ptr %i.vx, align 4, !tbaa !23
  store float %i.wc, ptr %i.wd, align 4, !tbaa !23
  br label %.sink.split.i

bb.ao:                                            ; preds = %bb.am
  %i.wn = fadd float %i.vv, %i.wk                 ; 3 uses
  %i.wo = fcmp ogt float %i.wn, %i.vt
  br i1 %i.wo, label %bb.ap, label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.wp = fcmp ogt float %i.wj, 0.000000e+00
  %i.wq = fsub float %i.wn, %i.vt
  %i.wr = fmul nnan float %i.wk, 2.000000e+00
  %i.ws = fdiv float %i.wq, %i.wr
  %i.wt = select i1 %i.wp, float %i.ws, float 0.000000e+00 ; 2 uses
  %i.wu = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.wv = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ww = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wa, <2 x float> %i.wv, <2 x float> %i.vz)
  store <2 x float> %i.ww, ptr %i.vx, align 4, !tbaa !23
  %i.wx = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.wt, float %i.we)
  store float %i.wx, ptr %i.wd, align 4, !tbaa !23
  %i.wy = fadd float %i.vt, %i.wn
  %i.wz = fmul float %i.wy, 5.000000e-01
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ap, %bb.an
  %.sink.i = phi float [ %i.wz, %bb.ap ], [ %i.vv, %bb.an ]
  store float %.sink.i, ptr %i.vs, align 4, !tbaa !24
  br label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit

_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit: ; preds = %bb.ao, %.sink.split.i
  store float 0.000000e+00, ptr %i.vu, align 4, !tbaa !24
  br label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.al, %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit
  br label %.lr.ph269

._crit_edge270:                                   ; preds = %.lr.ph269
  %i.xa = load i32, ptr %i.vn, align 4, !tbaa !65 ; 2 uses
  %.sroa.19.0.insert.ext = zext i32 %i.xa to i64
  %.sroa.19.0.insert.shift = shl nuw i64 %.sroa.19.0.insert.ext, 32
  %.sroa.034.0.insert.insert = or disjoint i64 %.sroa.19.0.insert.shift, %i.oy ; 2 uses
  store i64 %.sroa.034.0.insert.insert, ptr %i.nw, align 4, !tbaa !15
  %.not17.i227 = icmp eq i64 %i.nv, 0
  br i1 %.not17.i227, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %._crit_edge270, %bb.aq
  %.018.i229 = phi i64 [ %i.xc, %bb.aq ], [ %i.nv, %._crit_edge270 ] ; 2 uses
  %i.xb = add i64 %.018.i229, -1
  %i.xc = lshr i64 %i.xb, 1                       ; 3 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.xc ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !67
  %i.xg = icmp sgt i32 %i.xf, %i.xa
  br i1 %i.xg, label %bb.aq, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232

bb.aq:                                            ; preds = %.lr.ph.i228
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.018.i229
  %i.xi = load i64, ptr %i.xd, align 4, !tbaa !15
  store i64 %i.xi, ptr %i.xh, align 4, !tbaa !15
  store i64 %.sroa.034.0.insert.insert, ptr %i.xd, align 4, !tbaa !15
  %.not.i231 = icmp eq i64 %i.xc, 0
  br i1 %.not.i231, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.lr.ph.i228, !llvm.loop !49

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %.lr.ph269
  %.0163267 = phi i32 [ %i.xm, %.lr.ph269 ], [ %.sroa.034.0.extract.trunc, %.lr.ph269.preheader ]
  %i.xj = zext nneg i32 %.0163267 to i64
  %i.xk = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.xj ; 2 uses
  store i32 %.sroa.034.0.extract.trunc, ptr %i.xk, align 4, !tbaa !64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !21 ; 2 uses
  %i.xn = icmp sgt i32 %i.xm, -1
  br i1 %i.xn, label %.lr.ph269, label %._crit_edge270, !llvm.loop !58

_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232: ; preds = %.lr.ph.i228, %bb.aq, %bb.y, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, %._crit_edge270, %._crit_edge, %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit
  %.3172 = phi i64 [ %i.nv, %._crit_edge ], [ %i.nv, %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit ], [ %i.nv, %bb.y ], [ %i.nv, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit ], [ 1, %._crit_edge270 ], [ %.1170272, %bb.aq ], [ %.1170272, %.lr.ph.i228 ] ; 2 uses
  %.not = icmp eq i64 %.3172, 0
  br i1 %.not, label %._crit_edge274, label %bb.u

._crit_edge274:                                   ; preds = %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232
  %.not186 = icmp eq ptr %5, null
  br i1 %.not186, label %bb.aw, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %._crit_edge274
  %xtraiter432 = and i64 %4, 1
  %i.xo = icmp eq i64 %4, 1
  br i1 %i.xo, label %.lr.ph277.epil.preheader, label %.lr.ph277.preheader.new

.lr.ph277.preheader.new:                          ; preds = %.lr.ph277.preheader
  %unroll_iter437 = and i64 %4, -2
  br label %.lr.ph277

._crit_edge274.thread:                            ; preds = %bb.p
  br i1 %.not186372, label %.lr.ph.i233, label %._crit_edge278

._crit_edge278.loopexit.unr-lcssa:                ; preds = %bb.au
  %lcmp.mod434.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod434.not, label %._crit_edge278, label %.lr.ph277.epil.preheader

.lr.ph277.epil.preheader:                         ; preds = %._crit_edge278.loopexit.unr-lcssa, %.lr.ph277.preheader
  %.0160276.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %i.yi, %._crit_edge278.loopexit.unr-lcssa ] ; 2 uses
  %.0161275.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %.1162.1, %._crit_edge278.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod436 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.xp = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0160276.epil.init
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !22
  %.not187.epil = icmp eq i32 %i.xr, 0
  br i1 %.not187.epil, label %._crit_edge278, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph277.epil.preheader
  %i.xs = trunc i64 %.0160276.epil.init to i32
  %i.xt = add i64 %.0161275.epil.init, 1
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0161275.epil.init
  store i32 %i.xs, ptr %i.xu, align 4, !tbaa !15
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge278.loopexit.unr-lcssa, %bb.ar, %.lr.ph277.epil.preheader, %._crit_edge274.thread
  %.0161.lcssa = phi i64 [ 0, %._crit_edge274.thread ], [ %.1162.1, %._crit_edge278.loopexit.unr-lcssa ], [ %i.xt, %bb.ar ], [ %.0161275.epil.init, %.lr.ph277.epil.preheader ]
  tail call fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr noundef %i.jv, ptr noundef %i.ka, i64 noundef %.0161.lcssa, i64 noundef %8, i64 noundef %i.b, i32 noundef 0)
  br label %bb.aw

.lr.ph277:                                        ; preds = %bb.au, %.lr.ph277.preheader.new
  %.0160276 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %i.yi, %bb.au ] ; 4 uses
  %.0161275 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %.1162.1, %bb.au ] ; 3 uses
  %niter438 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %niter438.next.1, %bb.au ]
  %i.xv = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0160276
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !22
  %.not187 = icmp eq i32 %i.xx, 0
  br i1 %.not187, label %.lr.ph277.1, label %bb.as

bb.as:                                            ; preds = %.lr.ph277
  %i.xy = trunc i64 %.0160276 to i32
  %i.xz = add i64 %.0161275, 1
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0161275
  store i32 %i.xy, ptr %i.ya, align 4, !tbaa !15
  br label %.lr.ph277.1

.lr.ph277.1:                                      ; preds = %.lr.ph277, %bb.as
  %.1162 = phi i64 [ %i.xz, %bb.as ], [ %.0161275, %.lr.ph277 ] ; 3 uses
  %i.yb = or disjoint i64 %.0160276, 1            ; 2 uses
  %i.yc = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !22
  %.not187.1 = icmp eq i32 %i.ye, 0
  br i1 %.not187.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph277.1
  %i.yf = trunc i64 %i.yb to i32
  %i.yg = add i64 %.1162, 1
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.1162
  store i32 %i.yf, ptr %i.yh, align 4, !tbaa !15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph277.1
  %.1162.1 = phi i64 [ %i.yg, %bb.at ], [ %.1162, %.lr.ph277.1 ] ; 3 uses
  %i.yi = add nuw i64 %.0160276, 2                ; 2 uses
  %niter438.next.1 = add nuw i64 %niter438, 2     ; 2 uses
  %niter438.ncmp.1 = icmp eq i64 %niter438.next.1, %unroll_iter437
  br i1 %niter438.ncmp.1, label %._crit_edge278.loopexit.unr-lcssa, label %.lr.ph277, !llvm.loop !59

bb.av:                                            ; preds = %bb.a, %bb.b, %bb.c, %bb.o, %bb.n, %bb.m, %._crit_edge189.i, %._crit_edge161.thread.i, %.noexc206, %.noexc205, %._crit_edge155.i, %_ZN7meshoptL20filterClusterIndicesEPjS0_PKjS2_mPhmm.exit
  %i.yj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  resume { ptr, i32 } %i.yj

bb.aw:                                            ; preds = %._crit_edge278, %._crit_edge274
  br i1 %.not.i, label %.lr.ph.i233, label %.lr.ph287

.lr.ph.i233:                                      ; preds = %bb.aw, %._crit_edge274.thread, %bb.ba
  %.0159.lcssa = phi i64 [ 0, %bb.aw ], [ 0, %._crit_edge274.thread ], [ %.1, %bb.ba ]
  %i.yk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !14
  invoke void %i.yk(ptr noundef %i.ym)
          to label %.lr.ph.i233.1 unwind label %bb.ax

.lr.ph.i233.1:                                    ; preds = %.lr.ph.i233
  %i.yn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yo = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !14
  invoke void %i.yn(ptr noundef %i.yp)
          to label %.lr.ph.i233.2 unwind label %bb.ax

.lr.ph.i233.2:                                    ; preds = %.lr.ph.i233.1
  %i.yq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !14
  invoke void %i.yq(ptr noundef %i.ys)
          to label %.lr.ph.i233.3 unwind label %bb.ax

.lr.ph.i233.3:                                    ; preds = %.lr.ph.i233.2
  %i.yt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yu = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !14
  invoke void %i.yt(ptr noundef %i.yv)
          to label %.lr.ph.i233.4 unwind label %bb.ax

.lr.ph.i233.4:                                    ; preds = %.lr.ph.i233.3
  %i.yw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !14
  invoke void %i.yw(ptr noundef %i.yy)
          to label %.lr.ph.i233.5 unwind label %bb.ax

.lr.ph.i233.5:                                    ; preds = %.lr.ph.i233.4
  %i.yz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.za = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !14
  invoke void %i.yz(ptr noundef %i.zb)
          to label %.lr.ph.i233.6 unwind label %bb.ax

.lr.ph.i233.6:                                    ; preds = %.lr.ph.i233.5
  %i.zc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !14
  invoke void %i.zc(ptr noundef %i.ze)
          to label %.lr.ph.i233.7 unwind label %bb.ax

.lr.ph.i233.7:                                    ; preds = %.lr.ph.i233.6
  %i.zf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !14
  invoke void %i.zf(ptr noundef %i.zh)
          to label %.lr.ph.i233.8 unwind label %bb.ax

.lr.ph.i233.8:                                    ; preds = %.lr.ph.i233.7
  %i.zi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !14
  invoke void %i.zi(ptr noundef %i.zk)
          to label %.lr.ph.i233.9 unwind label %bb.ax

.lr.ph.i233.9:                                    ; preds = %.lr.ph.i233.8
  %i.zl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zm = load ptr, ptr %9, align 8, !tbaa !14
  invoke void %i.zl(ptr noundef %i.zm)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.ax

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i233.9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret i64 %.0159.lcssa

bb.ax:                                            ; preds = %.lr.ph.i233.9, %.lr.ph.i233.8, %.lr.ph.i233.7, %.lr.ph.i233.6, %.lr.ph.i233.5, %.lr.ph.i233.4, %.lr.ph.i233.3, %.lr.ph.i233.2, %.lr.ph.i233.1, %.lr.ph.i233
  %i.zn = landingpad { ptr, i32 }
          catch ptr null
  %i.zo = extractvalue { ptr, i32 } %i.zn, 0
  tail call void @__clang_call_terminate(ptr %i.zo) #13
  unreachable

.lr.ph287:                                        ; preds = %bb.aw, %bb.ba
  %.0158285 = phi i64 [ %i.aad, %bb.ba ], [ 0, %bb.aw ] ; 3 uses
  %.0159284 = phi i64 [ %.1, %bb.ba ], [ 0, %bb.aw ] ; 3 uses
  %i.zp = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0158285
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !22
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph287
  %i.zt = trunc i64 %.0158285 to i32              ; 2 uses
  %i.zu = icmp sgt i32 %i.zt, -1
  br i1 %i.zu, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %bb.ay
  %i.zv = trunc i64 %.0159284 to i32
  br label %bb.az

._crit_edge283:                                   ; preds = %bb.az, %bb.ay
  %i.zw = add i64 %.0159284, 1
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph282, %bb.az
  %.0280 = phi i32 [ %i.zt, %.lr.ph282 ], [ %i.aab, %bb.az ]
  %i.zx = zext nneg i32 %.0280 to i64             ; 2 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zx
  store i32 %i.zv, ptr %i.zy, align 4, !tbaa !15
  %i.zz = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.zx
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !21 ; 2 uses
  %i.aac = icmp sgt i32 %i.aab, -1
  br i1 %i.aac, label %bb.az, label %._crit_edge283, !llvm.loop !60

bb.ba:                                            ; preds = %.lr.ph287, %._crit_edge283
  %.1 = phi i64 [ %.0159284, %.lr.ph287 ], [ %i.zw, %._crit_edge283 ] ; 2 uses
  %i.aad = add nuw i64 %.0158285, 1               ; 2 uses
  %exitcond308.not = icmp eq i64 %i.aad, %4
  br i1 %exitcond308.not, label %.lr.ph.i233, label %.lr.ph287, !llvm.loop !61
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not9712 = icmp eq i64 %2, 0
  br i1 %.not9712, label %_ZN7meshoptL9mergeLeafEPNS_12ClusterGroupEPjmmm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %tailrecurse
  %.tr8815 = phi i32 [ %i.hw, %tailrecurse ], [ %5, %bb.a ] ; 2 uses
  %.tr8414 = phi i64 [ %.pre-phi, %tailrecurse ], [ %2, %bb.a ] ; 13 uses
  %.tr8313 = phi ptr [ %i.hx, %tailrecurse ], [ %1, %bb.a ] ; 16 uses
  %xtraiter = and i64 %.tr8414, 3                 ; 3 uses
  %i.c = icmp ult i64 %.tr8414, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.tr8414, -4
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.06691.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.unr-lcssa ]
  %.07190.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.06691.epil = phi i64 [ %i.k, %.lr.ph.epil ], [ %.06691.epil.init, %.lr.ph.epil.preheader ]
  %.07190.epil = phi i64 [ %i.l, %.lr.ph.epil ], [ %.07190.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.07190.epil
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %i.j = zext i32 %i.i to i64
  %i.k = add i64 %.06691.epil, %i.j               ; 2 uses
  %i.l = add nuw i64 %.07190.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa20 = phi i64 [ %i.aw, %._crit_edge.unr-lcssa ], [ %i.k, %.lr.ph.epil ]
  %i.m = icmp ule i64 %.lcssa20, %4
  %i.n = icmp ult i64 %.tr8414, 9
  %or.cond78 = or i1 %i.n, %i.m
  br i1 %or.cond78, label %.lr.ph.i, label %bb.n

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06691 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %.07190 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.07190
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %i.u = zext i32 %i.t to i64
  %i.v = add i64 %.06691, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.07190
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add i64 %i.v, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.07190
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = zext i32 %i.al to i64
  %i.an = add i64 %i.ae, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.07190
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22
  %i.av = zext i32 %i.au to i64
  %i.aw = add i64 %i.an, %i.av                    ; 3 uses
  %i.ax = add nuw i64 %.07190, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !69

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.m
  %.05773.i = phi i64 [ %i.eq, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.05773.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15 ; 3 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ba ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22 ; 4 uses
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i32 %i.bd to i64
  %.not.i = icmp ugt i64 %3, %i.bf
  %or.cond.i = and i1 %i.be, %.not.i
  br i1 %or.cond.i, label %.preheader68.i, label %bb.m

.preheader68.i:                                   ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  %.not64.i = icmp eq i32 %.2.i, -1
  br i1 %.not64.i, label %bb.m, label %.preheader.i

bb.c:                                             ; preds = %bb.h, %.preheader68.i
  %.05271.i = phi i64 [ 0, %.preheader68.i ], [ %i.cz, %bb.h ] ; 2 uses
  %.05370.i = phi i32 [ -1, %.preheader68.i ], [ %.2.i, %bb.h ] ; 3 uses
  %.05469.i = phi float [ -1.000000e+00, %.preheader68.i ], [ %.256.i, %bb.h ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.05271.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15 ; 3 uses
  %i.bm = icmp eq i32 %i.az, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = add i32 %i.bq, %i.bd
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp ult i64 %4, %i.bt
  %or.cond67.i = or i1 %i.br, %i.bu
  br i1 %or.cond67.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load float, ptr %i.bg, align 4, !tbaa !24 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !24 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bz = load float, ptr %i.by, align 4, !tbaa !23
  %i.ca = load float, ptr %i.bh, align 4, !tbaa !23
  %i.cb = fsub float %i.bz, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = load float, ptr %i.bi, align 4, !tbaa !23
  %i.cf = fsub float %i.cd, %i.ce                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !23
  %i.ci = load float, ptr %i.bj, align 4, !tbaa !23
  %i.cj = fsub float %i.ch, %i.ci                 ; 2 uses
  %i.ck = fmul float %i.cf, %i.cf
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.ck)
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cl)
  %i.cn = tail call float @llvm.sqrt.f32(float %i.cm) ; 2 uses
  %i.co = fadd float %i.bv, %i.cn
  %i.cp = fcmp olt float %i.co, %i.bx
  br i1 %i.cp, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = fadd float %i.bx, %i.cn                 ; 2 uses
  %i.cr = fcmp olt float %i.cq, %i.bv
  br i1 %i.cr, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = fadd float %i.bv, %i.cq
  %i.ct = fmul float %i.cs, 5.000000e-01
  br label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i

_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.cu = phi float [ %i.ct, %bb.g ], [ %i.bx, %bb.e ], [ %i.bv, %bb.f ] ; 2 uses
  %i.cv = fcmp ogt float %i.cu, 0.000000e+00
  %i.cw = fdiv float %i.bv, %i.cu
  %i.cx = select i1 %i.cv, float %i.cw, float 0.000000e+00 ; 2 uses
  %i.cy = fcmp ogt float %i.cx, %.05469.i         ; 2 uses
  %.155.i = select i1 %i.cy, float %i.cx, float %.05469.i
  %.1.i = select i1 %i.cy, i32 %i.bl, i32 %.05370.i
  br label %bb.h

bb.h:                                             ; preds = %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i, %bb.d, %bb.c
  %.256.i = phi float [ %.155.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i ], [ %.05469.i, %bb.c ], [ %.05469.i, %bb.d ]
  %.2.i = phi i32 [ %.1.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i ], [ %.05370.i, %bb.c ], [ %.05370.i, %bb.d ] ; 4 uses
  %i.cz = add nuw i64 %.05271.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cz, %.tr8414
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !70

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi i32 [ %i.dd, %.preheader.i ], [ %.2.i, %bb.b ]
  %i.da = zext i32 %.0.i to i64
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !21 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %.preheader.i, label %bb.i, !llvm.loop !71

bb.i:                                             ; preds = %.preheader.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.az, ptr %i.df, align 4, !tbaa !21
  %i.dg = sext i32 %.2.i to i64
  %i.dh = getelementptr inbounds [32 x i8], ptr %0, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22
  %i.dk = add i32 %i.dj, %i.bd
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !22
  store i32 0, ptr %i.bc, align 4, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 28 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !24 ; 4 uses
  %i.dn = load float, ptr %i.bg, align 4, !tbaa !24 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %i.dp = load <2 x float>, ptr %i.bh, align 4, !tbaa !23 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.do, align 4, !tbaa !23 ; 2 uses
  %i.dr = fsub <2 x float> %i.dp, %i.dq           ; 4 uses
  %i.ds = load float, ptr %i.bj, align 4, !tbaa !23 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 3 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !23 ; 2 uses
  %i.dv = fsub float %i.ds, %i.du                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dr, %i.dr
  %i.dw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dx = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.dw)
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.dy) ; 2 uses
  %i.ea = tail call float @llvm.sqrt.f32(float %i.dz) ; 3 uses
  %i.eb = fadd float %i.dm, %i.ea
  %i.ec = fcmp olt float %i.eb, %i.dn
  br i1 %i.ec, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store <2 x float> %i.dp, ptr %i.do, align 4, !tbaa !23
  store float %i.ds, ptr %i.dt, align 4, !tbaa !23
  br label %.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.ed = fadd float %i.dn, %i.ea                 ; 3 uses
  %i.ee = fcmp ogt float %i.ed, %i.dm
  br i1 %i.ee, label %bb.l, label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ef = fcmp ogt float %i.dz, 0.000000e+00
  %i.eg = fsub float %i.ed, %i.dm
  %i.eh = fmul nnan float %i.ea, 2.000000e+00
  %i.ei = fdiv float %i.eg, %i.eh
  %i.ej = select i1 %i.ef, float %i.ei, float 0.000000e+00 ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.el, <2 x float> %i.dq)
  store <2 x float> %i.em, ptr %i.do, align 4, !tbaa !23
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.ej, float %i.du)
  store float %i.en, ptr %i.dt, align 4, !tbaa !23
  %i.eo = fadd float %i.dm, %i.ed
  %i.ep = fmul float %i.eo, 5.000000e-01
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.l, %bb.j
  %.sink.i.i = phi float [ %i.ep, %bb.l ], [ %i.dn, %bb.j ]
  store float %.sink.i.i, ptr %i.dl, align 4, !tbaa !24
  br label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i

_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i: ; preds = %.sink.split.i.i, %bb.k
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i, %bb.b, %.lr.ph.i
  %i.eq = add nuw i64 %.05773.i, 1                ; 2 uses
  %exitcond75.not.i = icmp eq i64 %i.eq, %.tr8414
  br i1 %exitcond75.not.i, label %_ZN7meshoptL9mergeLeafEPNS_12ClusterGroupEPjmmm.exit, label %.lr.ph.i, !llvm.loop !72

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.p

.new:                                             ; preds = %bb.p
  store <2 x float> %i.hc, ptr %i.a, align 8, !tbaa !23
  store float %i.hj, ptr %i.b, align 8, !tbaa !23
  %i.er = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fcmp ult <2 x float> %i.es, %i.ho       ; 2 uses
  %i.eu = extractelement <2 x i1> %i.et, i64 0
  %i.ev = extractelement <2 x i1> %i.et, i64 1
  %or.cond81 = select i1 %i.ev, i1 true, i1 %i.eu
  %i.ew = extractelement <2 x float> %i.ho, i64 0
  %i.ex = extractelement <2 x float> %i.ho, i64 1
  %i.ey = fcmp oge float %i.ex, %i.ew
  %i.ez = select i1 %i.ey, i64 1, i64 2
  %i.fa = select i1 %or.cond81, i64 %i.ez, i64 0  ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !23 ; 3 uses
  %xtraiter30 = and i64 %.tr8414, 1
  %unroll_iter35 = and i64 %.tr8414, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.new
  %.021.i = phi i64 [ 0, %.new ], [ %i.gb, %bb.o ] ; 2 uses
  %.01920.i = phi i64 [ 0, %.new ], [ %i.gc, %bb.o ] ; 3 uses
  %niter36 = phi i64 [ 0, %.new ], [ %niter36.next.1, %bb.o ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.01920.i ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !15 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fa
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !23
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.021.i ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !15
  store i32 %i.fe, ptr %i.fk, align 4, !tbaa !15
  store i32 %i.fl, ptr %i.fd, align 4, !tbaa !15
  %i.fm = fcmp olt float %i.fj, %i.fc
  %i.fn = zext i1 %i.fm to i64
  %i.fo = add i64 %.021.i, %i.fn                  ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.01920.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !15 ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fa
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !23
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %i.fo ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !15
  store i32 %i.fr, ptr %i.fx, align 4, !tbaa !15
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !15
  %i.fz = fcmp olt float %i.fw, %i.fc
  %i.ga = zext i1 %i.fz to i64
  %i.gb = add i64 %i.fo, %i.ga                    ; 4 uses
  %i.gc = add nuw i64 %.01920.i, 2                ; 2 uses
  %niter36.next.1 = add nuw i64 %niter36, 2       ; 2 uses
  %niter36.ncmp.1 = icmp eq i64 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1, label %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa, label %bb.o, !llvm.loop !73

_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod32.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa
  %lcmp.mod34 = trunc i64 %.tr8414 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !15 ; 2 uses
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.fa
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !23
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %i.gb ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !15
  store i32 %i.ge, ptr %i.gk, align 4, !tbaa !15
  store i32 %i.gl, ptr %i.gd, align 4, !tbaa !15
  %i.gm = fcmp olt float %i.gj, %i.fc
  %i.gn = zext i1 %i.gm to i64
  %i.go = add i64 %i.gb, %i.gn
  br label %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit

_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit: ; preds = %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa, %.epil.preheader
  %.lcssa25 = phi i64 [ %i.gb, %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa ], [ %i.go, %.epil.preheader ] ; 3 uses
  %i.gp = icmp ult i64 %.lcssa25, 5
  br i1 %i.gp, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.p
  %i.gq = phi float [ 0.000000e+00, %bb.n ], [ %i.hj, %bb.p ] ; 2 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.n ], [ %i.hf, %bb.p ]
  %.06895 = phi i64 [ 0, %bb.n ], [ %i.hp, %bb.p ] ; 2 uses
  %.06994 = phi float [ 1.000000e+00, %bb.n ], [ %i.hr, %bb.p ] ; 2 uses
  %.07093 = phi float [ 1.000000e+00, %bb.n ], [ %i.hq, %bb.p ]
  %i.gr = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.hc, %bb.p ] ; 2 uses
  %i.gs = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.ho, %bb.p ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.06895
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !15
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load <2 x float>, ptr %i.gx, align 4, !tbaa !23 ; 3 uses
  %i.gz = fsub <2 x float> %i.gy, %i.gr           ; 3 uses
  %i.ha = insertelement <2 x float> poison, float %.06994, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.hb, <2 x float> %i.gr) ; 4 uses
  %foldExtExtBinop17 = fsub <2 x float> %i.gy, %i.hc
  %i.hd = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.he = extractelement <2 x float> %i.gz, i64 0
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hd, float %.sroa.0.0) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !23 ; 2 uses
  %i.hi = fsub float %i.hh, %i.gq                 ; 2 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %.06994, float %i.gq) ; 3 uses
  %i.hk = insertelement <2 x float> %i.gy, float %i.hh, i64 0
  %i.hl = insertelement <2 x float> %i.hc, float %i.hj, i64 0
  %i.hm = fsub <2 x float> %i.hk, %i.hl
  %i.hn = insertelement <2 x float> %i.gz, float %i.hi, i64 0
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.hm, <2 x float> %i.gs) ; 4 uses
  %i.hp = add nuw i64 %.06895, 1                  ; 2 uses
  %i.hq = fadd float %.07093, 1.000000e+00        ; 2 uses
  %i.hr = fdiv float 1.000000e+00, %i.hq
  %exitcond102.not = icmp eq i64 %i.hp, %.tr8414
  br i1 %exitcond102.not, label %.new, label %bb.p, !llvm.loop !74

bb.q:                                             ; preds = %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit
  %i.hs = sub i64 %.tr8414, %.lcssa25             ; 2 uses
  %i.ht = icmp ult i64 %i.hs, 5
  %i.hu = icmp sgt i32 %.tr8815, 39
  %or.cond = or i1 %i.hu, %i.ht
  br i1 %or.cond, label %bb.r, label %tailrecurse

bb.r:                                             ; preds = %bb.q, %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit
  %i.hv = lshr i64 %.tr8414, 1                    ; 2 uses
  %.pre = sub i64 %.tr8414, %i.hv
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.q, %bb.r
  %.pre-phi = phi i64 [ %i.hs, %bb.q ], [ %.pre, %bb.r ] ; 2 uses
  %.0 = phi i64 [ %.lcssa25, %bb.q ], [ %i.hv, %bb.r ] ; 2 uses
  %i.hw = add nsw i32 %.tr8815, 1                 ; 2 uses
  tail call fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr noundef nonnull %0, ptr noundef nonnull %.tr8313, i64 noundef %.0, i64 noundef %3, i64 noundef %4, i32 noundef %i.hw)
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not97 = icmp eq i64 %.pre-phi, 0
  br i1 %.not97, label %_ZN7meshoptL9mergeLeafEPNS_12ClusterGroupEPjmmm.exit, label %.lr.ph.preheader

_ZN7meshoptL9mergeLeafEPNS_12ClusterGroupEPjmmm.exit: ; preds = %tailrecurse, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSN17meshopt_Allocator7StorageE", !9, i64 0, !9, i64 8}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTS17meshopt_Allocator", !5, i64 0, !11, i64 192}
!13 = !{!12, !11, i64 192}
!14 = !{!9, !9, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!10, !9, i64 8}
!19 = !{!"float", !5, i64 0}
!20 = !{!"_ZTSN7meshopt12ClusterGroupE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !5, i64 16, !19, i64 28}
!21 = !{!20, !6, i64 4}
!22 = !{!20, !6, i64 8}
!23 = !{!19, !19, i64 0}
!24 = !{!20, !19, i64 28}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{null}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = !{!10, !9, i64 0}
!63 = !{!5, !5, i64 0}
!64 = !{!20, !6, i64 0}
!65 = !{!20, !6, i64 12}
!66 = !{!"_ZTSN7meshopt10GroupOrderE", !6, i64 0, !6, i64 4}
!67 = !{!66, !6, i64 4}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
end_hunk_0
