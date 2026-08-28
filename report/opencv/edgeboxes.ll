Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edgeboxes?download=true
inline.NumInlined: 1391
inline.NumDeleted: 525
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv8ximgproc13EdgeBoxesImpl12clusterEdgesERNS_3MatES3_:bb.a
  %i.ng = mul i64 %i.mn, %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ng ; 3 uses
  %i.ni = mul i64 %i.mp, %i.nf
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ni ; 3 uses
  br label %.lr.ph917

.lr.ph917:                                        ; preds = %.lr.ph917.preheader, %bb.bz
  %i.nk = phi i32 [ %i.mt, %.lr.ph917.preheader ], [ %i.rd, %bb.bz ]
  %indvars.iv1078 = phi i64 [ 1, %.lr.ph917.preheader ], [ %indvars.iv.next1079.pre-phi, %bb.bz ] ; 9 uses
  %.4309914 = phi i32 [ %.3308920, %.lr.ph917.preheader ], [ %.6311, %bb.bz ] ; 2 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %indvars.iv1078 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !89
  %.not340 = icmp eq i32 %i.nm, 0
  br i1 %.not340, label %bb.bb, label %.lr.ph917._crit_edge

.lr.ph917._crit_edge:                             ; preds = %.lr.ph917
  %.pre1183 = add nuw nsw i64 %indvars.iv1078, 1
  br label %bb.bz

