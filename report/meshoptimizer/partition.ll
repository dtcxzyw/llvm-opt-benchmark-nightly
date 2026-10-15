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
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.0168263
  store i64 %.sroa.049.0.insert.insert, ptr %i.nt, align 4, !tbaa !15
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
  %i.ob = load i64, ptr %i.nw, align 4, !tbaa !15
  store i64 %i.ob, ptr %i.oa, align 4, !tbaa !15
  store i64 %.sroa.049.0.insert.insert, ptr %i.nw, align 4, !tbaa !15
  %.not.i218 = icmp eq i64 %i.nv, 0
  br i1 %.not.i218, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit, label %.lr.ph.i216, !llvm.loop !49

_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit: ; preds = %.lr.ph.i216, %bb.aa, %bb.z
  %exitcond.not = icmp eq i64 %i.ku, %4
  br i1 %exitcond.not, label %.lr.ph273, label %bb.x, !llvm.loop !50

bb.ab:                                            ; preds = %.lr.ph273, %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232
  %.1170272 = phi i64 [ %4, %.lr.ph273 ], [ %.3172, %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232 ] ; 3 uses
  %i.oc = add i64 %.1170272, -1                   ; 10 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ka, align 4, !tbaa !15 ; 3 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.oc ; 2 uses
  %i.oe = load i64, ptr %i.od, align 4, !tbaa !15
  store i64 %i.oe, ptr %i.ka, align 4, !tbaa !15
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
  %i.pa = load i64, ptr %i.ox, align 4, !tbaa !15
  %i.pb = load i64, ptr %i.ou, align 4, !tbaa !15
  store i64 %i.pb, ptr %i.ox, align 4, !tbaa !15
  store i64 %i.pa, ptr %i.ou, align 4, !tbaa !15
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
  %.064102.us.i = phi i32 [ %i.sr, %._crit_edge94.split.us.us.i ], [ %.sroa.034.0.extract.trunc, %.preheader.i223 ]
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
  %sqrt.i.us.us.i = tail call float @sqrtf(float noundef %i.rz) #12 ; 2 uses
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
  br i1 %.not.us.us.i, label %._crit_edge94.split.us.us.i, label %.lr.ph93.us.i, !llvm.loop !53