bb.bb:                                            ; preds = %.lr.ph917
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.my, i64 %indvars.iv1078
  %i.no = load float, ptr %i.nn, align 4, !tbaa !55 ; 8 uses
  %i.np = add nsw i64 %indvars.iv1078, -1         ; 6 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !89 ; 2 uses
  %i.ns = icmp slt i32 %i.nr, 1
  br i1 %i.ns, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.np
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !55
  %i.nv = fsub float %i.nu, %i.no
  %i.nw = call noundef float @llvm.fabs.f32(float %i.nv)
  %i.nx = fdiv float %i.nw, f0x40490FDB           ; 3 uses
  %i.ny = fcmp ogt float %i.nx, 5.000000e-01
  %i.nz = fsub float 1.000000e+00, %i.nx
  %.0266 = select i1 %i.ny, float %i.nz, float %i.nx ; 2 uses
  %i.oa = fcmp olt float %.0266, 1.000000e+03
  br i1 %i.oa, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.bb
  %.4304 = phi i32 [ 0, %bb.bb ], [ %i.nr, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %.2265 = phi float [ 1.000000e+03, %bb.bb ], [ %.0266, %bb.bd ], [ 1.000000e+03, %bb.bc ] ; 3 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %indvars.iv1078
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !89 ; 2 uses
  %i.od = icmp slt i32 %i.oc, 1
  br i1 %i.od, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %indvars.iv1078
  %i.of = load float, ptr %i.oe, align 4, !tbaa !55
  %i.og = fsub float %i.of, %i.no
  %i.oh = call noundef float @llvm.fabs.f32(float %i.og)
  %i.oi = fdiv float %i.oh, f0x40490FDB           ; 3 uses
  %i.oj = fcmp ogt float %i.oi, 5.000000e-01
  %i.ok = fsub float 1.000000e+00, %i.oi
  %.0266.1 = select i1 %i.oj, float %i.ok, float %i.oi ; 2 uses
  %i.ol = fcmp olt float %.0266.1, %.2265
  br i1 %i.ol, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.4304.1 = phi i32 [ %.4304, %bb.be ], [ %i.oc, %bb.bg ], [ %.4304, %bb.bf ] ; 2 uses
  %.2265.1 = phi float [ %.2265, %bb.be ], [ %.0266.1, %bb.bg ], [ %.2265, %bb.bf ] ; 3 uses
  %i.om = add nuw nsw i64 %indvars.iv1078, 1      ; 7 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !89 ; 2 uses
  %i.op = icmp slt i32 %i.oo, 1
  br i1 %i.op, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.om
  %i.or = load float, ptr %i.oq, align 4, !tbaa !55
  %i.os = fsub float %i.or, %i.no
  %i.ot = call noundef float @llvm.fabs.f32(float %i.os)
  %i.ou = fdiv float %i.ot, f0x40490FDB           ; 3 uses
  %i.ov = fcmp ogt float %i.ou, 5.000000e-01
  %i.ow = fsub float 1.000000e+00, %i.ou
  %.0266.2 = select i1 %i.ov, float %i.ow, float %i.ou ; 2 uses
  %i.ox = fcmp olt float %.0266.2, %.2265.1
  br i1 %i.ox, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.4304.2 = phi i32 [ %.4304.1, %bb.bh ], [ %i.oo, %bb.bj ], [ %.4304.1, %bb.bi ] ; 2 uses
  %.2265.2 = phi float [ %.2265.1, %bb.bh ], [ %.0266.2, %bb.bj ], [ %.2265.1, %bb.bi ] ; 3 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.np
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !89 ; 2 uses
  %i.pa = icmp slt i32 %i.oz, 1
  br i1 %i.pa, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.np
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !55
  %i.pd = fsub float %i.pc, %i.no
  %i.pe = call noundef float @llvm.fabs.f32(float %i.pd)
  %i.pf = fdiv float %i.pe, f0x40490FDB           ; 3 uses
  %i.pg = fcmp ogt float %i.pf, 5.000000e-01
  %i.ph = fsub float 1.000000e+00, %i.pf
  %.0266.11072 = select i1 %i.pg, float %i.ph, float %i.pf ; 2 uses
  %i.pi = fcmp olt float %.0266.11072, %.2265.2
  br i1 %i.pi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bl, %bb.bm
  %.4304.11073 = phi i32 [ %.4304.2, %bb.bk ], [ %i.oz, %bb.bm ], [ %.4304.2, %bb.bl ] ; 2 uses
  %.2265.11074 = phi float [ %.2265.2, %bb.bk ], [ %.0266.11072, %bb.bm ], [ %.2265.2, %bb.bl ] ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.mw, i64 %i.om
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !89 ; 2 uses
  %i.pl = icmp slt i32 %i.pk, 1
  br i1 %i.pl, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.om
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !55
  %i.po = fsub float %i.pn, %i.no
  %i.pp = call noundef float @llvm.fabs.f32(float %i.po)
  %i.pq = fdiv float %i.pp, f0x40490FDB           ; 3 uses
  %i.pr = fcmp ogt float %i.pq, 5.000000e-01
  %i.ps = fsub float 1.000000e+00, %i.pq
  %.0266.2.1 = select i1 %i.pr, float %i.ps, float %i.pq ; 2 uses
  %i.pt = fcmp olt float %.0266.2.1, %.2265.11074
  br i1 %i.pt, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.4304.2.1 = phi i32 [ %.4304.11073, %bb.bn ], [ %i.pk, %bb.bp ], [ %.4304.11073, %bb.bo ] ; 2 uses
  %.2265.2.1 = phi float [ %.2265.11074, %bb.bn ], [ %.0266.2.1, %bb.bp ], [ %.2265.11074, %bb.bo ] ; 3 uses
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.np
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !89 ; 2 uses
  %i.pw = icmp slt i32 %i.pv, 1
  br i1 %i.pw, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.px = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.np
  %i.py = load float, ptr %i.px, align 4, !tbaa !55
  %i.pz = fsub float %i.py, %i.no
  %i.qa = call noundef float @llvm.fabs.f32(float %i.pz)
  %i.qb = fdiv float %i.qa, f0x40490FDB           ; 3 uses
  %i.qc = fcmp ogt float %i.qb, 5.000000e-01
  %i.qd = fsub float 1.000000e+00, %i.qb
  %.0266.21075 = select i1 %i.qc, float %i.qd, float %i.qb ; 2 uses
  %i.qe = fcmp olt float %.0266.21075, %.2265.2.1
  br i1 %i.qe, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.4304.21076 = phi i32 [ %.4304.2.1, %bb.bq ], [ %i.pv, %bb.bs ], [ %.4304.2.1, %bb.br ] ; 2 uses
  %.2265.21077 = phi float [ %.2265.2.1, %bb.bq ], [ %.0266.21075, %bb.bs ], [ %.2265.2.1, %bb.br ] ; 3 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %indvars.iv1078
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !89 ; 2 uses
  %i.qh = icmp slt i32 %i.qg, 1
  br i1 %i.qh, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %indvars.iv1078
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !55
  %i.qk = fsub float %i.qj, %i.no
  %i.ql = call noundef float @llvm.fabs.f32(float %i.qk)
  %i.qm = fdiv float %i.ql, f0x40490FDB           ; 3 uses
  %i.qn = fcmp ogt float %i.qm, 5.000000e-01
  %i.qo = fsub float 1.000000e+00, %i.qm
  %.0266.1.2 = select i1 %i.qn, float %i.qo, float %i.qm ; 2 uses
  %i.qp = fcmp olt float %.0266.1.2, %.2265.21077
  br i1 %i.qp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.4304.1.2 = phi i32 [ %.4304.21076, %bb.bt ], [ %i.qg, %bb.bv ], [ %.4304.21076, %bb.bu ] ; 2 uses
  %.2265.1.2 = phi float [ %.2265.21077, %bb.bt ], [ %.0266.1.2, %bb.bv ], [ %.2265.21077, %bb.bu ]
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.om
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !89 ; 2 uses
  %i.qs = icmp slt i32 %i.qr, 1
  br i1 %i.qs, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.om
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !55
  %i.qv = fsub float %i.qu, %i.no
  %i.qw = call noundef float @llvm.fabs.f32(float %i.qv)
  %i.qx = fdiv float %i.qw, f0x40490FDB           ; 3 uses
  %i.qy = fcmp ogt float %i.qx, 5.000000e-01
  %i.qz = fsub float 1.000000e+00, %i.qx
  %.0266.2.2 = select i1 %i.qy, float %i.qz, float %i.qx
  %i.ra = fcmp olt float %.0266.2.2, %.2265.1.2
  %spec.select1564 = select i1 %i.ra, i32 %i.qr, i32 %.4304.1.2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.4304.2.2 = phi i32 [ %.4304.1.2, %bb.bw ], [ %spec.select1564, %bb.bx ] ; 2 uses
  store i32 %.4304.2.2, ptr %i.nl, align 4, !tbaa !89
  %i.rb = icmp ne i32 %.4304.2.2, 0
  %i.rc = zext i1 %i.rb to i32
  %spec.select = add nsw i32 %.4309914, %i.rc
  %.pre1161 = load i32, ptr %i.f, align 8, !tbaa !76
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph917._crit_edge, %bb.by
  %indvars.iv.next1079.pre-phi = phi i64 [ %.pre1183, %.lr.ph917._crit_edge ], [ %i.om, %bb.by ] ; 2 uses
  %i.rd = phi i32 [ %i.nk, %.lr.ph917._crit_edge ], [ %.pre1161, %bb.by ] ; 4 uses
  %.6311 = phi i32 [ %.4309914, %.lr.ph917._crit_edge ], [ %spec.select, %bb.by ] ; 2 uses
  %i.re = add nsw i32 %i.rd, -1
  %i.rf = sext i32 %i.re to i64
  %i.rg = icmp slt i64 %indvars.iv.next1079.pre-phi, %i.rf
  br i1 %i.rg, label %.lr.ph917, label %._crit_edge918.loopexit, !llvm.loop !107

._crit_edge918.loopexit:                          ; preds = %bb.bz
  %.pre1162 = load i32, ptr %i.d, align 4, !tbaa !75
  br label %._crit_edge918

._crit_edge918:                                   ; preds = %._crit_edge918.loopexit, %.lr.ph922.split
  %i.rh = phi i32 [ %i.ms, %.lr.ph922.split ], [ %.pre1162, %._crit_edge918.loopexit ] ; 3 uses
  %i.ri = phi i32 [ %i.mt, %.lr.ph922.split ], [ %i.rd, %._crit_edge918.loopexit ]
  %i.rj = phi i32 [ %i.mu, %.lr.ph922.split ], [ %i.rd, %._crit_edge918.loopexit ]
  %.4309.lcssa = phi i32 [ %.3308920, %.lr.ph922.split ], [ %.6311, %._crit_edge918.loopexit ] ; 2 uses
  %indvars.iv.next1082 = add nuw nsw i64 %indvars.iv1081, 1 ; 2 uses
  %i.rk = add nsw i32 %i.rh, -1
  %i.rl = sext i32 %i.rk to i64
  %i.rm = icmp slt i64 %indvars.iv.next1082, %i.rl
  br i1 %i.rm, label %.lr.ph922.split, label %.loopexit629, !llvm.loop !108

.loopexit629.thread:                              ; preds = %.lr.ph922, %.preheader628, %.loopexit629
  %i.rn = load i32, ptr %i.p, align 8, !tbaa !85
  %i.ro = sext i32 %i.rn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !55
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.in, i64 noundef %i.ro, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.rp = load i32, ptr %i.p, align 8, !tbaa !85  ; 3 uses
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %i.rr = icmp slt i32 %i.rp, 0
  br i1 %i.rr, label %.noexc379, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc379:                                        ; preds = %.loopexit629.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit629.thread
  %.not.i.i.i.i378 = icmp eq i32 %i.rp, 0
  br i1 %.not.i.i.i.i378, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc380

.noexc380:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.rs = shl nuw nsw i64 %i.rq, 2                ; 2 uses
  %i.rt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #21 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rt, i8 0, i64 %i.rs, i1 false), !tbaa !89
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rq
  %i.rv = ptrtoint ptr %i.ru to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc380, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0570.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.rt, %.noexc380 ] ; 10 uses
  %.sroa.11575.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.rv, %.noexc380 ] ; 2 uses
  store i32 1, ptr %i.p, align 8, !tbaa !85
  %i.rw = load i32, ptr %i.d, align 4, !tbaa !75  ; 3 uses
  %i.rx = add nsw i32 %i.rw, -1
  %i.ry = icmp sgt i32 %i.rw, 2                   ; 2 uses
  br i1 %i.ry, label %.lr.ph929, label %.preheader627