._crit_edge94.split.us.us.i:                      ; preds = %bb.al, %.lr.ph103.split.us.i
  %.174.lcssa.us.i = phi i32 [ %.07399.us.i, %.lr.ph103.split.us.i ], [ %.477.us.us.i, %bb.al ] ; 2 uses
  %.169.lcssa.us.i = phi float [ %.068100.us.i, %.lr.ph103.split.us.i ], [ %.472.us.us.i, %bb.al ]
  %.1.lcssa.us.i = phi i32 [ %.067101.us.i, %.lr.ph103.split.us.i ], [ %.4.us.us.i, %bb.al ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.qd
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !21 ; 2 uses
  %i.ss = icmp sgt i32 %i.sr, -1
  br i1 %i.ss, label %.lr.ph103.split.us.i, label %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, !llvm.loop !54

.lr.ph86.i:                                       ; preds = %bb.af, %._crit_edge.i222
  %.06684.i = phi i32 [ %i.ta, %._crit_edge.i222 ], [ %.sroa.034.0.extract.trunc, %bb.af ]
  %i.st = zext nneg i32 %.06684.i to i64          ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.st ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !15 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 4 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !15 ; 2 uses
  %.not8182.i = icmp eq i32 %i.sv, %i.sx
  br i1 %.not8182.i, label %._crit_edge.i222, label %.lr.ph.i221

._crit_edge.i222:                                 ; preds = %bb.an, %.lr.ph86.i
  %i.sy = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.st
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !21 ; 2 uses
  %i.tb = icmp sgt i32 %i.ta, -1
  br i1 %i.tb, label %.lr.ph86.i, label %.preheader.i223, !llvm.loop !55

.lr.ph.i221:                                      ; preds = %.lr.ph86.i, %bb.an
  %i.tc = phi i32 [ %i.tq, %bb.an ], [ %i.sx, %.lr.ph86.i ]
  %.06583.i = phi i32 [ %i.tr, %bb.an ], [ %i.sv, %.lr.ph86.i ] ; 2 uses
  %i.td = zext i32 %.06583.i to i64               ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !15
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !64 ; 2 uses
  %i.tj = icmp sgt i32 %i.ti, -1
  br i1 %i.tj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i221
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.td
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !15
  %i.tm = zext nneg i32 %i.ti to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.tm ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !15
  %i.tp = add i32 %i.to, %i.tl
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !15
  %.pre.i226 = load i32, ptr %i.sw, align 4, !tbaa !15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i221
  %i.tq = phi i32 [ %.pre.i226, %bb.am ], [ %i.tc, %.lr.ph.i221 ] ; 2 uses
  %i.tr = add i32 %.06583.i, 1                    ; 2 uses
  %.not81.i = icmp eq i32 %i.tr, %i.tq
  br i1 %.not81.i, label %._crit_edge.i222, label %.lr.ph.i221, !llvm.loop !56

.lr.ph103.split.i:                                ; preds = %.preheader.i223, %._crit_edge94.split.i
  %.064102.i = phi i32 [ %i.tz, %._crit_edge94.split.i ], [ %.sroa.034.0.extract.trunc, %.preheader.i223 ]
  %.067101.i = phi i32 [ %.1.lcssa.i225, %._crit_edge94.split.i ], [ 0, %.preheader.i223 ] ; 2 uses
  %.068100.i = phi float [ %.169.lcssa.i, %._crit_edge94.split.i ], [ 0.000000e+00, %.preheader.i223 ] ; 2 uses
  %.07399.i = phi i32 [ %.174.lcssa.i, %._crit_edge94.split.i ], [ -1, %.preheader.i223 ] ; 2 uses
  %i.ts = zext nneg i32 %.064102.i to i64         ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !15 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 4 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !15
  %.not87.i = icmp eq i32 %i.tu, %i.tw
  br i1 %.not87.i, label %._crit_edge94.split.i, label %.lr.ph93.i

._crit_edge94.split.i:                            ; preds = %bb.ar, %.lr.ph103.split.i
  %.174.lcssa.i = phi i32 [ %.07399.i, %.lr.ph103.split.i ], [ %.477.i, %bb.ar ] ; 2 uses
  %.169.lcssa.i = phi float [ %.068100.i, %.lr.ph103.split.i ], [ %.472.i, %bb.ar ]
  %.1.lcssa.i225 = phi i32 [ %.067101.i, %.lr.ph103.split.i ], [ %.4.i, %bb.ar ] ; 2 uses
  %i.tx = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ts
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !21 ; 2 uses
  %i.ua = icmp sgt i32 %i.tz, -1
  br i1 %i.ua, label %.lr.ph103.split.i, label %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, !llvm.loop !54

.lr.ph93.i:                                       ; preds = %.lr.ph103.split.i, %bb.ar
  %.06391.i = phi i32 [ %i.vc, %bb.ar ], [ %i.tu, %.lr.ph103.split.i ] ; 2 uses
  %.190.i = phi i32 [ %.4.i, %bb.ar ], [ %.067101.i, %.lr.ph103.split.i ] ; 4 uses
  %.16989.i = phi float [ %.472.i, %bb.ar ], [ %.068100.i, %.lr.ph103.split.i ] ; 5 uses
  %.17488.i = phi i32 [ %.477.i, %bb.ar ], [ %.07399.i, %.lr.ph103.split.i ] ; 4 uses
  %i.ub = zext i32 %.06391.i to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !15
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !64 ; 3 uses
  %i.uh = icmp slt i32 %i.ug, 0
  br i1 %i.uh, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph93.i
  %i.ui = zext nneg i32 %i.ug to i64              ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ui ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !15 ; 3 uses
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.uj, align 4, !tbaa !15
  %i.um = load i32, ptr %i.py, align 4, !tbaa !22
  %i.un = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.ui ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !22
  %i.uq = add i32 %i.up, %i.um
  %i.ur = zext i32 %i.uq to i64
  %i.us = icmp ult i64 %i.b, %i.ur
  br i1 %i.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !65
  %i.uv = sitofp i32 %i.uu to float
  %i.uw = tail call float @sqrtf(float noundef %i.uv) #12
  %i.ux = fdiv float 1.000000e+00, %i.uw
  %i.uy = sitofp i32 %i.uk to float
  %i.uz = fadd float %i.px, %i.ux
  %i.va = fmul float %i.uz, %i.uy                 ; 2 uses
  %i.vb = fcmp ogt float %i.va, %.16989.i         ; 3 uses
  %.275.i = select i1 %i.vb, i32 %i.ug, i32 %.17488.i
  %.270.i = select i1 %i.vb, float %i.va, float %.16989.i
  %.2.i = select i1 %i.vb, i32 %i.uk, i32 %.190.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %.lr.ph93.i
  %.477.i = phi i32 [ %.17488.i, %.lr.ph93.i ], [ %.17488.i, %bb.ao ], [ %.275.i, %bb.aq ], [ %.17488.i, %bb.ap ] ; 2 uses
  %.472.i = phi float [ %.16989.i, %.lr.ph93.i ], [ %.16989.i, %bb.ao ], [ %.270.i, %bb.aq ], [ %.16989.i, %bb.ap ] ; 2 uses
  %.4.i = phi i32 [ %.190.i, %.lr.ph93.i ], [ %.190.i, %bb.ao ], [ %.2.i, %bb.aq ], [ %.190.i, %bb.ap ] ; 2 uses
  %i.vc = add i32 %.06391.i, 1                    ; 2 uses
  %i.vd = load i32, ptr %i.tv, align 4, !tbaa !15
  %.not.i224 = icmp eq i32 %i.vc, %i.vd
  br i1 %.not.i224, label %._crit_edge94.split.i, label %.lr.ph93.i, !llvm.loop !53

_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit: ; preds = %._crit_edge94.split.us.us.i, %._crit_edge94.split.i
  %.073.lcssa.i = phi i32 [ %.174.lcssa.i, %._crit_edge94.split.i ], [ %.174.lcssa.us.i, %._crit_edge94.split.us.us.i ] ; 3 uses
  %.067.lcssa.i = phi i32 [ %.1.lcssa.i225, %._crit_edge94.split.i ], [ %.1.lcssa.us.i, %._crit_edge94.split.us.us.i ] ; 2 uses
  %i.ve = icmp eq i32 %.073.lcssa.i, -1
  br i1 %i.ve, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.preheader246, !llvm.loop !51

.preheader246:                                    ; preds = %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, %.preheader246
  %.0164 = phi i32 [ %i.vi, %.preheader246 ], [ %.sroa.034.0.extract.trunc, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit ]
  %i.vf = zext nneg i32 %.0164 to i64
  %i.vg = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !21 ; 2 uses
  %i.vj = icmp sgt i32 %i.vi, -1
  br i1 %i.vj, label %.preheader246, label %bb.as, !llvm.loop !57

bb.as:                                            ; preds = %.preheader246
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store i32 %.073.lcssa.i, ptr %i.vk, align 4, !tbaa !21
  %i.vl = zext nneg i32 %.073.lcssa.i to i64
  %i.vm = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.vl ; 5 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !22
  %i.vp = load i32, ptr %i.ph, align 4, !tbaa !22
  %i.vq = add i32 %i.vp, %i.vo
  store i32 %i.vq, ptr %i.ph, align 4, !tbaa !22
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 12 ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !65
  %i.vt = getelementptr inbounds nuw i8, ptr %i.pg, i64 12 ; 3 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !65
  %i.vv = add i32 %i.vu, %i.vs                    ; 2 uses
  %i.vw = icmp ugt i32 %i.vv, %.067.lcssa.i
  %i.vx = sub nuw i32 %i.vv, %.067.lcssa.i
  %spec.select = select i1 %i.vw, i32 %i.vx, i32 1
  store i32 %spec.select, ptr %i.vt, align 4, !tbaa !65
  store i32 0, ptr %i.vn, align 4, !tbaa !22
  store i32 0, ptr %i.vr, align 4, !tbaa !65
  br i1 %.not245, label %.lr.ph269.preheader, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.vy = getelementptr inbounds nuw i8, ptr %i.pg, i64 28 ; 2 uses
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !24 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vm, i64 28 ; 2 uses
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !24 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.wd = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 3 uses
  %i.we = load <2 x float>, ptr %i.wc, align 4, !tbaa !23 ; 2 uses
  %i.wf = load <2 x float>, ptr %i.wd, align 4, !tbaa !23 ; 2 uses
  %i.wg = fsub <2 x float> %i.we, %i.wf           ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !23 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.pg, i64 24 ; 3 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !23 ; 2 uses
  %i.wl = fsub float %i.wi, %i.wk                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.wg, %i.wg
  %i.wm = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.wn = extractelement <2 x float> %i.wg, i64 0 ; 2 uses
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.wn, float %i.wn, float %i.wm)
  %i.wp = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wl, float %i.wo)
  %sqrt.i = tail call float @sqrtf(float noundef %i.wp) #12 ; 4 uses
  %i.wq = fadd float %i.vz, %sqrt.i
  %i.wr = fcmp olt float %i.wq, %i.wb
  br i1 %i.wr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store <2 x float> %i.we, ptr %i.wd, align 4, !tbaa !23
  store float %i.wi, ptr %i.wj, align 4, !tbaa !23
  br label %.sink.split.i

bb.av:                                            ; preds = %bb.at
  %i.ws = fadd float %i.wb, %sqrt.i               ; 3 uses
  %i.wt = fcmp ogt float %i.ws, %i.vz
  br i1 %i.wt, label %bb.aw, label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit

bb.aw:                                            ; preds = %bb.av
  %i.wu = fcmp ogt float %sqrt.i, 0.000000e+00
  %i.wv = fsub float %i.ws, %i.vz
  %i.ww = fmul nnan float %sqrt.i, 2.000000e+00
  %i.wx = fdiv float %i.wv, %i.ww
  %i.wy = select i1 %i.wu, float %i.wx, float 0.000000e+00 ; 2 uses
  %i.wz = insertelement <2 x float> poison, float %i.wy, i64 0
  %i.xa = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.xa, <2 x float> %i.wf)
  store <2 x float> %i.xb, ptr %i.wd, align 4, !tbaa !23
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wy, float %i.wk)
  store float %i.xc, ptr %i.wj, align 4, !tbaa !23
  %i.xd = fadd float %i.vz, %i.ws
  %i.xe = fmul float %i.xd, 5.000000e-01
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aw, %bb.au
  %.sink.i = phi float [ %i.xe, %bb.aw ], [ %i.wb, %bb.au ]
  store float %.sink.i, ptr %i.vy, align 4, !tbaa !24
  br label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit

_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit: ; preds = %bb.av, %.sink.split.i
  store float 0.000000e+00, ptr %i.wa, align 4, !tbaa !24
  br label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.as, %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit
  br label %.lr.ph269