.lr.ph929:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !86
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !87
  %i.sd = load ptr, ptr %i.lf, align 8, !tbaa !86
  %i.se = load i64, ptr %i.lg, align 8, !tbaa !87
  %i.sf = load i32, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.sg = icmp sgt i32 %i.sf, 2
  br i1 %i.sg, label %.lr.ph926.preheader, label %.preheader627

.lr.ph926.preheader:                              ; preds = %.lr.ph929
  %i.sh = add nsw i32 %i.sf, -1                   ; 2 uses
  %wide.trip.count1092 = zext nneg i32 %i.rx to i64
  %wide.trip.count1087 = zext i32 %i.sh to i64
  %i.si = add nsw i64 %wide.trip.count1087, -1    ; 3 uses
  %xtraiter1717 = and i64 %i.si, 1
  %i.sj = icmp eq i32 %i.sh, 2
  %unroll_iter1720 = and i64 %i.si, -2
  %lcmp.mod1718.not = icmp eq i64 %xtraiter1717, 0
  %lcmp.mod1719 = trunc i64 %i.si to i1
  br label %.lr.ph926

.preheader627:                                    ; preds = %._crit_edge927, %.lr.ph929, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.sk = load ptr, ptr %i.iq, align 8, !tbaa !56
  %i.sl = load ptr, ptr %i.in, align 8, !tbaa !57 ; 4 uses
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn                    ; 3 uses
  %i.sp = lshr exact i64 %i.so, 2                 ; 3 uses
  %i.sq = trunc i64 %i.sp to i32
  %i.sr = icmp sgt i32 %i.sq, 0
  br i1 %i.sr, label %.lr.ph931.preheader, label %.preheader626