._crit_edge270:                                   ; preds = %.lr.ph269
  %i.xf = load i32, ptr %i.vt, align 4, !tbaa !65 ; 2 uses
  %.sroa.19.0.insert.ext = zext i32 %i.xf to i64
  %.sroa.19.0.insert.shift = shl nuw i64 %.sroa.19.0.insert.ext, 32
  %.sroa.034.0.insert.insert = or disjoint i64 %.sroa.19.0.insert.shift, %i.pf ; 2 uses
  store i64 %.sroa.034.0.insert.insert, ptr %i.od, align 4, !tbaa !15
  %.not17.i227 = icmp eq i64 %i.oc, 0
  br i1 %.not17.i227, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %._crit_edge270, %bb.ax
  %.018.i229 = phi i64 [ %i.xh, %bb.ax ], [ %i.oc, %._crit_edge270 ] ; 2 uses
  %i.xg = add i64 %.018.i229, -1
  %i.xh = lshr i64 %i.xg, 1                       ; 3 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.xh ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !67
  %i.xl = icmp sgt i32 %i.xk, %i.xf
  br i1 %i.xl, label %bb.ax, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232

bb.ax:                                            ; preds = %.lr.ph.i228
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.018.i229
  %i.xn = load i64, ptr %i.xi, align 4, !tbaa !15
  store i64 %i.xn, ptr %i.xm, align 4, !tbaa !15
  store i64 %.sroa.034.0.insert.insert, ptr %i.xi, align 4, !tbaa !15
  %.not.i231 = icmp eq i64 %i.xh, 0
  br i1 %.not.i231, label %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232, label %.lr.ph.i228, !llvm.loop !49

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %.lr.ph269
  %.0163267 = phi i32 [ %i.xr, %.lr.ph269 ], [ %.sroa.034.0.extract.trunc, %.lr.ph269.preheader ]
  %i.xo = zext nneg i32 %.0163267 to i64
  %i.xp = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.xo ; 2 uses
  store i32 %.sroa.034.0.extract.trunc, ptr %i.xp, align 4, !tbaa !64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !21 ; 2 uses
  %i.xs = icmp sgt i32 %i.xr, -1
  br i1 %i.xs, label %.lr.ph269, label %._crit_edge270, !llvm.loop !58

_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232: ; preds = %.lr.ph.i228, %bb.ax, %bb.af, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit, %._crit_edge270, %._crit_edge, %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit
  %.3172 = phi i64 [ %i.oc, %._crit_edge ], [ %i.oc, %_ZN7meshoptL7heapPopEPNS_10GroupOrderEm.exit ], [ %i.oc, %bb.af ], [ %i.oc, %_ZN7meshoptL16pickGroupToMergeEPKNS_12ClusterGroupEiRKNS_16ClusterAdjacencyEmbPjRj.exit ], [ 1, %._crit_edge270 ], [ %.1170272, %bb.ax ], [ %.1170272, %.lr.ph.i228 ] ; 2 uses
  %.not = icmp eq i64 %.3172, 0
  br i1 %.not, label %._crit_edge274, label %bb.ab

._crit_edge274:                                   ; preds = %_ZN7meshoptL8heapPushEPNS_10GroupOrderEmS0_.exit232
  %.not186 = icmp eq ptr %5, null
  br i1 %.not186, label %bb.bc, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %._crit_edge274
  %xtraiter432 = and i64 %4, 1
  %i.xt = icmp eq i64 %4, 1
  br i1 %i.xt, label %.lr.ph277.epil.preheader, label %.lr.ph277.preheader.new

.lr.ph277.preheader.new:                          ; preds = %.lr.ph277.preheader
  %unroll_iter437 = and i64 %4, -2
  br label %.lr.ph277

._crit_edge274.thread:                            ; preds = %bb.p
  br i1 %.not186372, label %.lr.ph.i233, label %._crit_edge278

._crit_edge278.loopexit.unr-lcssa:                ; preds = %bb.bb
  %lcmp.mod434.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod434.not, label %._crit_edge278, label %.lr.ph277.epil.preheader

.lr.ph277.epil.preheader:                         ; preds = %._crit_edge278.loopexit.unr-lcssa, %.lr.ph277.preheader
  %.0160276.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %i.yn, %._crit_edge278.loopexit.unr-lcssa ] ; 2 uses
  %.0161275.epil.init = phi i64 [ 0, %.lr.ph277.preheader ], [ %.1162.1, %._crit_edge278.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod436 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.xu = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0160276.epil.init
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !22
  %.not187.epil = icmp eq i32 %i.xw, 0
  br i1 %.not187.epil, label %._crit_edge278, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph277.epil.preheader
  %i.xx = trunc i64 %.0160276.epil.init to i32
  %i.xy = add i64 %.0161275.epil.init, 1
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0161275.epil.init
  store i32 %i.xx, ptr %i.xz, align 4, !tbaa !15
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge278.loopexit.unr-lcssa, %bb.ay, %.lr.ph277.epil.preheader, %._crit_edge274.thread
  %.0161.lcssa = phi i64 [ 0, %._crit_edge274.thread ], [ %.1162.1, %._crit_edge278.loopexit.unr-lcssa ], [ %i.xy, %bb.ay ], [ %.0161275.epil.init, %.lr.ph277.epil.preheader ]
  tail call fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr noundef %i.jv, ptr noundef %i.ka, i64 noundef %.0161.lcssa, i64 noundef %8, i64 noundef %i.b, i32 noundef 0)
  br label %bb.bc

.lr.ph277:                                        ; preds = %bb.bb, %.lr.ph277.preheader.new
  %.0160276 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %i.yn, %bb.bb ] ; 4 uses
  %.0161275 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %.1162.1, %bb.bb ] ; 3 uses
  %niter438 = phi i64 [ 0, %.lr.ph277.preheader.new ], [ %niter438.next.1, %bb.bb ]
  %i.ya = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0160276
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !22
  %.not187 = icmp eq i32 %i.yc, 0
  br i1 %.not187, label %.lr.ph277.1, label %bb.az

bb.az:                                            ; preds = %.lr.ph277
  %i.yd = trunc i64 %.0160276 to i32
  %i.ye = add i64 %.0161275, 1
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0161275
  store i32 %i.yd, ptr %i.yf, align 4, !tbaa !15
  br label %.lr.ph277.1

.lr.ph277.1:                                      ; preds = %.lr.ph277, %bb.az
  %.1162 = phi i64 [ %i.ye, %bb.az ], [ %.0161275, %.lr.ph277 ] ; 3 uses
  %i.yg = or disjoint i64 %.0160276, 1            ; 2 uses
  %i.yh = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !22
  %.not187.1 = icmp eq i32 %i.yj, 0
  br i1 %.not187.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph277.1
  %i.yk = trunc i64 %i.yg to i32
  %i.yl = add i64 %.1162, 1
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.1162
  store i32 %i.yk, ptr %i.ym, align 4, !tbaa !15
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph277.1
  %.1162.1 = phi i64 [ %i.yl, %bb.ba ], [ %.1162, %.lr.ph277.1 ] ; 3 uses
  %i.yn = add nuw i64 %.0160276, 2                ; 2 uses
  %niter438.next.1 = add nuw i64 %niter438, 2     ; 2 uses
  %niter438.ncmp.1 = icmp eq i64 %niter438.next.1, %unroll_iter437
  br i1 %niter438.ncmp.1, label %._crit_edge278.loopexit.unr-lcssa, label %.lr.ph277, !llvm.loop !59

bb.bc:                                            ; preds = %._crit_edge278, %._crit_edge274
  br i1 %.not.i, label %.lr.ph.i233, label %.lr.ph287

.lr.ph.i233:                                      ; preds = %bb.bc, %._crit_edge274.thread, %bb.bg
  %.0159.lcssa = phi i64 [ 0, %bb.bc ], [ 0, %._crit_edge274.thread ], [ %.1, %bb.bg ]
  %i.yo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yp = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !14
  invoke void %i.yo(ptr noundef %i.yq)
          to label %.lr.ph.i233.1 unwind label %bb.bd

.lr.ph.i233.1:                                    ; preds = %.lr.ph.i233
  %i.yr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.ys = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !14
  invoke void %i.yr(ptr noundef %i.yt)
          to label %.lr.ph.i233.2 unwind label %bb.bd

.lr.ph.i233.2:                                    ; preds = %.lr.ph.i233.1
  %i.yu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yv = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !14
  invoke void %i.yu(ptr noundef %i.yw)
          to label %.lr.ph.i233.3 unwind label %bb.bd

.lr.ph.i233.3:                                    ; preds = %.lr.ph.i233.2
  %i.yx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.yy = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !14
  invoke void %i.yx(ptr noundef %i.yz)
          to label %.lr.ph.i233.4 unwind label %bb.bd

.lr.ph.i233.4:                                    ; preds = %.lr.ph.i233.3
  %i.za = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !14
  invoke void %i.za(ptr noundef %i.zc)
          to label %.lr.ph.i233.5 unwind label %bb.bd

.lr.ph.i233.5:                                    ; preds = %.lr.ph.i233.4
  %i.zd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.ze = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !14
  invoke void %i.zd(ptr noundef %i.zf)
          to label %.lr.ph.i233.6 unwind label %bb.bd

.lr.ph.i233.6:                                    ; preds = %.lr.ph.i233.5
  %i.zg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zh = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !14
  invoke void %i.zg(ptr noundef %i.zi)
          to label %.lr.ph.i233.7 unwind label %bb.bd

.lr.ph.i233.7:                                    ; preds = %.lr.ph.i233.6
  %i.zj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !14
  invoke void %i.zj(ptr noundef %i.zl)
          to label %.lr.ph.i233.8 unwind label %bb.bd

.lr.ph.i233.8:                                    ; preds = %.lr.ph.i233.7
  %i.zm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !14
  invoke void %i.zm(ptr noundef %i.zo)
          to label %.lr.ph.i233.9 unwind label %bb.bd

.lr.ph.i233.9:                                    ; preds = %.lr.ph.i233.8
  %i.zp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !18
  %i.zq = load ptr, ptr %9, align 8, !tbaa !14
  invoke void %i.zp(ptr noundef %i.zq)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.bd

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i233.9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret i64 %.0159.lcssa

bb.bd:                                            ; preds = %.lr.ph.i233.9, %.lr.ph.i233.8, %.lr.ph.i233.7, %.lr.ph.i233.6, %.lr.ph.i233.5, %.lr.ph.i233.4, %.lr.ph.i233.3, %.lr.ph.i233.2, %.lr.ph.i233.1, %.lr.ph.i233
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  %i.zs = extractvalue { ptr, i32 } %i.zr, 0
  tail call void @__clang_call_terminate(ptr %i.zs) #13
  unreachable