.lr.ph931.preheader:                              ; preds = %.preheader627
  %i.ss = and i64 %i.so, 8589934588
  %i.st = icmp eq i64 %i.ss, 4
  br i1 %i.st, label %.lr.ph931.epil.preheader, label %.lr.ph931.preheader.new

.lr.ph931.preheader.new:                          ; preds = %.lr.ph931.preheader
  %unroll_iter1726 = and i64 %i.sp, 2147483646
  br label %.lr.ph931

.lr.ph926:                                        ; preds = %.lr.ph926.preheader, %._crit_edge927
  %indvars.iv1089 = phi i64 [ 1, %.lr.ph926.preheader ], [ %indvars.iv.next1090, %._crit_edge927 ] ; 3 uses
  %i.su = mul i64 %i.sc, %indvars.iv1089
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.su ; 3 uses
  %i.sw = mul i64 %i.se, %indvars.iv1089
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sw ; 3 uses
  br i1 %i.sj, label %.epil.preheader1716, label %.lr.ph926.new

.lr.ph926.new:                                    ; preds = %.lr.ph926, %bb.cd
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085.1, %bb.cd ], [ 1, %.lr.ph926 ] ; 4 uses
  %niter1721 = phi i64 [ %niter1721.next.1, %bb.cd ], [ 0, %.lr.ph926 ]
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv1084
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !89 ; 2 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph926.new
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv1084
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !55
  %i.td = zext nneg i32 %i.sz to i64
  %i.te = load ptr, ptr %i.in, align 8, !tbaa !57
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.td ; 2 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !55
  %i.th = fadd float %i.tc, %i.tg
  store float %i.th, ptr %i.tf, align 4, !tbaa !55
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph926.new, %bb.ca
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 1 ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv.next1085
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !89 ; 2 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv.next1085
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !55
  %i.tn = zext nneg i32 %i.tj to i64
  %i.to = load ptr, ptr %i.in, align 8, !tbaa !57
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tn ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !55
  %i.tr = fadd float %i.tm, %i.tq
  store float %i.tr, ptr %i.tp, align 4, !tbaa !55
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.next1085.1 = add nuw nsw i64 %indvars.iv1084, 2 ; 2 uses
  %niter1721.next.1 = add i64 %niter1721, 2       ; 2 uses
  %niter1721.ncmp.1 = icmp eq i64 %niter1721.next.1, %unroll_iter1720
  br i1 %niter1721.ncmp.1, label %._crit_edge927.unr-lcssa, label %.lr.ph926.new, !llvm.loop !110