.lr.ph287:                                        ; preds = %bb.bc, %bb.bg
  %.0158285 = phi i64 [ %i.aah, %bb.bg ], [ 0, %bb.bc ] ; 3 uses
  %.0159284 = phi i64 [ %.1, %bb.bg ], [ 0, %bb.bc ] ; 3 uses
  %i.zt = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %.0158285
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !22
  %i.zw = icmp eq i32 %i.zv, 0
  br i1 %i.zw, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.lr.ph287
  %i.zx = trunc i64 %.0158285 to i32              ; 2 uses
  %i.zy = icmp sgt i32 %i.zx, -1
  br i1 %i.zy, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %bb.be
  %i.zz = trunc i64 %.0159284 to i32
  br label %bb.bf

._crit_edge283:                                   ; preds = %bb.bf, %bb.be
  %i.aaa = add i64 %.0159284, 1
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph282, %bb.bf
  %.0280 = phi i32 [ %i.zx, %.lr.ph282 ], [ %i.aaf, %bb.bf ]
  %i.aab = zext nneg i32 %.0280 to i64            ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aab
  store i32 %i.zz, ptr %i.aac, align 4, !tbaa !15
  %i.aad = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.aab
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !21 ; 2 uses
  %i.aag = icmp sgt i32 %i.aaf, -1
  br i1 %i.aag, label %bb.bf, label %._crit_edge283, !llvm.loop !60

bb.bg:                                            ; preds = %.lr.ph287, %._crit_edge283
  %.1 = phi i64 [ %.0159284, %.lr.ph287 ], [ %i.aaa, %._crit_edge283 ] ; 2 uses
  %i.aah = add nuw i64 %.0158285, 1               ; 2 uses
  %exitcond308.not = icmp eq i64 %i.aah, %4
  br i1 %exitcond308.not, label %.lr.ph.i233, label %.lr.ph287, !llvm.loop !61

bb.bh:                                            ; preds = %bb.t, %bb.v, %bb.w, %bb.u, %bb.r, %bb.s, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kj, %bb.q ], [ %i.kk, %bb.r ], [ %i.kl, %bb.s ], [ %i.km, %bb.t ], [ %i.kn, %bb.u ], [ %i.ko, %bb.v ], [ %i.kp, %bb.w ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not9712 = icmp eq i64 %2, 0
  br i1 %.not9712, label %_ZN7meshoptL9mergeLeafEPNS_12ClusterGroupEPjmmm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %tailrecurse
  %.tr8815 = phi i32 [ %i.hu, %tailrecurse ], [ %5, %bb.a ] ; 2 uses
  %.tr8414 = phi i64 [ %.pre-phi, %tailrecurse ], [ %2, %bb.a ] ; 13 uses
  %.tr8313 = phi ptr [ %i.hv, %tailrecurse ], [ %1, %bb.a ] ; 16 uses
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
  %.05774.i = phi i64 [ %i.eo, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.05774.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15 ; 3 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ba ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22 ; 4 uses
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i32 %i.bd to i64
  %.not.i = icmp ugt i64 %3, %i.bf
  %or.cond.i = and i1 %i.be, %.not.i
  br i1 %or.cond.i, label %.preheader69.i, label %bb.m

.preheader69.i:                                   ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.h
  %.not64.i = icmp eq i32 %.2.i, -1
  br i1 %.not64.i, label %bb.m, label %.preheader.i

bb.c:                                             ; preds = %bb.h, %.preheader69.i
  %.05272.i = phi i64 [ 0, %.preheader69.i ], [ %i.cy, %bb.h ] ; 2 uses
  %.05371.i = phi i32 [ -1, %.preheader69.i ], [ %.2.i, %bb.h ] ; 3 uses
  %.05470.i = phi float [ -1.000000e+00, %.preheader69.i ], [ %.256.i, %bb.h ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.05272.i
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
  %or.cond68.i = or i1 %i.br, %i.bu
  br i1 %or.cond68.i, label %bb.h, label %bb.e

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
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.cm) #12 ; 2 uses
  %i.cn = fadd float %i.bv, %sqrt.i.i
  %i.co = fcmp olt float %i.cn, %i.bx
  br i1 %i.co, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = fadd float %i.bx, %sqrt.i.i             ; 2 uses
  %i.cq = fcmp olt float %i.cp, %i.bv
  br i1 %i.cq, label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = fadd float %i.bv, %i.cp
  %i.cs = fmul float %i.cr, 5.000000e-01
  br label %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i

_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ct = phi float [ %i.cs, %bb.g ], [ %i.bx, %bb.e ], [ %i.bv, %bb.f ] ; 2 uses
  %i.cu = fcmp ogt float %i.ct, 0.000000e+00
  %i.cv = fdiv float %i.bv, %i.ct
  %i.cw = select i1 %i.cu, float %i.cv, float 0.000000e+00 ; 2 uses
  %i.cx = fcmp ogt float %i.cw, %.05470.i         ; 2 uses
  %.155.i = select i1 %i.cx, float %i.cw, float %.05470.i
  %.1.i = select i1 %i.cx, i32 %i.bl, i32 %.05371.i
  br label %bb.h

bb.h:                                             ; preds = %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i, %bb.d, %bb.c
  %.256.i = phi float [ %.155.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i ], [ %.05470.i, %bb.c ], [ %.05470.i, %bb.d ]
  %.2.i = phi i32 [ %.1.i, %_ZN7meshoptL11boundsScoreERKNS_12ClusterGroupES2_.exit.i ], [ %.05371.i, %bb.c ], [ %.05371.i, %bb.d ] ; 4 uses
  %i.cy = add nuw i64 %.05272.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %.tr8414
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !70

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i = phi i32 [ %i.dc, %.preheader.i ], [ %.2.i, %bb.b ]
  %i.cz = zext i32 %.0.i to i64
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !21 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %.preheader.i, label %bb.i, !llvm.loop !71

bb.i:                                             ; preds = %.preheader.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %i.az, ptr %i.de, align 4, !tbaa !21
  %i.df = sext i32 %.2.i to i64
  %i.dg = getelementptr inbounds [32 x i8], ptr %0, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = add i32 %i.di, %i.bd
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !22
  store i32 0, ptr %i.bc, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 28 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !24 ; 4 uses
  %i.dm = load float, ptr %i.bg, align 4, !tbaa !24 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  %i.do = load <2 x float>, ptr %i.bh, align 4, !tbaa !23 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !23 ; 2 uses
  %i.dq = fsub <2 x float> %i.do, %i.dp           ; 4 uses
  %i.dr = load float, ptr %i.bj, align 4, !tbaa !23 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 3 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !23 ; 2 uses
  %i.du = fsub float %i.dr, %i.dt                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.dq, %i.dq
  %i.dv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dw = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dv)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dx)
  %sqrt.i65.i = tail call float @sqrtf(float noundef %i.dy) #12 ; 4 uses
  %i.dz = fadd float %i.dl, %sqrt.i65.i
  %i.ea = fcmp olt float %i.dz, %i.dm
  br i1 %i.ea, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store <2 x float> %i.do, ptr %i.dn, align 4, !tbaa !23
  store float %i.dr, ptr %i.ds, align 4, !tbaa !23
  br label %.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.eb = fadd float %i.dm, %sqrt.i65.i           ; 3 uses
  %i.ec = fcmp ogt float %i.eb, %i.dl
  br i1 %i.ec, label %bb.l, label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ed = fcmp ogt float %sqrt.i65.i, 0.000000e+00
  %i.ee = fsub float %i.eb, %i.dl
  %i.ef = fmul nnan float %sqrt.i65.i, 2.000000e+00
  %i.eg = fdiv float %i.ee, %i.ef
  %i.eh = select i1 %i.ed, float %i.eg, float 0.000000e+00 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ej, <2 x float> %i.dp)
  store <2 x float> %i.ek, ptr %i.dn, align 4, !tbaa !23
  %i.el = tail call float @llvm.fmuladd.f32(float %i.du, float %i.eh, float %i.dt)
  store float %i.el, ptr %i.ds, align 4, !tbaa !23
  %i.em = fadd float %i.dl, %i.eb
  %i.en = fmul float %i.em, 5.000000e-01
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.l, %bb.j
  %.sink.i.i = phi float [ %i.en, %bb.l ], [ %i.dm, %bb.j ]
  store float %.sink.i.i, ptr %i.dk, align 4, !tbaa !24
  br label %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i