._crit_edge927.unr-lcssa:                         ; preds = %bb.cd
  br i1 %lcmp.mod1718.not, label %._crit_edge927, label %.epil.preheader1716

.epil.preheader1716:                              ; preds = %._crit_edge927.unr-lcssa, %.lr.ph926
  %indvars.iv1084.epil.init = phi i64 [ 1, %.lr.ph926 ], [ %indvars.iv.next1085.1, %._crit_edge927.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1719)
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv1084.epil.init
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !89 ; 2 uses
  %i.tu = icmp sgt i32 %i.tt, 0
  br i1 %i.tu, label %bb.ce, label %._crit_edge927

bb.ce:                                            ; preds = %.epil.preheader1716
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv1084.epil.init
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !55
  %i.tx = zext nneg i32 %i.tt to i64
  %i.ty = load ptr, ptr %i.in, align 8, !tbaa !57
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tx ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !55
  %i.ub = fadd float %i.tw, %i.ua
  store float %i.ub, ptr %i.tz, align 4, !tbaa !55
  br label %._crit_edge927

._crit_edge927:                                   ; preds = %.epil.preheader1716, %bb.ce, %._crit_edge927.unr-lcssa
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1 ; 2 uses
  %exitcond1093.not = icmp eq i64 %indvars.iv.next1090, %wide.trip.count1092
  br i1 %exitcond1093.not, label %.preheader627, label %.lr.ph926, !llvm.loop !111

.preheader626.loopexit.unr-lcssa:                 ; preds = %bb.ci
  %i.uc = and i64 %i.so, 4
  %lcmp.mod1723.not = icmp eq i64 %i.uc, 0
  br i1 %lcmp.mod1723.not, label %.preheader626, label %.lr.ph931.epil.preheader

.lr.ph931.epil.preheader:                         ; preds = %.preheader626.loopexit.unr-lcssa, %.lr.ph931.preheader
  %.epil.init = phi i32 [ 1, %.lr.ph931.preheader ], [ %i.ux, %.preheader626.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv1094.epil.init = phi i64 [ 0, %.lr.ph931.preheader ], [ %indvars.iv.next1095.1, %.preheader626.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1725 = trunc i64 %i.sp to i1
  call void @llvm.assume(i1 %lcmp.mod1725)
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv1094.epil.init
end_hunk_0