_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i: ; preds = %.sink.split.i.i, %bb.k
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %_ZN7meshoptL11mergeBoundsERNS_12ClusterGroupERKS0_.exit.i, %bb.b, %.lr.ph.i
  %i.eo = add nuw i64 %.05774.i, 1                ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.eo, %.tr8414
  br i1 %exitcond76.not.i, label %_ZN7meshoptL9mergeLeafEPNS_12ClusterGroupEPjmmm.exit, label %.lr.ph.i, !llvm.loop !72

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.p

.new:                                             ; preds = %bb.p
  store <2 x float> %i.ha, ptr %i.a, align 8, !tbaa !23
  store float %i.hh, ptr %i.b, align 8, !tbaa !23
  %i.ep = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fcmp ult <2 x float> %i.eq, %i.hm       ; 2 uses
  %i.es = extractelement <2 x i1> %i.er, i64 0
  %i.et = extractelement <2 x i1> %i.er, i64 1
  %or.cond81 = select i1 %i.et, i1 true, i1 %i.es
  %i.eu = extractelement <2 x float> %i.hm, i64 0
  %i.ev = extractelement <2 x float> %i.hm, i64 1
  %i.ew = fcmp oge float %i.ev, %i.eu
  %i.ex = select i1 %i.ew, i64 1, i64 2
  %i.ey = select i1 %or.cond81, i64 %i.ex, i64 0  ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !23 ; 3 uses
  %xtraiter30 = and i64 %.tr8414, 1
  %unroll_iter35 = and i64 %.tr8414, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.new
  %.021.i = phi i64 [ 0, %.new ], [ %i.fz, %bb.o ] ; 2 uses
  %.01920.i = phi i64 [ 0, %.new ], [ %i.ga, %bb.o ] ; 3 uses
  %niter36 = phi i64 [ 0, %.new ], [ %niter36.next.1, %bb.o ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.01920.i ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !15 ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ey
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !23
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.021.i ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !15
  store i32 %i.fc, ptr %i.fi, align 4, !tbaa !15
  store i32 %i.fj, ptr %i.fb, align 4, !tbaa !15
  %i.fk = fcmp olt float %i.fh, %i.fa
  %i.fl = zext i1 %i.fk to i64
  %i.fm = add i64 %.021.i, %i.fl                  ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.01920.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15 ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ey
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !23
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %i.fm ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !15
  store i32 %i.fp, ptr %i.fv, align 4, !tbaa !15
  store i32 %i.fw, ptr %i.fo, align 4, !tbaa !15
  %i.fx = fcmp olt float %i.fu, %i.fa
  %i.fy = zext i1 %i.fx to i64
  %i.fz = add i64 %i.fm, %i.fy                    ; 4 uses
  %i.ga = add nuw i64 %.01920.i, 2                ; 2 uses
  %niter36.next.1 = add nuw i64 %niter36, 2       ; 2 uses
  %niter36.ncmp.1 = icmp eq i64 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1, label %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa, label %bb.o, !llvm.loop !73

_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod32.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa
  %lcmp.mod34 = trunc i64 %.tr8414 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !15 ; 2 uses
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.ey
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !23
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %i.fz ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !15
  store i32 %i.gc, ptr %i.gi, align 4, !tbaa !15
  store i32 %i.gj, ptr %i.gb, align 4, !tbaa !15
  %i.gk = fcmp olt float %i.gh, %i.fa
  %i.gl = zext i1 %i.gk to i64
  %i.gm = add i64 %i.fz, %i.gl
  br label %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit

_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit: ; preds = %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa, %.epil.preheader
  %.lcssa25 = phi i64 [ %i.fz, %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit.unr-lcssa ], [ %i.gm, %.epil.preheader ] ; 3 uses
  %i.gn = icmp ult i64 %.lcssa25, 5
  br i1 %i.gn, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.p
  %i.go = phi float [ 0.000000e+00, %bb.n ], [ %i.hh, %bb.p ] ; 2 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.n ], [ %i.hd, %bb.p ]
  %.06895 = phi i64 [ 0, %bb.n ], [ %i.hn, %bb.p ] ; 2 uses
  %.06994 = phi float [ 1.000000e+00, %bb.n ], [ %i.hp, %bb.p ] ; 2 uses
  %.07093 = phi float [ 1.000000e+00, %bb.n ], [ %i.ho, %bb.p ]
  %i.gp = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.ha, %bb.p ] ; 2 uses
  %i.gq = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.hm, %bb.p ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.06895
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !15
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load <2 x float>, ptr %i.gv, align 4, !tbaa !23 ; 3 uses
  %i.gx = fsub <2 x float> %i.gw, %i.gp           ; 3 uses
  %i.gy = insertelement <2 x float> poison, float %.06994, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gz, <2 x float> %i.gp) ; 4 uses
  %foldExtExtBinop17 = fsub <2 x float> %i.gw, %i.ha
  %i.hb = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.hc = extractelement <2 x float> %i.gx, i64 0
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hb, float %.sroa.0.0) ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hf = load float, ptr %i.he, align 4, !tbaa !23 ; 2 uses
  %i.hg = fsub float %i.hf, %i.go                 ; 2 uses
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %.06994, float %i.go) ; 3 uses
  %i.hi = insertelement <2 x float> %i.gw, float %i.hf, i64 0
  %i.hj = insertelement <2 x float> %i.ha, float %i.hh, i64 0
  %i.hk = fsub <2 x float> %i.hi, %i.hj
  %i.hl = insertelement <2 x float> %i.gx, float %i.hg, i64 0
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hk, <2 x float> %i.gq) ; 4 uses
  %i.hn = add nuw i64 %.06895, 1                  ; 2 uses
  %i.ho = fadd float %.07093, 1.000000e+00        ; 2 uses
  %i.hp = fdiv float 1.000000e+00, %i.ho
  %exitcond102.not = icmp eq i64 %i.hn, %.tr8414
  br i1 %exitcond102.not, label %.new, label %bb.p, !llvm.loop !74

bb.q:                                             ; preds = %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit
  %i.hq = sub i64 %.tr8414, %.lcssa25             ; 2 uses
  %i.hr = icmp ult i64 %i.hq, 5
  %i.hs = icmp sgt i32 %.tr8815, 39
  %or.cond = or i1 %i.hs, %i.hr
  br i1 %or.cond, label %bb.r, label %tailrecurse

bb.r:                                             ; preds = %bb.q, %_ZN7meshoptL14mergePartitionEPjmPKNS_12ClusterGroupEif.exit
  %i.ht = lshr i64 %.tr8414, 1                    ; 2 uses
  %.pre = sub i64 %.tr8414, %i.ht
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.q, %bb.r
  %.pre-phi = phi i64 [ %i.hq, %bb.q ], [ %.pre, %bb.r ] ; 2 uses
  %.0 = phi i64 [ %.lcssa25, %bb.q ], [ %i.ht, %bb.r ] ; 2 uses
  %i.hu = add nsw i32 %.tr8815, 1                 ; 2 uses
  tail call fastcc void @_ZN7meshoptL12mergeSpatialEPNS_12ClusterGroupEPjmmmmi(ptr noundef nonnull %0, ptr noundef nonnull %.tr8313, i64 noundef %.0, i64 noundef %3, i64 noundef %4, i32 noundef %i.hu)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.tr8313, i64 %.0
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
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
